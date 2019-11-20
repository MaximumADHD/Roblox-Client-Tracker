local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local LoadLanguages = require(Plugin.Src.Actions.LoadLanguages)
local LanguagesReducer = require(Plugin.Src.Reducers.LanguagesReducer)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(LanguagesReducer)
		expect(r:getState()).to.be.ok()
		expect(type(r:getState().languagesTable)).to.equal("table")
		expect(type(r:getState().languagesList)).to.equal("table")
	end)

	local mockResponseTab = {
		{
			locale = {
				locale = 'en_us',
				language = {
					name = "English",
					languageCode = "en",
				},
			},
		}
	}

	describe("LoadLanguages", function()
		it("should load languages", function()
			local state = LanguagesReducer(nil, LoadLanguages(mockResponseTab))
			expect(state.languagesTable).to.be.ok()
			expect(state.languagesList).to.be.ok()
			expect(type(state.languagesTable)).to.equal("table")
			expect(type(state.languagesList)).to.equal("table")
			expect(#state.languagesList).to.equal(2)
		end)
	end)
end