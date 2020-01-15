--[[
	An entry in an InfoPanel that shows a list of styles.
	Currently just displays the styles as strings.

	Required Props:
		table Styles: The set of styles to display.
		string Header: The header text of this component.

	Optional Props:
		number LayoutOrder: The sort order of this component.
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container

local PanelEntry = require(Plugin.Src.Components.PanelEntry)

local StylesList = Roact.PureComponent:extend("StylesList")

local SUMMARY = [[In addition to Default, these Styles are defined for this component in StudioFrameworkStyles:]]
local NOSTYLES = [[Only the Default style is defined for this component in StudioFrameworkStyles.]]

function StylesList:init()
	self.state = {
		extents = Vector2.new(),
	}

	self.updateExtents = function(extents)
		self:setState({
			extents = extents,
		})
	end
end

function StylesList:render()
	local props = self.props
	local state = self.state
	local extents = state.extents
	local text = props.Theme:get("Text")
	local styles = props.Styles
	local header = props.Header
	local layoutOrder = props.LayoutOrder

	local stylesList = {}
	if styles then
		for name, _ in pairs(styles) do
			if name ~= "Default" and not (name:find("__")) then
				table.insert(stylesList, name)
			end
		end
	end

	local stylesString = table.concat(stylesList, ", ")
	local headerString = next(stylesList) and SUMMARY or NOSTYLES

	local stylesListSize = TextService:GetTextSize(stylesString, text.Type.Size,
		Enum.Font.SourceSans, Vector2.new(extents.X, 10000))

	return Roact.createElement(PanelEntry, {
		Header = header,
		Description = headerString,
		LayoutOrder = layoutOrder,
	}, {
		List = next(stylesList) and Roact.createElement(Container, {
			Size = UDim2.new(1, 0, 0, extents.Y),
			LayoutOrder = 2,
		}, {
			Styles = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, stylesListSize.Y),
				Text = stylesString,
				Font = Enum.Font.SourceSans,
				TextSize = text.Type.Size,
				TextColor3 = text.Header.Color,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
				[Roact.Change.AbsoluteSize] = function(rbx)
					self.updateExtents(rbx.AbsoluteSize)
				end,
			}),
		})
	})
end

ContextServices.mapToProps(StylesList, {
	Theme = ContextServices.Theme,
})

return StylesList
