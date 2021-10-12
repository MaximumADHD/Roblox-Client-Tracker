--[[
	Connects to Run and Selection services in order to detect
	when a user has selected an instance in either the Workspace
	Viewport or the Explorer.
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UpdateRootInstance = require(Plugin.Src.Thunks.UpdateRootInstance)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local ErrorDialogContents = require(Plugin.Src.Components.BlockingDialog.ErrorDialogContents)

local showBlockingDialog = require(Plugin.Src.Util.showBlockingDialog)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)

local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Selection = game:GetService("Selection")
local Constants = require(Plugin.Src.Util.Constants)
local SignalsContext = require(Plugin.Src.Context.Signals)
local SetSelectedTrackInstances = require(Plugin.Src.Actions.SetSelectedTrackInstances)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)
local DeleteTrack = require(Plugin.Src.Thunks.DeleteTrack)

local GetFFlagRevertExplorerSelection = require(Plugin.LuaFlags.GetFFlagRevertExplorerSelection)
local GetFFlagUseLuaDraggers = require(Plugin.LuaFlags.GetFFlagUseLuaDraggers)
local GetFFlagCreateSelectionBox = require(Plugin.LuaFlags.GetFFlagCreateSelectionBox)

local InstanceSelector = Roact.PureComponent:extend("InstanceSelector")

local function getModel(instance)
	if not instance or instance == game.Workspace then
		return nil
	end

	if instance:IsA("Model") then
		return instance
	else
		return getModel(instance.Parent)
	end
end

local function isInWorkspace(instance)
	return instance:FindFirstAncestor(game.Workspace.Name) ~= nil
end

local function getSelectedInstance()
	if #Selection:Get() > 0 then
		return Selection:Get()[1]
	end
end

local function getMouseTarget(self)
	return self.props.Mouse:get().Target
end

local function isValidRig(instance)
	return instance and isInWorkspace(instance) and RigUtils.getAnimationController(instance) ~= nil
end

function InstanceSelector:isCurrentRootInstance(instance)
	return instance == self.props.RootInstance
end

function InstanceSelector:selectValidInstance(validFunc, invalidFunc)
	local target = getMouseTarget(self)
	if target ~= nil then
		local model = getModel(target)
		if model and not self:isCurrentRootInstance(model) and isValidRig(model) then
			validFunc(model)
		elseif invalidFunc then
			invalidFunc()
		end
	end
end

function InstanceSelector:showErrorDialogs(plugin, errorList)
	for _, errorEntry in ipairs(errorList) do
		local data = errorEntry.Data or {}
		local names = {}
		for index, dataEntry in ipairs(data) do
			names[index] = dataEntry.Name
		end
		showBlockingDialog(plugin, Roact.createElement(ErrorDialogContents, {
			ErrorType = errorEntry.ID,
			Entries = names,
		}))
	end
end

function InstanceSelector:init()
	self.state = {
		HoverPart = nil
	}

	self.selectInstance = function(instance)
		Selection:Set({instance})
	end

	self.deselect = function()
		Selection:Set({})
	end

	self.deselectAndRemoveSelectedTrackInstances = function()
		self.deselect()
		if (not GetFFlagRevertExplorerSelection()) or GetFFlagUseLuaDraggers() then
			self.props.SetSelectedTrackInstances({})

			self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged):Fire()
		end
	end

	self.highlightInstance = function(instance)
		self:setState({
			HoverPart = instance,
		})
	end

	self.removeHighlight = function()
		self:setState({
			HoverPart = Roact.None,
		})
	end

	self.SelectionChangedHandle = Selection.SelectionChanged:Connect(function()
		local selectedInstance = getSelectedInstance()
		local rigInstance = getModel(selectedInstance)
		local plugin = self.props.Plugin
		local selectionSignal

		if not GetFFlagRevertExplorerSelection() then
			selectionSignal = self.props.Signals:get(Constants.SIGNAL_KEYS.SelectionChanged)

			-- if the user clicks the selected rig again, do nothing
			if selectedInstance == self.props.RootInstance then
				return
			end
		end

		if isValidRig(rigInstance) and not self:isCurrentRootInstance(rigInstance) then
			local hasErrors, errorList = RigUtils.rigHasErrors(rigInstance)
			if not hasErrors then
				self.props.UpdateRootInstance(rigInstance, self.props.Analytics)
				if not GetFFlagRevertExplorerSelection() then
					if self.descendantRemoving then
						self.descendantRemoving:Disconnect()
					end
					if self.ancestryChanged then
						self.ancestryChanged:Disconnect()
					end

					self.descendantRemoving = rigInstance.DescendantRemoving:Connect(function(descendant)
						-- if a part of the rig is deleted, delete the track and disable the draggers
						if descendant:IsA("BasePart") then
							self.props.DeleteTrack(descendant.Name, self.props.Analytics)
							self.props.SetSelectedTrackInstances({})
							selectionSignal:Fire()
						end
						-- if a motor6d is deleted, delete the track and disable the draggers on the respective part
						if descendant:IsA("Motor6D") then
							local part = descendant.Parent
							self.props.DeleteTrack(part.Name, self.props.Analytics)
							self.props.SetSelectedTrackInstances({})
							selectionSignal:Fire()
						end
					end)

					-- if the selected rig is deleted, delete all tracks,  hide the draggers and deactivate the plugin
					self.ancestryChanged = rigInstance.AncestryChanged:Connect(function(child, newParent)
						self.deselectAndRemoveSelectedTrackInstances()
						for _, track in ipairs(self.props.Tracks) do
							self.props.DeleteTrack(track.Name, self.props.Analytics)
						end
						plugin:get():Deactivate()
					end)
				end
				self.deselectAndRemoveSelectedTrackInstances()
			else
				if GetFFlagUseLuaDraggers() then 
					self.deselectAndRemoveSelectedTrackInstances()
				end
				plugin:get():Deactivate()
				self:showErrorDialogs(plugin:get(), errorList)
			end
		elseif GetFFlagRevertExplorerSelection() and selectedInstance and plugin then
			if GetFFlagUseLuaDraggers() then 
				self.deselectAndRemoveSelectedTrackInstances()
			end
			plugin:get():Deactivate()
		-- if the user clicks on a part in the hierarchy, it gets selected and the draggers switch to it. otherwise we deselect the previously selected part
		elseif not GetFFlagRevertExplorerSelection() and Selection:Get() ~= self.props.SelectedTrackInstances and selectedInstance ~= nil then
			if selectedInstance:IsA("BasePart") then
				self.props.SetSelectedTrackInstances(selectedInstance)
				selectionSignal:Fire()
			else
				self.props.SetSelectedTrackInstances({})
				selectionSignal:Fire()
			end
		end
	end)
