--[[
	Object representing groups of ControlEdgeView's (each mesh in the context
	has its own group).
]]

local CoreGui = game:GetService("CoreGui")

local LuaMeshEditingModule = script.Parent.Parent.Parent
local ViewsFolder = LuaMeshEditingModule.Src.Views
local Util = LuaMeshEditingModule.Src.Util

local ControlPointView = require(ViewsFolder.ControlPointView)
local types = require(ViewsFolder.types)

local Constants = require(Util.Constants)
local cleanupUnusedViews = require(Util.cleanupUnusedViews)
local Selectable = require(Util.Selectable)

local ControlPointViews = {}
ControlPointViews.__index = ControlPointViews

function ControlPointViews.new(context)
	local controlPointsViewObject = setmetatable({}, ControlPointViews)

	-- private variables
	local _views = {}
	local _meshEditingContext = context

	local _adornmentFolder = Instance.new("Folder", CoreGui)
	_adornmentFolder.Name = "ControlPointViews"

	-- public functions
	function controlPointsViewObject:render(props : ControlPointViewsProps)
		local controlPointPositions = props.ControlPointPositions
		local adornees = props.Adornees
		local transparency = props.Transparency
		local isSelected = props.IsSelected
		local isHovered = props.IsHovered
		local selectedMesh = props.SelectedMesh

		for meshName, controlPointsForMesh in pairs(controlPointPositions) do
			if selectedMesh and meshName ~= selectedMesh then
				continue
			end
			local meshOrigin = _meshEditingContext:getMeshOrigin(meshName)

			for index in pairs(controlPointsForMesh) do
				local parent = adornees:getAdornee(meshName)
				assert(parent, "Adornee part should exist for: " ..meshName .." in game.Workspace." ..Constants.ControlPointsFolderName)
				if not _views[meshName] then
					_views[meshName] = {}
				end
				if not _views[meshName][index] then
					_views[meshName][index] = ControlPointView.new()
				end

				_views[meshName][index]:render({
					Name = index,
					Transparency = transparency,
					Position = meshOrigin * controlPointPositions[meshName][index],
					PartParent = parent,
					AdornmentParent = _adornmentFolder,
					Selected = if isSelected(meshName, index) then true else false,
					Hovered = isHovered(meshName, index),
					Shape = "Sphere",
					Size = Constants.ControlPoint.Size,
					Weight = isSelected(meshName, index)
				})
			end
		end

		cleanupUnusedViews(_views, controlPointPositions)
	end

	function controlPointsViewObject:cleanup()
		for _, viewsPerMesh in pairs(_views) do
			for _, view in pairs(viewsPerMesh) do
				view:cleanup()
			end
		end
		if _adornmentFolder then
			_adornmentFolder:Destroy()
			_adornmentFolder = nil
		end
		_views = {}
	end

	function controlPointsViewObject:getSelectablesForMesh(meshName, selectables)
		if not selectables then
			error("Could not get selectables for mesh, selectables argument was nil.")
			return
		end
		local viewsPerMesh = _views[meshName]
		if not viewsPerMesh then
			error("No views were found for mesh: " ..meshName)
			return
		end
		for index, view in ipairs(viewsPerMesh) do
			table.insert(selectables, {
				Center = view.controlPoint.CFrame.p,
				Selectable = Selectable.new(meshName, Index),
			})
		end
	end

	function controlPointsViewObject:getSelectables()
		local selectables = {}
		for meshName in pairs(_views) do
			self:getSelectablesForMesh(meshName, selectables)
		end
		return selectables
	end

	return controlPointsViewObject
end

return ControlPointViews
