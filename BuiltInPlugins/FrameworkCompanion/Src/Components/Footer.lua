--[[
	The footer displayed at the bottom of the plugin.
	Has controls for actions that operate on the entire Framework.
	No props required, all props are consumed from mapToProps or RoactRodux:connect.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Button = UI.Button
local Container = UI.Container
local Decoration = UI.Decoration
local HoverArea = UI.HoverArea

local Examples = require(Plugin.Packages.Framework.Examples)
local RunTests = require(Plugin.Src.Thunks.RunTests)

local Footer = Roact.PureComponent:extend("Footer")

function Footer:init()
	self.state = {
		runningExamples = false,
	}

	self.runExamples = function()
		self:setState({
			runningExamples = true,
		})
	end

	self.closeExamples = function()
		self:setState({
			runningExamples = false,
		})
	end
end

function Footer:renderButton(index, text, callback)
	local sizes = self.props.Theme:get("Sizes")

	return Roact.createElement(Button, {
		Size = UDim2.fromOffset(sizes.ButtonWidth, sizes.ButtonHeight),
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

function Footer:render()
	local props = self.props
	local state = self.state
	local sizes = props.Theme:get("Sizes")
	local plugin = props.Plugin:get()

	local runTests = props.RunTests
	local runningExamples = state.runningExamples

	return Roact.createElement(Container, {
		Size = UDim2.new(1, 0, 0, sizes.Footer),
		Position = UDim2.fromScale(0, 1),
		AnchorPoint = Vector2.new(0, 1),
		Background = Decoration.Box,
		Padding = sizes.OuterPadding,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, sizes.InnerPadding),
		}),

		Examples = runningExamples and Roact.createElement(Examples, {
			Plugin = plugin,
			OnClose = self.closeExamples,
		}),

		RunTests = self:renderButton(0, "Run All Tests", runTests),
		RunExamples = self:renderButton(1, "Open Examples", self.runExamples),
	})
end

ContextServices.mapToProps(Footer, {
	Theme = ContextServices.Theme,
	Plugin = ContextServices.Plugin,
})

Footer = RoactRodux.connect(nil,
	function(dispatch)
		return {
			RunTests = function()
				dispatch(RunTests())
			end,
		}
	end
)(Footer)

return Footer
