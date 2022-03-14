local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
local act = require(Modules.act)

local EmotesMenuReducer = require(Modules.EmotesMenu.Reducers.EmotesMenuReducer)
local EmotesMenu = require(Modules.EmotesMenu.Components.EmotesMenu)

local GetFFlagNewEmotesInGame = require(Modules.Flags.GetFFlagNewEmotesInGame)

local function getInitState(visible)
	return {
		emotesPage = {
			emotesInfo = {
				["1"] = {1},
				["2"] = {2},
				["3"] = {3},
			},
			currentEmotes = {},
		},
		displayOptions = {
			menuVisible = visible,
			guiInset = 0,
		}
	}
end

return function()
	describe("EmotesMenu", function()
		it("should mount the EmotesMenu component", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
			end,
			EmotesMenu, EmotesMenuReducer)
		end)

		if GetFFlagNewEmotesInGame() then
			it("should open/close the menu on '.' press", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local emotesListPath = path:cat(XPath.new("EmotesList"))
					local emotesList = Element.new(emotesListPath)
					expect(emotesList:waitForRbxInstance(1)).to.be.ok()
					expect(emotesList:getAttribute("Visible")).to.equal(false)

					baseWidget:sendKey(Enum.KeyCode.Period)
					act(function()
						wait()
					end)

					expect(emotesList:getAttribute("Visible")).to.equal(true)

					baseWidget:sendKey(Enum.KeyCode.Period)
					act(function()
						wait()
					end)

					expect(emotesList:getAttribute("Visible")).to.equal(false)
				end,
				EmotesMenu, EmotesMenuReducer, getInitState(false))
			end)

			it("should open the menu with DPadDown shortcut", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local emotesListPath = path:cat(XPath.new("EmotesList"))
					local emotesList = Element.new(emotesListPath)
					expect(emotesList:waitForRbxInstance(1)).to.be.ok()
					expect(emotesList:getAttribute("Visible")).to.equal(false)

					local gamepad = Rhodium.VirtualInput.GamePad.new()
					gamepad:pressButton(Enum.KeyCode.DPadDown)
					act(function()
						wait()
					end)

					expect(emotesList:getAttribute("Visible")).to.equal(true)
				end,
				EmotesMenu, EmotesMenuReducer, getInitState(false))
			end)

			it("should not open the menu with no owned emotes", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local emotesListPath = path:cat(XPath.new("EmotesList"))
					local emotesList = Element.new(emotesListPath)
					expect(emotesList:waitForRbxInstance(1)).to.be.ok()
					expect(emotesList:getAttribute("Visible")).to.equal(false)

					baseWidget:sendKey(Enum.KeyCode.Period)
					wait()

					expect(emotesList:getAttribute("Visible")).to.equal(false)

					local gamepad = Rhodium.VirtualInput.GamePad.new()
					gamepad:pressButton(Enum.KeyCode.DPadDown)
					wait()

					expect(emotesList:getAttribute("Visible")).to.equal(false)
				end,
				EmotesMenu, EmotesMenuReducer)
			end)

			it("should not close the menu when there is mouse input outside of the menu", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local emotesListPath = path:cat(XPath.new("EmotesList"))
					local emotesList = Element.new(emotesListPath)
					expect(emotesList:waitForRbxInstance(1)).to.be.ok()
					expect(emotesList:getAttribute("Visible")).to.equal(true)

					local emotesListPos = emotesList:getCenter()
					Rhodium.VirtualInput.Mouse.click(Vector2.new(emotesListPos.X + 500, emotesListPos.Y))

					expect(emotesList:getAttribute("Visible")).to.equal(true)
				end,
				EmotesMenu, EmotesMenuReducer, getInitState(true))
			end)

			it("should not close the menu when there is input that would move the character", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local emotesListPath = path:cat(XPath.new("EmotesList"))
					local emotesList = Element.new(emotesListPath)
					expect(emotesList:waitForRbxInstance(1)).to.be.ok()
					expect(emotesList:getAttribute("Visible")).to.equal(true)

					-- keycodes that closed the emotes wheel that should not close the emotes list
					baseWidget:sendKey(Enum.KeyCode.W)
					baseWidget:sendKey(Enum.KeyCode.A)
					baseWidget:sendKey(Enum.KeyCode.S)
					baseWidget:sendKey(Enum.KeyCode.D)

					baseWidget:sendKey(Enum.KeyCode.Up)
					baseWidget:sendKey(Enum.KeyCode.Down)
					baseWidget:sendKey(Enum.KeyCode.Left)
					baseWidget:sendKey(Enum.KeyCode.Right)

					baseWidget:sendKey(Enum.KeyCode.Space)

					baseWidget:sendKey(Enum.KeyCode.Tab)
					baseWidget:sendKey(Enum.KeyCode.Slash)
					baseWidget:sendKey(Enum.KeyCode.Backquote)

					expect(emotesList:getAttribute("Visible")).to.equal(true)
				end,
				EmotesMenu, EmotesMenuReducer, getInitState(true))
			end)
		end
	end)
end
