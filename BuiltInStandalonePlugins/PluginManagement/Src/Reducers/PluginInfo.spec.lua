local PluginInfo = require(script.Parent.PluginInfo)

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local TestHelpers = require(Plugin.Packages.TestHelpers)
local PluginInstalledStatus = require(Plugin.Src.Constants.PluginInstalledStatus)

local ClearPluginData = require(Plugin.Src.Actions.ClearPluginData)
local SetPluginId = require(Plugin.Src.Actions.SetPluginId)
local SetPluginMetadata = require(Plugin.Src.Actions.SetPluginMetadata)
local SetPluginInstallStatus = require(Plugin.Src.Actions.SetPluginInstallStatus)


return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(PluginInfo)
		expect(r:getState()).to.be.ok()
		expect(type(r:getState().plugins)).to.equal("table")
		expect(#r:getState().plugins).to.equal(0)
	end)

	describe("ClearPluginData", function()
		it("should clear out any data for an existing plugin", function()
			local state = PluginInfo({
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.UNKNOWN,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				}
			}, ClearPluginData("1234"))

			expect(state.plugins).to.be.ok()
			expect(type(state.plugins)).to.equal("table")
			expect(state.plugins["1234"]).to.equal(nil)
		end)

		it("should disregard the action if data for the target plugin isn't present", function()
			local defaultState = {
					plugins = {
						["0001"] = {}
					}
				}
			local state = PluginInfo(defaultState, ClearPluginData("1234"))
			expect(state).to.equal(defaultState)
		end)

		it("should preserve immutability with previous data", function()
			local defaultState = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.UNKNOWN,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				}
			}
			local immutabilityPreserved = TestHelpers.testImmutability(PluginInfo, ClearPluginData("1234"), defaultState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPluginId", function()
		it("should set the pluginId", function()
			local state = PluginInfo(nil, SetPluginId("1234"))

			expect(state.plugins).to.be.ok()
			expect(state.plugins["1234"]).to.be.ok()
			expect(type(state.plugins["1234"])).to.equal("table")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = TestHelpers.testImmutability(PluginInfo, SetPluginId("1234"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPluginMetadata", function()
		it("should update an existing plugin's metadata", function()
			local state = PluginInfo({
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.UNKNOWN,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				}
			}, SetPluginMetadata("1234", "Test", "Test Description", "true",
				"1", "some date", "some other date"))

			expect(state.plugins["1234"]).to.be.ok()
			expect(state.plugins["1234"].name).to.equal("Test")
			expect(state.plugins["1234"].description).to.equal("Test Description")
			expect(state.plugins["1234"].commentsEnabled).to.equal(true)
			expect(state.plugins["1234"].versionId).to.equal("1")
			expect(state.plugins["1234"].created).to.equal("some date")
			expect(state.plugins["1234"].updated).to.equal("some other date")
		end)

		it("should throw an error if attempting to update data that doesn't exist", function()
			expect(function()
				PluginInfo(nil, SetPluginMetadata("1234", "Test", "Test Description", "true",
				"1", "some date", "some other date"))
			end).to.throw()
		end)

		it("should preserve immutability with previous data", function()
			local defaultState = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.UNKNOWN,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				}
			}

			local immutabilityPreserved = TestHelpers.testImmutability(PluginInfo,
				SetPluginMetadata("1234", "Test", "Test Description", "true",
				"1", "some date", "some other date"), defaultState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetPluginInstallStatus", function()
		it("should update an existing plugin's installed status", function()
			local state = PluginInfo({
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.UNKNOWN,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				}
			}, SetPluginInstallStatus("1234", PluginInstalledStatus.PLUGIN_INSTALLED_SUCCESSFULLY, "whoo"))

			expect(state.plugins["1234"]).to.be.ok()
			expect(state.plugins["1234"].installStatus).to.equal(PluginInstalledStatus.PLUGIN_INSTALLED_SUCCESSFULLY)
			expect(state.plugins["1234"].installationMsg).to.equal("whoo")
		end)

		it("should throw an error if attempting to update data that doesn't exist", function()
			expect(function()
				PluginInfo(nil, SetPluginInstallStatus("1234", PluginInstalledStatus.PLUGIN_INSTALLED_SUCCESSFULLY, "whoo"))
			end).to.throw()
		end)

		it("should preserve immutability with previous data", function()
			local defaultState = {
				plugins = {
					["1234"] = {
						installStatus = PluginInstalledStatus.UNKNOWN,
						installationMsg = "",
						installProgress = 0.0,
						name = "",
						description = "",
						commentsEnabled = false,
						versionId = "",
						created = "",
						updated = "",
					}
				}
			}
			local immutabilityPreserved = TestHelpers.testImmutability(PluginInfo, SetPluginInstallStatus("1234",
				PluginInstalledStatus.PLUGIN_INSTALLED_SUCCESSFULLY, "whoo"), defaultState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end