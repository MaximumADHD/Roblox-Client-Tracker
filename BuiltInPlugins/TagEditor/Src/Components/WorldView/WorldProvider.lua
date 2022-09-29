local Collection = game:GetService("CollectionService")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Constants = require(Plugin.Src.Constants)

local TagManager = require(Plugin.Src.TagManager)
local Maid = require(Plugin.Src.Maid)

local WorldProvider = Roact.PureComponent:extend("WorldProvider")

function WorldProvider:init()
	self.state = {
		partsList = {},
	}

	self.nextId = 0
	self.partIds = {}
	self.trackedParts = {}
	self.trackedTags = {}
	self.instanceAddedConns = Maid.new()
	self.instanceRemovedConns = Maid.new()
	self.instanceAncestryChangedConns = Maid.new()
	self.maid = Maid.new()

	local function cameraChanged(camera)
		self.maid.cameraMovedConn = nil
		if camera then
			local origPos = camera.CFrame.Position
			self.maid.cameraMovedConn = camera:GetPropertyChangedSignal("CFrame"):Connect(function()
			local newPos = camera.CFrame.Position
				if (origPos - newPos).Magnitude > Constants.WorldProvider.CameraMinMovementStepForPartUpdate then
					origPos = newPos
					self:updateParts()
				end
			end)
		end
	end
	self.maid.cameraChangedConn = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(cameraChanged)
	cameraChanged(workspace.CurrentCamera)
end

function WorldProvider:didMount()
	local manager = TagManager.Get()

	for _, tag in pairs(manager:GetTags()) do
		if tag.Visible == false or tag.DrawType == "None" then
			continue
		end
		self:tagAdded(tag.Name)
	end
	self.onTagsUpdatedConn = manager:OnTagsUpdated(function(newTags, oldTags)
		local added = {}
		local removed = {}
		for _, tag in pairs(newTags) do
			if tag.Visible == false or tag.DrawType == "None" then
				continue
			end
			added[tag.Name] = tag
		end
		for _, tag in pairs(oldTags) do
			if tag.Visible == false or tag.DrawType == "None" then
				continue
			end
			if added[tag.Name] then
				added[tag.Name] = nil
			else
				removed[tag.Name] = tag
			end
		end

		for name in pairs(added) do
			self:tagAdded(name)
		end
		for name in pairs(removed) do
			self:tagRemoved(name)
		end
		self:updateParts()
	end)

	self:updateParts()
end

local function sortedInsert(array, value, lessThan, maxSize)
	local start = 1
	local stop = #array

	while stop - start > 1 do
		local pivot = math.floor(start + (stop - start) / 2)
		if lessThan(value, array[pivot]) then
			stop = pivot
		else
			start = pivot + 1
		end
	end
	if start < maxSize then
		table.insert(array, start, value)
		if stop >= maxSize then
			table.remove(array, stop)
		end
	end
end

function isInFrontOf(aPos, bPos, aForward)
	local distance = bPos - aPos
	return distance:Dot(aForward) > 0
end

function WorldProvider:collectParts()
	local newList = {}

	local cam = workspace.CurrentCamera
	if not cam then
		return
	end
	local camPos = cam.CFrame.Position

	local function sortFunc(a, b)
		return a.AngularSize > b.AngularSize
	end
	local function partAngularSize(pos, size)
		local dist = (pos - camPos).Magnitude
		local sizeM = size.Magnitude
		return sizeM / dist
	end
	for obj, _ in pairs(self.trackedParts) do
		local class = obj.ClassName
		local objectPos
		if class == "Model" then
			objectPos = obj:GetPivot().Position
			if isInFrontOf(cam.CFrame.Position, objectPos, cam.CFrame.LookVector) then
				local entry = {
					AngularSize = partAngularSize(objectPos, obj:GetExtentsSize()),
					Instance = obj,
				}
				sortedInsert(newList, entry, sortFunc, Constants.WorldProvider.AdornedPartLimit)
			end
		elseif class == "Attachment" then
			objectPos = obj.WorldPosition
			if isInFrontOf(cam.CFrame.Position, objectPos, cam.CFrame.LookVector) then
				local entry = {
					AngularSize = partAngularSize(objectPos, Vector3.new()),
					Instance = obj,
				}
				sortedInsert(newList, entry, sortFunc, Constants.WorldProvider.AdornedPartLimit)
			end
		elseif class == "Part" then
			objectPos = obj.Position
			if isInFrontOf(cam.CFrame.Position, objectPos, cam.CFrame.LookVector) then
				local entry = {
					AngularSize = partAngularSize(objectPos, obj.Size),
					Instance = obj,
				}
				sortedInsert(newList, entry, sortFunc, Constants.WorldProvider.AdornedPartLimit)
			end
		end
	end

	return newList
