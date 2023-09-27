local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local jest = globals.jest
local expect = globals.expect
local Dictionary = require(Packages.llama).Dictionary
local Roact = require(Packages.Roact)

local Flags = ExperienceChat.Flags
local getEnableChatInputBarConfigurationStyleCustomizations =
	require(Flags.getEnableChatInputBarConfigurationStyleCustomizations)

return function()
	beforeAll(function(root)
		local onFadeOut = jest.fn()
		root.onFadeOut = onFadeOut

		local storyDefinition = require(script.Parent:FindFirstChild("BlankBubble.story"))
		local createProps = function(c)
			return {
				controls = {
					isDistant = c.isDistant,
					fadingOut = c.fadingOut,
					renderInsert = c.renderInsert,
				},
				onFadeOut = onFadeOut,
				insertSize = c.insertSize,
			}
		end

		root.mount = root.createMount(storyDefinition.story, createProps)

		root.update = function(c, roactInstance, updateProps)
			local updateCreateProps = function()
				return Dictionary.join(createProps(c), updateProps)
			end

			local tree = c:makeTree(storyDefinition.story, updateCreateProps)
			Roact.update(roactInstance, tree)
		end
	end)

	describe("WHEN isDistant = false", function()
		beforeAll(function(c)
			c.isDistant = false
			c.fadingOut = false
			c.insertSize = Vector2.new(28, 28)
		end)

		it("SHOULD work", function(c)
			local result = c:mount()

			local caret = result.instance:FindFirstChild("Caret", true)
			assert(caret, "needs caret")

			Roact.act(function()
				game:GetService("RunService").Heartbeat:Wait()
				game:GetService("RunService").Heartbeat:Wait()
			end)
			assert(caret.ImageTransparency < 1, "expected to be fading in")

			local topLevel = result.instance:FindFirstChildWhichIsA("GuiObject")
			assert(topLevel, "needs topLevel ui")
			local startingSize = topLevel.AbsoluteSize

			c:update(result.roactInstance, {
				controls = {
					isDistant = true,
				},
			})

			assert(topLevel.AbsoluteSize.X < startingSize.X, "expected smaller sizes")

			c:update(result.roactInstance, {
				insertSize = Vector2.new(64, 64),
			})

			-- fadingOut
			c:update(result.roactInstance, {
				controls = {
					isDistant = true,
					fadingOut = true,
				},
			})

			Roact.unmount(result.roactInstance)
		end)
	end)

	describe("WHEN mounting while fadingOut", function()
		beforeAll(function(c)
			c.isDistant = false
			c.fadingOut = true
			c.insertSize = nil
			c.renderInsert = "VoiceIndicator"
		end)

		it("SHOULD work", function(c)
			local result = c:mount()
			local caret = result.instance:FindFirstChild("Caret", true)
			assert(caret, "needs caret")

			Roact.act(function()
				task.wait()
			end)
			assert(caret.ImageTransparency == 1, "expected to be fading out")
		end)
	end)

	if getEnableChatInputBarConfigurationStyleCustomizations() then
		describe("WHEN ChatBubbleConfiguration.BackgroundTransparency = 0.75", function()
			beforeAll(function(c)
				c.isDistant = false
				c.fadingOut = false
				c.insertSize = Vector2.new(28, 28)
			end)

			it("SHOULD have background transparency of 0.75", function(c)
				Roact.act(function()
					game:GetService("TextChatService").BubbleChatConfiguration.BackgroundTransparency = 0.75
					wait()
				end)

				local result = c:mount()

				local caret = result.instance:FindFirstChild("Caret", true)
				assert(caret, "needs caret")

				expect(caret.ImageTransparency).toBeCloseTo(0.75)

				Roact.unmount(result.roactInstance)
			end)
		end)
	end
end
