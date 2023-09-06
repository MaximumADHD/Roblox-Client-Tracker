return function()
	local PromptInfo = require(script.Parent.PromptInfo)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local AvatarEditorPrompts = script.Parent.Parent
	local Actions = AvatarEditorPrompts.Actions
	local CloseOpenPrompt = require(Actions.CloseOpenPrompt)
	local OpenPrompt = require(Actions.OpenPrompt)

	local PromptType = require(AvatarEditorPrompts.PromptType)

	local function countValues(t)
		local c = 0
		for _, _ in pairs(t) do
			c = c + 1
		end
		return c
	end

	it("should have the correct default values", function()
		local defaultState = PromptInfo(nil, {})
		expect(defaultState).toEqual({
			queue = {},
			infoQueue = {},
		})
		expect(countValues(defaultState)).toBe(2)
	end)

	describe("OpenPrompt", function()
		it("should correctly open PromptType.SaveAvatar", function()
			local humanoidDescription = Instance.new("HumanoidDescription")

			local oldState = PromptInfo(nil, {})
			local humanoid = {
				humanoidDescription = humanoidDescription,
				rigType = Enum.HumanoidRigType.R15,
			}
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.SaveAvatar,
				humanoid
			))
			expect(oldState).never.toEqual(newState)
			expect(countValues(newState.queue)).toBe(0)
			expect(countValues(newState.infoQueue)).toBe(0)
			expect(newState.promptType).toBe(PromptType.SaveAvatar)
			expect(newState).toMatchObject(humanoid)
		end)

		it("should correctly open PromptType.CreateOutfit", function()
			local humanoidDescription = Instance.new("HumanoidDescription")

			local oldState = PromptInfo(nil, {})
			local humanoid = {
				humanoidDescription = humanoidDescription,
				rigType = Enum.HumanoidRigType.R15,
			}
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.CreateOutfit,
				humanoid
			))
			expect(oldState).never.toEqual(newState)
			expect(countValues(newState.queue)).toBe(0)
			expect(countValues(newState.infoQueue)).toBe(0)
			expect(newState.promptType).toBe(PromptType.CreateOutfit)
			expect(newState).toMatchObject(humanoid)
		end)

		it("should correctly open PromptType.AllowInventoryReadAccess", function()
			local oldState = PromptInfo(nil, {})
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.AllowInventoryReadAccess,
				{}
			))
			expect(oldState).never.toEqual(newState)
			expect(countValues(newState)).toBe(3)
			expect(countValues(newState.queue)).toBe(0)
			expect(countValues(newState.infoQueue)).toBe(0)

			expect(newState.promptType).toBe(PromptType.AllowInventoryReadAccess)
		end)

		it("should correctly open PromptType.SetFavorite", function()
			local oldState = PromptInfo(nil, {})
			local item = {
				itemId = 1337,
				itemType = Enum.AvatarItemType.Bundle,
				itemName = "Cool Bundle",
				isFavorited = true,
			}
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.SetFavorite,
				item
			))
			expect(oldState).never.toEqual(newState)
			expect(countValues(newState.queue)).toBe(0)
			expect(countValues(newState.infoQueue)).toBe(0)

			expect(newState.promptType).toBe(PromptType.SetFavorite)
			expect(newState).toMatchObject(item)
		end)

		it("should add a prompt to the queue if a prompt is already open", function()
			local oldState = PromptInfo(nil, {})
			oldState = PromptInfo(oldState, OpenPrompt(
				PromptType.SetFavorite,
				{
					itemId = 1337,
					itemType = Enum.AvatarItemType.Bundle,
					itemName = "Cool Bundle",
					isFavorited = true,
				}
			))

			local humanoidDescription = Instance.new("HumanoidDescription")


			local humanoid = {
				humanoidDescription = humanoidDescription,
				rigType = Enum.HumanoidRigType.R15,
			}
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.CreateOutfit,
				humanoid
			))
			expect(oldState).never.toEqual(newState)
			expect(newState.queue).toEqual({PromptType.CreateOutfit})
			expect(countValues(newState.infoQueue)).toBe(1)
			expect(newState.infoQueue[1]).toMatchObject(humanoid)
		end)
	end)

	describe("CloseOpenPrompt", function()
		it("should revert back to the default values if the queue is empty", function()
			local oldState = PromptInfo(nil, {})
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.SaveAvatar,
				{
					humanoidDescription = Instance.new("HumanoidDescription"),
					rigType = Enum.HumanoidRigType.R15,
				}
			))
			expect(oldState).never.toEqual(newState)
			newState = PromptInfo(newState, CloseOpenPrompt())
			expect(newState).toEqual({
				queue = {},
				infoQueue = {},
			})
			expect(countValues(newState)).toBe(2)
		end)

		it("should switch to the next prompt info in the queue if the queue isn't empty", function()
			local oldState = PromptInfo(nil, {})
			oldState = PromptInfo(oldState, OpenPrompt(
				PromptType.SaveAvatar,
				{
					humanoidDescription = Instance.new("HumanoidDescription"),
					rigType = Enum.HumanoidRigType.R15,
				}
				))
			local item = {
				itemId = 1337,
				itemType = Enum.AvatarItemType.Bundle,
				itemName = "Cool Bundle",
				isFavorited = true,
			}
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.SetFavorite,
				item
			))
			expect(oldState).never.toEqual(newState)
			expect(countValues(newState.queue)).toBe(1)
			expect(countValues(newState.infoQueue)).toBe(1)

			newState = PromptInfo(newState, CloseOpenPrompt())
			expect(newState).toMatchObject({
				queue = {},
				infoQueue = {},
			})
			expect(newState.promptType).toBe(PromptType.SetFavorite)
			expect(newState).toMatchObject(item)
		end)
	end)
end
