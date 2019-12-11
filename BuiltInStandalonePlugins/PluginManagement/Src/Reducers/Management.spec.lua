local Plugin = script.Parent.Parent.Parent

local Management = require(script.Parent.Management)
local SetPluginEnabledState = require(Plugin.Src.Actions.SetPluginEnabledState)
local SetPluginUpdateStatus = require(Plugin.Src.Actions.SetPluginUpdateStatus)
local SetPluginInfo = require(Plugin.Src.Actions.SetPluginInfo)

return function()
	it("should return a table with the correct members", function()
		local state = Management(nil, {})
		expect(type(state)).to.equal("table")
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