local Plugin = script.Parent.Parent.Parent

local Management = require(script.Parent.Management)
local ClearAllPluginData = require(Plugin.Src.Actions.ClearAllPluginData)
local RemovePluginData = require(Plugin.Src.Actions.RemovePluginData)
local SetPluginEnabledState = require(Plugin.Src.Actions.SetPluginEnabledState)
local SetPluginUpdateStatus = require(Plugin.Src.Actions.SetPluginUpdateStatus)
local SetPluginInfo = require(Plugin.Src.Actions.SetPluginInfo)

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