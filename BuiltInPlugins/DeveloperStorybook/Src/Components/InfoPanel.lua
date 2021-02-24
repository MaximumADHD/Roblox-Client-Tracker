--[[
	The main screen of the Developer storybook.
	Displays the docs for the currently selected component.
	No required props, all props are injected from mapToProps or RoactRodux:connect.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local UI = require(Plugin.Packages.Framework).UI
local Container = UI.Container
local Decoration = UI.Decoration
local Button = UI.Button
local HoverArea = UI.HoverArea
local TextLabel = Decoration.TextLabel

local PanelEntry = require(Plugin.Src.Components.PanelEntry)
local PropsList = require(Plugin.Src.Components.PropsList)
local StylesList = require(Plugin.Src.Components.StylesList)
local RenderExample = require(Plugin.Src.Components.RenderExample)

local RunTests = require(Plugin.Src.Thunks.RunTests)
local ViewSource = require(Plugin.Src.Thunks.ViewSource)

local STYLE_DESCRIPTION = [[These values make up the component's Style table, which can be extended:]]

local InfoPanel = Roact.PureComponent:extend("InfoPanel")

function InfoPanel:init()
	self.state = {
		extents = Vector2.new(),
	}

	self.updateExtents = function(extents)
		self:setState({
			extents = extents,
		})
	end
end

function InfoPanel:renderButton(index, text, callback)
	local sizes
	local style = self.props.Stylizer
	if THEME_REFACTOR and style then
		sizes = style.Sizes
	else
		sizes = self.props.Theme:get("Sizes")
	end

	return Roact.createElement(Button, {
		Size = UDim2.new(1, 0, 0, sizes.ButtonHeight),
		Style = "Round",
		LayoutOrder = index,
		OnClick = callback,
		Text = text,
	}, {
		HoverArea = Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
		}),
	})
end

function InfoPanel:render()
	local props = self.props
	local scrollbar
	local sizes
	local style = props.Stylizer
	if THEME_REFACTOR and style then
		sizes = style.Sizes
		scrollbar = style.Scrollbar
	else
		sizes = props.Theme:get("Sizes")
		scrollbar = props.Theme:get("Scrollbar")
	end
	local plugin = props.Plugin:get()

	local order = 0
	local function nextOrder()
		order = order + 1
		return order
	end

	local name = props.CurrentItem
	local docs = props.Components
		and (props.Components.UI and props.Components.UI[name])
		or (props.Components.StudioUI and props.Components.StudioUI[name])
		or (props.Components.Decoration and props.Components.Decoration[name])
	local scripts = props.Scripts
	local tests = props.Tests

	if not name or not docs then
		return Roact.createElement(Container, {
			Size = UDim2.new(1, -sizes.Gutter, 1, -sizes.Footer),
			Position = UDim2.fromScale(1, 0),
			AnchorPoint = Vector2.new(1, 0),
			Background = Decoration.Box,
			BackgroundStyle = "__Item",
		}, {
			Prompt = Roact.createElement(TextLabel, {
				Size = UDim2.new(1, 0, 1, 0),
				Text = "Select a component to see its documentation.",
			}),
		})
	end

	local summary = docs.Summary or ""
	
	return Roact.createElement(Container, {
		Size = UDim2.new(1, -sizes.Gutter, 1, -sizes.Footer),
		Position = UDim2.fromScale(1, 0),
		AnchorPoint = Vector2.new(1, 0),
		Background = Decoration.Box,
		BackgroundStyle = "__Item",
		Padding = {
			Top = sizes.OuterPadding,
			Left = sizes.OuterPadding,
			Bottom = sizes.OuterPadding,
			Right = sizes.InnerPadding,
		},
	}, {
		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			CanvasPosition = Vector2.new(),
			TopImage = scrollbar.TopImage,
			MidImage = scrollbar.MidImage,
			BottomImage = scrollbar.BottomImage,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScrollBarThickness = scrollbar.Thickness,
			ScrollBarImageColor3 = scrollbar.Color,
			ScrollBarImageTransparency = scrollbar.Transparency,
			VerticalScrollBarInset = Enum.ScrollBarInset.Always,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, sizes.InnerPadding),
			}),

			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, sizes.InnerPadding),
			}),

			Header = Roact.createElement(PanelEntry, {
				Header = name,
				LayoutOrder = nextOrder(),
			}, {
				Summary = Roact.createElement(TextLabel, {
					LayoutOrder = 2,
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					Text = summary,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = true,
				}),
			}),

			Example = Roact.createElement(RenderExample, {
				Name = name,
				LayoutOrder = nextOrder(),
			}),

			ViewSource = self:renderButton(nextOrder(), "View Source", function()
				props.ViewSource(plugin, scripts[name])
			end),

			RunTests = self:renderButton(nextOrder(), "Run This Component's Tests", function()
				props.RunTests(tests[name])
			end),

			RequiredProps = next(docs.Required) and Roact.createElement(PropsList, {
				Header = "Required Props",
				LayoutOrder = nextOrder(),
				Props = docs.Required,
			}),

			OptionalProps = next(docs.Optional) and Roact.createElement(PropsList, {
				Header = "Optional Props",
				LayoutOrder = nextOrder(),
				Props = docs.Optional,
			}),

			Styles = next(docs.Style) and Roact.createElement(StylesList, {
				Header = "Styles",
				LayoutOrder = nextOrder(),
				Styles = (not THEME_REFACTOR) and props.Theme:get("Framework")[name] or nil,
				ComponentName = THEME_REFACTOR and name or nil,
			}),

			StyleValues = next(docs.Style) and Roact.createElement(PropsList, {
				Header = "Style Values",
				Description = STYLE_DESCRIPTION,
				LayoutOrder = nextOrder(),
				Props = docs.Style,
			}),
		}),
	})
end

ContextServices.mapToProps(InfoPanel, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Plugin = ContextServices.Plugin,
})

InfoPanel = RoactRodux.connect(
	function(state, props)
		return {
			Components = state.Components.Components,
			Scripts = state.Components.Scripts,
			Tests = state.Components.Tests,
			CurrentItem = state.Status.CurrentItem,
		}
	end,
	function(dispatch)
		return {
			RunTests = function(component)
				dispatch(RunTests(component))
			end,
			ViewSource = function(plugin, component)
				dispatch(ViewSource(plugin, component))
			end,
		}
	end
)(InfoPanel)

return InfoPanel
