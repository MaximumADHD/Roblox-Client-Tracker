local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Config = require(ExperienceChat.Config)
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local Roact = require(Packages.Roact)

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("AutocompleteDropdown.story"))
		rootContext.mount = function(c)
			local storyMiddleware = c.storyMiddleware
			local instance = Instance.new("ScreenGui")
			instance.Parent = game:GetService("CoreGui")

			local callback = jest.fn(function(message)
				return message
			end)
			local tree = Roact.createElement("Frame", {
				Size = UDim2.new(0, 500, 0, 150),
			}, {
				story = Roact.createElement(storyMiddleware(storyDefinition.story), {
					setTransparency = function() end,
					onAutocompleteDropdownHover = function() end,
					onAutocompleteSelected = function() end,
					activated = c.activated,
					chatInputBarSettings = c.chatInputBarSettings,
					controls = {
						prefix = c.prefix,
						selectedIndex = c.selectedIndex,
					},
				}),
			})
			local roactInstance = Roact.mount(tree, instance)
			return {
				instance = instance,
				unmount = function()
					Roact.unmount(roactInstance)
					instance:Destroy()
				end,
				callback = callback,
			}
		end

		rootContext.chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
	end)

	describe("WHEN AutocompleteDropdown is first activated", function()
		it("SHOULD NOT be visible by default and have no results", function(c)
			-- Giving an empty prefix because assuming that when AutocompleteDropdown is first activated, input is just ":"
			c.prefix = ""
			c.selectedIndex = 1
			c.activated = true
			c.chatInputBarSettings = {
				BackgroundTransparency = Config.ChatInputBarBackgroundTransparency,
				BackgroundColor3 = Config.ChatInputBarBackgroundColor,
				TextSize = Config.ChatInputBarTextSize,
				TextColor3 = Config.ChatInputBarTextColor3,
				TextStrokeColor3 = Config.ChatInputBarTextStrokeColor,
				TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency,
				FontFace = Config.ChatInputBarFontFace,
				PlaceholderColor3 = Config.ChatInputBarPlaceholderColor,
			}
			c.mountResult = c:mount()
			c.instance = c.findFirstInstance(c.mountResult.instance, { ClassName = "Frame", Name = "story" })

			expect(c.instance.Visible).toBe(false)
			local offsetFrame = c.instance.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame
			for _, childFrame in ipairs(offsetFrame:GetChildren()) do
				expect(childFrame.ClassName).never.toBe("Frame")
			end

			c.mountResult.unmount()
		end)
	end)

	describe("WHEN a prefix is given", function()
		beforeAll(function(c)
			c.prefix = "smi"
			c.selectedIndex = 1
			c.activated = true
			c.chatInputBarSettings = {
				BackgroundTransparency = Config.ChatInputBarBackgroundTransparency,
				BackgroundColor3 = Config.ChatInputBarBackgroundColor,
				TextSize = Config.ChatInputBarTextSize,
				TextColor3 = Config.ChatInputBarTextColor3,
				TextStrokeColor3 = Config.ChatInputBarTextStrokeColor,
				TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency,
				FontFace = Config.ChatInputBarFontFace,
				PlaceholderColor3 = Config.ChatInputBarPlaceholderColor,
			}
		end)

		beforeEach(function(c)
			local findFirstInstance = c.findFirstInstance
			c.mountResult = c:mount()
			c.instance = findFirstInstance(c.mountResult.instance, { ClassName = "Frame", Name = "story" })
		end)

		afterEach(function(c)
			c.mountResult.unmount()
		end)

		it("SHOULD be visible and dropdown should be populated with results", function(c)
			expect(c.instance.Visible).toBe(true)
			local expectedNumberOfResults = 8
			local numResults = 0
			local offsetFrame = c.instance.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame
			for _, childFrame in ipairs(offsetFrame:GetChildren()) do
				if childFrame.ClassName == "Frame" then
					numResults += 1
				end
			end
			expect(numResults).toBe(expectedNumberOfResults)
			expect(c.instance.AbsoluteSize.Y).toBe(Config.AutocompleteFrameDefaultSizeY)
		end)

		it("SHOULD change the color of the selected index", function(c)
			local offsetFrame = c.instance.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame
			for _, childFrame in ipairs(offsetFrame:GetChildren()) do
				if childFrame.ClassName == "Frame" then
					if childFrame.LayoutOrder == c.selectedIndex then
						expect(childFrame.TextLabelButton.BackgroundColor3:ToHex()).toBe(
							Config.AutocompleteSelectedColor:ToHex()
						)
					else
						expect(childFrame.TextLabelButton.BackgroundColor3:ToHex()).never.toBe(
							Config.AutocompleteSelectedColor:ToHex()
						)
					end
				end
			end
		end)
	end)

	describe("GIVEN changes in ChatInputBarConfiguration", function()
		it("SHOULD reflect those changes in each AutocompleteEntry", function(c)
			c.prefix = "smi"
			c.selectedIndex = 1
			c.chatInputBarSettings = {
				BackgroundTransparency = Config.ChatInputBarBackgroundTransparency,
				BackgroundColor3 = Config.ChatInputBarBackgroundColor,
				TextSize = 24,
				TextColor3 = Config.ChatInputBarTextColor3,
				TextStrokeColor3 = Config.ChatInputBarTextStrokeColor,
				TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency,
				FontFace = Config.ChatInputBarFontFace,
				PlaceholderColor3 = Config.ChatInputBarPlaceholderColor,
			}

			c.mountResult = c:mount()
			local autocompleteDropdownInstance =
				c.findFirstInstance(c.mountResult.instance, { ClassName = "Frame", Name = "story" })
			local offsetFrame = autocompleteDropdownInstance.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame
			for _, childFrame in ipairs(offsetFrame:GetChildren()) do
				if childFrame.ClassName == "Frame" then
					expect(childFrame.TextLabelButton.TextLabel.TextSize).toBe(24)
				end
			end

			c.mountResult.unmount()
		end)
	end)

	it("SHOULD NOT be visible once activated is false even if there are results", function(c)
		c.prefix = "smi"
		c.selectedIndex = 1
		c.activated = false
		c.chatInputBarSettings = {
			BackgroundTransparency = Config.ChatInputBarBackgroundTransparency,
			BackgroundColor3 = Config.ChatInputBarBackgroundColor,
			TextSize = Config.ChatInputBarTextSize,
			TextColor3 = Config.ChatInputBarTextColor3,
			TextStrokeColor3 = Config.ChatInputBarTextStrokeColor,
			TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency,
			FontFace = Config.ChatInputBarFontFace,
			PlaceholderColor3 = Config.ChatInputBarPlaceholderColor,
		}
		c.mountResult = c:mount()
		local autocompleteDropdownInstance =
			c.findFirstInstance(c.mountResult.instance, { ClassName = "Frame", Name = "story" })

		expect(autocompleteDropdownInstance.Visible).toBe(false)

		c.mountResult.unmount()
	end)

	it("SHOULD get smaller if the number of results are below 3", function(c)
		c.prefix = "smiley"
		c.selectedIndex = 1
		c.activated = true
		c.chatInputBarSettings = {
			BackgroundTransparency = Config.ChatInputBarBackgroundTransparency,
			BackgroundColor3 = Config.ChatInputBarBackgroundColor,
			TextSize = Config.ChatInputBarTextSize,
			TextColor3 = Config.ChatInputBarTextColor3,
			TextStrokeColor3 = Config.ChatInputBarTextStrokeColor,
			TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency,
			FontFace = Config.ChatInputBarFontFace,
			PlaceholderColor3 = Config.ChatInputBarPlaceholderColor,
		}

		c.mountResult = c:mount()
		local autocompleteDropdownInstance =
			c.findFirstInstance(c.mountResult.instance, { ClassName = "Frame", Name = "story" })

		expect(autocompleteDropdownInstance.Visible).toBe(true)
		local expectedNumberOfResults = 2
		local numResults = 0
		local offsetFrame = autocompleteDropdownInstance.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame
		for _, childFrame in ipairs(offsetFrame:GetChildren()) do
			if childFrame.ClassName == "Frame" then
				numResults += 1
			end
		end
		expect(numResults).toBe(expectedNumberOfResults)
		expect(autocompleteDropdownInstance.AbsoluteSize.Y).toBe(Config.AutocompleteEntryDefaultSizeY * 2)

		c.mountResult.unmount()
	end)
end
