local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(script.Parent.MainReducer)

local EXPECTED_KEYS = {
    Screen = true,
    ExistingGame = true,
    NewGameSettings = true,
	PublishedPlace = true,
	GroupsHavePermission = true,
}

local function createMainReducer()
	local r = Rodux.Store.new(MainReducer)
	expect(r).to.be.ok()
	
	local state = r:getState()
	expect(state).to.be.ok()
	
	return state
end

return function()
	it("should combine all of its reducers", function()
		local state = createMainReducer()
		
		for childReducerName,_ in pairs(EXPECTED_KEYS) do
			assert(state[childReducerName], "Missing child reducer '"..childReducerName.."'")
		end
	end)
	
	it("should not have any unexpected reducers", function()
		local state = createMainReducer()
		
		for childReducerName,_ in pairs(state) do
			assert(EXPECTED_KEYS[childReducerName], "Unexpected child reducer '"..childReducerName.."'")
		end
	end)
end