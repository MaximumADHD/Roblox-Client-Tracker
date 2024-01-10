--[[
	The footer displayed at the bottom of the plugin.
]]

local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local React = require(Main.Packages.React)
local RoactRodux = require(Main.Packages.RoactRodux)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local InspectorContext = require(Main.Src.Util.InspectorContext)

local TestLoader = require(Main.Packages.TestLoader)
local ModuleLoader = TestLoader.ModuleLoader

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane

local SelectionService = game:GetService("Selection")

local Footer = React.PureComponent:extend("Footer")

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
		SelectionService:Set({ source })
	end
	self.explore = function()
		SelectionService:Set({ self.props.StoryRef.current })
	end
end

function Footer:renderButton(index: number, text: string, callback: () -> (), width: number)
	return React.createElement(Button, {
		LayoutOrder = index,
		OnClick = callback,
		Text = text,
		Style = "Round",
		Size = UDim2.fromOffset(150, 32),
	})
end

function Footer:render()
	return React.createElement(Pane, {
		[React.Tag] = "Plugin-Footer Main X-RowM X-Right X-Pad",
	}, {
		Explore = self:renderButton(2, "Explore", self.explore, 80),
		RunTests = self:renderButton(3, "Run Tests", self.runTests, 90),
		StorySource = self:renderButton(4, "View Source", self.viewStorySource, 100),
	})
end

Footer = withContext({
	Inspector = InspectorContext,
	Plugin = ContextServices.Plugin,
})(Footer)

return RoactRodux.connect(function(state: Types.RoduxStore)
	return {
		SelectedStory = state.Stories.selectedStory,
	}
end)(Footer)
