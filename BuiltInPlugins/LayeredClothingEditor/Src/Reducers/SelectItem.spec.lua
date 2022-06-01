return function()
	local Plugin = script.Parent.Parent.Parent

	local SetAccessoryTypeInfo = require(Plugin.Src.Actions.SetAccessoryTypeInfo)
	local SetAttachmentPoint = require(Plugin.Src.Actions.SetAttachmentPoint)
	local SetEditingCage = require(Plugin.Src.Actions.SetEditingCage)
	local SetCagesTransparency = require(Plugin.Src.Actions.SetCagesTransparency)

	local SelectItem = require(Plugin.Src.Reducers.SelectItem)

	local function createDefaultState()
		return SelectItem(nil,{})
	end

	it("should return a table", function()
		local state = createDefaultState()

		expect(type(state)).to.equal("table")
		expect(state.editingItem).to.equal(nil)
		expect(state.layeredClothingItemsInList).to.be.a("table")
		expect(state.manuallyHiddenLayeredClothingItems).to.be.a("table")
		expect(state.editingCage).to.equal(nil)
		expect(state.cagesTransparency).to.be.a("table")
	end)

	describe("SetEditingCage action", function()
		it("should get copied to state correctly", function()
			local state = createDefaultState()
			state = SelectItem(state, SetEditingCage(Enum.CageType.Inner))

			expect(state.editingCage).to.be.ok()
			expect(state.editingCage).to.equal(Enum.CageType.Inner)
		end)
	end)

	describe("SetCagesTransparency action", function()
		it("should get copied to state correctly", function()
			local state = createDefaultState()
			state = SelectItem(state, SetCagesTransparency({Inner = 10}))

			expect(state.cagesTransparency).to.be.ok()
			expect(state.cagesTransparency).to.be.a("table")
			expect(state.cagesTransparency["Inner"]).to.equal(10)
		end)
	end)

	describe("SetAccessoryTypeInfo action", function()
		it("should get copied to state correctly", function()
			local state = createDefaultState()
			state = SelectItem(state, SetAccessoryTypeInfo({Name = "Hat"}))

			expect(state.accessoryTypeInfo).to.be.ok()
			expect(state.accessoryTypeInfo).to.be.a("table")
			expect(state.accessoryTypeInfo["Name"]).to.equal("Hat")
		end)
	end)

	describe("SetAttachmentPoint action", function()
		it("should get copied to state correctly", function()
			local state = createDefaultState()
			state = SelectItem(state, SetAttachmentPoint({ItemCFrame = CFrame.new()}))

			expect(state.attachmentPoint).to.be.ok()
			expect(state.attachmentPoint).to.be.a("table")
			expect(state.attachmentPoint["ItemCFrame"].p.X).to.equal(0)
		end)
	end)
end