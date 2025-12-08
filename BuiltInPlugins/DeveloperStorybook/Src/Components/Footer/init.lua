--[[
	The footer displayed at the bottom of the plugin.
]]

local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local React = require(Main.Packages.React)
local RoactRodux = require(Main.Packages.RoactRodux)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin

local TestLoader = require(Main.Packages.TestLoader)
local ModuleLoader = TestLoader.ModuleLoader

local Foundation = require(Main.Packages.Foundation)
local View = Foundation.View
local Button = Foundation.Button

local SelectionService = game:GetService("Selection")

local function Footer(
	props: { StoryRef: React.RefObject<GuiObject?>, LayoutOrder: number, SelectedStory: Types.StoryItem? }
)
	local plugin = Plugin.use():get()

	if props.SelectedStory == nil then
		return nil
	end

	local runTests = function()
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

	local viewStorySource = function()
		local source = props.SelectedStory.Script
		plugin:OpenScript(source)
		SelectionService:Set({ source })
	end

	local explore = function()
		SelectionService:Set({ props.StoryRef.current })
	end

	return React.createElement(View, {
		tag = "size-full-0 row gap-medium align-x-right padding-medium auto-y grow",
		LayoutOrder = props.LayoutOrder,
	}, {
		Explore = React.createElement(Button, { LayoutOrder = 2, text = "Explore", onActivated = explore }),
		RunTests = React.createElement(Button, { LayoutOrder = 3, text = "Run Tests", onActivated = runTests }),
		StorySource = React.createElement(
			Button,
			{ LayoutOrder = 4, text = "View Source", onActivated = viewStorySource }
		),
	})
end

return RoactRodux.connect(function(state: Types.RoduxStore)
	return {
		SelectedStory = state.Stories.selectedStory,
	}
end)(Footer)
