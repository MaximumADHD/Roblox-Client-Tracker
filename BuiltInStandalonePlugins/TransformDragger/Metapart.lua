local FuzzyMath = require(script.Parent.FuzzyMath)
local List = require(script.Parent.List)
local Extent = require(script.Parent.Extent)
local FFlag = require(script.Parent.FFlag)

local EngineFeatureModelPivotApi = game:GetEngineFeature("ModelPivotApi")

local collisionSizeLimit = 10
local originalCFrames = {}

local function checkIsWrapped(object)
	if (object == nil or typeof(object) ~= "table") then
		return false
	end
	
	return object.IsWrapped == true
end

local function itemHasChanged(item)
	return item.CFrame ~= originalCFrames[item]
end

local roots = {}

local function getAllRoots(item)
	if item:IsA("BasePart") then
		local itemRoot = item:GetRootPart()
		if itemRoot then
			roots[itemRoot] = true
		end
	end
	
	local children = item:GetChildren()
	for i, v in ipairs(children) do
		getAllRoots(v)
	end
end

local function getAllRootsFromTable(t)
	roots = {}
	for i = 1, #t do
		getAllRoots(t[i])
	end
	
	local finalRoots = {}
	
	for k, v in pairs(roots) do
		table.insert(finalRoots, k)
	end
	return finalRoots
end

local function getAllChildren(item, items)
	if not items then items = {} end
	
	if item:IsA("BasePart") then
		table.insert(items, item)
	end
	
	local children = item:GetChildren()
	for i = 1, #children do
		items = getAllChildren(children[i], items)
	end
	
	return items
end

local function getAllChildrenFromTable(t)
	local items = {}
	for i = 1, #t do
		items = getAllChildren(t[i], items)
	end
	
	return items
end

local function getAllModels(object, models)
	if object:IsA("Model") then
		table.insert(models, object)
	end
	for _, descendant in ipairs(object:GetDescendants()) do
		if descendant:IsA("Model") then
			table.insert(models, descendant)
		end
	end
end

local function getAllModelsFromTable(t)
	local models = {}
	for _, object in ipairs(t) do
		getAllModels(object, models)
	end
	return models
end

-- TODO mlangen: Remove with FFlag::ModelPivot
function forcePrimaryPart(model)
	if not model.PrimaryPart then
		local possiblePrimaryPart = nil
		local children = model:GetChildren()
		for i = 1, #children do
			if children[i]:IsA("BasePart") then
				possiblePrimaryPart = children[i]
				
				local location = possiblePrimaryPart.CFrame.p
				
				if FuzzyMath.visiblyIdentityCFrame(possiblePrimaryPart.CFrame, 0.00001) then					
					break
				end
			elseif children[i]:IsA("Model") and not children[i]:IsA("Workspace") then
				
				local part = children[i]
				forcePrimaryPart(children[i])
				
				if part.PrimaryPart then
					possiblePrimaryPart = part.PrimaryPart
					if FuzzyMath.visiblyIdentityCFrame(possiblePrimaryPart.CFrame, 0.00001) then
						break
					end
				end
				
			end
		end
		
		if possiblePrimaryPart then
			model.PrimaryPart = possiblePrimaryPart
		end
	end
end

local sanitizationPrecision = 1000000
			
local function sanitizeFloat(value)
	return value > 0.0 and (math.ceil((value * sanitizationPrecision) - 0.5) / sanitizationPrecision) or (math.floor((value * sanitizationPrecision) + 0.5) / sanitizationPrecision)
end

local function sanitizeCFrame(value, sanitizeRotation)
	local x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22 = value:components()
	return CFrame.new(
		sanitizeFloat(x),
		sanitizeFloat(y),
		sanitizeFloat(z),
		sanitizeRotation and sanitizeFloat(r00) or r00,
		sanitizeRotation and sanitizeFloat(r01) or r01,
		sanitizeRotation and sanitizeFloat(r02) or r02,
		sanitizeRotation and sanitizeFloat(r10) or r10,
		sanitizeRotation and sanitizeFloat(r11) or r11,
		sanitizeRotation and sanitizeFloat(r12) or r12,
		sanitizeRotation and sanitizeFloat(r20) or r20,
		sanitizeRotation and sanitizeFloat(r21) or r21,
		sanitizeRotation and sanitizeFloat(r22) or r22)
