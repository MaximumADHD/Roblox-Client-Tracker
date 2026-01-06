local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local IconButton = require(Control.IconButton)

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe

local benchmarks = require(UIBlox.Utility.benchmarks)
local mountComponentTimes = benchmarks.mountComponentTimes
local scrollComponentTimes = benchmarks.scrollComponentTimes

local iconButton = React.createElement(IconButton, {
	onActivated = function() end,
	icon = "rbxassetid://7173696656978",
})

describe("IconButton", function()
	mountComponentTimes(iconButton, 1000, "IconButton")
	scrollComponentTimes(iconButton, 1000, "IconButton")
end)
