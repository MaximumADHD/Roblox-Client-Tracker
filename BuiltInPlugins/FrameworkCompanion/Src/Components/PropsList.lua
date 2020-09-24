--[[
	An entry in an InfoPanel that shows a list of props.

	Required Props:
		string Header: The header text of this component.
		table Props: A list of prop documentation tables, which contain
			prop name, type, and description.

	Optional Props:
		number LayoutOrder: The sort order of this component.
		string Description: Description text for this component.
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Util = Framework.Util
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})
local UI = Framework.UI
local Container = UI.Container
local Decoration = UI.Decoration

local PanelEntry = require(Plugin.Src.Components.PanelEntry)

local PropsList = Roact.PureComponent:extend("PropsList")

function PropsList:init()
	self.state = {
		extents = Vector2.new(),
	}

	self.updateExtents = function(extents)
		self:setState({
			extents = extents,
		})
	end
end

function PropsList:renderProp(name, type, comment, index)
	local props = self.props
	local state = self.state
	local text
	local sizes
	local style = props.Stylizer
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		sizes = style.Sizes
		text = style.Text
	else
		sizes = props.Theme:get("Sizes")
		text = props.Theme:get("Text")
	end
	local extents = state.extents

	local typeSize = TextService:GetTextSize(type, text.Type.Size,
		Enum.Font.SourceSans, Vector2.new())
	local nameSize = TextService:GetTextSize(name, text.Type.Size,
		Enum.Font.SourceSans, Vector2.new())
	local commentSize = TextService:GetTextSize(comment, text.Body.Size,
		Enum.Font.SourceSans, Vector2.new(extents.X - (sizes.InnerPadding * 2), 100000))

	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 0, typeSize.Y + (sizes.InnerPadding * 3) + commentSize.Y),
		Background = Decoration.RoundBox,
		BackgroundStyle = "__Item",
		Padding = sizes.InnerPadding,
		LayoutOrder = index,
	}, {
		Type = Roact.createElement("TextLabel", {
			Size = UDim2.fromOffset(typeSize.X, text.Type.Size),
			Text = type,
			Font = Enum.Font.SourceSans,
			TextSize = text.Type.Size,
			TextColor3 = text.Type.Color,
			BackgroundTransparency = 1,
		}),

		Name = Roact.createElement("TextLabel", {
			Size = UDim2.fromOffset(nameSize.X, text.Type.Size),
			Position = UDim2.fromOffset(typeSize.X + sizes.InnerPadding, 0),
			Text = name,
			Font = Enum.Font.SourceSans,
			TextSize = text.Type.Size,
			TextColor3 = text.Header.Color,
			BackgroundTransparency = 1,
		}),

		Comment = Roact.createElement("TextLabel", {
			Size = UDim2.fromOffset(commentSize.X, commentSize.Y),
			Position = UDim2.fromOffset(0, text.Type.Size + sizes.InnerPadding),
			Text = comment,
			Font = Enum.Font.SourceSans,
			TextSize = text.Body.Size,
			TextColor3 = text.Body.Color,
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
		}),
	})
end

function PropsList:render()
	local props = self.props
	local state = self.state
	local sizes
	local style = props.Stylizer
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		sizes = style.Sizes
	else
		sizes = props.Theme:get("Sizes")
	end
	local extents = state.extents
	local Props = props.Props
	local layoutOrder = props.LayoutOrder
	local header = props.Header
	local description = props.Description

	local children = {
		__Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, sizes.InnerPadding),
			[Roact.Change.AbsoluteContentSize] = function(rbx)
				self.updateExtents(rbx.AbsoluteContentSize)
			end,
		}),
	}

	for index, prop in ipairs(Props) do
		children[prop.Name] = self:renderProp(prop.Name, prop.Type, prop.Comment, index)
	end

	return Roact.createElement(PanelEntry, {
		Header = header,
		Description = description,
		LayoutOrder = layoutOrder,
	}, {
		List = Roact.createElement(Container, {
			Size = UDim2.new(1, 0, 0, extents.Y),
			LayoutOrder = 2,
		}, children)
	})
end

ContextServices.mapToProps(PropsList, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
})

return PropsList
