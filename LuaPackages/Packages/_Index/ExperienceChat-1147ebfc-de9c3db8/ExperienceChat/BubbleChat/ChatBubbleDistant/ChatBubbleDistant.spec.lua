local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local Dictionary = require(Packages.llama).Dictionary
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

-- local Flags = ExperienceChat.Flags
-- local getEnableChatInputBarConfigurationStyleCustomizations =
-- 	require(Flags.getEnableChatInputBarConfigurationStyleCustomizations)

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("ChatBubbleDistant.story"))

		rootContext.createTree = function(context, props)
			local storyMiddleware = context.storyMiddleware
			return Roact.createElement(
				storyMiddleware(storyDefinition.story),
				Dictionary.join(storyDefinition.props, props)
			)
		end

		rootContext.mount = function(context, createProps)
			assert(createProps, "requires createProps")
			local props = createProps(context)
			local instance = Instance.new("ScreenGui")
			instance.Parent = game:GetService("CoreGui")

			local tree = context:createTree(props)
			local roactInstance = Roact.mount(tree, instance)
			return {
				roactInstance = roactInstance,
				instance = instance,
				unmount = function()
					Roact.unmount(roactInstance)
					instance:Destroy()
				end,
			}
		end
	end)

	describe("GIVEN ChatBubbleDistant props", function()
		beforeAll(function(c)
			c.mountResult = c:mount(function()
				return {
					messages = {
						{ Text = "Hello World!" },
					},
					controls = { isVoiceOn = false },
				}
			end)
		end)

		it("SHOULD mount ChatBubbleDistant as visible", function(c)
			local ellipsis = c.findFirstInstance(c.mountResult.instance, { Text = "…" })
			expect(ellipsis).never.toBeNil()
		end)

		-- @TODO enable later for EnableChatInputBarConfigurationStyleCustomizations clean up!
		-- if getEnableChatInputBarConfigurationStyleCustomizations() then
		-- 	describe("WHEN ChatBubbleConfiguration.BackgroundTransparency = 0.1", function()
		-- 		beforeAll(function(c)
		-- 			c.isDistant = false
		-- 			c.fadingOut = false
		-- 			c.insertSize = Vector2.new(28, 28)
		-- 		end)

		-- 		it("SHOULD have background transparency of 0.1", function(c)
		-- 			Roact.act(function()
		-- 				game:GetService("TextChatService").BubbleChatConfiguration.BackgroundTransparency = 0.1
		-- 				wait(2)
		-- 			end)

		-- 			local backgroundImageLabel = c.findFirstInstance(c.mountResult.instance, { Text = "…" }).Parent
		-- 			expect(backgroundImageLabel.BackgroundTransparency).toBeCloseTo(0.1)
		-- 		end)
		-- 	end)
		-- end

		it("SHOULD update bubble to render microphone image insert if voice is toggled on", function(c)
			-- Since isVoiceOn = false, we expect no insert
			local microphoneInsert = c.findFirstInstance(c.mountResult.instance, { Name = "Insert" })
			expect(microphoneInsert).toBeNil()

			local roactInstance = c.mountResult.roactInstance
			local newTree = c:createTree({
				controls = { isVoiceOn = true },
			})

			Roact.update(roactInstance, newTree)

			microphoneInsert = c.findFirstInstance(c.mountResult.instance, { Name = "Insert" })
			expect(microphoneInsert).never.toBeNil()
		end)

		it("SHOULD not error when given fadeOut prop", function(c)
			local roactInstance = c.mountResult.roactInstance
			local newTree = c:createTree({
				fadingOut = true,
				controls = { isVoiceOn = false },
			})

			Roact.update(roactInstance, newTree)
		end)

		it("SHOULD properly unmount", function(c)
			c.mountResult.unmount()
			local bubbleTextLabel = c.findFirstInstance(c.mountResult.instance, { Text = "Hello World!" })
			expect(bubbleTextLabel).toBeNil()
		end)
	end)
end
