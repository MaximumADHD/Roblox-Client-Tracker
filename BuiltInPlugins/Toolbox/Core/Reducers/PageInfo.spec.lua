return function()
	local Plugin = script.Parent.Parent.Parent

	local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)

	local Category = require(Plugin.Core.Types.Category)
	local RequestReason = require(Plugin.Core.Types.RequestReason)

	local SetToolboxManageableGroups = require(Plugin.Core.Actions.SetToolboxManageableGroups)
	local UpdatePageInfo = require(Plugin.Core.Actions.UpdatePageInfo)
	local UpdateSearchTerm = require(Plugin.Core.Actions.UpdateSearchTerm)

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
		expect(state.categoryName).to.be.ok()
		expect(state.searchTerm).to.be.ok()
		expect(state.sorts).to.be.ok()
		expect(state.sortIndex).to.be.ok()
		expect(state.groups).to.be.ok()
		expect(state.groupIndex).to.be.ok()
		expect(state.currentPage).to.be.ok()
	end)

	describe("SetToolboxManageableGroups action", function()
		it("should set the groups", function()
			local state = PageInfo(nil, {})
			expect(tableLength(state.groups)).to.equal(0)

			local testGroups = {
				{id = 12345, name = "Test1"},
				{id = 67890, name = "Test2"},
			}

			state = PageInfo(state, SetToolboxManageableGroups(testGroups))

			expect(tableLength(state.groups)).to.equal(#testGroups)

			for index, testGroup in ipairs(testGroups) do
				expect(state.groups[index].id).to.equal(testGroup.id)
				expect(state.groups[index].name).to.equal(testGroup.name)
			end
		end)

		it("should overwrite previously set groups", function()
			local state = PageInfo(nil, {})
			expect(tableLength(state.groups)).to.equal(0)

			local testGroups = {
				{id = 12345, name = "Test1"},
				{id = 67890, name = "Test2"},
			}

			state = PageInfo(state, SetToolboxManageableGroups(testGroups))

			expect(tableLength(state.groups)).to.equal(#testGroups)

			local nextTestGroups = {
				{id = 13579, name = "Test3"},
				{id = 24680, name = "Test4"},
			}

			state = PageInfo(state, SetToolboxManageableGroups(nextTestGroups))

			expect(tableLength(state.groups)).to.equal(#nextTestGroups)

			for index, testGroup in ipairs(nextTestGroups) do
				expect(state.groups[index].id).to.equal(testGroup.id)
				expect(state.groups[index].name).to.equal(testGroup.name)
			end
		end)
	end)

	describe("UpdateSearchTerm action", function()
		it("should update the searchTerm", function()
			local state = PageInfo({
				searchTerm = "foo"
			}, {})
			expect(state.searchTerm).to.equal("foo")
	
			-- shallow copy state
			local originalState = {}
			for key, value in pairs(state) do
				originalState[key] = value
			end

			-- dispatch action
			state = PageInfo(state, UpdateSearchTerm("bar"))

			-- verify new searchTerm is set
			expect(state.searchTerm).to.equal("bar")

			-- verify nothing else was touched
			for key, value in pairs(state) do
				if key ~= "searchTerm" then
					expect(value).to.equal(originalState[key])
				end
			end
		end)
	end)

	describe("UpdatePageInfo action", function()
		it("should update the info", function()
			local state = PageInfo(nil, {})

			expect(state.categoryName).to.equal(Category.FREE_MODELS.name)
			expect(state.sortIndex).to.equal(1)

			state = PageInfo(state, UpdatePageInfo({
				categoryName = state.categories[2].categoryName,
				category = state.categories[2].category
			}))

			expect(state.category).to.equal(state.categories[2].category)
		end)

		it("should generate a new searchId if RequestReason is not Update", function()
			local state = PageInfo(nil, {})

			expect(state.searchId).to.equal(nil)

			state = PageInfo(state, UpdatePageInfo({}))

			local originalSearchId = state.searchId
			expect(type(originalSearchId)).to.equal("string")

			state = PageInfo(state, UpdatePageInfo({
				requestReason = RequestReason.NextPage
			}))
			expect(state.searchId).to.equal(originalSearchId)

			state = PageInfo(state, UpdatePageInfo({
				requestReason = RequestReason.UpdatePage
			}))
			expect(state.searchId).to.equal(originalSearchId)

			state = PageInfo(state, UpdatePageInfo({
				requestReason = RequestReason.StartSearch
			}))
			expect(state.searchId).to.never.equal(originalSearchId)
		end)
	end)
end
