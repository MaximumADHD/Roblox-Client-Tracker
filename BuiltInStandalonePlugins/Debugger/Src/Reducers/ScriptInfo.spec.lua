local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local ScriptInfoReducer = require(script.Parent.ScriptInfo)
local Actions = Plugin.Src.Actions
local SetFilenameForGuidAction = require(Actions.Common.SetFilenameForGuid)
local SetScriptSourceLineAction = require(Actions.Common.SetScriptSourceLine)

local function getSize(dict)
	if not dict then
		return nil
	end
	local count = 0
	for _, _ in pairs(dict) do
		count = count + 1
	end
	return count
end

local initialState = {
	ScriptInfo = {},
	ScriptLineContents = {},
}

return function()
	it("should return its expected default state", function()
		local scriptInfoReducer = Rodux.Store.new(ScriptInfoReducer)
		expect(scriptInfoReducer:getState()).to.be.ok()
	end)
	
	describe(SetFilenameForGuidAction.name, function()
		it("should Modify Script Info", function()
			local state = ScriptInfoReducer(initialState, SetFilenameForGuidAction("Guid1", ""))
			state = ScriptInfoReducer(state, SetFilenameForGuidAction("Guid1", "second.lua"))
			expect(state).to.be.ok()
			expect(getSize(state.ScriptInfo)).to.equal(1)
			expect(state.ScriptInfo["Guid1"]).to.equal("second.lua")
		end)

		it("should not change store if modifying ScriptRef with blank and it is already in store", function()
			local state = ScriptInfoReducer(initialState, SetFilenameForGuidAction("Guid1", ""))
			state = ScriptInfoReducer(state, SetFilenameForGuidAction("Guid1", "first.lua"))
			state = ScriptInfoReducer(state, SetFilenameForGuidAction("Guid1", ""))
			expect(state).to.be.ok()
			expect(getSize(state.ScriptInfo)).to.equal(1)
			expect(state.ScriptInfo["Guid1"]).to.equal("first.lua")
		end)

		it("should preserve immutability", function()
			local state = ScriptInfoReducer(initialState, SetFilenameForGuidAction("Guid1", ""))
			local immutabilityPreserved = testImmutability(ScriptInfoReducer, SetFilenameForGuidAction("Guid1", "second.lua"), state)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetScriptSourceLineAction.name, function()
		it("should Set Script Line Contents", function()
			local state = ScriptInfoReducer(initialState, SetScriptSourceLineAction("Guid2", 4, "print(10)"))
			expect(state).to.be.ok()
			expect(getSize(state.ScriptLineContents)).to.equal(1)
			expect(state.ScriptLineContents["Guid2"][4]).to.equal("print(10)")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ScriptInfoReducer, SetScriptSourceLineAction("Guid1", 4, "scriptLine"), initialState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