end

function InstanceSelector:didMount()
	self.deselect()

	self.Heartbeat = RunService.Heartbeat:Connect(function(step)
		self:selectValidInstance(self.highlightInstance, self.removeHighlight)
	end)
	local plugin = self.props.Plugin
	if plugin then
		plugin:get():Activate(true)

		self.MouseButtonDown = self.props.Mouse:get().Button1Down:Connect(function()
			if GetFFlagRevertExplorerSelection() and not GetFFlagUseLuaDraggers() then
				self:selectValidInstance(self.selectInstance, self.deselect)
			else
				self:selectValidInstance(self.selectInstance)
			end
		end)
	end
end

function InstanceSelector:render()
	local state = self.state
	local props = self.props

	local hoverPart = state.HoverPart
	local container = props.Container or CoreGui
	local children = {}
	if GetFFlagCreateSelectionBox() and props.SelectedTrackInstances then
		for index, part in ipairs(props.SelectedTrackInstances) do
			children["SelectionBox" ..index] = Roact.createElement("SelectionBox", {
				Archivable = false,
				Adornee = part,
				LineThickness = 0.01,
				Transparency = 0.5,
				SurfaceTransparency = 0.8,
			})
		end
	end

	children["HoverBox"] =  hoverPart and Roact.createElement("SelectionBox", {
		Archivable = false,
		Adornee = hoverPart,
		LineThickness = 0.1,
	})

	return Roact.createElement(Roact.Portal, {
		target = container,
	}, children)
end

function InstanceSelector:willUnmount()
	if GetFFlagUseLuaDraggers() then 
		self.deselectAndRemoveSelectedTrackInstances()
	end

	if self.Heartbeat then
		self.Heartbeat:Disconnect()
	end

	if self.SelectionChangedHandle then
		self.SelectionChangedHandle:Disconnect()
	end

	if self.MouseButtonDown then
		self.MouseButtonDown:Disconnect()
	end

	if self.props.Plugin then
		self.props.Plugin:get():Deactivate()
	end

	if not GetFFlagRevertExplorerSelection() then
		if self.descendantRemoving then
			self.descendantRemoving:Disconnect()
		end

		if self.ancestryChanged then
			self.ancestryChanged:Disconnect()
		end
	end
end

if FFlagAnimationClipEditorWithContext then
	InstanceSelector = withContext({
		Plugin = ContextServices.Plugin,
		Mouse = ContextServices.Mouse,
		Analytics = ContextServices.Analytics,
		Signals = SignalsContext,  -- Unused if GetFFlagRevertExplorerSelection
	})(InstanceSelector)
else
	ContextServices.mapToProps(InstanceSelector, {
		Plugin = ContextServices.Plugin,
		Mouse = ContextServices.Mouse,
		Analytics = ContextServices.Analytics,
		Signals = SignalsContext,  -- Unused if GetFFlagRevertExplorerSelection
	})
end


local function mapStateToProps(state, props)
	return {
		RootInstance = state.Status.RootInstance,
		SelectedTrackInstances = state.Status.SelectedTrackInstances,  -- Unused if GetFFlagRevertExplorerSelection
		Tracks = state.Status.Tracks,  -- Unused if GetFFlagRevertExplorerSelection
	}
end

local function mapDispatchToProps(dispatch)
	return {
		-- Unused if GetFFlagRevertExplorerSelection
		SetSelectedTrackInstances = function(tracks)
			local trackNames = {}
			for index, track in pairs(tracks) do
				trackNames[index] = track.Name
			end
			dispatch(SetSelectedTrackInstances(tracks))
			dispatch(SetSelectedTracks(trackNames))
		end,
		-- Unused if GetFFlagRevertExplorerSelection
		DeleteTrack = function(trackName, analytics)
			dispatch(AddWaypoint())
			dispatch(DeleteTrack(trackName, analytics))
		end,
		UpdateRootInstance = function(rootInstance, analytics)
			dispatch(UpdateRootInstance(rootInstance, analytics))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(InstanceSelector)