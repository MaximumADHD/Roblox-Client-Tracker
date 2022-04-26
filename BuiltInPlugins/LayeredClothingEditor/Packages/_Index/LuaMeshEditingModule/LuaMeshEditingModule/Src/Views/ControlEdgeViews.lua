--[[
	Object representing groups of ControlPointView's (each mesh in the context
	has its own group).
]]

local CoreGui = game:GetService("CoreGui")

local LuaMeshEditingModule = script.Parent.Parent.Parent
local ViewsFolder = LuaMeshEditingModule.Src.Views
local Util = LuaMeshEditingModule.Src.Util

local ControlEdgeView = require(ViewsFolder.ControlEdgeView)
local types = require(ViewsFolder.types)

local cleanupUnusedViews = require(Util.cleanupUnusedViews)

local ControlEdgeViews = {}
ControlEdgeViews.__index = ControlEdgeViews

local LINE_COLOR = Color3.new(0,0,0)

function ControlEdgeViews.new(context)
	local controlEdgeViewsObject = setmetatable({}, ControlEdgeViews)

	-- private variables
	local _views = {}
	local _meshEditingContext = context

	local _adornmentFolder = Instance.new("Folder", CoreGui)
	_adornmentFolder.Name = "ControlEdgeViews"

	-- public functions
	function controlEdgeViewsObject:render(props : ControlEdgeViewsProps)
		local controlPointPositions = props.ControlPointPositions
		local controlPointEdges = props.ControlPointEdges
		local adornees = props.Adornees
		local transparency = props.Transparency
		local selectedMesh = props.SelectedMesh

		for meshName, controlPointsForMesh in pairs(controlPointEdges) do
			if selectedMesh and meshName ~= selectedMesh then
				continue
			end
			local meshOrigin = _meshEditingContext:getMeshOrigin(meshName)

			for index in pairs(controlPointsForMesh) do
				local adornee = adornees:getAdornee(meshName)
				assert(adornee, "Adornee part should exist for: " ..meshName .." in game.Workspace.ControlPoints")
				if not _views[meshName] then
					_views[meshName] = {}
				end
				if not _views[meshName][index] then
					_views[meshName][index] = ControlEdgeView.new()
				end

				local startIndex = controlPointEdges[meshName][index].Start
				local endIndex = controlPointEdges[meshName][index].End

				_views[meshName][index]:render({
					Name = index,
					Transparency = transparency,
					StartPoint = controlPointPositions[meshName][startIndex],
					EndPoint = controlPointPositions[meshName][endIndex],
					Parent =  _adornmentFolder,
					Adornee = adornee,
					Color = LINE_COLOR,
				})
			end
		end

		cleanupUnusedViews(_views, controlPointPositions)
	end

	function controlEdgeViewsObject:cleanup()
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

	return controlEdgeViewsObject
end

return ControlEdgeViews
