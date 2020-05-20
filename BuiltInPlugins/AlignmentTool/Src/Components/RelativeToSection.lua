--[[
	Alignment "relative to" UI section.

	Displays radio buttons for choosing whether to align objects relative to the
	selection bounds, or to the active object.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local RadioButtonList = UI.RadioButtonList
local TextLabel = UI.Decoration.TextLabel

local SetRelativeTo = require(Plugin.Src.Actions.SetRelativeTo)
local RelativeTo = require(Plugin.Src.Core.RelativeTo)

local RelativeToSection = Roact.PureComponent:extend("RelativeToSection")

function RelativeToSection:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local function makeButton(target)
		local text = localization:getText("RelativeToSection", target)

		return {
			Key = target,
			Text = text,
			Disabled = false,
		}
	end

	return Roact.createElement(Container, {
		LayoutOrder = layoutOrder,
		Size = theme.RelativeToSection.Size,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Label = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			Size = theme.SectionLabelSize,
			Text = localization:getText("RelativeToSection", "Title"),
		}),

		ButtonList = Roact.createElement(RadioButtonList, {
			Buttons = {
				makeButton(RelativeTo.Selection),
				makeButton(RelativeTo.Active),
			},
			FillDirection = Enum.FillDirection.Horizontal,
			LayoutOrder = 2,
			OnClick = props.setRelativeTo,
			SelectedKey = props.relativeTo,
		}),
	})
end

ContextServices.mapToProps(RelativeToSection, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local function mapStateToProps(state, _)
	return {
		relativeTo = state.relativeTo,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setRelativeTo = function(target)
			dispatch(SetRelativeTo(target))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(RelativeToSection)
