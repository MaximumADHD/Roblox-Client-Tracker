--[[
	Container for various Facial Animation related controls and windows.

	Props:
		UDim2 Position = position of the FaceControlsEditor Button frame.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local Button = Framework.UI.Button
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local RigUtils = require(Plugin.Src.Util.RigUtils)

local FaceControlsEditorWindow = require(Plugin.Src.Components.FaceControlsEditor.FaceControlsEditorWindow)

local ToggleFaceControlsEditorEnabled = require(Plugin.Src.Thunks.ToggleFaceControlsEditorEnabled)
local ToggleShowFaceControlsEditorPanel = require(Plugin.Src.Thunks.ToggleShowFaceControlsEditorPanel)
local SetFaceControlsEditorEnabled = require(Plugin.Src.Actions.SetFaceControlsEditorEnabled)
local SetShowFaceControlsEditorPanel = require(Plugin.Src.Actions.SetShowFaceControlsEditorPanel)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)

local FaceControlsEditorController = Roact.PureComponent:extend("FaceControlsEditorController")

local BUTTON_WIDTH = 40
local BUTTON_HEIGHT = 18

function FaceControlsEditorController:init()
	self.state = {
		showMenu = false,
		showFaceControlsEditorPanel = false,
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

	self.setShowFaceControlsEditorPanel = function(showFaceControlsEditorPanel)
		self:setState({
			showFaceControlsEditorPanel = showFaceControlsEditorPanel,
		})
	end

	self.getLastSelectedTrack = function()
		if self.props.SelectedTracks then
			return self.props.SelectedTracks[#self.props.SelectedTracks]
		end
	end

	self.toggleFaceControlsEditorEnabledHandler = function()
		return self.props.ToggleFaceControlsEditorEnabled(self.props.Analytics)
	end
end

--[[
	This sucks, but we have to do it! Rodux won't let us yield
	when RoactRodux gets a changed event from the store updating.
	Unfortunately, creating a PluginGui is a YieldFunction, so
	we have to defer the update to a later time so that Rodux has
	time to update before the yield occurs.
]]
function FaceControlsEditorController:didUpdate()
	local nextProps = self.props
	local prevState = self.state

	if nextProps.ShowFaceControlsEditorPanel ~= prevState.showFaceControlsEditorPanel then
		if nextProps.ShowFaceControlsEditorPanel ~= nil then
			-- Have to wait because we are creating a PluginGui dialog
			spawn(function()
				self.setShowFaceControlsEditorPanel(nextProps.ShowFaceControlsEditorPanel)
			end)
		else
			-- Don't have to wait if we are deleting the dialog
			self.setShowFaceControlsEditorPanel(nextProps.ShowFaceControlsEditorPanel)
		end
	end
end

function FaceControlsEditorController:render()
	local localization = self.props.Localization
	local props = self.props
	local theme = props.Stylizer.PluginTheme
	local selectedTrack = self.getLastSelectedTrack()
	local style = theme.button
	local state = self.state

	local toggleShowFaceControlsEditorPanel = props.ToggleShowFaceControlsEditorPanel
	local canUseFaceControlsEditor = RigUtils.canUseFaceControlsEditor(props.RootInstance)

	return self.props.RootInstance and Roact.createElement("Frame", {
		Position = props.Position,
		Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0, 0.5),
	}, {
		FaceControlsEditorButton = props.RootInstance and canUseFaceControlsEditor and Roact.createElement(Button, {
			Style = state.showFaceControlsEditorPanel and style.FaceControlsEditorActive or style.FaceControlsEditorDefault,
			Size = UDim2.new(1, 0, 1, 0),
			OnClick = toggleShowFaceControlsEditorPanel,
		}, {
			Label = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = theme.ikTheme.textSize,
				Text = localization:getText("Title", "FACE"),
				Font = theme.font,
				TextColor3 = theme.ikTheme.textColor,
			})
		}),

		FaceControlsEditorWindow = props.ShowFaceControlsEditorPanel and state.showFaceControlsEditorPanel and Roact.createElement(FaceControlsEditorWindow, {
			RootInstance = props.RootInstance,
			FaceControlsEditorEnabled = props.FaceControlsEditorEnabled,
			ShowFaceControlsEditorPanel = props.ShowFaceControlsEditorPanel,
			SelectedTrack = selectedTrack,
			SetSelectedTracks = props.SetSelectedTracks,
			ToggleFaceControlsEditorEnabled = self.toggleFaceControlsEditorEnabledHandler,
			SetShowFaceControlsEditorPanel = props.SetShowFaceControlsEditorPanel,
			SetFaceControlsEditorEnabled = props.SetFaceControlsEditorEnabled,
		}),
	})
end

FaceControlsEditorController = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics,
})(FaceControlsEditorController)

local function mapStateToProps(state, props)
	return {
		ShowFaceControlsEditorPanel = state.Status.ShowFaceControlsEditorPanel,
		FaceControlsEditorEnabled = state.Status.FaceControlsEditorEnabled,
		RootInstance = state.Status.RootInstance,
		SelectedTracks = state.Status.SelectedTracks,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		ToggleShowFaceControlsEditorPanel = function()
			dispatch(ToggleShowFaceControlsEditorPanel())
		end,

		SetFaceControlsEditorEnabled = function(enabled)
			dispatch(SetFaceControlsEditorEnabled(enabled))
		end,

		ToggleFaceControlsEditorEnabled = function(analytics)
			dispatch(ToggleFaceControlsEditorEnabled(analytics))
		end,

		SetShowFaceControlsEditorPanel = function(show)
			dispatch(SetShowFaceControlsEditorPanel(show))
		end,

		SetSelectedTracks = function(tracks)
			dispatch(SetSelectedTracks(tracks))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FaceControlsEditorController)