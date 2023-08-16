--!nonstrict
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local UIBlox = require(CorePackages.UIBlox)
local RoactRodux = require(CorePackages.RoactRodux)
local Rhodium = require(CorePackages.Rhodium)
local Element = Rhodium.Element
local XPath = Rhodium.XPath

local JestGlobals = require(CorePackages.JestGlobals)
local jestExpect = JestGlobals.expect

local RoactAct = require(Modules.act)

local RobloxTranslator = require(Modules.RobloxTranslator)

local EmotesMenuMaster = require(Modules.EmotesMenu.EmotesMenuMaster)

local TopBar = Modules.TopBar
local Presentation = TopBar.Components.Presentation
local MoreMenu = require(Presentation.MoreMenu)
local Reducer = require(TopBar.Reducer)

local SetScreenSize = require(TopBar.Actions.SetScreenSize)
local SetMoreMenuOpen = require(TopBar.Actions.SetMoreMenuOpen)

return function()
	describe("MoreMenu", function()
		afterAll(function(context)
			if EmotesMenuMaster:isOpen() then
				EmotesMenuMaster:close()
			end
		end)

		it("should create and destroy without errors and have the correct default children", function()
			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
					MoreMenu = Roact.createElement(MoreMenu)
				})
			})

			local instanceName = "Test-" .. HttpService:GenerateGUID(false)
			local handle = Roact.mount(element, CoreGui, instanceName)

			local path = ("game.CoreGui.%s"):format(instanceName)
			path = XPath.new(path)
			local baseWidget = Element.new(path)
			jestExpect(baseWidget:waitForRbxInstance(1)).toBeDefined()

			local menuPath = path:cat(XPath.new("MoreMenuContainer.ContextualMenu.PositionFrame.BaseMenu"))
			local menuElement = Element.new(menuPath)
			jestExpect(menuElement:waitForRbxInstance(1)).toBeDefined()

			local childContainerPath = menuPath:cat(XPath.new("ClippingFrame.ScrollingFrame"))
			local childContainerElement = Element.new(childContainerPath)
			jestExpect(childContainerElement:waitForRbxInstance(1)).toBeDefined()

			local expectedDefaultChildren = {
				RobloxTranslator:FormatByKey("CoreScripts.TopBar.Leaderboard"),
				RobloxTranslator:FormatByKey("CoreScripts.TopBar.Emotes"),
				RobloxTranslator:FormatByKey("CoreScripts.TopBar.Inventory")
			}

			for index, childText in ipairs(expectedDefaultChildren) do
				local childPath = childContainerPath:cat(XPath.new("cell " ..index.. ".Cell"))
				local childElement = Element.new(childPath)
				jestExpect(childElement:waitForRbxInstance(1)).toBeDefined()

				local childTextPath = childPath:cat(XPath.new("LeftAlignedContent.Text"))
				local childTextElement = Element.new(childTextPath)
				jestExpect(childTextElement:waitForRbxInstance(1)).toBeDefined()
				jestExpect(childTextElement:waitForRbxInstance(1).Text).toBe(childText)
			end

			Roact.unmount(handle)
		end)

		it("should open the emotes menu when the emotes button is selected", function()
			local store = Rodux.Store.new(Reducer, nil, {
				Rodux.thunkMiddleware,
			})

			store:dispatch(SetScreenSize(Vector2.new(300, 800)))
			store:dispatch(SetMoreMenuOpen(true))

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
					ScreenGui = Roact.createElement("ScreenGui", {
						ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
					}, {
						Container = Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.fromScale(1, 1),
						}, {
							UIListLayout = Roact.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Horizontal,
								HorizontalAlignment = Enum.HorizontalAlignment.Right,
							}),

							MoreMenu = Roact.createElement(MoreMenu, {
								layoutOrder = 1,
							})
						}),
					}),
				}),
			})

			EmotesMenuMaster:_onEmotesChanged({
				Salute = {3360689775},
				Agree = {4849487550},
				Disagree = {4849495710}
			})

			local instanceName = "Test-" .. HttpService:GenerateGUID(false)
			local handle = Roact.mount(element, CoreGui, instanceName)

			RoactAct(function()
				wait(1)
			end)

			local path = ("game.CoreGui.%s.Container"):format(instanceName)
			path = XPath.new(path)
			local baseWidget = Element.new(path)
			jestExpect(baseWidget:waitForRbxInstance(1)).toBeDefined()

			local childContainerPath = path:cat(
				XPath.new("MoreMenu.MoreMenuContainer.ContextualMenu.PositionFrame.BaseMenu.ClippingFrame.ScrollingFrame"))
			local childContainerElement = Element.new(childContainerPath)
			jestExpect(childContainerElement:waitForRbxInstance(1)).toBeDefined()

			local emoteButtonPath = childContainerPath:cat(XPath.new("cell 2.Cell"))
			local emoteElement = Element.new(emoteButtonPath)
			jestExpect(emoteElement:waitForRbxInstance(1)).toBeDefined()

			emoteElement:click()

			RoactAct(function()
				wait()
			end)

			jestExpect(EmotesMenuMaster:isOpen()).toBeTruthy()
			Roact.unmount(handle)
		end)
	end)
end
