--[[
	The footer displayed at the bottom of the plugin.
]]

local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Roact = require(Main.Packages.Roact)
local RoactRodux = require(Main.Packages.RoactRodux)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local InspectorContext = require(Main.Src.Util.InspectorContext)
local ModuleLoader = require(Main.Src.Util.ModuleLoader)

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane

local SelectionService = game:GetService("Selection")

local Footer = Roact.PureComponent:extend("Footer")

function Footer:init()
	self.runTests = function()
		local props = self.props
		local story = props.SelectedStory.Script
		local TestEZ = ModuleLoader:load(Main.Packages.Dev.TestEZ)
		local TestBootstrap = TestEZ.TestBootstrap
		local TextReporter = TestEZ.Reporters.TextReporter
		local children
		if props.SelectedStory.Storybook and props.SelectedStory.Storybook.mapTests then
			children = props.SelectedStory.Storybook:mapTests(story)
		else
			children = { story.Parent }
		end
		TestBootstrap:run(children, TextReporter)
	end
	self.viewStorySource = function()
		local props = self.props
		local plugin = props.Plugin:get()
		local source = props.SelectedStory.Script
		plugin:OpenScript(source)
		SelectionService:Set({source})
	end
	self.explore = function()
		SelectionService:Set({self.props.StoryRef.current})
	end
	self.inspect = function()
		-- TODO: RIDE-3410
		-- local inspector = self.props.Inspector:get()
		-- inspector:open()
	end
end

function Footer:renderButton(index: number, text: string, callback: () -> (), width: number)
	local props = self.props
	local style = props.Stylizer
	local sizes = style.Sizes

	return Roact.createElement(Button, {
		Size = UDim2.fromOffset(width, sizes.ButtonHeight),
		Style = "Round",
		LayoutOrder = index,
		OnClick = callback,
		Text = text,
	})
end

function Footer:render()
	local props = self.props
	local style = props.Stylizer
	local sizes = style and style.Sizes

	return Roact.createElement(Pane, {
		Style = "Box",
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		Spacing = 5,
		Position = UDim2.fromScale(0, 1),
		AnchorPoint = Vector2.new(0, 1),
		Padding = sizes.OuterPadding,
	}, {
		-- TODO: RIDE-3410 find a way to trigger the Roact Inspector to open
		-- Inspect = self:renderButton(1, "Inspect", self.inspect, 80),
		Explore = self:renderButton(2, "Explore", self.explore, 80),
		RunTests = self:renderButton(3, "Run Tests", self.runTests, 90),
		StorySource = self:renderButton(4, "View Source", self.viewStorySource, 100),
	})
end


Footer = withContext({
	Inspector = InspectorContext,
	Stylizer = ContextServices.Stylizer,
	Plugin = ContextServices.Plugin
})(Footer)


 
return RoactRodux.connect(function(state: Types.RoduxStore)
	return {
		SelectedStory = state.Stories.selectedStory,
	}
end)(Footer)
