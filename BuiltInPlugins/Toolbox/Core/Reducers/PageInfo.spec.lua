return function()
	local Plugin = script.Parent.Parent.Parent

	local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)

	local Category = require(Plugin.Core.Types.Category)

	local GetManageableGroups = require(Plugin.Core.Actions.GetManageableGroups)
	local SetCategories = require(Plugin.Core.Actions.SetCategories)
	local NextPage = require(Plugin.Core.Actions.NextPage)
	local UpdatePageInfo = require(Plugin.Core.Actions.UpdatePageInfo)

	local PageInfo = require(Plugin.Core.Reducers.PageInfo)

	local function tableLength(tbl)
		local i = 0
		for _ in pairs(tbl) do
			i = i + 1
		end
		return i
	end

	it("should return a table with the correct members", function()
		local state = PageInfo(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.categories).to.be.ok()
		expect(state.categoryIndex).to.be.ok()
		expect(state.currentTab).to.be.ok()
		expect(state.searchTerm).to.be.ok()
		expect(state.sorts).to.be.ok()
		expect(state.sortIndex).to.be.ok()
		expect(state.groups).to.be.ok()
		expect(state.groupIndex).to.be.ok()
		expect(state.page).to.be.ok()
	end)

	describe("GetManageableGroups action", function()
		it("should set the groups", function()
			local state = PageInfo(nil, {})
			expect(tableLength(state.groups)).to.equal(0)

			local testGroups = {
				{Id = 12345, Name = "Test1"},
				{Id = 67890, Name = "Test2"},
			}

			state = PageInfo(state, GetManageableGroups(testGroups))

			expect(tableLength(state.groups)).to.equal(#testGroups)

			for index, testGroup in ipairs(testGroups) do
				expect(state.groups[index].id).to.equal(testGroup.Id)
				expect(state.groups[index].name).to.equal(testGroup.Name)
			end
		end)

		it("should overwrite previously set groups", function()
			local state = PageInfo(nil, {})
			expect(tableLength(state.groups)).to.equal(0)

			local testGroups = {
				{Id = 12345, Name = "Test1"},
				{Id = 67890, Name = "Test2"},
			}

			state = PageInfo(state, GetManageableGroups(testGroups))

			expect(tableLength(state.groups)).to.equal(#testGroups)

			local nextTestGroups = {
				{Id = 13579, Name = "Test3"},
				{Id = 24680, Name = "Test4"},
			}

			state = PageInfo(state, GetManageableGroups(nextTestGroups))

			expect(tableLength(state.groups)).to.equal(#nextTestGroups)

			for index, testGroup in ipairs(nextTestGroups) do
				expect(state.groups[index].id).to.equal(testGroup.Id)
				expect(state.groups[index].name).to.equal(testGroup.Name)
			end
		end)

		-- TODO: Fix me and make me a smaller unit test.
		-- DEVTOOLS-2937
		itSKIP("should update the categories and group index+id if necessary", function()
			local state = PageInfo(nil, {})

			state = PageInfo(state, SetCategories(Category.INVENTORY_KEY, Category.INVENTORY))
			expect(state.categories).to.equal(Category.INVENTORY)
			expect(state.groupIndex).to.equal(0)
			expect(PageInfoHelper.getGroupIdForPageInfo(state)).to.equal(0)

			local firstTestGroups = {
				{Id = 12345, Name = "Test1"},
				{Id = 67890, Name = "Test2"},
			}
			state = PageInfo(state, GetManageableGroups(firstTestGroups))

			expect(state.categories).to.equal(Category.INVENTORY_WITH_GROUPS)

			-- First time we have groups so set groupIndex to 1
			expect(state.groupIndex).to.equal(1)
			expect(PageInfoHelper.getGroupIdForPageInfo(state)).to.equal(firstTestGroups[state.groupIndex].Id)

			-- Change the groups list
			-- Previous selected group id stil exists in new array
			-- So index should change to where it is
			local secondTestGroups = {
				{Id = 13579, Name = "Test3"},
				{Id = 12345, Name = "Test1"},
				{Id = 24680, Name = "Test4"},
			}
			state = PageInfo(state, GetManageableGroups(secondTestGroups))

			expect(state.categories).to.equal(Category.INVENTORY_WITH_GROUPS)
			expect(state.groupIndex).to.equal(2)
			expect(PageInfoHelper.getGroupIdForPageInfo(state)).to.equal(secondTestGroups[state.groupIndex].Id)

			local groupModelsCategoryIndex = 6

			state = PageInfo(state, UpdatePageInfo({
				categoryIndex = groupModelsCategoryIndex,
				category = Category.INVENTORY_WITH_GROUPS[groupModelsCategoryIndex].category
			}))
			expect(state.categoryIndex).to.equal(groupModelsCategoryIndex)

			-- Clear the groups list
			local thirdTestGroups = {}
			state = PageInfo(state, GetManageableGroups(thirdTestGroups))

			-- Categories list should remove groups
			expect(state.categories).to.equal(Category.INVENTORY)

			-- Category should be reset to 1 because the groups categories now don't exist
			expect(state.categoryIndex).to.equal(1)
			expect(PageInfoHelper.getCategoryForPageInfo(state)).to.equal(Category.INVENTORY[1].category)

			-- Group index and id should be reset to 0
			expect(state.groupIndex).to.equal(0)
			expect(PageInfoHelper.getGroupIdForPageInfo(state)).to.equal(0)
		end)
	end)

	describe("NextPage action", function()
		it("should increment the page", function()
			local state = PageInfo(nil, {})
			expect(state.page).to.equal(1)

			for i = 1, 10, 1 do
				state = PageInfo(state, NextPage())
				expect(state.page).to.equal(i + 1)
			end
		end)
	end)

	describe("UpdatePageInfo action", function()
		it("should update the info", function()
			local state = PageInfo(nil, {})

			expect(state.categoryIndex).to.equal(1)
			expect(state.searchTerm).to.equal("")
			expect(state.sortIndex).to.equal(1)

			state = PageInfo(state, UpdatePageInfo({
				categoryIndex = 2,
				category = state.categories[2].category,
			}))

			expect(state.categoryIndex).to.equal(2)
			expect(state.category).to.equal(state.categories[state.categoryIndex].category)
		end)
	end)
end
