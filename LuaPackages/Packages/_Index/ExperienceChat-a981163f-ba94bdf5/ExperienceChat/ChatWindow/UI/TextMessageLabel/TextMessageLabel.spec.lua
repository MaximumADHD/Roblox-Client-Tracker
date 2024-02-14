local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local Config = require(ExperienceChat.Config)

local EngineFeatureTextChatServiceIncludesColon = game:GetEngineFeature("TextChatServiceIncludesColon")

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("TextMessageLabel.story"))
		rootContext.mount = rootContext.createMount(storyDefinition.story, function(c)
			return {
				controls = {
					text = c.message.text,
					prefixText = c.message.prefixText,
					isUserVerified = c.isUserVerified,
				},
			}
		end)
	end)

	describe("WHEN parented to a statically sized frame", function()
		beforeAll(function(c)
			c.size = UDim2.fromOffset(300, 300)
		end)

		describe("GIVEN message", function()
			beforeAll(function(c)
				c.message = {
					text = 'This is <font size="50">big</font> and this is <font size="10">small</font>!',
					prefixText = '<font size="50">PrefixText</font>',
				}
			end)

			it("SHOULD properly escape rich text of message and prefix tag", function(c)
				local findFirstInstance = c.findFirstInstance
				local instance = findFirstInstance(c:mount().instance, { ClassName = "TextLabel" })
				expect(instance).never.toBeNil()

				local messageText = c.message.prefixText .. ": " .. c.message.text
				if EngineFeatureTextChatServiceIncludesColon then
					messageText = c.message.prefixText .. " " .. c.message.text
				end

				expect(instance.Text).toEqual(messageText)
			end)
		end)

		describe("GIVEN message with no prefix text", function()
			beforeAll(function(c)
				c.message = {
					text = 'This is <font size="50">big</font> and this is <font size="10">small</font>!',
					prefixText = "",
				}
			end)

			it("SHOULD NOT render colon", function(c)
				local findFirstInstance = c.findFirstInstance
				local instance = findFirstInstance(c:mount().instance, { ClassName = "TextLabel" })
				expect(instance).never.toBeNil()

				expect(instance).toHaveProperty("Text", expect.never.stringContaining(":"))
			end)
		end)
	end)

	describe("Verified Badges", function()
		describe("GIVEN message from VerifiedUser", function()
			beforeAll(function(c)
				c.message = {
					text = "Hi, I am a VerifiedUser!",
					prefixText = "VerifiedUser",
				}
				c.isUserVerified = true
			end)

			it("SHOULD append the Verified Badge emoji to the end of the prefix text", function(c)
				local findFirstInstance = c.findFirstInstance
				local instance = findFirstInstance(c:mount().instance, { ClassName = "TextLabel" })
				expect(instance).never.toBeNil()

				local messageText = c.message.prefixText .. Config.VERIFIED_EMOJI .. ": " .. c.message.text
				if EngineFeatureTextChatServiceIncludesColon then
					messageText = "VerifiedUser" .. Config.VERIFIED_EMOJI .. ": " .. c.message.text
				end

				expect(instance.Text).toEqual(messageText)
			end)
		end)
	end)
end
