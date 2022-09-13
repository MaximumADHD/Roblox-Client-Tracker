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
local Util = Framework.Util
local StyleModifier = Util.StyleModifier
local GetTextSize = Framework.Util.GetTextSize
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local RigUtils = require(Plugin.Src.Util.RigUtils)

local SetFacialRecordingMode = require(Plugin.Src.Thunks.Recording.SetFacialRecordingMode)
local SetInReviewState = require(Plugin.Src.Actions.SetInReviewState)
local ToggleRecordingAndEndReview = require(Plugin.Src.Thunks.Recording.ToggleRecordingAndEndReview)
local TeachingCallout = require(Plugin.Src.Components.TeachingCallout)
local GetFFlagFaceControlsEditorShowCallout = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorShowCallout)
local GetFFlagFacialAnimationRecordingInStudio = require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
local GetFacialAnimationRecordingAnalytics1 = require(Plugin.LuaFlags.GetFacialAnimationRecordingAnalytics1)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)
local GetFFlagKeyframeReduction = require(Plugin.LuaFlags.GetFFlagKeyframeReduction)

local RecordingModeButton = Roact.PureComponent:extend("RecordingModeButton")

local BUTTON_WIDTH_MARGINS = 5
local BUTTON_HEIGHT = 18

function RecordingModeButton:init()
end

function RecordingModeButton:render()
	local localization = self.props.Localization
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local style = theme.button
	local state = self.state
	local analytics = props.Analytics
	local readOnly = props.ReadOnly

	local toggleRecordingAndEndReview = function()
		if GetFacialAnimationRecordingAnalytics1() then
			props.ToggleRecordingAndEndReview(analytics)
		else
			props.old_ToggleRecordingAndEndReview(props)
		end
	end
	local canUseFaceControlsEditor = RigUtils.canUseFaceControlsEditor(props.RootInstance)

	local titleText = localization:getText("FaceCapture", "MainButtonTitle")
	local titleTextFontSize = theme.ikTheme.textSize
	local titleTextFont = theme.font
	local titleTextSize = GetTextSize(
		titleText,
		titleTextFontSize,
		titleTextFont,
		Vector2.new(1000, 1000) --arbitrary large area
	)

	local buttonWidth = titleTextSize.X + 2*BUTTON_WIDTH_MARGINS

	return self.props.RootInstance and Roact.createElement("Frame", {
		Position = props.Position,
		Size = UDim2.new(0, buttonWidth, 0, BUTTON_HEIGHT),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0, 0.5),
		LayoutOrder = 3,
	}, {
		FaceControlsEditorButton = props.RootInstance and canUseFaceControlsEditor and Roact.createElement(Button, {
			Style = props.inReviewState and "RoundPrimary" or style.FaceControlsEditorDefault,
			StyleModifier = if (GetFFlagKeyframeReduction() and readOnly) then StyleModifier.Disabled else nil,
			Size = UDim2.new(1, 0, 1, 0),
			IsDisabled = true,
			OnClick = toggleRecordingAndEndReview,
		}, {
			Label = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = titleTextFontSize,
				Text = titleText,
				Font = titleTextFont,
				TextColor3 = theme.ikTheme.textColor,
			},
			{
				TeachingCallout = if props.RootInstance and canUseFaceControlsEditor then Roact.createElement(TeachingCallout, {
					Offset = Vector2.new(0, 6),
					DefinitionId = "FaceRecorderCallout",
					LocationId = "RecordingModeButton"
				}) else nil,

			})
		}),
	})
end

RecordingModeButton = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics,
})(RecordingModeButton)

local function mapStateToProps(state, props)
	return {
		inReviewState = state.Status.inReviewState,
		ReadOnly = state.Status.ReadOnly,
		RootInstance = state.Status.RootInstance,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		old_ToggleRecordingAndEndReview = function(props)
			--get out of review state in case user clicked this button while in review state
			if props.inReviewState then
				dispatch(SetInReviewState(false))
				dispatch(SetFacialRecordingMode(false))
			else
			--user was not in review state, get going with recoder
				dispatch(SetFacialRecordingMode(true))
			end
		end,

		ToggleRecordingAndEndReview = function(analytics)
			dispatch(ToggleRecordingAndEndReview(analytics))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(RecordingModeButton)
