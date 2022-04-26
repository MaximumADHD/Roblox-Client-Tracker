--[[
	Child class of MeshEditingContextBase the specifically handles getting mesh data from a
	BaseWrap.
]]

local LuaMeshEditingModule = script.Parent.Parent.Parent
local MeshWrapperObjects = LuaMeshEditingModule.Src.MeshWrapperObjects

local MeshEditingContextBase = require(script.Parent.MeshEditingContextBase)

local CageMeshWrapperObject = require(MeshWrapperObjects.CageMeshWrapperObject)

local CageEditingContext = setmetatable({}, {__index = MeshEditingContextBase})
CageEditingContext.__index = CageEditingContext

function CageEditingContext.new()
	local cageEditingContextObject = setmetatable(MeshEditingContextBase.new(), CageEditingContext)

	-- private functions
	local function _makeWrapperObjectsFromModel(model, meshWrapperObjects)
		if not model then
			return
		end

		for _, desc in ipairs(model:GetDescendants()) do
			if desc:IsA("WrapTarget") then
				table.insert(meshWrapperObjects, CageMeshWrapperObject.new(Enum.CageType.Outer, desc))
			end
		end

		if #meshWrapperObjects == 0 then
			return "Model: " ..model.Name .." does not contain any MeshPart(s) with a WrapTarget."
		end
	end

	local function _findModelFromInstanceAndGetCages(instance, meshWrapperObjects)
		-- likely part of an avatar/body, find WrapTargets for all body parts
		local model = instance:FindFirstAncestorOfClass("Model")
		return _makeWrapperObjectsFromModel(model, meshWrapperObjects)
	end

	local function _getCageFromMeshPart(cageType, meshPart, meshWrapperObjects)
		if cageType == Enum.CageType.Inner then
			local wrapLayer = meshPart:FindFirstChildOfClass("WrapLayer")
			if not wrapLayer then
				return "MeshPart must contain a WrapLayer"
			end
			table.insert(meshWrapperObjects, CageMeshWrapperObject.new(cageType, wrapLayer))
		elseif cageType == Enum.CageType.Outer then
			local wrapLayer = meshPart:FindFirstChildOfClass("WrapLayer")
			local wrapTarget = meshPart:FindFirstChildOfClass("WrapTarget")
			if (wrapLayer and wrapTarget) or
				(not wrapLayer and not wrapTarget) then
				return "MeshPart must contain either a WrapLayer or a WrapTarget, but not both"
			end

			if wrapLayer then
				table.insert(meshWrapperObjects, CageMeshWrapperObject.new(cageType, wrapLayer))
			elseif wrapTarget then
				return _findModelFromInstanceAndGetCages(meshPart, meshWrapperObjects)
			end
		end
	end

	--public functions
	function cageEditingContextObject:initFromCageMesh(cageType, instance)
		if not instance then
			error("instance is nil")
			return
		end

		if cageType ~= Enum.CageType.Inner and cageType ~= Enum.CageType.Outer then
			error("No valid Enum.CageType was provided")
			return
		end

		local errorString
		local meshWrapperObjects = {}

		if instance:IsA("WrapLayer") then
			table.insert(meshWrapperObjects, CageMeshWrapperObject.new(cageType, instance))
		elseif instance:IsA("MeshPart") then
			errorString = _getCageFromMeshPart(cageType, instance, meshWrapperObjects)
		elseif cageType == Enum.CageType.Outer then
			if instance:IsA("Model") then
				errorString = _makeWrapperObjectsFromModel(instance, meshWrapperObjects)
			elseif instance:IsA("WrapTarget") then
				errorString = _findModelFromInstanceAndGetCages(instance, meshWrapperObjects)
			else
				errorString = "Instance must be a BaseWrap, Model, or a MeshPart with a valid BaseWrap"
			end
		else
			errorString = "Instance must be a WrapLayer or a MeshPart with a valid WrapLayer"
		end

		if errorString then
			error(errorString)
			return
		end

		self:init(meshWrapperObjects)
	end

	return cageEditingContextObject
end

return CageEditingContext
