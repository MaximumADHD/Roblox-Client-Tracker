--[[
	An entry in the InfoPanel with a header and automatic size from contents.

	Required Props:
		string Header: The header text of this component.

	Optional Props:
		string Description: A description which displays beneath the header.
		number LayoutOrder: The sort order of this component.
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Util = Framework.Util
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})
local UI = Framework.UI
local Container = UI.Container
local Decoration = UI.Decoration

local PanelEntry = Roact.PureComponent:extend("InfoPanel")

function PanelEntry:init()
	self.state = {
		extents = Vector2.new(),
	}

	self.updateExtents = function(extents)
		self:setState({
			extents = extents,
		})
	end
end

function PanelEntry:render()
	local props = self.props
	local state = self.state
	local text
	local sizes
	local style = props.Stylizer
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") and style then
		text = style.Text
		sizes = style.Sizes
	else
		text = props.Theme:get("Text")
		sizes = props.Theme:get("Sizes")
	end
	local header = props.Header
	local description = props.Description
	local layoutOrder = props.LayoutOrder
	local extents = state.extents

	local descriptionSize
	if description then
		descriptionSize = TextService:GetTextSize(description, text.Body.Size,
			Enum.Font.SourceSans, Vector2.new(extents.X, 10000))
	end

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, sizes.InnerPadding),
			[Roact.Change.AbsoluteContentSize] = function(rbx)
				self.updateExtents(rbx.AbsoluteContentSize)
			end,
		}),

		Name = Roact.createElement("TextLabel", {
			LayoutOrder = 0,
			Size = UDim2.new(1, 0, 0, text.Header.Size),
			Text = header,
			Font = Enum.Font.SourceSans,
			TextSize = text.Header.Size,
			TextColor3 = text.Header.Color,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),

		Description = description and Roact.createElement("TextLabel", {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, descriptionSize.Y),
			Text = description,
			Font = Enum.Font.SourceSans,
			TextSize = text.Body.Size,
			TextColor3 = text.Body.Color,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
		}),
	}

	return Roact.createElement(Container, {
		Background = Decoration.RoundBox,
		Size = UDim2.new(1, 0, 0, extents.Y + (sizes.OuterPadding * 2)),
		Padding = sizes.OuterPadding,
		LayoutOrder = layoutOrder,
	}, Cryo.Dictionary.join(children, self.props[Roact.Children] or {}))
end

ContextServices.mapToProps(PanelEntry, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
})

return PanelEntry
