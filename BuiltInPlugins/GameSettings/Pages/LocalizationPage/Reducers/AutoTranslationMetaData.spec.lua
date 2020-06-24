return function()
	local Page = script.Parent.Parent
	local Plugin = script.Parent.Parent.Parent.Parent
	local Rodux = require(Plugin.Rodux)
	local AutoTranslationMetaDataReducer = require(Page.Reducers.AutoTranslationMetaData)
	local TestImmutability = require(Plugin.Src.Util.testImmutability)
	local LoadedAutoTranslationTargetLanguages = require(Page.Actions.LoadedAutoTranslationTargetLanguages)

	it("should initialize ok", function()
		local store = Rodux.Store.new(AutoTranslationMetaDataReducer)
		expect(store:getState()).to.be.ok()
		expect(type(store:getState())).to.equal("table")
	end)

	describe("LoadedTargetLanguages", function()
		local testData = {
			lang1 = true,
			lang2 = false,
		}
		it("should load data when success", function()
			local store = Rodux.Store.new(AutoTranslationMetaDataReducer)
			store:dispatch(LoadedAutoTranslationTargetLanguages("source", testData))
			expect(store:getState().source.lang1).to.equal(true)
			expect(store:getState().source.lang2).to.equal(false)
		end)
		it("should preserve immutability", function()
			local immutabilityPreserved = TestImmutability(AutoTranslationMetaDataReducer,
				LoadedAutoTranslationTargetLanguages("source", testData))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end