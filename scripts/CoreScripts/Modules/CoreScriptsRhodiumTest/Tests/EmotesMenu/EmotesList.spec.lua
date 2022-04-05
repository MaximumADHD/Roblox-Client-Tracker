local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
local act = require(Modules.act)

local EmotesMenuReducer = require(Modules.EmotesMenu.Reducers.EmotesMenuReducer)
local EmotesList = require(Modules.EmotesMenu.Components.EmotesList)

return function()
	local initState = {
		emotesPage = {
			-- All emotes the user owns
			emotesInfo = {
				["0"] = {0},
				["1"] = {1},
			},
			-- Emotes equipped in the avatar editor
			currentEmotes = {
				[0] = "0",
			},
		},
		displayOptions = {
			menuVisible = true,
			guiInset = 0,
		},
	}

	local initStateLongList = {
		emotesPage = {
			-- All emotes the user owns
			emotesInfo = {
				["0"] = {0},
				["1"] = {1},
				["2"] = {2},
				["3"] = {3},
				["4"] = {4},
				["5"] = {5},
				["6"] = {6},
				["7"] = {7},
				["8"] = {8},
				["9"] = {9},
				["10"] = {10},
				["11"] = {11},
				["12"] = {12},
				["13"] = {13},
				["14"] = {14},
				["15"] = {15},
			},
			-- Emotes equipped in the avatar editor
			currentEmotes = {
				[1] = "0",
				[2] = "1",
				[3] = "2",
				[4] = "3",
			},
		},
		displayOptions = {
			menuVisible = true,
			guiInset = 0,
		},
	}

	describe("EmotesList", function()
		it("should mount the EmotesMenu component", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
			end,
			EmotesList, EmotesMenuReducer)
		end)

		it("should close menu when pressing the close button", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
				expect(baseWidget:getAttribute("Visible")).to.equal(true)

				local closeButtonPath = path:cat(XPath.new("CloseFrame.CloseButton"))
				local closeButton = Element.new(closeButtonPath)
				expect(closeButton:waitForRbxInstance(1)).to.be.ok()
				act(function()
					closeButton:click()
				end)
				wait()
				expect(baseWidget:getAttribute("Visible")).to.equal(false)
			end,
			EmotesList, EmotesMenuReducer, initState)
		end)

		it("should render emoteBubble children", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local scrollingFramePath =
					path:cat(XPath.new("EmotesScrollingFrameContainer.EmotesScrollingFrame"))
				local scrollingFrame = Element.new(scrollingFramePath)
				expect(scrollingFrame:waitForRbxInstance(1)).to.be.ok()

				local emote0Path = scrollingFramePath:cat(XPath.new("Emote0"))
				local emote0 = Element.new(emote0Path)
				expect(emote0:waitForRbxInstance(1)).to.be.ok()

				expect(#scrollingFrame:getRbxInstance():getChildren()).to.equal(2)
			end,
			EmotesList, EmotesMenuReducer, initState)
		end)

		it("should navigate children with gamepad", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local scrollingFramePath =
					path:cat(XPath.new("EmotesScrollingFrameContainer.EmotesScrollingFrame"))
				local scrollingFrame = Element.new(scrollingFramePath)
				expect(scrollingFrame:waitForRbxInstance(1)).to.be.ok()

				local gamepad = Rhodium.VirtualInput.GamePad.new()
				-- press random button so gamepad is detected by EmotesList
				gamepad:pressButton(Enum.KeyCode.ButtonA)
				act(function()
					wait()
				end)
				local emote0Path = scrollingFramePath:cat(XPath.new("Emote0.EmoteBubbleButton.EmoteGamepadSelectionCursor"))
				local emote0 = Element.new(emote0Path)
				expect(emote0:waitForRbxInstance(1)).to.be.ok()

				-- move focus down to emote 2 from emote 1
				gamepad:pressButton(Enum.KeyCode.DPadDown)
				act(function()
					wait()
				end)
				local emote1Path = scrollingFramePath:cat(XPath.new("Emote1.EmoteBubbleButton.EmoteGamepadSelectionCursor"))
				local emote1 = Element.new(emote1Path)
				expect(emote1:waitForRbxInstance(1)).to.be.ok()
				emote0 = Element.new(emote0Path)
				expect(emote0:waitForRbxInstance(1)).to.never.be.ok()

				-- move focus up to emote 1 from emote 2
				gamepad:pressButton(Enum.KeyCode.DPadUp)
				act(function()
					wait()
				end)
				emote0 = Element.new(emote0Path)
				emote1 = Element.new(emote1Path)
				expect(emote0:waitForRbxInstance(1)).to.be.ok()
				expect(emote1:waitForRbxInstance(1)).to.never.be.ok()
			end,
			EmotesList, EmotesMenuReducer, initState)
		end)

		it("should only render a limited number of elements", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local scrollingFramePath =
					path:cat(XPath.new("EmotesScrollingFrameContainer.EmotesScrollingFrame"))
				local scrollingFrame = Element.new(scrollingFramePath)
				expect(scrollingFrame:waitForRbxInstance(1)).to.be.ok()

				-- when at the top of the list, render 7 bubbles + 2 beyond the bottom as a buffer
				expect(#scrollingFrame:getRbxInstance():getChildren()).to.equal(9)

				local emote4Path = scrollingFramePath:cat(XPath.new("Emote4"))
				local emote4 = Element.new(emote4Path)
				expect(emote4:waitForRbxInstance(1)).to.be.ok()
				act(function()
					emote4:centralize()
				end)

				-- when the list is scrolled down, render another 2 bubbles as buffer at the top
				expect(#scrollingFrame:getRbxInstance():getChildren()).to.equal(11)
			end,
			EmotesList, EmotesMenuReducer, initStateLongList)
		end)

		it("should include a UIGradient when bubble is partially offscreen", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				local scrollingFramePath =
					path:cat(XPath.new("EmotesScrollingFrameContainer.EmotesScrollingFrame"))
				local scrollingFrame = Element.new(scrollingFramePath)
				expect(scrollingFrame:waitForRbxInstance(1)).to.be.ok()

				local gradientPath = scrollingFramePath:cat(XPath.new("Emote0.EmoteBubbleButton.UIGradient"))
				local gradient = Element.new(gradientPath)
				expect(gradient:waitForRbxInstance(1)).to.never.be.ok()

				-- scroll the first bubble partially offscreen
				act(function()
					Rhodium.VirtualInput.Touch.swipe(scrollingFrame:getCenter(),
						scrollingFrame:getCenter() - Vector2.new(0, 30), 0.2, false)
				end)

				-- Wait for scroll to complete
				act(function()
					wait()
				end)

				gradient = Element.new(gradientPath)
				expect(gradient:waitForRbxInstance(1)).to.be.ok()

				local gradientOffset = (scrollingFrame:getAttribute("CanvasPosition").Y - 8) / 56
				expect(gradient:getAttribute("Offset").Y).to.be.near(gradientOffset)
				expect(gradient:getAttribute("Rotation")).to.equal(90)
			end,
			EmotesList, EmotesMenuReducer, initStateLongList)
		end)

		it("should center the list according to character position", function()
			withServices(function(path)
				path = XPath.new(path)
				local baseWidget = Element.new(path)
				expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

				-- Y position should align with the mocked world ppint
				expect(baseWidget:getAttribute("Position").Y.Offset).to.equal(375)
			end,
			EmotesList, EmotesMenuReducer, initStateLongList)
		end)
	end)
end
