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

local Constants = require(Util.Constants)
local getUnusedViewsToRemove = require(Util.getUnusedViewsToRemove)
local cleanupUnusedViews = require(Util.cleanupUnusedViews)

local ControlEdgeViews = {}
ControlEdgeViews.__index = ControlEdgeViews

local LINE_COLOR = Color3.new(0, 0, 0)
local ADORNMENT_FOLDER_NAME = "ControlEdgeViews"

function ControlEdgeViews.new(context)
	local controlEdgeViewsObject = setmetatable({}, ControlEdgeViews)

	-- private variables
	local _views = {}
	local _meshEditingContext = context

	local _adornmentFolder

	local _onFolderChanged
	local _folderAncestryChangedConnection
	local _folderChildRemovedConnection
	-- private functions
	local function _onFolderChangedWrapper()
		print(_onFolderChanged)
		if _onFolderChanged then
			_onFolderChanged()
		end
	end

	local function _connect()
		_folderAncestryChangedConnection = _adornmentFolder.AncestryChanged:Connect(_onFolderChangedWrapper)
		_folderChildRemovedConnection = _adornmentFolder.ChildRemoved:Connect(_onFolderChangedWrapper)
	end
	-- public functions
	function controlEdgeViewsObject:render(props: types.ControlEdgeViewsProps)
		local controlPointPositions = props.ControlPointPositions
		local controlPointEdges = props.ControlPointEdges
		local adornees = props.Adornees
		local transparency = props.Transparency
		local selectedMesh = props.SelectedMesh
		_onFolderChanged = props.FolderChangedCallback

		if not _adornmentFolder then
			_adornmentFolder = Instance.new("Folder")
			_adornmentFolder.Parent = CoreGui
			_adornmentFolder.Name = ADORNMENT_FOLDER_NAME
			_adornmentFolder:GetPropertyChangedSignal("Name"):Connect(function()
				if _adornmentFolder.Name ~= ADORNMENT_FOLDER_NAME then
					_adornmentFolder.Name = ADORNMENT_FOLDER_NAME
				end
			end)
			_connect()
		end

		for meshName, controlPointsForMesh in pairs(controlPointEdges) do
			if selectedMesh and meshName ~= selectedMesh then
				continue
			end
			local meshOrigin = _meshEditingContext:getMeshOrigin(meshName)

			for index in pairs(controlPointsForMesh) do
				local adornee = adornees:getAdornee(meshName)
				assert(
					adornee,
					"Adornee part should exist for: "
						.. meshName
						.. " in game.Workspace."
						.. Constants.ControlPointsFolderName
				)
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
					Parent = _adornmentFolder,
					Adornee = adornee,
					Color = LINE_COLOR,
				})
			end
		end

		local viewsToRemove = getUnusedViewsToRemove(_views, controlPointEdges)
		if #viewsToRemove > 0 then
			self:disconnect()
			cleanupUnusedViews(_views, viewsToRemove)
			_connect()
		end
	end

	function controlEdgeViewsObject:disconnect()
		if _folderAncestryChangedConnection then
			_folderAncestryChangedConnection:Disconnect()
			_folderAncestryChangedConnection = nil
		end
		if _folderChildRemovedConnection then
			_folderChildRemovedConnection:Disconnect()
			_folderChildRemovedConnection = nil
		end
	end

	function controlEdgeViewsObject:cleanup()
		self:disconnect()
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
