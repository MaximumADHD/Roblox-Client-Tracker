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

		local storyDefinition = require(script.Parent:FindFirstChild("PlayerButtons.story"))
		local createProps = function()
			return {
				controls = {
					hasCameraPermissions = true,
					hasMicPermissions = true,
					voiceState = "Inactive",
				},
				userId = "userId",
				getIcon = function(name, folder)
					local folderStr = folder and folder .. "/" or ""
					return "rbxasset://textures/ui/VoiceChat/" .. folderStr .. name .. ".png"
				end,
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

	describe("PlayerButtons", function()
		it("SHOULD work", function(c)
			local result = c:mount()
			local microphoneBubble = result.instance:FindFirstChild("MicrophoneBubble", true)
			assert(microphoneBubble, "needs microphoneBubble")

			local cameraBubble = result.instance:FindFirstChild("CameraBubble", true)
			assert(cameraBubble, "needs cameraBubble")
		end)
	end)
end
