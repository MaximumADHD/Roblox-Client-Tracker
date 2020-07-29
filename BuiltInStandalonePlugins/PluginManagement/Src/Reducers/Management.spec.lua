local Plugin = script.Parent.Parent.Parent

local Management = require(script.Parent.Management)
local ClearAllPluginData = require(Plugin.Src.Actions.ClearAllPluginData)
local RemovePluginData = require(Plugin.Src.Actions.RemovePluginData)
local SetPluginEnabledState = require(Plugin.Src.Actions.SetPluginEnabledState)
local SetPluginUpdateStatus = require(Plugin.Src.Actions.SetPluginUpdateStatus)
local SetPluginInfo = require(Plugin.Src.Actions.SetPluginInfo)
local SetLoadedPluginData = require(Plugin.Src.Actions.SetLoadedPluginData)

local Flags = require(Plugin.Packages.Framework.Util.Flags)
local FlagsList = Flags.new({
	FFlagPluginManagementFixRemovePlugins = { "PluginManagementFixRemovePlugins" },
})

return function()
	it("should return a table with the correct members", function()
		local state = Management(nil, {})
		expect(type(state)).to.equal("table")
	end)

	if FlagsList:get("FFlagPluginManagementFixRemovePlugins") then
		describe("ClearAllPluginData action", function()
			it("should clear all plugin data", function()
				local state = Management({
					plugins = {
						[0] = {
							enabled = false,
						},
					},
				}, ClearAllPluginData())
				expect(state.plugins).to.equal(nil)
			end)
		end)

		describe("RemovePluginData action", function()
			it("should clear the plugin data", function()
				local assetIdToRemove = 123
				local state = Management({
					plugins = {
						[assetIdToRemove] = {
							enabled = false,
						},
					},
				}, RemovePluginData(assetIdToRemove))
				expect(state.plugins[assetIdToRemove]).to.equal(nil)
			end)

			it("should not clear any other plugin data", function()
				local assetIdToRemove = 123
				local state = Management({
					plugins = {
						[0] = {
							enabled = true,
						},
						[assetIdToRemove] = {
							enabled = false,
						},
					},
				}, RemovePluginData(assetIdToRemove))
				expect(state.plugins[assetIdToRemove]).to.equal(nil)
				expect(state.plugins[0].enabled).to.equal(true)
			end)
		end)
	end

	describe("SetLoadedPluginData", function()
		it("should set data about plugins", function()
			local state = Management(nil, SetLoadedPluginData({
				[123] = {
					enabled = false,
					installedVersion = 5295560901,
					description = "some long string describing the plugin.",
					updated = "2019-12-06T01:20:17Z",
					assetId = 1000001,
					isModerated = false,
					creator = {
						Id = 98765,
						CreatorTargetId = 98765,
						Name = "John Doe",
						CreatorType = "User",
					},
					latestVersion = 5295560901,
					name = "Test plugin 1"
				}
			}))
			expect(state.plugins).to.be.ok()
			expect(state.plugins[123]).to.be.ok()
			expect(state.plugins[123].enabled).to.equal(false)
			expect(state.plugins[123].installedVersion).to.equal(5295560901)
			expect(state.plugins[123].description).to.equal("some long string describing the plugin.")
			expect(state.plugins[123].updated).to.equal("2019-12-06T01:20:17Z")
			expect(state.plugins[123].assetId).to.equal(1000001)
			expect(state.plugins[123].isModerated).to.equal(false)
			expect(state.plugins[123].creator.Id).to.equal(98765)
			expect(state.plugins[123].creator.CreatorTargetId).to.equal(98765)
			expect(state.plugins[123].creator.Name).to.equal("John Doe")
			expect(state.plugins[123].creator.CreatorType).to.equal("User")
			expect(state.plugins[123].latestVersion).to.equal(5295560901)
			expect(state.plugins[123].name).to.equal("Test plugin 1")
		end)

		it("should allow an empty set", function()
			local state = Management(nil, SetLoadedPluginData({}))
			expect(state.plugins).to.be.ok()
			expect(type(state.plugins)).to.equal("table")
			expect(next(state.plugins)).to.equal(nil)
		end)

		it("should append data to an existing set", function()
			local state = Management({
				plugins = {
					[123] = {
						enabled = false,
						installedVersion = 5295560901,
						description = "some long string describing the plugin.",
						updated = "2019-12-06T01:20:17Z",
						assetId = 1000001,
						isModerated = false,
						creator = {
							Id = 98765,
							CreatorTargetId = 98765,
							Name = "John Doe",
							CreatorType = "User",
						},
						latestVersion = 5295560901,
						name = "Test plugin 1"
					},
				},
			}, SetLoadedPluginData({
				[456] = {
					enabled = true,
					installedVersion = 987654321,
					description = "some other long string describing the plugin.",
					updated = "2019-12-06T01:20:17Z",
					assetId = 1000002,
					isModerated = true,
					creator = {
						Id = 12345,
						CreatorTargetId = 12345,
						Name = "Jane Doe",
						CreatorType = "User",
					},
					latestVersion = 987654321,
					name = "Test plugin 1"
				}
			}))
			expect(state.plugins[123]).to.be.ok()
			expect(state.plugins[456]).to.be.ok()
		end)
	end)

	describe("SetPluginInfo action", function()
		it("should set the plugin info", function()
			local state = Management(nil, SetPluginInfo(nil, {
				{
					id = 0,
					name = "Test",
					description = "Test",
					versionId = 0,
					updated = "",
				},
			}))
			expect(state.plugins).to.be.ok()
			expect(state.plugins[0]).to.be.ok()
			expect(state.plugins[0].assetId).to.equal(0)
			expect(state.plugins[0].name).to.equal("Test")
			expect(state.plugins[0].latestVersion).to.equal(0)
			expect(state.plugins[0].updated).to.equal("")
		end)

		it("should clear the update status if nil", function()
			local state = Management({
				plugins = {
					[0] = {
						status = 0,
					},
				},
			}, SetPluginUpdateStatus(0))
			expect(state.plugins[0].status).never.to.be.ok()
		end)
	end)

	describe("SetPluginEnabledState action", function()
		it("should set the enabled state of a plugin", function()
			local state = Management({
				plugins = {
					[0] = {
						enabled = false,
					},
				},
			}, SetPluginEnabledState(0, true))
			expect(state.plugins[0].enabled).to.equal(true)
		end)
	end)

	describe("SetPluginUpdateStatus action", function()
		it("should set the update status of a plugin", function()
			local state = Management({
				plugins = {
					[0] = {
						status = 0,
					},
				},
			}, SetPluginUpdateStatus(0, 1))
			expect(state.plugins[0].status).to.equal(1)
		end)

		it("should clear the update status if nil", function()
			local state = Management({
				plugins = {
					[0] = {
						status = 0,
					},
				},
			}, SetPluginUpdateStatus(0))
			expect(state.plugins[0].status).never.to.be.ok()
		end)
	end)


end