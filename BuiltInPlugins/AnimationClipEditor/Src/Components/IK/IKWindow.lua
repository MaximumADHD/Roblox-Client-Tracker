--[[
	Window that displays Joint Hierarchy and pinning controls for IK.

	Props:
		Instance RootInstance = instance currently being animated in the editor.
		string IKMode = represents IK manipulation mode, either Full Body or Body Part,
		bool IsR15 = if the root instance is an R15 or a custom model
		bool IKEnabled = whether or not animation editor is currently using IK to manipulate the rig
		bool ShowTree = whether or not the IK editor window is visible
		string SelectedTrack = name of the track/joint currently selected in the editor
		table Chain = represents possible and active IK Chains (used for hierarchy line highlighting)
			table is expected in the following format:
			{[partName] = true/false, ...}
			if the part is present in the table, this means it is possible for it to be in an IK
			chain currently. If the value is true, then this means the part is currently part of
			the IK chain being manipulated.
		table PinnedParts = tells whether each part in the instance is pinned or not
			{[part] = true/false, ...}

		function SetIKMode(string) = sets current IK manipulation mode
		function TogglePinnedPart = toggles if a joint is pinned for IK manipulation or not
		function ToggleIKEnabled = toggles if IK is on or off in animation editor
		function SetIKEnabled(bool) = sets if IK is on or off
		function SetShowTree = sets if the IK window is visible
		function SetSelectedTracks(string) = sets currently selected joint to given string
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local Button = Framework.UI.Button

local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local DockWidget = StudioUI.DockWidget

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Input = require(Plugin.Src.Util.Input)

local IKTreeView = require(Plugin.Src.Components.IK.IKTreeView)
local IKModeButtons = require(Plugin.Src.Components.IK.IKModeButtons)

local IKWindow = Roact.PureComponent:extend("IKWindow")

local SIZE = Vector2.new(260, 440)
local RADIO_BUTTON_GROUP_HEIGHT = 32
local PADDING = 8

function IKWindow:init()
	self.state = {
		treeArray = {},
	}

	self.hideTree = function()
		local props = self.props
		if props.ShowTree then
			props.SetShowTree(false)
		end
		if props.IKEnabled then
			props.SetIKEnabled(false)
		end
	end

	self.onDockWidgetLoaded = function(widget)
		if widget:IsA("PluginGui") then
			widget:BindToClose(self.hideTree)
		end
	end

	self.onTreeUpdated = function(nodesArray)
		self:setState({
			treeArray = nodesArray,
		})
	end

	self.changeSelectedTrack = function(increment)
		local state = self.state
		local props = self.props

		local treeArray = state.treeArray
		local selectedTrack = props.SelectedTrack
		local SetSelectedTracks = props.SetSelectedTracks

		local currentIndex = 0
		for index, node in ipairs(treeArray) do
			if selectedTrack == node then
				currentIndex = index
				break
			end
		end

		local newIndex = math.clamp(currentIndex + increment, 1, #treeArray)
		SetSelectedTracks({treeArray[newIndex]})
	end

	self.onInputBegan = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if Input.isUp(input.KeyCode) then
				self.changeSelectedTrack(-1)
			elseif Input.isDown(input.KeyCode) then
				self.changeSelectedTrack(1)
			end
		end
	end
end

function IKWindow:willUnmount()
	self.hideTree()
end

function IKWindow:render()
	local localization = self.props.Localization
	local props = self.props
	local theme = props.Theme:get("PluginTheme")
	local rootInstance = props.RootInstance
	local pinnedParts = props.PinnedParts
	local isR15 = props.IsR15
	local ikMode = props.IKMode
	local ikEnabled = props.IKEnabled
	local selectedTrack = props.SelectedTrack
	local SetSelectedTracks = props.SetSelectedTracks

	local togglePinnedPart = props.TogglePinnedPart
	local toggleIKEnabled = props.ToggleIKEnabled
	local setIKMode = props.SetIKMode

	local treePosY = isR15 and RADIO_BUTTON_GROUP_HEIGHT + PADDING or 0
	local r15treeOffsetY = -2 * RADIO_BUTTON_GROUP_HEIGHT - 4 * PADDING
	local customTreeOffsetY = -RADIO_BUTTON_GROUP_HEIGHT - 3 * PADDING
	local treeSizeOffsetY = isR15 and r15treeOffsetY or customTreeOffsetY

	return Roact.createElement(DockWidget, {
		Title = localization:getText("Title", "ManageIK"),
		Name = "ManageIK",
		ZIndexBehavior = Enum.ZIndexBehavior.Global,

		InitialDockState = Enum.InitialDockState.Left,
		InitialEnabled = true,
		InitialEnabledShouldOverrideRestore = true,
		Size = SIZE,
		MinSize = SIZE,
		OnClose = self.hideTree,
		Enabled = true,
		[Roact.Ref] = self.onDockWidgetLoaded,
	}, {
		Container = Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.backgroundColor,
			Size = UDim2.new(1, 0, 1, 0),
			[Roact.Event.InputBegan] = self.onInputBegan,
		}, {
			IKModeControls = isR15 and ikEnabled and Roact.createElement(IKModeButtons, {
				Height = RADIO_BUTTON_GROUP_HEIGHT,
				IKMode = ikMode,
				SetIKMode = setIKMode,
			}),

			TreeView = rootInstance and ikEnabled and Roact.createElement(IKTreeView, {
				Size = UDim2.new(1, 0, 1, treeSizeOffsetY),
				Position = UDim2.new(0, 0, 0, treePosY),
				RootInstance = rootInstance,
				PinnedParts = pinnedParts,
				TogglePinnedPart = togglePinnedPart,
				SelectedTrack = selectedTrack,
				SetSelectedTracks = SetSelectedTracks,
				Chain = props.Chain,
				IKMode = ikMode,
				TreeArray = self.state.treeArray,
				OnTreeUpdated = self.onTreeUpdated,
			}),

			EnableIKPrompt = not ikEnabled and Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, -PADDING, 1, -RADIO_BUTTON_GROUP_HEIGHT - PADDING),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = theme.ikTheme.textSize,
				TextColor3 = theme.ikTheme.textColor,
				TextWrapped = true,
				Font = theme.font,
				Text = localization:getText("IKMenu", "Prompt"),
			}),

			BottomFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, RADIO_BUTTON_GROUP_HEIGHT + 2 * PADDING),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = theme.ikTheme.headerColor,
				BorderSizePixel = 1,
				BorderColor3 = theme.ikTheme.headerBorder,
			}, {
				EnableIKButton = Roact.createElement(Button, {
					AnchorPoint = Vector2.new(0.5, 1),
					Position = UDim2.new(0.5, 0, 1, -PADDING),
					IsRound = true,
					Size = UDim2.new(1, -PADDING, 0, RADIO_BUTTON_GROUP_HEIGHT),
					OnClick = toggleIKEnabled,
				}, {
						TextLabel = Roact.createElement("TextLabel", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 1, 0),
							TextYAlignment = Enum.TextYAlignment.Center,
							TextSize = theme.ikTheme.textSize,
							Text = ikEnabled and localization:getText("IKMenu", "DisableIK")
								or localization:getText("IKMenu", "EnableIK"),
							Font = theme.font,
							TextColor3 = theme.ikTheme.textColor,
						})
				})
			})
		})
	})
end

ContextServices.mapToProps(IKWindow, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
})


return IKWindow
