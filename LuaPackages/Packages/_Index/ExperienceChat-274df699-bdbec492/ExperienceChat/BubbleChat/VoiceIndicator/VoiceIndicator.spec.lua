local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest
local Dictionary = require(Packages.llama).Dictionary
local Rhodium = require(Packages.Dev.Rhodium)
local Roact = require(Packages.Roact)

return function()
	beforeAll(function(root)
		local onClicked = jest.fn()
		root.onClicked = onClicked

		local storyDefinition = require(script.Parent:FindFirstChild("VoiceIndicator.story"))
		local createProps = function(c)
			return Dictionary.join(storyDefinition.props, {
				controls = {
					voiceState = c.voiceState,
					hideOnError = c.hideOnError,
				},
				onClicked = onClicked,
				userId = "123",
				iconTransparency = c.iconTransparency,
			})
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

	describe("hideOnError = true", function()
		beforeAll(function(c)
			c.hideOnError = true
		end)

		describe("voiceState = Error", function()
			beforeAll(function(c)
				c.voiceState = "Error"
			end)

			it("SHOULD NOT render", function(c)
				local result = c:mount()
				local instance = result.instance

				local voiceIndicator = instance:FindFirstChildOfClass("ImageButton", true)
				assert(voiceIndicator == nil, "expected voiceIndicator to not render")
			end)
		end)
	end)

	describe("hideOnError = false", function()
		beforeAll(function(c)
			c.hideOnError = false
		end)

		describe("voiceState = Error", function()
			beforeAll(function(c)
				c.voiceState = "Error"
			end)

			it("SHOULD render", function(c)
				local result = c:mount()
				local instance = result.instance

				local voiceIndicator = instance:FindFirstChildOfClass("ImageButton", true)
				assert(voiceIndicator, "expected voiceIndicator")
			end)
		end)
	end)

	describe("voiceState = Inactive", function()
		beforeAll(function(c)
			c.voiceState = "Inactive"
		end)

		it("SHOULD render and register clicks", function(c)
			local result = c:mount()
			local instance = result.instance

			local voiceIndicator = instance:FindFirstChildOfClass("ImageButton", true)
			assert(voiceIndicator, "expected voiceIndicator")

			Roact.act(function()
				Rhodium.Element.new(voiceIndicator):click()
				task.wait()
			end)

			expect(c.onClicked).toHaveBeenCalledWith("123")

			Roact.act(function()
				c:update(result.roactInstance, {
					controls = {
						voiceState = "Hidden",
						hideOnError = c.hideOnError,
					},
				})
			end)

			expect(voiceIndicator).toHaveProperty("Image", "rbxasset://textures/ui/VoiceChat/Error.png")

			Roact.unmount(result.roactInstance)
		end)
	end)

	describe("voiceState = Muted", function()
		beforeAll(function(c)
			c.voiceState = "Muted"
		end)

		it("SHOULD render", function(c)
			local result = c:mount()
			local instance = result.instance

			local voiceIndicator = instance:FindFirstChildOfClass("ImageButton", true)
			assert(voiceIndicator, "expected voiceIndicator")
		end)
	end)

	describe("voiceState = LOCAL_MUTED and transparency as number", function()
		beforeAll(function(c)
			c.voiceState = "LOCAL_MUTED"
			c.iconTransparency = 0.5
		end)

		it("SHOULD render", function(c)
			local result = c:mount()
			local instance = result.instance

			local voiceIndicator = instance:FindFirstChildOfClass("ImageButton", true)
			assert(voiceIndicator, "expected voiceIndicator")
			-- LOCAL_MUTED has a starting alpha of 0.5 already
			expect(voiceIndicator).toHaveProperty("ImageTransparency", 0.75)
		end)
	end)

	describe("voiceState = LOCAL_MUTED and transparency as binding", function()
		beforeAll(function(c)
			c.voiceState = "LOCAL_MUTED"

			local binding = Roact.createBinding(0.5)
			c.iconTransparency = binding
		end)

		it("SHOULD render", function(c)
			local result = c:mount()
			local instance = result.instance

			local voiceIndicator = instance:FindFirstChildOfClass("ImageButton", true)
			assert(voiceIndicator, "expected voiceIndicator")
			-- LOCAL_MUTED has a starting alpha of 0.5 already
			expect(voiceIndicator).toHaveProperty("ImageTransparency", 0.75)
		end)
	end)

	describe("voiceState = Connecting", function()
		beforeAll(function(c)
			c.voiceState = "Connecting"
		end)

		it("SHOULD render", function(c)
			local result = c:mount()
			local instance = result.instance

			local voiceIndicator = instance:FindFirstChildOfClass("ImageButton", true)
			assert(voiceIndicator, "expected voiceIndicator")
		end)
	end)

	describe("voiceState = Talking", function()
		beforeAll(function(c)
			c.voiceState = "Talking"
		end)

		it("SHOULD render", function(c)
			local result = c:mount()
			local instance = result.instance

			local voiceIndicator = instance:FindFirstChildOfClass("ImageButton", true)
			assert(voiceIndicator, "expected voiceIndicator")
		end)
	end)
end
