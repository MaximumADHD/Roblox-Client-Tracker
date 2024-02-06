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
		local storyDefinition = require(script.Parent:FindFirstChild("ChatBubble.story"))

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

	describe("GIVEN ChatBubble props", function()
		beforeAll(function(c)
			c.mountResult = c:mount(function()
				return {
					messages = {
						{ text = "Hello World!" },
					},
					controls = { isVoiceOn = false },
				}
			end)
		end)

		it("SHOULD mount ChatBubble as visible", function(c)
			local bubbleTextLabel = c.findFirstInstance(c.mountResult.instance, { Text = "Hello World!" })
			expect(bubbleTextLabel).never.toBeNil()
		end)

		-- @TODO enable later for EnableChatInputBarConfigurationStyleCustomizations clean up!
		-- if getEnableChatInputBarConfigurationStyleCustomizations() then
		-- 	it("SHOULD have transparency of 0.1", function(c)
		-- 		Roact.act(function()
		-- 			game:GetService("TextChatService").BubbleChatConfiguration.BackgroundTransparency = 0.1
		-- 			wait(1)
		-- 		end)

		-- 		local bubbleBackgroundImageLabel =
		-- 			c.findFirstInstance(c.mountResult.instance, { Text = "Hello World!" }).Parent
		-- 		expect(bubbleBackgroundImageLabel.BackgroundTransparency).toBeCloseTo(0.1)
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
