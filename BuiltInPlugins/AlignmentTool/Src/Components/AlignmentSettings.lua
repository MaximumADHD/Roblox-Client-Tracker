local Plugin = script.Parent.Parent.Parent

local getEngineFeatureActiveInstanceHighlight = require(Plugin.Src.Flags.getEngineFeatureActiveInstanceHighlight)
local getFFlagAlignToolDisabledFix = require(Plugin.Src.Flags.getFFlagAlignToolDisabledFix)

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local SetAlignmentMode = require(Plugin.Src.Actions.SetAlignmentMode)
local SetAlignmentSpace = require(Plugin.Src.Actions.SetAlignmentSpace)
local SetEnabledAxes = require(Plugin.Src.Actions.SetEnabledAxes)
local SetRelativeTo = require(Plugin.Src.Actions.SetRelativeTo)
local AxesSettingsFragment = require(Plugin.Src.Components.AxesSettingsFragment)
local ModeSetting = require(Plugin.Src.Components.ModeSetting)
local LabeledElementList = require(Plugin.Src.Components.LabeledElementList)
local RelativeToSetting = require(Plugin.Src.Components.RelativeToSetting)
local UpdateActiveInstanceHighlight = require(Plugin.Src.Thunks.UpdateActiveInstanceHighlight)
local UpdateAlignEnabled = require(Plugin.Src.Thunks.UpdateAlignEnabled)

local AlignmentSettings = Roact.PureComponent:extend("AlignmentSettings")

function AlignmentSettings:render()
	local props = self.props
	local state = self.state

	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local items = {
		{
			Text = localization:getText("ModeSection", "Title"),
			TextYAlignment = Enum.TextYAlignment.Center,
			Content = Roact.createElement(ModeSetting, {
				Value = props.alignmentMode,
				OnValueChanged = props.setAlignmentMode,
			}),
		},
		{
			Text = localization:getText("AxesSection", "Title"),
			Content = Roact.createElement(AxesSettingsFragment, {
				AlignmentSpace = props.alignmentSpace,
				EnabledAxes = props.enabledAxes,
				OnAlignmentSpaceChanged = props.setAlignmentSpace,
				OnEnabledAxesChanged = props.setEnabledAxes,
			}),
		},
		{
			Text = localization:getText("RelativeToSection", "Title"),
			Content = Roact.createElement(RelativeToSetting, {
				Value = props.relativeTo,
				OnValueChanged = props.setRelativeTo,
			}),
		},
	}

	return Roact.createElement(LabeledElementList, {
		Collapsible = true,
		Items = items,
		LayoutOrder = props.LayoutOrder,
		MaximumLabelWidth = theme.MaximumLabelWidth,
	})
end

ContextServices.mapToProps(AlignmentSettings, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local function mapStateToProps(state, _)
	return {
		alignmentMode = state.alignmentMode,
		alignmentSpace = state.alignmentSpace,
		enabledAxes = state.enabledAxes,
		relativeTo = state.relativeTo,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setAlignmentMode = function(mode)
			dispatch(SetAlignmentMode(mode))
			dispatch(UpdateAlignEnabled())
		end,
		setAlignmentSpace = function(alignmentSpace)
			dispatch(SetAlignmentSpace(alignmentSpace))
			if getFFlagAlignToolDisabledFix() then
				dispatch(UpdateAlignEnabled())
			end
		end,
		setEnabledAxes = function(axes)
			dispatch(SetEnabledAxes(axes))
			dispatch(UpdateAlignEnabled())
		end,
		setRelativeTo = function(target)
			dispatch(SetRelativeTo(target))
			dispatch(UpdateAlignEnabled())
			if getEngineFeatureActiveInstanceHighlight() then
				dispatch(UpdateActiveInstanceHighlight())
			end
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AlignmentSettings)