end

function WorldProvider:prepareAdornmentMap(partsList)
	local tagsMap = {}
	for _, tag in pairs(TagManager.Get():GetTags()) do
		tagsMap[tag.Name] = tag
	end

	local adornMap = {}

	for i = 1, #partsList do
		local tags = Collection:GetTags(partsList[i].Instance)
		local outlines = {}
		local boxes = {}
		local icons = {}
		local labels = {}
		local spheres = {}
		local anyAlwaysOnTop = false
		for j = 1, #tags do
			local tagName = tags[j]
			local tag = tagsMap[tagName]
			if self.trackedTags[tagName] and tag then
				if tag.DrawType == "Outline" then
					outlines[#outlines + 1] = tag.Color
				elseif tag.DrawType == "Box" then
					boxes[#boxes + 1] = tag.Color
				elseif tag.DrawType == "Icon" then
					icons[#icons + 1] = tag.Icon
				elseif tag.DrawType == "Text" then
					labels[#labels + 1] = tagName
				elseif tag.DrawType == "Sphere" then
					spheres[#spheres + 1] = tag.Color
				end
				if tag.AlwaysOnTop then
					anyAlwaysOnTop = true
				end
			end
		end

		local partId = self.partIds[partsList[i].Instance]

		if #outlines > 0 then
			local r, g, b = 0, 0, 0
			for j = 1, #outlines do
				r = r + outlines[j].r
				g = g + outlines[j].g
				b = b + outlines[j].b
			end
			r = r / #outlines
			g = g / #outlines
			b = b / #outlines
			local avg = Color3.new(r, g, b)
			adornMap["Outline:" .. partId] = {
				Id = partId,
				Part = partsList[i].Instance,
				DrawType = "Outline",
				Color = avg,
				AlwaysOnTop = anyAlwaysOnTop,
			}
		end

		if #boxes > 0 then
			local r, g, b = 0, 0, 0
			for j = 1, #boxes do
				r = r + boxes[j].r
				g = g + boxes[j].g
				b = b + boxes[j].b
			end
			r = r / #boxes
			g = g / #boxes
			b = b / #boxes
			local avg = Color3.new(r, g, b)
			adornMap["Box:" .. partId] = {
				Id = partId,
				Part = partsList[i].Instance,
				DrawType = "Box",
				Color = avg,
				AlwaysOnTop = anyAlwaysOnTop,
			}
		end

		if #icons > 0 then
			adornMap["Icon:" .. partId] = {
				Id = partId,
				Part = partsList[i].Instance,
				DrawType = "Icon",
				Icon = icons,
				AlwaysOnTop = anyAlwaysOnTop,
			}
		end

		if #labels > 0 then
			table.sort(labels)
			if #icons > 0 then
				labels[#labels + 1] = ""
			end
			adornMap["Text:" .. partId] = {
				Id = partId,
				Part = partsList[i].Instance,
				DrawType = "Text",
				TagName = labels,
				AlwaysOnTop = anyAlwaysOnTop,
			}
		end

		if #spheres > 0 then
			local r, g, b = 0, 0, 0
			for j = 1, #spheres do
				r = r + spheres[j].r
				g = g + spheres[j].g
				b = b + spheres[j].b
			end
			r = r / #spheres
			g = g / #spheres
			b = b / #spheres
			local avg = Color3.new(r, g, b)
			adornMap["Sphere:" .. partId] = {
				Id = partId,
				Part = partsList[i].Instance,
				DrawType = "Sphere",
				Color = avg,
				AlwaysOnTop = anyAlwaysOnTop,
			}
		end
	end

	return adornMap
end

function WorldProvider:updateParts()
	debug.profilebegin("[Tag Editor] Update WorldProvider")

	local partsList = self:collectParts()

	local adornMap = self:prepareAdornmentMap(partsList)

	self:setState({
		partsList = adornMap,
	})

	debug.profileend()
end

function WorldProvider:instanceAdded(inst)
	if self.trackedParts[inst] then
		self.trackedParts[inst] = self.trackedParts[inst] + 1
	else
		self.trackedParts[inst] = 1
		self.nextId = self.nextId + 1
		self.partIds[inst] = self.nextId
	end
end

function WorldProvider:instanceRemoved(inst)
	if not self.trackedParts[inst] then
		return
	end

	if self.trackedParts[inst] <= 1 then
		self:removeInstance(inst)
	else
		self.trackedParts[inst] = self.trackedParts[inst] - 1
	end
end

function WorldProvider:removeInstance(inst)
	self.trackedParts[inst] = nil
	self.partIds[inst] = nil
end

local function isTypeAllowed(instance)
	if instance.ClassName == "Model" then
		return true
	end
	if instance.ClassName == "Attachment" then
		return true
	end
	if instance:IsA("BasePart") then
		return true
	end
	return false
end

function WorldProvider:tagAdded(tagName)
	assert(not self.trackedTags[tagName], "Newly added tag must not already be tracked")
	self.trackedTags[tagName] = true
	for _, obj in pairs(Collection:GetTagged(tagName)) do
		if isTypeAllowed(obj) then
			if obj:IsDescendantOf(workspace) then
				self:instanceAdded(obj)
			end
			if not self.instanceAncestryChangedConns[obj] then
				self.instanceAncestryChangedConns[obj] = obj.AncestryChanged:Connect(function()
					if not self.trackedParts[obj] and obj:IsDescendantOf(workspace) then
						self:instanceAdded(obj)
						self:updateParts()
					elseif self.trackedParts[obj] and not obj:IsDescendantOf(workspace) then
						self:removeInstance(obj)
						self:updateParts()
					end
				end)
			end
		end
	end
	self.instanceAddedConns[tagName] = Collection:GetInstanceAddedSignal(tagName):Connect(function(obj)
		if not isTypeAllowed(obj) then
			return
		end
		if obj:IsDescendantOf(workspace) then
			self:instanceAdded(obj)
			self:updateParts()
		end
		if not self.instanceAncestryChangedConns[obj] then
			self.instanceAncestryChangedConns[obj] = obj.AncestryChanged:Connect(function()
				if not self.trackedParts[obj] and obj:IsDescendantOf(workspace) then
					self:instanceAdded(obj)
					self:updateParts()
				elseif self.trackedParts[obj] and not obj:IsDescendantOf(workspace) then
					self:removeInstance(obj)
					self:updateParts()
				end
			end)
		end
	end)
	self.instanceRemovedConns[tagName] = Collection:GetInstanceRemovedSignal(tagName):Connect(function(obj)
		if not isTypeAllowed(obj) then
			return
		end
		self:instanceRemoved(obj)
		self:updateParts()
	end)
end

function WorldProvider:tagRemoved(tagName)
	assert(self.trackedTags[tagName], "Attempted to remove a tag that isn't tracked")
	self.trackedTags[tagName] = nil
	for _, obj in pairs(Collection:GetTagged(tagName)) do
		if obj:IsDescendantOf(workspace) then
			self:instanceRemoved(obj)
		end
	end
	self.instanceAddedConns[tagName] = nil
	self.instanceRemovedConns[tagName] = nil
end

function WorldProvider:willUnmount()
	self.onTagsUpdatedConn:Disconnect()

	self.instanceAddedConns:clean()
	self.instanceRemovedConns:clean()
	self.instanceAncestryChangedConns:clean()
	self.maid:clean()
end

function WorldProvider:render()
	local render = Roact.oneChild(self.props[Roact.Children])
	local partsList = self.state.partsList

	return render(partsList)
end

return WorldProvider
