local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local SandboxDrafts = require(script.Parent.SandboxDrafts)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)

local DraftAddedAction = require(Plugin.Src.Actions.DraftAddedAction)
local DraftRemovedAction = require(Plugin.Src.Actions.DraftRemovedAction)
local DraftsLoadedAction = require(Plugin.Src.Actions.DraftsLoadedAction)

local function createDummyScript()
	return Instance.new("Script")
end

local function getDictionaryLength(dict)
	local length = 0
	for _,_ in pairs(dict) do
		length = length + 1
	end

	return length
end

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(SandboxDrafts)
		expect(r:getState()).to.be.ok()
		expect(next(r:getState())).to.equal(nil)
	end)

	describe("DraftsLoadedAction", function()
		it("should load drafts", function()
			local drafts = {}
			for _ = 1,10 do
				table.insert(drafts, createDummyScript())
			end

			local state = SandboxDrafts(nil, DraftsLoadedAction(drafts))
			expect(state).to.be.ok()

			for _,draft in pairs(drafts) do
				expect(state[draft]).to.equal(true)
			end

			expect(getDictionaryLength(state)).to.equal(#drafts)
		end)

		it("should preserve immutability", function()
			local dummyDraft = createDummyScript()
			local immutabilityPreserved = testImmutability(SandboxDrafts, DraftsLoadedAction({dummyDraft}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("DraftAddedAction", function()
		it("should add drafts", function()
			local state = SandboxDrafts(nil, {})

			local drafts = {}
			for _ = 1,10 do
				local dummyScript = createDummyScript()
				table.insert(drafts, dummyScript)
				state = SandboxDrafts(state, DraftAddedAction(dummyScript))
				expect(state).to.be.ok()
			end

			for _,draft in pairs(drafts) do
				expect(state[draft]).to.equal(true)
			end

			expect(getDictionaryLength(state)).to.equal(#drafts)
		end)

		it("should preserve immutability", function()
			local dummyDraft = createDummyScript()
			local immutabilityPreserved = testImmutability(SandboxDrafts, DraftAddedAction(dummyDraft))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("DraftRemovedAction", function()
		local function createPrepopulatedStore()
			local drafts = {}
			for _ = 1,10 do
				table.insert(drafts, createDummyScript())
			end

			-- Populate the store so we have something to remove
			return drafts, SandboxDrafts(nil, DraftsLoadedAction(drafts))
		end

		it("should remove drafts", function()
			local drafts, state = createPrepopulatedStore()
			for _ = 1,5 do
				local draft = table.remove(drafts, 1)
				state = SandboxDrafts(state, DraftRemovedAction(draft))
				expect(state).to.be.ok()
				expect(state[draft]).to.equal(nil)
			end

			for _,draft in ipairs(drafts) do
				expect(state[draft]).to.equal(true)
			end

			expect(getDictionaryLength(state)).to.equal(#drafts)
		end)

		it("should preserve immutability", function()
			local drafts, state = createPrepopulatedStore()

			local immutabilityPreserved = testImmutability(SandboxDrafts, DraftRemovedAction(drafts[1]), state)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end