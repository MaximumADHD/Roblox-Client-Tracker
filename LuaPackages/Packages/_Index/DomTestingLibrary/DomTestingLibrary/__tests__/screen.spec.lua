-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/screen.js
local Packages = script.Parent.Parent.Parent

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest

local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console

local Promise = require(Packages.Promise)
local RegExp = require(Packages.LuauRegExp)

local getUCDModule = require(script.Parent.Parent["get-user-code-frame"])

local screen = require(script.Parent.Parent.screen).screen
local test_utilsModule = require(script.Parent.helpers["test-utils"])
local _render = test_utilsModule.render
local renderIntoDocument = test_utilsModule.renderIntoDocument

-- Since screen.debug internally calls getUserCodeFrame, we mock it so it doesn't affect these tests
-- ROBLOX deviation START: workaround jest.mock and jest.spyOn not available
local originalLog
local originalGetUserCodeFrame
beforeEach(function()
	originalLog = console.log
	originalGetUserCodeFrame = getUCDModule.getUserCodeFrame
	getUCDModule.getUserCodeFrame = jest.fn(originalGetUserCodeFrame)
	console.log = jest.fn()
end)
afterEach(function()
	console.log = originalLog
	getUCDModule.getUserCodeFrame = originalGetUserCodeFrame
end)
-- ROBLOX deviation END
test("exposes queries that are attached to document.body", function()
	return Promise.resolve()
		:andThen(function()
			local div = Instance.new("TextLabel")
			div.Text = "hello world"
			renderIntoDocument({ div })
			screen.getByText(RegExp("hello world"))
			screen.findByText(RegExp("hello world")):expect()
			expect(screen.queryByText(RegExp("hello world"))).never.toBeNull()
		end)
		:expect()
end)

-- ROBLOX deviation START: testing playground not available
-- 	it("logs Playground URL that are attached to document.body", function()
-- 		local div = Instance.new("TextLabel")
-- 		div.Text = "hello world"
-- 		renderIntoDocument({ div })
-- 		screen.logTestingPlaygroundURL()
-- 		expect(console.log).toHaveBeenCalledTimes(1)
-- 		expect(console.log.mock.calls[1][1]).toMatchInlineSnapshot([[

--     Open this URL in your browser

--     https://testing-playground.com/#markup=DwEwlgbgfAFgpgGwQewAQHdkCcEmAenGiA
--   ]])
-- 	end)
-- ROBLOX deviation END
test("logs messsage when element is empty", function()
	local div = Instance.new("TextLabel")
	screen.logTestingPlaygroundURL(div)
	expect(console.log).toHaveBeenCalledTimes(1)
	expect((console.log :: any).mock.calls[1][1]).toBe("The provided element doesn't have any children.")
end)
test("logs messsage when element is not a valid HTML", function()
	-- ROBLOX deviation START: null is an object in JS, we pass in an object with key/value for the test
	screen.logTestingPlaygroundURL({ foo = "foo" })
	-- ROBLOX deviation END
	expect(console.log).toHaveBeenCalledTimes(1)
	expect((console.log :: any).mock.calls[1][1]).toBe("The element you're providing isn't a valid Instance.");
	(console.log :: any):mockClear()
	screen.logTestingPlaygroundURL({})
	expect(console.log).toHaveBeenCalledTimes(1)
	expect((console.log :: any).mock.calls[1][1]).toBe("The element you're providing isn't a valid Instance.")
end)