end

function createMetaPart(object, subscribe)
	if not object then return nil end
	
	if checkIsWrapped(object) then
		return object
	end
	
	if not subscribe then subscribe = false end

	if type(object) == "table" then
		if #object == 0 then return nil end
				
		local finalObject = {}
		
		----------------------------------------------------------
		finalObject.objects = object
		finalObject.mt = {}
		finalObject.info = {}
		finalObject.info.oCFrame = nil --cframe - ObjectAligned
		finalObject.info.oSize = nil --size - ObjectAligned
		finalObject.info.pCFrame = nil --cframe - PlaneAligned
		finalObject.info.pSize = nil --size - PlaneAligned
		finalObject.info.lastPlaneCFrame = nil
		finalObject.children = getAllChildrenFromTable(finalObject.objects)
		finalObject.roots = getAllRootsFromTable(finalObject.objects)
		if EngineFeatureModelPivotApi then
			finalObject.models = getAllModelsFromTable(finalObject.objects)
		end
		finalObject.IsWrapped = true
		
		finalObject.info.expectingChanged = false
		finalObject.info.updateRequired = false
		
		local function subscribeToParts(parts)
			local subscriptionList = {}
			for i, v in ipairs(parts) do
				subscriptionList[i] = v.Changed:connect(function()
					if not finalObject.info.expectingChanged then
						finalObject.info.updateRequired = true
					end
				end)
			end
			return subscriptionList
		end
		
		if subscribe then
			finalObject.subscribe = subscribeToParts(finalObject.children)
		end
		
		----------------------------------------------
		
		setmetatable(finalObject, finalObject.mt)
		
		local function reRoot()
			finalObject.roots = getAllRootsFromTable(finalObject.objects)
		end
		
		local function recalculateCFrameAndSize()
			finalObject.info.oCFrame, finalObject.info.oSize = Extent.getCFrameAndSizeOfList(finalObject.children, createMetaPart(finalObject.objects[1]).CFrame)
			finalObject.info.oCFrame = sanitizeCFrame(finalObject.info.oCFrame)
		end
		
		local function getTouchingParts()
			local intersecting = {}
			local children = finalObject.children
			
			if (#children > collisionSizeLimit) then
				--check collision against cframe and size
				return {}
			end
			
			for i = 1, #children do
				local found = children[i]:GetTouchingParts()
				intersecting = List.combineLists(intersecting, List.filterOutItems(children, found))
			end
			intersecting = List.removeDuplicates(intersecting)
			
			return intersecting
		end
				
		--Getters
		finalObject.mt.__index = function(t, key)
			
			if key == "IsA" then
				return function(t, value) return value == "Grouping" or value == "Wrapped" end
			end
			
			if key == "Unsubscribe" then
				return function()
					if finalObject.subscribe then
						for i, v in ipairs(finalObject.subscribe) do
							v:disconnect()
						end
					end
				end
			end
			
			if key == "CanSimulate" then
				return #finalObject.children < collisionSizeLimit
			end
			
			if key == "IsUpdateRequired" then
				local updaterequired = finalObject.info.updateRequired
				finalObject.info.updateRequired = false
				return updaterequired
			end
			
			if key == "ClearCache" then
				return function()
					finalObject.info.oCFrame = nil
					finalObject.info.oSize = nil
					finalObject.info.pCFrame = nil
					finalObject.info.pSize = nil
					finalObject.info.lastPlaneCFrame = nil
				end
			end
			
			if key == "TranslateFromTo" then
				return function(from, to) 
					finalObject.info.expectingChanged = true
					if not finalObject.info.oCFrame then
						recalculateCFrameAndSize()
					end
					
					reRoot()
					
					local difference = to.p - from.p--finalObject.info.oCFrame
					--sanitize?
					if EngineFeatureModelPivotApi then
						for _, model in ipairs(finalObject.models) do
							model.WorldPivot = model:GetPivot() + difference
						end
					end
					for i = 1, #finalObject.roots do
						finalObject.roots[i].CFrame = finalObject.roots[i].CFrame + difference				
					end
					finalObject.info.pCFrame = finalObject.info.pCFrame + difference
					finalObject.info.oCFrame = sanitizeCFrame(finalObject.info.oCFrame + difference)
					finalObject.info.expectingChanged = false
				end
			end
			
			if key == "Children" then
				return finalObject.children
			end
			
			if key == "Size" then
				if finalObject.info.oSize then return finalObject.info.oSize end
				recalculateCFrameAndSize()
				return finalObject.info.oSize
			end
			
			if key == "CFrame" then
				if finalObject.info.oCFrame then return finalObject.info.oCFrame end
				recalculateCFrameAndSize()
				return finalObject.info.oCFrame
			end
			
			if key == "PlaneAlignedSize" then
				if finalObject.info.pSize then return finalObject.info.pSize end
				return nil
			end
			
			if key == "PlaneAlignedCFrame" then
				if finalObject.info.pCFrame then return finalObject.info.pCFrame end
				return nil
			end
			
			if key == "GetTouchingParts" then
				return function() return getTouchingParts() end
			end
			
			if key == "PlaneSet" then
				return finalObject.info.lastPlaneCFrame ~= nil
			end
		end
		
		--Setters
		finalObject.mt.__newindex = function(t, key, value)
			
			if key == "UpdatePlaneCFrame" then
				if finalObject.info.lastPlaneCFrame == value then return end
				finalObject.info.lastPlaneCFrame = value
				finalObject.info.pCFrame, finalObject.info.pSize = Extent.getCFrameAndSizeOfList(finalObject.objects, value)
			end
			
			if key == "CFrame" then
				finalObject.info.expectingChanged = true
				if not finalObject.info.oCFrame then
					recalculateCFrameAndSize()
				end
				reRoot()
				local rotationCoord = value - value.p

				for i = 1, #finalObject.roots do
					local primInCenter = finalObject.info.oCFrame:toObjectSpace(finalObject.roots[i].CFrame)
					local newPrimInCenter = rotationCoord * primInCenter
					
					finalObject.roots[i].CFrame  = newPrimInCenter + finalObject.info.oCFrame.p	
				end
				
				if (finalObject.info.oCFrame - finalObject.info.oCFrame.p)
					~= (value - value.p) then
					finalObject.info.pCFrame = nil
					finalObject.info.pSize = nil
					finalObject.info.lastPlaneCFrame = nil
				elseif finalObject.info.pCFrame then
					finalObject.info.pCFrame = finalObject.info.pCFrame - finalObject.info.oCFrame.p + value.p
				end
				
				finalObject.info.oCFrame = sanitizeCFrame(value)
				finalObject.info.expectingChanged = false
			end
		end
		
		return finalObject
		
	elseif object:IsA("Model") and not object:IsA("Workspace") then	
		if checkIsWrapped(object) then
			return object
		end
		
		if not EngineFeatureModelPivotApi then
			forcePrimaryPart(object)
		end
		
		local finalObject = {}
		
		-----------------------------------------
		finalObject.object = object
		finalObject.mt = {}
		finalObject.info = {}
		finalObject.info.oCFrame = nil --cframe - ObjectAligned
		finalObject.info.oSize = nil --size - ObjectAligned
		finalObject.info.pCFrame = nil --cframe - PlaneAligned
		finalObject.info.pSize = nil --size - PlaneAligned
		finalObject.info.lastPlaneCFrame = nil
		finalObject.children = getAllChildrenFromTable({finalObject.object})
		finalObject.roots = getAllRootsFromTable({finalObject.object})
		if EngineFeatureModelPivotApi then
			finalObject.models = getAllModelsFromTable({finalObject.object})
		end
		finalObject.IsWrapped = true		
		finalObject.info.expectingChanged = false
		finalObject.info.updateRequired = false
		
		local function subscribeToParts(parts)
			local subscriptionList = {}
			for i, v in ipairs(parts) do
				subscriptionList[i] = v.Changed:connect(function()
					if not finalObject.info.expectingChanged then
						finalObject.info.updateRequired = true
					end
				end)
			end
			return subscriptionList
		end
		
		if subscribe then
			finalObject.subscribe = subscribeToParts(finalObject.children)
		end
		
		--------------------------------------------------
		
		setmetatable(finalObject, finalObject.mt)
		
		local function reRoot()
			finalObject.roots = getAllRootsFromTable({finalObject.object})
		end
		
		local function getCurrentCFrame()
		
			return finalObject.object:GetModelCFrame()
		end
		
		local function getTouchingParts()
			local children = getAllChildren(finalObject.object)
			local intersecting = {}
			
			for i = 1, #children do
				local found = children[i]:GetTouchingParts()
				intersecting = List.combineLists(intersecting, List.filterOutItems(children, found))
			end
			intersecting = List.removeDuplicates(intersecting)
			
			return intersecting
		end
		
		finalObject.mt.__eq = function(a, b)
			return pcall(function() return createMetaPart(a).Object == createMetaPart(b).Object end)
		end
		
		local function recalculateCFrameAndSize()
			local extentFrame = nil
			if finalObject.object.PrimaryPart then
				extentFrame = finalObject.object.PrimaryPart.CFrame
			elseif #finalObject.children > 0 then
				extentFrame = finalObject.children[1].CFrame
			else
				extentFrame = CFrame.new()
			end
			
			finalObject.info.oCFrame, finalObject.info.oSize = Extent.getCFrameAndSizeOfList(finalObject.children, extentFrame)
			finalObject.info.oCFrame = sanitizeCFrame(finalObject.info.oCFrame)
		end
		
		
		
		finalObject.mt.__index = function (table, key)
			
			if key == "IsA" then
				return function(t, value) return finalObject.object:IsA(value) or value == "Wrapped" end
			end
			
			if key == "Unsubscribe" then
				return function()
					if finalObject.subscribe then
						for i, v in ipairs(finalObject.subscribe) do
							v:disconnect()
						end
					end
				end
			end
			
			if key == "IsUpdateRequired" then
				local updaterequired = finalObject.info.updateRequired
				finalObject.info.updateRequired = false
				return updaterequired
			end
			
			if key == "CanSimulate" then
				return #finalObject.children < collisionSizeLimit
			end
			
			if key == "ClearCache" then
				return function()
					finalObject.info.oCFrame = nil
					finalObject.info.oSize = nil
					finalObject.info.pCFrame = nil
					finalObject.info.pSize = nil
					finalObject.info.lastPlaneCFrame = nil
				end
			end
			
			if key == "TranslateFromTo" then
				return function(from, to) 
					finalObject.info.expectingChanged = true
					if not finalObject.info.oCFrame then
						recalculateCFrameAndSize()
					end
					reRoot()
					
					local difference = to.p - from.p--finalObject.info.oCFrame
					--sanitize?
					
					if EngineFeatureModelPivotApi then
						for _, model in ipairs(finalObject.models) do
							model.WorldPivot = model:GetPivot() + difference
						end
					end
					for i = 1, #finalObject.roots do
						finalObject.roots[i].CFrame = finalObject.roots[i].CFrame + difference				
					end
					
					finalObject.info.pCFrame = finalObject.info.pCFrame + difference
					finalObject.info.oCFrame = finalObject.info.oCFrame + difference
					finalObject.info.expectingChanged = false
				end
			end
			
			if key == "BreakImplicitJoints" then
				return function() end
			end
			
			if key == "IsColliding" then
				return function() return false end
			end
			
			if key == "GetTouchingParts" then
				return function() return getTouchingParts() end
			end
			
			if key == "SafeRotate" then
				return function() end
			end
			
			if key == "Children" then
				return finalObject.children
			end
			
			if key == "Size" then
				if finalObject.info.oSize then return finalObject.info.oSize end
				recalculateCFrameAndSize()
				return finalObject.info.oSize
			end
			
			if key == "CFrame" then
				if finalObject.info.oCFrame then return finalObject.info.oCFrame end
				
				recalculateCFrameAndSize()
				return finalObject.info.oCFrame
			end
			
			if key == "PlaneAlignedSize" then
				if finalObject.info.pSize then return finalObject.info.pSize end
				return nil
			end
			
			if key == "PlaneAlignedCFrame" then
				if finalObject.info.pCFrame then return finalObject.info.pCFrame end
				return nil
			end
			
			if key == "Position" then
				if finalObject.info.oCFrame then return finalObject.info.oCFrame.p end
				
				recalculateCFrameAndSize()
				return finalObject.info.oCFrame.p
			end
			
			if key == "Object" then
				return finalObject.object
			end
						
			if (pcall(function() local test = finalObject.object[key] end)) then 
				if type(finalObject.object[key]) == 'function' then
					return function(t, ...) return finalObject.object[key](finalObject.object, ...) end
				end
				return finalObject.object[key] 
			end
			
			return nil
		end
		
		local function moveAllChildren(parentObject, oldCFrame, newCFrame)
			for _,v in ipairs(parentObject:GetChildren()) do
				moveAllChildren(v, oldCFrame, newCFrame)
				if v:IsA("BasePart") then
					v.CFrame = newCFrame:toWorldSpace(oldCFrame:toObjectSpace(v.CFrame))
				end
			end
		end
		local function moveAllModels(models, oldCFrame, newCFrame)
			local globalTransform = newCFrame * oldCFrame:Inverse()
			for _, model in ipairs(models) do
				model.WorldPivot = model:GetPivot() * globalTransform
			end
		end
		
		finalObject.mt.__newindex = function (table, key, value)
			if key == "UpdatePlaneCFrame" then
				finalObject.info.lastPlaneCFrame = value
				finalObject.info.pCFrame, finalObject.info.pSize = Extent.getCFrameAndSizeOfList(finalObject.children, value)
				return
			end
			
			if key == "CFrame" then
				finalObject.info.expectingChanged = true
				if not finalObject.info.oCFrame then
					recalculateCFrameAndSize()
				end
				reRoot()
				value = sanitizeCFrame(value, true)
				
				if EngineFeatureModelPivotApi then
					local globalTransform = value * finalObject.info.oCFrame:Inverse()
					for _, model in ipairs(finalObject.models) do
						model.WorldPivot = globalTransform * model:GetPivot()
					end
				end
				for i = 1, #finalObject.roots do
					finalObject.roots[i].CFrame = value * finalObject.info.oCFrame:toObjectSpace(finalObject.roots[i].CFrame)
				end
				
				if (finalObject.info.oCFrame - finalObject.info.oCFrame.p) ~= (value - value.p) then
					finalObject.info.pCFrame = nil
					finalObject.info.pSize = nil
					finalObject.info.lastPlaneCFrame = nil
				elseif finalObject.info.pCFrame then
					finalObject.info.pCFrame = finalObject.info.pCFrame - finalObject.info.oCFrame.p + value.p
				end
				
				finalObject.info.oCFrame = value
				finalObject.info.expectingChanged = false
				return
			end
						
			--------------------------------------------------------------------------------------
			
			if key == "BreakImplicitJoints" then return function() end end
			
			if key == "Size" then
				return
			elseif key == "Position" then
				finalObject.info.expectingChanged = true
				local oldCFrame = getCurrentCFrame()
				local newCFrame = oldCFrame - oldCFrame.p + value
				if EngineFeatureModelPivotApi then
					moveAllModels(finalObject.models, oldCFrame, newCFrame)
				end
				moveAllChildren(finalObject.object, oldCFrame, newCFrame)
				finalObject.info.expectingChanged = false
				return
			end
				
			finalObject.info.expectingChanged = true
			if (pcall(function() local test = finalObject.object[key] end)) then finalObject.object[key] = value end
			finalObject.info.expectingChanged = false
			
		end
		
		return finalObject
		
		
	elseif object:IsA("BasePart") then
		
		if checkIsWrapped(object) then
			return object
		end
						
		local finalObject = {}
		
		----------------------------------------
		finalObject.object = object
		finalObject.mt = {}
		finalObject.info = {}
		finalObject.info.pCFrame = nil --cframe - PlaneAligned
		finalObject.info.pSize = nil --size - PlaneAligned
		finalObject.info.lastPlaneCFrame = nil
		finalObject.children = {object}
		finalObject.roots = getAllRootsFromTable({finalObject.object})
		if EngineFeatureModelPivotApi then
			finalObject.models = getAllModelsFromTable({finalObject.object})
		end
		finalObject.IsWrapped = true
		finalObject.info.expectingChanged = false
		finalObject.info.updateRequired = false
		
		local function subscribeToParts(parts)
			local subscriptionList = {}
			for i, v in ipairs(parts) do
				subscriptionList[i] = v.Changed:connect(function()
					if not finalObject.info.expectingChanged then
						finalObject.info.updateRequired = true
					end
				end)
			end
			return subscriptionList
		end
		
		if subscribe then
			finalObject.subscribe = subscribeToParts(finalObject.children)
		end
		
		---------------------------------------------------------------
		
		local function reRoot()
			finalObject.roots = getAllRootsFromTable({finalObject.object})
		end
		
		setmetatable(finalObject, finalObject.mt)
		
		local function getCurrentCFrame()
			return finalObject.object:GetModelCFrame()
		end
		
		finalObject.mt.__eq = function(a, b)
			return pcall(function() return createMetaPart(a).Object == createMetaPart(b).Object end)
		end
		
		finalObject.mt.__index = function (table, key)
			
			if key == "IsA" then
				return function(t, value) return finalObject.object:IsA(value) or value == "Wrapped" end
			end

			if EngineFeatureModelPivotApi and key == "UpdatePivot" then
				return function(t, initialSize, finalSize)
					local scaleFactor = finalSize / initialSize
					local pivotOffset = finalObject.object.PivotOffset
					local pos = pivotOffset.Position
					local rot = pivotOffset - pos
					finalObject.object.PivotOffset = rot + scaleFactor*pos
				end
			end
			
			if key == "TranslateFromTo" then
				return function(from, to) 
					reRoot()
					finalObject.info.expectingChanged = true
					local difference = to.p - from.p
					--sanitize?
					
					if EngineFeatureModelPivotApi then
						for _, model in ipairs(finalObject.models) do
							model.WorldPivot = model:GetPivot() + difference
						end
					end
					for i = 1, #finalObject.roots do
						finalObject.roots[i].CFrame = finalObject.roots[i].CFrame + difference				
					end
					
					finalObject.info.pCFrame = finalObject.info.pCFrame + difference
					finalObject.info.expectingChanged = false
				end
			end
			
			if key == "Unsubscribe" then
				return function()
					if finalObject.subscribe then
						for i, v in ipairs(finalObject.subscribe) do
							v:disconnect()
						end
					end
				end
			end
			
			if key == "CanSimulate" then
				return true
			end
			
			if key == "ClearCache" then
				return function()
					finalObject.info.oCFrame = nil
					finalObject.info.oSize = nil
					finalObject.info.pCFrame = nil
					finalObject.info.pSize = nil
					finalObject.info.lastPlaneCFrame = nil
				end
			end
			
			if key == "IsUpdateRequired" then
				local updaterequired = finalObject.info.updateRequired
				finalObject.info.updateRequired = false
				return updaterequired
			end
			
			if key == "Children" then
				return finalObject.children
			end
	
			if key == "CFrame" then				
				return finalObject.object.CFrame
			elseif key == "Size" then
				return finalObject.object.Size
			elseif key == "Position" then
				return finalObject.object.CFrame.p
			elseif key == "Object" then
				return finalObject.object
			end
			if key == "PlaneAlignedSize" then
				if finalObject.info.pSize then return finalObject.info.pSize end
				return nil
			end
			
			if key == "PlaneAlignedCFrame" then
				if finalObject.info.pCFrame then return finalObject.info.pCFrame end
				return nil
			end
			
			if (pcall(function() local test = finalObject.object[key] end)) then 
				if type(finalObject.object[key]) == 'function' then
					return function(t, ...) return finalObject.object[key](finalObject.object, ...) end
				end
				return finalObject.object[key] 
			end
			
			return nil
		end
				
		finalObject.mt.__newindex = function (table, key, value)
			finalObject.info.expectingChanged = true
			if key == "UpdatePlaneCFrame" then			
				finalObject.info.lastPlaneCFrame = value
				finalObject.info.pCFrame, finalObject.info.pSize = Extent.getCFrameAndSizeOfList({finalObject.object}, value)
				finalObject.info.expectingChanged = false
				return
			end
			
			if key == "CFrame" then
				value = sanitizeCFrame(value)
				finalObject.info.lastPlaneCFrame = nil
			end
			
			if key == "Size" then
				finalObject.info.lastPlaneCFrame = nil
			end
			
			if key == "Position" then
				finalObject.info.lastPlaneCFrame = nil
			end
							
			if (pcall(function() local test = finalObject.object[key] end)) then finalObject.object[key] = value end
			finalObject.info.expectingChanged = false
		end
		
		return finalObject
	else
		if checkIsWrapped(object) then
			return object
		end
		
		local finalObject = {}
		
		finalObject.object = object
		finalObject.mt = {}
		finalObject.info = {}
		finalObject.IsWrapped = true
		
		setmetatable(finalObject, finalObject.mt)
				
		finalObject.mt.__eq = function(a, b)
			return pcall(function() return createMetaPart(a).Object == createMetaPart(b).Object end)
		end
		
		finalObject.mt.__index = function (table, key)
			
			if key == "IsA" then
				return function(t, value) return finalObject.object:IsA(value) or value == "Wrapped" end
			end
	
			if key == "CFrame" then				
				return CFrame.new()
			elseif key == "Size" then
				return Vector3.new(0,0,0)
			elseif key == "Position" then
				return Vector3.new(0,0,0)
			elseif key == "Object" then
				return finalObject.object
			elseif key == "PlaneAlignedSize" then
				return Vector3.new(0,0,0)
			elseif key == "PlaneAlignedCFrame" then
				return CFrame.new()
			end
			
			if (pcall(function() local test = finalObject.object[key] end)) then 
				if type(finalObject.object[key]) == 'function' then
					return function(t, ...) return finalObject.object[key](finalObject.object, ...) end
				end
				return finalObject.object[key] 
			end
			
			return nil
		end
				
		finalObject.mt.__newindex = function (table, key, value)
				
			if key == "UpdatePlaneCFrame" then	
				return
			end
						
			if key == "CFrame" then
				return
			end
			
			if key == "Size" then
				return
			end
			
			if key == "Position" then
				return
			end
							
			if (pcall(function() local test = finalObject.object[key] end)) then finalObject.object[key] = value end
		end
		
		return finalObject
	end
end

local module = {}

module.convertToPart = createMetaPart
module.forcePrimaryPart = forcePrimaryPart

return module
