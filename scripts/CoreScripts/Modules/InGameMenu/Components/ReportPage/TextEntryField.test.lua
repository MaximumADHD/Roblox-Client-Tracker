--!nonstrict
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local Foundation = require(CorePackages.Packages.Foundation)

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Roact = InGameMenuDependencies.Roact
local Rodux = InGameMenuDependencies.Rodux
local RoactRodux = InGameMenuDependencies.RoactRodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local InGameMenu = script.Parent.Parent.Parent
local Localization = require(InGameMenu.Localization.Localization)
local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
local reducer = require(InGameMenu.reducer)
local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration
local foundationTypography = Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Dark).Typography
local Style = require(CorePackages.Workspace.Packages.Style)
local getTextSizeSpy = jest.spyOn(Style, "GetTextSize")

local TextEntryField = require(script.Parent.TextEntryField)

local function expectTextMeasurementsWithoutTemporaryPadding()
	expect(#getTextSizeSpy.mock.calls).toBeGreaterThan(0)
	for _, call in getTextSizeSpy.mock.calls do
		expect(call[3]).toEqual(foundationTypography.BodyLarge.Font)
		expect(call[5]).toEqual({ addTemporaryPadding = false })
	end
end

it("should create and destroy without errors", function()
	jest.clearAllMocks()
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				TextEntryField = Roact.createElement(TextEntryField, {
					enabled = true,
					text = "Hello world!",
					textChanged = function()
						print("textChanged")
					end,
					maxTextLength = 30,
					autoFocusOnEnabled = false,

					PlaceholderText = "Enter text here",
					LayoutOrder = 2,
					Size = UDim2.new(0.5, 0, 0.5, 0),
				}),
			}),
		}),
	})

	local instance = Roact.mount(element)

	if FFlagFoundationFontFaceMigration then
		expectTextMeasurementsWithoutTemporaryPadding()
	end

	Roact.unmount(instance)
end)

it("should call textChanged when the user enters text", function()
	jest.clearAllMocks()
	local textChangedSpy, textChangedFn = jest.fn()

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				TextEntryField = Roact.createElement(TextEntryField, {
					enabled = true,
					text = "",
					textChanged = textChangedFn,
					maxTextLength = 200,
					autoFocusOnEnabled = false,

					PlaceholderText = "Enter text here",
					LayoutOrder = 2,
					Size = UDim2.new(0.5, 0, 0.5, 0),
				}),
			}),
		}),
	})

	local folder = Instance.new("Folder")

	local instance = Roact.mount(element, folder)

	local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
	textBox.Text = "Hello world!"
	ReactRoblox.act(function()
		task.wait(0.1)
	end)

	expect(textChangedSpy).toHaveBeenCalled()
	if FFlagFoundationFontFaceMigration then
		expectTextMeasurementsWithoutTemporaryPadding()
	end

	Roact.unmount(instance)
end)

it("should trim the text when it exceeds max text", function()
	local textChangedTo = ""
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				TextEntryField = Roact.createElement(TextEntryField, {
					enabled = true,
					text = "",
					textChanged = function(newText)
						textChangedTo = newText
					end,
					maxTextLength = 5,
					autoFocusOnEnabled = false,

					PlaceholderText = "Enter text here",
					LayoutOrder = 2,
					Size = UDim2.new(0.5, 0, 0.5, 0),
				}),
			}),
		}),
	})

	local folder = Instance.new("Folder")

	local instance = Roact.mount(element, folder)

	local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
	textBox.Text = "Hello world!"
	ReactRoblox.act(function()
		task.wait(0.1)
	end)

	expect(textChangedTo).toBe("Hello")

	Roact.unmount(instance)
end)

it("should trim multi-byte utf8 characters correctly when it exceeds max length limit", function()
	local textChangedTo = ""
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				TextEntryField = Roact.createElement(TextEntryField, {
					enabled = true,
					text = "",
					textChanged = function(newText)
						textChangedTo = newText
					end,
					maxTextLength = 4,
					autoFocusOnEnabled = false,

					PlaceholderText = "Enter text here",
					LayoutOrder = 2,
					Size = UDim2.new(0.5, 0, 0.5, 0),
				}),
			}),
		}),
	})

	local folder = Instance.new("Folder")

	local instance = Roact.mount(element, folder)

	local textBox = folder:FindFirstChildWhichIsA("TextBox", true)
	textBox.Text = "罗布乐思是世界最大的多人在线游戏"
	ReactRoblox.act(function()
		task.wait(0.1)
	end)

	expect(textChangedTo).toBe("罗布乐思")

	Roact.unmount(instance)
end)
