--[[
	Container for various IK related controls and windows. Keeps
	track of state for IK dropdown menu and window. Spawns temporary
	constraints for an R15 that doesn't have any previously.

	Props:
		UDim2 Position = position of the IK Button frame.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local UILibrary = require(Plugin.UILibrary)

local Button = UILibrary.Component.Button

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local RigUtils = require(Plugin.Src.Util.RigUtils)
local Constants = require(Plugin.Src.Util.Constants)

local IKWindow = require(Plugin.Src.Components.IK.IKWindow)
local R15IKRig = require(Plugin.Src.Components.IK.R15IKRig)

local ToggleIKEnabled = require(Plugin.Src.Thunks.ToggleIKEnabled)
local ToggleShowTree = require(Plugin.Src.Thunks.ToggleShowTree)
local TogglePinnedPart = require(Plugin.Src.Thunks.TogglePinnedPart)
local SetIKEnabled = require(Plugin.Src.Actions.SetIKEnabled)
local SetIKMode = require(Plugin.Src.Actions.SetIKMode)
local SetShowTree = require(Plugin.Src.Actions.SetShowTree)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)

local IKController = Roact.PureComponent:extend("IKController")

local IK_BUTTON_WIDTH = 40
local IK_BUTTON_HEIGHT = 18

function IKController:init()
	self.state = {
		showMenu = false,
		showTree = false,
	}

	self.showMenu = function()
		self:setState({
			showMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showMenu = false,
		})
	end

	self.setShowTree = function(showTree)
		self:setState({
			showTree = showTree,
		})
	end

	self.makeChainHelper = function(chain, motorMap, part)
		local motor = motorMap[part.Name]
		if motor then
			chain[part.Name] = true
			self.makeChainHelper(chain, motorMap, motor.Part0)
		end
	end

	self.getLastSelectedTrack = function()
		if self.props.SelectedTracks then
			return self.props.SelectedTracks[#self.props.SelectedTracks]
		end
	end

	self.makeChains = function()
		local selectedTrack = self.getLastSelectedTrack()
		local parts, motorMap = RigUtils.getRigInfo(self.props.RootInstance)
		local chain = {}

		local pinnedParts = self.props.PinnedParts
		if self.props.IKMode == Constants.IK_MODE.BodyPart then
			pinnedParts = {}
		end

		for _, part in ipairs(parts) do
			if not pinnedParts[part] then
				chain[part.Name] = false
			end
		end

		if selectedTrack then
			local part = RigUtils.getPartByName(self.props.RootInstance, selectedTrack)
			if part then
				if self.props.IKMode == Constants.IK_MODE.BodyPart then
					pinnedParts = RigUtils.pinForLimbMode(part, motorMap)
				end
				self.makeChainHelper(chain, motorMap, motorMap[selectedTrack].Part1)
				for pinnedPart, pinned in pairs(pinnedParts) do
					if pinnedPart.Name ~= selectedTrack and pinned then
						self.makeChainHelper(chain, motorMap, pinnedPart)
					end
				end
			end
		end

		return chain
	end
end

--[[
	This sucks, but we have to do it! Rodux won't let us yield
	when RoactRodux gets a changed event from the store updating.
	Unfortunately, creating a PluginGui is a YieldFunction, so
	we have to defer the update to a later time so that Rodux has
	time to update before the yield occurs.
]]
function IKController:didUpdate()
	local nextProps = self.props
	local prevState = self.state

	if nextProps.ShowTree ~= prevState.showTree then
		if nextProps.ShowTree ~= nil then
			-- Have to wait because we are creating a PluginGui dialog
			spawn(function()
				self.setShowTree(nextProps.ShowTree)
			end)
		else
			-- Don't have to wait if we are deleting the dialog
			self.setShowTree(nextProps.ShowTree)
		end
	end
end

function IKController:render()
	return withTheme(function(theme)
		return withLocalization(function(localization)
			local props = self.props
			local state = self.state

			local toggleShowTree = props.ToggleShowTree
			local canUseIK, emptyR15 = RigUtils.canUseIK(props.RootInstance)

			local selectedTrack = self.getLastSelectedTrack()

			return self.props.RootInstance and Roact.createElement("Frame", {
				Position = props.Position,
				Size = UDim2.new(0, IK_BUTTON_WIDTH, 0, IK_BUTTON_HEIGHT),
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0, 0.5),
			}, {
				IKButton = props.RootInstance and canUseIK and Roact.createElement(Button, {
					Style = state.showTree and "IKActive" or "IKDefault",
					Size = UDim2.new(1, 0, 1, 0),
					RenderContents = function(_, hover)
						return Roact.createElement("TextLabel", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 1, 0),
							TextYAlignment = Enum.TextYAlignment.Center,
							TextSize = theme.ikTheme.textSize,
							Text = localization:getText("Title", "IK"),
							Font = theme.font,
							TextColor3 = theme.ikTheme.textColor,
						})
					end,
					OnClick = toggleShowTree,
				}),

				IKWindow = props.ShowTree and state.showTree and Roact.createElement(IKWindow, {
					RootInstance = props.RootInstance,
					PinnedParts = props.PinnedParts,
					IKEnabled = props.IKEnabled,
					ShowTree = props.ShowTree,
					SelectedTrack = selectedTrack,
					SetSelectedTracks = props.SetSelectedTracks,
					ToggleIKEnabled = props.ToggleIKEnabled,
					TogglePinnedPart = props.TogglePinnedPart,
					SetShowTree = props.SetShowTree,
					SetIKEnabled = props.SetIKEnabled,
					SetIKMode = props.SetIKMode,
					Chain = self.makeChains(),
					IKMode = props.IKMode,
					IsR15 = emptyR15,
				}),

				R15IKRig = props.IKEnabled and emptyR15 and Roact.createElement(R15IKRig, {
					RootInstance = props.RootInstance,
				})
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	return {
		ShowTree = state.Status.ShowTree,
		IKMode = state.Status.IKMode,
		IKEnabled = state.Status.IKEnabled,
		RootInstance = state.Status.RootInstance,
		PinnedParts = state.Status.PinnedParts,
		SelectedTracks = state.Status.SelectedTracks,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		ToggleShowTree = function()
			dispatch(ToggleShowTree())
		end,

		SetIKMode = function(mode)
			dispatch(SetIKMode(mode))
		end,

		SetIKEnabled = function(enabled)
			dispatch(SetIKEnabled(enabled))
		end,

		ToggleIKEnabled = function()
			dispatch(ToggleIKEnabled())
		end,

		TogglePinnedPart = function(part)
			dispatch(TogglePinnedPart(part))
		end,

		SetShowTree = function(show)
			dispatch(SetShowTree(show))
		end,

		SetSelectedTracks = function(tracks)
			dispatch(SetSelectedTracks(tracks))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(IKController)