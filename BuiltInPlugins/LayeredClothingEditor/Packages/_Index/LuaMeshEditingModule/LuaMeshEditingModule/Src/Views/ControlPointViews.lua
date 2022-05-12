--[[
	Object representing groups of ControlEdgeView's (each mesh in the context
	has its own group).
]]
local Workspace = game:GetService("Workspace")

local CoreGui = game:GetService("CoreGui")

local LuaMeshEditingModule = script.Parent.Parent.Parent
local ViewsFolder = LuaMeshEditingModule.Src.Views
local Util = LuaMeshEditingModule.Src.Util

local ControlPointView = require(ViewsFolder.ControlPointView)
local types = require(ViewsFolder.types)

local Constants = require(Util.Constants)
local getUnusedViewsToRemove = require(Util.getUnusedViewsToRemove)
local cleanupUnusedViews = require(Util.cleanupUnusedViews)
local Selectable = require(Util.Selectable)

local ControlPointViews = {}
ControlPointViews.__index = ControlPointViews

local ADORNMENT_FOLDER_NAME = "ControlPointViews"
local PART_FOLDER_NAME = "ControlPoints"

function ControlPointViews.new(context)
	local controlPointsViewObject = setmetatable({}, ControlPointViews)

	-- private variables
	local _views = {}
	local _meshEditingContext = context

	local _adornmentFolder
	local _partFolder
	local _onFolderChanged

	local _adornmentFolderAncestryChangedConnection
	local _adornmentFolderChildRemovedConnection
	local _partFolderAncestryChangedConnection
	local _partFolderChildRemovedConnection

	-- private functions
	local function _onFolderChangedWrapper()
		if _onFolderChanged then
			_onFolderChanged()
		end
	end

	local function _connect()
		_adornmentFolderAncestryChangedConnection = _adornmentFolder.AncestryChanged:Connect(_onFolderChangedWrapper)
		_adornmentFolderChildRemovedConnection = _adornmentFolder.ChildRemoved:Connect(_onFolderChangedWrapper)
		_partFolderAncestryChangedConnection = _partFolder.AncestryChanged:Connect(_onFolderChangedWrapper)
		_partFolderChildRemovedConnection = _partFolder.ChildRemoved:Connect(_onFolderChangedWrapper)
	end

	-- public functions
	function controlPointsViewObject:render(props: types.ControlPointViewsProps)
		local controlPointPositions = props.ControlPointPositions
		local adornees = props.Adornees
		local transparency = props.Transparency
		local isSelected = props.IsSelected
		local isHovered = props.IsHovered
		local selectedMesh = props.SelectedMesh
		_onFolderChanged = props.FolderChangedCallback

		if not _adornmentFolder and not _partFolder then
			_adornmentFolder = Instance.new("Folder")
			_adornmentFolder.Parent = CoreGui
			_adornmentFolder.Name = ADORNMENT_FOLDER_NAME
			_adornmentFolder:GetPropertyChangedSignal("Name"):Connect(function()
				if _adornmentFolder.Name ~= ADORNMENT_FOLDER_NAME then
					_adornmentFolder.Name = ADORNMENT_FOLDER_NAME
				end
			end)

			_partFolder = Instance.new("Folder")
			_partFolder.Parent = game.Workspace
			_partFolder.Name = PART_FOLDER_NAME
			_partFolder:GetPropertyChangedSignal("Name"):Connect(function()
				if _partFolder.Name ~= PART_FOLDER_NAME then
					_partFolder.Name = PART_FOLDER_NAME
				end
			end)
			_connect()
		end

		for meshName, controlPointsForMesh in pairs(controlPointPositions) do
			if selectedMesh and meshName ~= selectedMesh then
				continue
			end
			local meshOrigin = _meshEditingContext:getMeshOrigin(meshName)

			for index in pairs(controlPointsForMesh) do
				local parent = adornees:getAdornee(meshName)
				assert(
					parent,
					"Adornee part should exist for: "
						.. meshName
						.. " in game.Workspace."
						.. Constants.ControlPointsFolderName
				)
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
					PartParent = _partFolder,
					AdornmentParent = _adornmentFolder,
					Selected = if isSelected(meshName, index) then true else false,
					Hovered = isHovered(meshName, index),
					Shape = "Sphere",
					Size = Constants.ControlPoint.Size,
					Weight = isSelected(meshName, index),
				})
			end
		end

		local viewsToRemove = getUnusedViewsToRemove(_views, controlPointPositions)
		if #viewsToRemove > 0 then
			self:disconnect()
			cleanupUnusedViews(_views, viewsToRemove)
			_connect()
		end
	end

	function controlPointsViewObject:disconnect()
		if _adornmentFolderAncestryChangedConnection then
			_adornmentFolderAncestryChangedConnection:Disconnect()
			_adornmentFolderAncestryChangedConnection = nil
		end
		if _adornmentFolderChildRemovedConnection then
			_adornmentFolderChildRemovedConnection:Disconnect()
			_adornmentFolderChildRemovedConnection = nil
		end
		if _partFolderAncestryChangedConnection then
			_partFolderAncestryChangedConnection:Disconnect()
			_partFolderAncestryChangedConnection = nil
		end
		if _partFolderChildRemovedConnection then
			_partFolderChildRemovedConnection:Disconnect()
			_partFolderChildRemovedConnection = nil
		end
	end

	function controlPointsViewObject:cleanup()
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
		if _partFolder then
			_partFolder:Destroy()
			_partFolder = nil
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