-- ROBLOX deviation START: testing playground not available
-- 	it("logs Playground URL that are passed as element", function()
-- 		local h1 = Instance.new("TextLabel")
-- 		h1.Text = "Sign "
-- 		local em = Instance.new("TextLabel")
-- 		em.Text = "up"
-- 		em.Parent = h1
-- 		screen.logTestingPlaygroundURL(render({h1}).container)
-- 		expect(console.log).toHaveBeenCalledTimes(1)
-- 		expect((console.log.mock::any).calls[1][1]).toMatchInlineSnapshot([[

--     Open this URL in your browser

--     https://testing-playground.com/#markup=DwCwjAfAyglg5gOwATAKYFsIFcAOwD0GEB4EQA
--   ]])
-- 	end)
-- ROBLOX deviation END
test("exposes debug method", function()
	local button = Instance.new("TextButton")
	button.Text = "test"
	local span = Instance.new("TextLabel")
	span.Text = "multi-test"
	local div = Instance.new("TextLabel")
	div.Text = "multi-test"
	renderIntoDocument({ button, span, div }) -- log document
	screen.debug()
	expect(console.log).toHaveBeenCalledTimes(1)
	expect((console.log :: any).mock.calls[1][1]).toBe([[
Folder {
  "Archivable": true,
  "ClassName": "Folder",
  "Name": "Document",
  "Parent": "ScreenGui" [ScreenGui],
  "TextButton": TextButton {
    "AbsolutePosition": Vector2(0, 0),
    "AbsoluteRotation": 0,
    "AbsoluteSize": Vector2(0, 0),
    "Active": true,
    "AnchorPoint": Vector2(0, 0),
    "Archivable": true,
    "AutoButtonColor": true,
    "AutoLocalize": true,
    "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
    "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
    "BackgroundTransparency": 0,
    "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
    "BorderMode": EnumItem(Enum.BorderMode.Outline),
    "BorderSizePixel": 1,
    "ClassName": "TextButton",
    "ClipsDescendants": false,
    "ContentText": "test",
    "Font": EnumItem(Enum.Font.Legacy),
    "LayoutOrder": 0,
    "LineHeight": 1,
    "MaxVisibleGraphemes": -1,
    "Modal": false,
    "Name": "TextButton",
    "NextSelectionDown": nil,
    "NextSelectionLeft": nil,
    "NextSelectionRight": nil,
    "NextSelectionUp": nil,
    "Parent": "Document" [Folder],
    "Position": UDim2({0, 0}, {0, 0}),
    "RichText": false,
    "RootLocalizationTable": nil,
    "Rotation": 0,
    "Selectable": true,
    "Selected": false,
    "SelectionImageObject": nil,
    "Size": UDim2({0, 0}, {0, 0}),
    "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
    "Style": EnumItem(Enum.ButtonStyle.Custom),
    "Text": "test",
    "TextBounds": Vector2(NAN, NAN),
    "TextColor3": Color3(0.105882, 0.164706, 0.207843),
    "TextFits": false,
    "TextScaled": false,
    "TextSize": 8,
    "TextStrokeColor3": Color3(0, 0, 0),
    "TextStrokeTransparency": 1,
    "TextTransparency": 0,
    "TextTruncate": EnumItem(Enum.TextTruncate.None),
    "TextWrapped": false,
    "TextXAlignment": EnumItem(Enum.TextXAlignment.Center),
    "TextYAlignment": EnumItem(Enum.TextYAlignment.Center),
    "Visible": true,
    "ZIndex": 1,
  },
  "TextLabel": TextLabel {
    "AbsolutePosition": Vector2(0, 0),
    "AbsoluteRotation": 0,
    "AbsoluteSize": Vector2(0, 0),
    "Active": false,
    "AnchorPoint": Vector2(0, 0),
    "Archivable": true,
    "AutoLocalize": true,
    "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
    "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
    "BackgroundTransparency": 0,
    "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
    "BorderMode": EnumItem(Enum.BorderMode.Outline),
    "BorderSizePixel": 1,
    "ClassName": "TextLabel",
    "ClipsDescendants": false,
    "ContentText": "multi-test",
    "Font": EnumItem(Enum.Font.Legacy),
    "LayoutOrder": 0,
    "LineHeight": 1,
    "MaxVisibleGraphemes": -1,
    "Name": "TextLabel",
    "NextSelectionDown": nil,
    "NextSelectionLeft": nil,
    "NextSelectionRight": nil,
    "NextSelectionUp": nil,
    "Parent": "Document" [Folder],
    "Position": UDim2({0, 0}, {0, 0}),
    "RichText": false,
    "RootLocalizationTable": nil,
    "Rotation": 0,
    "Selectable": false,
    "SelectionImageObject": nil,
    "Size": UDim2({0, 0}, {0, 0}),
    "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
    "Text": "multi-test",
    "TextBounds": Vector2(NAN, NAN),
    "TextColor3": Color3(0.105882, 0.164706, 0.207843),
    "TextFits": false,
    "TextScaled": false,
    "TextSize": 8,
    "TextStrokeColor3": Color3(0, 0, 0),
    "TextStrokeTransparency": 1,
    "TextTransparency": 0,
    "TextTruncate": EnumItem(Enum.TextTruncate.None),
    "TextWrapped": false,
    "TextXAlignment": EnumItem(Enum.TextXAlignment.Center),
    "TextYAlignment": EnumItem(Enum.TextYAlignment.Center),
    "Visible": true,
    "ZIndex": 1,
  },
  "TextLabel": TextLabel {
    "AbsolutePosition": Vector2(0, 0),
    "AbsoluteRotation": 0,
    "AbsoluteSize": Vector2(0, 0),
    "Active": false,
    "AnchorPoint": Vector2(0, 0),
    "Archivable": true,
    "AutoLocalize": true,
    "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
    "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
    "BackgroundTransparency": 0,
    "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
    "BorderMode": EnumItem(Enum.BorderMode.Outline),
    "BorderSizePixel": 1,
    "ClassName": "TextLabel",
    "ClipsDescendants": false,
    "ContentText": "multi-test",
    "Font": EnumItem(Enum.Font.Legacy),
    "LayoutOrder": 0,
    "LineHeight": 1,
    "MaxVisibleGraphemes": -1,
    "Name": "TextLabel",
    "NextSelectionDown": nil,
    "NextSelectionLeft": nil,
    "NextSelectionRight": nil,
    "NextSelectionUp": nil,
    "Parent": "Document" [Folder],
    "Position": UDim2({0, 0}, {0, 0}),
    "RichText": false,
    "RootLocalizationTable": nil,
    "Rotation": 0,
    "Selectable": false,
    "SelectionImageObject": nil,
    "Size": UDim2({0, 0}, {0, 0}),
    "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
    "Text": "multi-test",
    "TextBounds": Vector2(NAN, NAN),
    "TextColor3": Color3(0.105882, 0.164706, 0.207843),
    "TextFits": false,
    "TextScaled": false,
    "TextSize": 8,
    "TextStrokeColor3": Color3(0, 0, 0),
    "TextStrokeTransparency": 1,
    "TextTransparency": 0,
    "TextTruncate": EnumItem(Enum.TextTruncate.None),
    "TextWrapped": false,
    "TextXAlignment": EnumItem(Enum.TextXAlignment.Center),
    "TextYAlignment": EnumItem(Enum.TextYAlignment.Center),
    "Visible": true,
    "ZIndex": 1,
  },
}]]);

	(console.log :: any):mockClear() -- log single element
	screen.debug(screen.getByText("test", { selector = { "TextButton" } }))
	expect(console.log).toHaveBeenCalledTimes(1)
	expect((console.log :: any).mock.calls[1][1]).toBe([[
TextButton {
  "AbsolutePosition": Vector2(0, 0),
  "AbsoluteRotation": 0,
  "AbsoluteSize": Vector2(0, 0),
  "Active": true,
  "AnchorPoint": Vector2(0, 0),
  "Archivable": true,
  "AutoButtonColor": true,
  "AutoLocalize": true,
  "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
  "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
  "BackgroundTransparency": 0,
  "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
  "BorderMode": EnumItem(Enum.BorderMode.Outline),
  "BorderSizePixel": 1,
  "ClassName": "TextButton",
  "ClipsDescendants": false,
  "ContentText": "test",
  "Font": EnumItem(Enum.Font.Legacy),
  "LayoutOrder": 0,
  "LineHeight": 1,
  "MaxVisibleGraphemes": -1,
  "Modal": false,
  "Name": "TextButton",
  "NextSelectionDown": nil,
  "NextSelectionLeft": nil,
  "NextSelectionRight": nil,
  "NextSelectionUp": nil,
  "Parent": "Document" [Folder],
  "Position": UDim2({0, 0}, {0, 0}),
  "RichText": false,
  "RootLocalizationTable": nil,
  "Rotation": 0,
  "Selectable": true,
  "Selected": false,
  "SelectionImageObject": nil,
  "Size": UDim2({0, 0}, {0, 0}),
  "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
  "Style": EnumItem(Enum.ButtonStyle.Custom),
  "Text": "test",
  "TextBounds": Vector2(NAN, NAN),
  "TextColor3": Color3(0.105882, 0.164706, 0.207843),
  "TextFits": false,
  "TextScaled": false,
  "TextSize": 8,
  "TextStrokeColor3": Color3(0, 0, 0),
  "TextStrokeTransparency": 1,
  "TextTransparency": 0,
  "TextTruncate": EnumItem(Enum.TextTruncate.None),
  "TextWrapped": false,
  "TextXAlignment": EnumItem(Enum.TextXAlignment.Center),
  "TextYAlignment": EnumItem(Enum.TextYAlignment.Center),
  "Visible": true,
  "ZIndex": 1,
}]]);

	(console.log :: any):mockClear() -- log multiple elements
	screen.debug(screen.getAllByText("multi-test"))
	expect(console.log).toHaveBeenCalledTimes(2)
	expect((console.log :: any).mock.calls[1][1]).toBe([[
TextLabel {
  "AbsolutePosition": Vector2(0, 0),
  "AbsoluteRotation": 0,
  "AbsoluteSize": Vector2(0, 0),
  "Active": false,
  "AnchorPoint": Vector2(0, 0),
  "Archivable": true,
  "AutoLocalize": true,
  "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
  "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
  "BackgroundTransparency": 0,
  "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
  "BorderMode": EnumItem(Enum.BorderMode.Outline),
  "BorderSizePixel": 1,
  "ClassName": "TextLabel",
  "ClipsDescendants": false,
  "ContentText": "multi-test",
  "Font": EnumItem(Enum.Font.Legacy),
  "LayoutOrder": 0,
  "LineHeight": 1,
  "MaxVisibleGraphemes": -1,
  "Name": "TextLabel",
  "NextSelectionDown": nil,
  "NextSelectionLeft": nil,
  "NextSelectionRight": nil,
  "NextSelectionUp": nil,
  "Parent": "Document" [Folder],
  "Position": UDim2({0, 0}, {0, 0}),
  "RichText": false,
  "RootLocalizationTable": nil,
  "Rotation": 0,
  "Selectable": false,
  "SelectionImageObject": nil,
  "Size": UDim2({0, 0}, {0, 0}),
  "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
  "Text": "multi-test",
  "TextBounds": Vector2(NAN, NAN),
  "TextColor3": Color3(0.105882, 0.164706, 0.207843),
  "TextFits": false,
  "TextScaled": false,
  "TextSize": 8,
  "TextStrokeColor3": Color3(0, 0, 0),
  "TextStrokeTransparency": 1,
  "TextTransparency": 0,
  "TextTruncate": EnumItem(Enum.TextTruncate.None),
  "TextWrapped": false,
  "TextXAlignment": EnumItem(Enum.TextXAlignment.Center),
  "TextYAlignment": EnumItem(Enum.TextYAlignment.Center),
  "Visible": true,
  "ZIndex": 1,
}]])
	expect((console.log :: any).mock.calls[2][1]).toBe([[
TextLabel {
  "AbsolutePosition": Vector2(0, 0),
  "AbsoluteRotation": 0,
  "AbsoluteSize": Vector2(0, 0),
  "Active": false,
  "AnchorPoint": Vector2(0, 0),
  "Archivable": true,
  "AutoLocalize": true,
  "AutomaticSize": EnumItem(Enum.AutomaticSize.None),
  "BackgroundColor3": Color3(0.639216, 0.635294, 0.647059),
  "BackgroundTransparency": 0,
  "BorderColor3": Color3(0.105882, 0.164706, 0.207843),
  "BorderMode": EnumItem(Enum.BorderMode.Outline),
  "BorderSizePixel": 1,
  "ClassName": "TextLabel",
  "ClipsDescendants": false,
  "ContentText": "multi-test",
  "Font": EnumItem(Enum.Font.Legacy),
  "LayoutOrder": 0,
  "LineHeight": 1,
  "MaxVisibleGraphemes": -1,
  "Name": "TextLabel",
  "NextSelectionDown": nil,
  "NextSelectionLeft": nil,
  "NextSelectionRight": nil,
  "NextSelectionUp": nil,
  "Parent": "Document" [Folder],
  "Position": UDim2({0, 0}, {0, 0}),
  "RichText": false,
  "RootLocalizationTable": nil,
  "Rotation": 0,
  "Selectable": false,
  "SelectionImageObject": nil,
  "Size": UDim2({0, 0}, {0, 0}),
  "SizeConstraint": EnumItem(Enum.SizeConstraint.RelativeXY),
  "Text": "multi-test",
  "TextBounds": Vector2(NAN, NAN),
  "TextColor3": Color3(0.105882, 0.164706, 0.207843),
  "TextFits": false,
  "TextScaled": false,
  "TextSize": 8,
  "TextStrokeColor3": Color3(0, 0, 0),
  "TextStrokeTransparency": 1,
  "TextTransparency": 0,
  "TextTruncate": EnumItem(Enum.TextTruncate.None),
  "TextWrapped": false,
  "TextXAlignment": EnumItem(Enum.TextXAlignment.Center),
  "TextYAlignment": EnumItem(Enum.TextYAlignment.Center),
  "Visible": true,
  "ZIndex": 1,
}]]);
	(console.log :: any):mockClear()
end)
return {}
