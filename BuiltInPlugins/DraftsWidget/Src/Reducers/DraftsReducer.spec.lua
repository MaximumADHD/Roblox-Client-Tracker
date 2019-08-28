local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local DraftsReducer = require(script.Parent.DraftsReducer)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)

local DraftAddedAction = require(Plugin.Src.Actions.DraftAddedAction)
local DraftRemovedAction = require(Plugin.Src.Actions.DraftRemovedAction)
local DraftsLoadedAction = require(Plugin.Src.Actions.DraftsLoadedAction)
local DraftStateChangedAction = require(Plugin.Src.Actions.DraftStateChangedAction)

local AutosaveState = require(Plugin.Src.Symbols.AutosaveState)
local CommitState = require(Plugin.Src.Symbols.CommitState)
local DraftState = require(Plugin.Src.Symbols.DraftState)

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

local function createPrepopulatedStore()
	local drafts = {}
	for _ = 1,10 do
		table.insert(drafts, createDummyScript())
	end

	-- Populate the store so we have something to remove
	return drafts, DraftsReducer(nil, DraftsLoadedAction(drafts))
end

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(DraftsReducer)
		expect(r:getState()).to.be.ok()
		expect(next(r:getState())).to.equal(nil)
	end)

	describe("DraftsLoadedAction", function()
		it("should load drafts", function()
			local drafts = {}
			for _ = 1,10 do
				table.insert(drafts, createDummyScript())
			end

			local state = DraftsReducer(nil, DraftsLoadedAction(drafts))
			expect(state).to.be.ok()

			for _,draft in pairs(drafts) do
				expect(state[draft]).never.to.equal(nil)
			end

			expect(getDictionaryLength(state)).to.equal(#drafts)
		end)

		it("should preserve immutability", function()
			local dummyDraft = createDummyScript()
			local immutabilityPreserved = testImmutability(DraftsReducer, DraftsLoadedAction({dummyDraft}))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("DraftAddedAction", function()
		it("should add drafts", function()
			local state = DraftsReducer(nil, {})

			local drafts = {}
			for _ = 1,10 do
				local dummyScript = createDummyScript()
				table.insert(drafts, dummyScript)
				state = DraftsReducer(state, DraftAddedAction(dummyScript))
				expect(state).to.be.ok()
			end

			for _,draft in pairs(drafts) do
				expect(state[draft]).never.to.equal(nil)
			end

			expect(getDictionaryLength(state)).to.equal(#drafts)
		end)

		it("should preserve immutability", function()
			local dummyDraft = createDummyScript()
			local immutabilityPreserved = testImmutability(DraftsReducer, DraftAddedAction(dummyDraft))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("DraftRemovedAction", function()
		it("should remove drafts", function()
			local drafts, state = createPrepopulatedStore()
			for _ = 1,5 do
				local draft = table.remove(drafts, 1)
				state = DraftsReducer(state, DraftRemovedAction(draft))
				expect(state).to.be.ok()
				expect(state[draft]).to.equal(nil)
			end

			for _,draft in ipairs(drafts) do
				expect(state[draft]).never.to.equal(nil)
			end

			expect(getDictionaryLength(state)).to.equal(#drafts)
		end)

		it("should preserve immutability", function()
			local drafts, state = createPrepopulatedStore()

			local immutabilityPreserved = testImmutability(DraftsReducer, DraftRemovedAction(drafts[1]), state)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("DraftStateChangedAction", function()
		it("should successfully update own stateType", function()
			local drafts, state = createPrepopulatedStore()
			local draft = drafts[1]

			-- Verifies the action sets the stateType to the given stateValue, and does not modify other stateTypes
			-- I.e. if Outdated is set to true, only Outdated should be set, and not Autosaved
			local function testAction(stateType, stateValue)
				-- Cache the current state of the store
				local expectedValues = {}
				for _, draftState in pairs(DraftState) do
					expectedValues[draftState] = state[draft][draftState]
				end

				-- Update the expected entry for our stateType since the cache is no longer accurate
				expectedValues[stateType] = stateValue
				state = DraftsReducer(state, DraftStateChangedAction(draft, stateType, stateValue))

				-- Verify the old, cached values of other stateTypes are still what we expect, and that
				-- the store contains the change we made to the specified stateType
				for stateType, stateValue in pairs(expectedValues) do
					expect(state[draft][stateType]).to.equal(stateValue)
				end
			end

			testAction(DraftState.Outdated, true)
			testAction(DraftState.Deleted, true)
			testAction(DraftState.Committed, CommitState.Committed)
			testAction(DraftState.Autosaved, AutosaveState.Saved)
		end)

		it("should preserve immutability", function()
			local drafts, state = createPrepopulatedStore()

			local immutabilityPreserved = testImmutability(DraftsReducer,
				DraftStateChangedAction(drafts[1], DraftState.Outdated, true), state)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end