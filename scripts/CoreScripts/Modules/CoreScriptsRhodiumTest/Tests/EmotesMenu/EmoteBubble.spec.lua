local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local Cryo = require(CorePackages.Cryo)
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)

local Constants = require(Modules.EmotesMenu.Constants)
local EmotesMenuReducer = require(Modules.EmotesMenu.Reducers.EmotesMenuReducer)
local EmoteBubble = require(Modules.EmotesMenu.Components.EmoteBubble)

local GetFFlagNewEmotesInGame = require(Modules.Flags.GetFFlagNewEmotesInGame)

local act = require(Modules.act)

local SLOT_INDEX = 1
local EMOTE_NAME = "Bored"
local POSITION = 150

return function()
	local props = {
		emoteName = EMOTE_NAME,
		emoteAssetId = 5230661597,
	}

	local propsWithSlotIndex = Cryo.Dictionary.join(props, {slotIndex = SLOT_INDEX})
	local propsWithFocus = Cryo.Dictionary.join(props, {focused = true})
	local propsWithPosition = Cryo.Dictionary.join(props, {Position = UDim2.fromOffset(POSITION, POSITION)})

	describe("EmoteBubble", function()
		it("should mount the EmoteBubble component", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
			end,
			EmoteBubble, EmotesMenuReducer, nil, props)
		end)

		it("should include icon and correct text", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local buttonIconPath = path:cat(XPath.new("EmoteBubbleButton.EmoteImage"))
				local buttonIcon = Element.new(buttonIconPath)
				expect(buttonIcon:waitForRbxInstance(1)).to.be.ok()

				local textPath = path:cat(XPath.new("EmoteTextFrame.EmoteText"))
				local text = Element.new(textPath)
				expect(text:waitForRbxInstance(1)).to.be.ok()
				expect(text:getAttribute("Text")).to.equal(EMOTE_NAME)
			end,
			EmoteBubble, EmotesMenuReducer, nil, props)
		end)

		it("should include correct text with slot index", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local textPath = path:cat(XPath.new("EmoteTextFrame.EmoteText"))
				local text = Element.new(textPath)
				expect(text:waitForRbxInstance(1)).to.be.ok()
				expect(text:getAttribute("Text")).to.equal(SLOT_INDEX .. " / " .. EMOTE_NAME)
			end,
			EmoteBubble, EmotesMenuReducer, nil, propsWithSlotIndex)
		end)

		it("should change transparency on mouse enter/leave", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local buttonPath = path:cat(XPath.new("EmoteBubbleButton"))
				local button = Element.new(buttonPath)
				expect(button:waitForRbxInstance(1)).to.be.ok()
				expect(button:getAttribute("BackgroundTransparency")).to.be.near(0.5)

				local buttonPos = button:getCenter()
				Rhodium.VirtualInput.Mouse.mouseMove(buttonPos)
				act(function ()
					wait()
				end)
				expect(button:getAttribute("BackgroundTransparency")).to.be.near(0.3)

				Rhodium.VirtualInput.Mouse.mouseMove(Vector2.new(1000, 1000))
				act(function()
					wait()
				end)
				expect(button:getAttribute("BackgroundTransparency")).to.be.near(0.5)
			end,
			EmoteBubble, EmotesMenuReducer, nil, propsWithSlotIndex)
		end)

		it("should not include a selection cursor if it is not focused", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local buttonPath = path:cat(XPath.new("EmoteBubbleButton.EmoteGamepadSelectionCursor"))
				local button = Element.new(buttonPath)
				expect(button:waitForRbxInstance(1)).to.never.be.ok()
			end,
			EmoteBubble, EmotesMenuReducer, nil, props)
		end)


		it("should include a selection cursor if it is focused", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local buttonPath = path:cat(XPath.new("EmoteBubbleButton.EmoteGamepadSelectionCursor"))
				local button = Element.new(buttonPath)
				expect(button:waitForRbxInstance(1)).to.be.ok()
			end,
			EmoteBubble, EmotesMenuReducer, nil, propsWithFocus)
		end)

		it("should be placed in the proper Position based on props", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local buttonPath = path:cat(XPath.new("EmoteBubbleButton"))
				local button = Element.new(buttonPath)
				expect(button:waitForRbxInstance(1)).to.be.ok()
				local buttonPos = POSITION + Constants.EmoteBubbleSizes.BubbleSize / 2
				expect(button:getCenter()).to.equal(Vector2.new(buttonPos, buttonPos))
			end,
			EmoteBubble, EmotesMenuReducer, nil, propsWithPosition)
		end)

		if GetFFlagNewEmotesInGame() then
			-- FFlag these tests since PlayersService is only mocked with the flag on
			-- For these tests to pass, PlayersService must be mocked for the PlayEmote thunk
			it("should include a highlight when clicked and remove it when emote stops", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local buttonPath = path:cat(XPath.new("EmoteBubbleButton"))
					local button = Element.new(buttonPath)
					expect(button:waitForRbxInstance(1)).to.be.ok()

					-- expect there to be no highlight initially
					local innerHighlightPath = buttonPath:cat(XPath.new("InnerHighlight"))
					local innerHighlight = Element.new(innerHighlightPath)
					expect(innerHighlight:waitForRbxInstance(1)).to.never.be.ok()

					local outerHighlightPath = buttonPath:cat(XPath.new("OuterHighlight"))
					local outerHighlight = Element.new(outerHighlightPath)
					expect(outerHighlight:waitForRbxInstance(1)).to.never.be.ok()

					-- expect highlight after click
					act(function()
						button:click()
					end)
					innerHighlight = Element.new(innerHighlightPath)
					outerHighlight = Element.new(outerHighlightPath)
					expect(innerHighlight:waitForRbxInstance(1)).to.be.ok()
					expect(outerHighlight:waitForRbxInstance(1)).to.be.ok()

					-- expect highlight to be removed once the mocked emote finishes playing
					act(function()
						wait(1)
					end)
					innerHighlight = Element.new(innerHighlightPath)
					outerHighlight = Element.new(outerHighlightPath)
					expect(innerHighlight:waitForRbxInstance(1)).to.never.be.ok()
					expect(outerHighlight:waitForRbxInstance(1)).to.never.be.ok()
				end,
				EmoteBubble, EmotesMenuReducer, nil, props)
			end)

			it("should animate to be larger when clicked and then animate back to normal size", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					-- Should start as default size
					local buttonPath = path:cat(XPath.new("EmoteBubbleButton"))
					local button = Element.new(buttonPath)
					expect(button:waitForRbxInstance(1)).to.be.ok()
					expect(button:getAttribute("Size").Y.Offset).to.equal(Constants.EmoteBubbleSizes.BubbleSize)

					-- when clicked, should increase in size
					act(function()
						button:click()
					end)

					-- wait one second for size increase animation to finish
					act(function()
						wait(1)
					end)

					local sizeLarger = button:getAttribute("Size").Y.Offset > Constants.EmoteBubbleSizes.BubbleSize
					expect(sizeLarger).to.equal(true)

					-- after animation finishes, should return to default size
					act(function()
						wait(1)
					end)

					expect(button:getAttribute("Size").Y.Offset).to.equal(Constants.EmoteBubbleSizes.BubbleSize)
				end,
				EmoteBubble, EmotesMenuReducer, nil, props)
			end)
		end
	end)
end
