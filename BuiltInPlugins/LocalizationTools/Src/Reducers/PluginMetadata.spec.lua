local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local RecursiveEquals = require(Plugin.Src.Util.RecursiveEquals)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local LoadLanguagesAndLocalesInfo = require(Plugin.Src.Actions.LoadLanguagesAndLocalesInfo)
local SetCloudTableId = require(Plugin.Src.Actions.SetCloudTableId)
local LoadManageTranslationPermission =
	require(Plugin.Src.Actions.LoadManageTranslationPermission)

local PluginMetadata = require(script.Parent.PluginMetadata)

return function()
	it("should return a table with the correct members", function()
		local state = PluginMetadata(nil, {})
		expect(type(state)).to.equal("table")
		expect(state).to.be.ok()
	end)

	describe("LoadLanguagesAndLocalesInfo", function()
		it("should validate input", function()
			expect(function()
				LoadLanguagesAndLocalesInfo(nil)
			end).to.throw()
			expect(function()
				LoadLanguagesAndLocalesInfo(true)
			end).to.throw()
			expect(function()
				LoadLanguagesAndLocalesInfo("")
			end).to.throw()
		end)

		it("should set state", function()
			local languages = {
				en = true,
				es = true,
			}

			local localesToLanguages = {
				["en-us"] = "en",
				["es-es"] = "es"
			}
			local r = Rodux.Store.new(PluginMetadata)
			local state = r:getState()
			expect(type(state.AllLanguages)).to.equal("table")
			expect(isEmpty(state.AllLanguages)).to.equal(true)
			expect(type(state.LocalesToLanguages)).to.equal("table")
			expect(isEmpty(state.LocalesToLanguages)).to.equal(true)

			state = PluginMetadata(state, LoadLanguagesAndLocalesInfo(languages, localesToLanguages))
			expect(RecursiveEquals(state.AllLanguages, languages)).to.equal(true)
			expect(RecursiveEquals(state.LocalesToLanguages, localesToLanguages)).to.equal(true)
		end)
	end)

	describe("SetCloudTableId", function()
		it("should validate input", function()
			expect(function()
				SetCloudTableId(true)
			end).to.throw()
			expect(function()
				SetCloudTableId({})
			end).to.throw()
		end)

		it("should set state", function()
			local tableId = "tableId"
			local r = Rodux.Store.new(PluginMetadata)
			local state = r:getState()
			expect(state.CloudTableId).to.equal("")

			state = PluginMetadata(state, SetCloudTableId(tableId))
			expect(state.CloudTableId).to.equal(tableId)

			state = PluginMetadata(state, SetCloudTableId(""))
			expect(state.CloudTableId).to.equal("")
		end)
	end)

	describe("LoadManageTranslationPermission", function()
		it("should validate input", function()
			expect(function()
				LoadManageTranslationPermission(nil)
			end).to.throw()
			expect(function()
				LoadManageTranslationPermission("")
			end).to.throw()
			expect(function()
				LoadManageTranslationPermission({})
			end).to.throw()
		end)

		it("should set state", function()
			local r = Rodux.Store.new(PluginMetadata)
			local state = r:getState()
			expect(state.CanManageTranslation).to.equal(nil)

			state = PluginMetadata(state, LoadManageTranslationPermission(true))
			expect(state.CanManageTranslation).to.equal(true)

			state = PluginMetadata(state, LoadManageTranslationPermission(false))
			expect(state.CanManageTranslation).to.equal(false)
		end)
	end)


end
