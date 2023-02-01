-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/get-node-text.js

local Packages = script.Parent.Parent.Parent
local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test

local getNodeText = require(script.Parent.Parent["get-node-text"]).getNodeText
local render = require(script.Parent.helpers["test-utils"]).render

--[[
		ROBLOX deviation START:
		No matching upstream test since we are testing using Roblox components rather than HTML elements
		TextNode equivalent is non existent
	]]
test("it prints out the text content of a container's children and descendants", function()
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Text = "TextLabel text!"
	local TextButton = Instance.new("TextButton")
	TextButton.Text = "TextButton text!"
	local TextBox = Instance.new("TextBox")
	TextBox.Text = "TextBox text!"

	local container: Frame = render({
		TextLabel,
		TextButton,
		TextBox,
	}).container

	local children = container:GetChildren()

	expect(getNodeText(container)).toBe("")
	expect(getNodeText(children[1])).toBe("TextLabel text!")
	expect(getNodeText(children[2])).toBe("TextButton text!")
	expect(getNodeText(children[3])).toBe("")
end)
-- ROBLOX deviation END
return {}
