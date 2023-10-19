local Players = game:GetService("Players")

local AtomicBinding = require(script.Parent.AtomicBinding)
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	describe("GIVEN a mock AtomicBinding", function()
		local player = Players.LocalPlayer

		local function expectChildren(instances)
			expect(instances.root).toEqual(player.Character)
			expect(instances.humanoid).never.toBeNil()
			expect(instances.humanoidRootPart).never.toBeNil()
		end

		local mockBinding = AtomicBinding.new({
			humanoid = "Humanoid",
			humanoidRootPart = "HumanoidRootPart",
		}, expectChildren)

		local function onCharacterAdded(character)
			mockBinding:bindRoot(character)
		end

		local function onCharacterRemoving(character)
			mockBinding:unbindRoot(character)
		end

		it("SHOULD expect children to never be nil", function()
			if player.Character then
				onCharacterAdded(player.Character)
			end
			player.CharacterAdded:Connect(onCharacterAdded)
			player.CharacterRemoving:Connect(onCharacterRemoving)
		end)
	end)
	beforeAll(function() end)
end
