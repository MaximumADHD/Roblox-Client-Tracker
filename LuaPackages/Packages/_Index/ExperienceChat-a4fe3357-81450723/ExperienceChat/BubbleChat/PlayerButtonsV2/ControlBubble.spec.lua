local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local jest = globals.jest
local Dictionary = require(Packages.llama).Dictionary
local Roact = require(Packages.Roact)

return function()
	beforeAll(function(root)
		local onFadeOut = jest.fn()
		root.onFadeOut = onFadeOut

		local storyDefinition = require(script.Parent:FindFirstChild("ControlBubble.story"))
		local createProps = function()
			return {
				LayoutOrder = 1,
				onActivated = function() end,
				controlBubbleSize = UDim2.fromOffset(30, 30),
				cornerRadiusOffset = 8,
				voiceState = "Talking",
				iconSize = UDim2.fromOffset(24, 24),
				iconTransparency = 0.1,
				renderStepName = "ControlBubbleStorybook",
				iconStyle = "microphone",
			}
		end

		root.mount = root.createMount(storyDefinition.story, createProps)

		root.update = function(c, roactInstance, updateProps)
			local updateCreateProps = function()
				return Dictionary.join(createProps(), updateProps)
			end

			local tree = c:makeTree(storyDefinition.story, updateCreateProps)
			Roact.update(roactInstance, tree)
		end
	end)

	describe("ControlBubbleV2", function()
		it("SHOULD work", function(c)
			local result = c:mount()
			local icon = result.instance:FindFirstChild("Icon", true)
			assert(icon, "needs Icon")
		end)
	end)
end
