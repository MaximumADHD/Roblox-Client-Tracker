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
			local meshOrigin = _meshEditingContext.GetMeshOrigin(meshName)

			for index in pairs(controlPointsForMesh) do
				local parent = adornees:getAdornee(meshName)
				assert(parent, "Adornee part should exist for: " ..meshName .." in game.Workspace.ControlPoints")
				if not _views[meshName] then
					_views[meshName] = {}
				end
				if not _views[meshName][index] then
					_views[meshName][index] = ControlPointView.new()
				end

				_views[meshName][index]:render({
					Name = index,
					Transparency = transparency,
					Position = meshOrigin * controlPointPositions[meshName][controlPointIndex],
					PartParent = parent,
					AdornmentParent = _adornmentFolder,
					Selected = isSelected(meshName, controlPointIndex),
					Hovered = isHovered(meshName, controlPointIndex),
					Shape = "Sphere",
					Size = Constants.ControlPoint.Size,
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

	function controlPointsViewObject:getSelectables()
		local selectables = {}
		for meshName, viewsPerMesh in pairs(_views) do
			for index, view in ipairs(viewsPerMesh) do
				table.insert(selectables, {
					Center = view.controlPoint.CFrame.p,
					Selectable = {
						MeshName = meshName,
						ID = index,
					},
				})
			end
		end
		return selectables
	end

	return controlPointsViewObject
end

return ControlPointViews
