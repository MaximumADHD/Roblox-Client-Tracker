local Main = script.Parent.Parent.Parent.Parent
local Roact = require(Main.Packages.Roact)
local StoryHost = require(script.Parent)
local MockWrap = require(Main.Src.Resources.MockWrap)

local ReactTestingLibrary = require(Main.Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("StoryHost", function()
	it("should render correctly", function()
		local function getProps()
			local definition = {
				story = function()
					return Roact.createElement("TextLabel", {
						Text = "Test",
					})
				end,
				roact = Roact,
			}
			return {
				StoryProps = {
					story = definition.story,
					definition = definition,
				},
				ThemeName = "Light",
				Platform = "Console",
			}
		end

		local result = render(MockWrap(Roact.createElement(StoryHost, getProps())))
		expect(result.container:FindFirstChild("Element", true).Name).never.toBeNil()
	end)
end)
