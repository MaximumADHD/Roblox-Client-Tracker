return function()
	local PromptInfo = require(script.Parent.PromptInfo)

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
		expect(type(defaultState)).to.equal("table")
		expect(type(defaultState.queue)).to.equal("table")
		expect(type(defaultState.infoQueue)).to.equal("table")
		expect(countValues(defaultState)).to.equal(2)
		expect(countValues(defaultState.queue)).to.equal(0)
		expect(countValues(defaultState.infoQueue)).to.equal(0)
	end)

	describe("OpenPrompt", function()
		it("should correctly open PromptType.SaveAvatar", function()
			local humanoidDescription = Instance.new("HumanoidDescription")

			local oldState = PromptInfo(nil, {})
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.SaveAvatar,
				{
					humanoidDescription = humanoidDescription,
					rigType = Enum.HumanoidRigType.R15,
				}
			))
			expect(oldState).to.never.equal(newState)
			expect(countValues(newState.queue)).to.equal(0)
			expect(countValues(newState.infoQueue)).to.equal(0)

			expect(newState.promptType).to.equal(PromptType.SaveAvatar)
			expect(newState.humanoidDescription).to.equal(humanoidDescription)
			expect(newState.rigType).to.equal(Enum.HumanoidRigType.R15)
		end)

		it("should correctly open PromptType.CreateOutfit", function()
			local humanoidDescription = Instance.new("HumanoidDescription")

			local oldState = PromptInfo(nil, {})
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.CreateOutfit,
				{
					humanoidDescription = humanoidDescription,
					rigType = Enum.HumanoidRigType.R15,
				}
			))
			expect(oldState).to.never.equal(newState)
			expect(countValues(newState.queue)).to.equal(0)
			expect(countValues(newState.infoQueue)).to.equal(0)

			expect(newState.promptType).to.equal(PromptType.CreateOutfit)
			expect(newState.humanoidDescription).to.equal(humanoidDescription)
			expect(newState.rigType).to.equal(Enum.HumanoidRigType.R15)
		end)

		it("should correctly open PromptType.AllowInventoryReadAccess", function()
			local oldState = PromptInfo(nil, {})
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.AllowInventoryReadAccess,
				{}
			))
			expect(oldState).to.never.equal(newState)
			expect(countValues(newState)).to.equal(3)
			expect(countValues(newState.queue)).to.equal(0)
			expect(countValues(newState.infoQueue)).to.equal(0)

			expect(newState.promptType).to.equal(PromptType.AllowInventoryReadAccess)
		end)

		it("should correctly open PromptType.SetFavorite", function()
			local oldState = PromptInfo(nil, {})
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.SetFavorite,
				{
					itemId = 1337,
					itemType = Enum.AvatarItemType.Bundle,
					itemName = "Cool Bundle",
					isFavorited = true,
				}
			))
			expect(oldState).to.never.equal(newState)
			expect(countValues(newState.queue)).to.equal(0)
			expect(countValues(newState.infoQueue)).to.equal(0)

			expect(newState.promptType).to.equal(PromptType.SetFavorite)
			expect(newState.itemId).to.equal(1337)
			expect(newState.itemType).to.equal(Enum.AvatarItemType.Bundle)
			expect(newState.itemName).to.equal("Cool Bundle")
			expect(newState.isFavorited).to.equal(true)
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

			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.CreateOutfit,
				{
					humanoidDescription = humanoidDescription,
					rigType = Enum.HumanoidRigType.R15,
				}
			))
			expect(oldState).to.never.equal(newState)
			expect(countValues(newState.queue)).to.equal(1)
			expect(countValues(newState.infoQueue)).to.equal(1)
			expect(newState.queue[1]).to.equal(PromptType.CreateOutfit)
			expect(newState.infoQueue[1].humanoidDescription).to.equal(humanoidDescription)
			expect(newState.infoQueue[1].rigType).to.equal(Enum.HumanoidRigType.R15)
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
			expect(oldState).to.never.equal(newState)
			newState = PromptInfo(newState, CloseOpenPrompt())
			expect(type(newState.queue)).to.equal("table")
			expect(type(newState.infoQueue)).to.equal("table")
			expect(countValues(newState)).to.equal(2)
			expect(countValues(newState.queue)).to.equal(0)
			expect(countValues(newState.infoQueue)).to.equal(0)
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
			local newState = PromptInfo(oldState, OpenPrompt(
				PromptType.SetFavorite,
				{
					itemId = 1337,
					itemType = Enum.AvatarItemType.Bundle,
					itemName = "Cool Bundle",
					isFavorited = true,
				}
			))
			expect(oldState).to.never.equal(newState)
			expect(countValues(newState.queue)).to.equal(1)
			expect(countValues(newState.infoQueue)).to.equal(1)

			newState = PromptInfo(newState, CloseOpenPrompt())
			expect(type(newState.queue)).to.equal("table")
			expect(type(newState.infoQueue)).to.equal("table")
			expect(countValues(newState.queue)).to.equal(0)
			expect(countValues(newState.infoQueue)).to.equal(0)

			expect(newState.promptType).to.equal(PromptType.SetFavorite)
			expect(newState.itemId).to.equal(1337)
			expect(newState.itemType).to.equal(Enum.AvatarItemType.Bundle)
			expect(newState.itemName).to.equal("Cool Bundle")
			expect(newState.isFavorited).to.equal(true)
		end)
	end)
end