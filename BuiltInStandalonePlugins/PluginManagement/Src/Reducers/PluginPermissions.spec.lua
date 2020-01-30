local Plugin = script.Parent.Parent.Parent

local PluginPermissions = require(script.Parent.PluginPermissions)
local SetAllPluginPermissions = require(Plugin.Src.Actions.SetAllPluginPermissions)
local Constants = require(Plugin.Src.Util.Constants)

local function createFakeRequestPermissionData(type, domainName, isEnabled)
	return {
		PermissionType = type,
		PermissionData = {
			domain = domainName,
			enabled = isEnabled,
		},
	}
end

return function()
	it("should return a table with the correct members", function()
		local state = PluginPermissions(nil, {})
		expect(type(state)).to.equal("table")
	end)

	describe("SetAllPluginPermissions action", function()
		it("should set the PluginPermissions info", function()
			local assetId = 165687726
			local domainName = "hello"
			local type = Constants.PERMISSION_TYPES.HttpPermission
			local isEnabled = true

			local state = PluginPermissions(nil, SetAllPluginPermissions({
				[assetId] = {
					AssetVersion = 5339764524,
					Enabled = false,
					Moderated = false,
					PluginPermissions = {
						createFakeRequestPermissionData(type, domainName, isEnabled),
					},
				},
			}))

			local entry = state[assetId]
			expect(entry.httpPermissions).to.be.ok()
			expect(entry.httpPermissions[1]).to.be.ok()
			expect(entry.httpPermissions[1].data.domain).to.equal(domainName)
			expect(entry.httpPermissions[1].enabled).to.equal(isEnabled)
			expect(entry.httpPermissions[1].type).to.equal(type)
		end)

		it("should update the sllowe/denied http counts", function()
			local assetId = 165687726
			local domainName = "hello"
			local type = Constants.PERMISSION_TYPES.HttpPermission

			local state = PluginPermissions(nil, SetAllPluginPermissions({
				[assetId] = {
					AssetVersion = 5339764524,
					Enabled = false,
					Moderated = false,
					PluginPermissions = {
						createFakeRequestPermissionData(type, domainName, true),
						createFakeRequestPermissionData(type, domainName, true),
						createFakeRequestPermissionData(type, domainName, true),
						createFakeRequestPermissionData(type, domainName, false),
						createFakeRequestPermissionData(type, domainName, false),
					},
				},
			}))

			local entry = state[assetId]
			expect(entry.allowedHttpCount).to.equal(3)
			expect(entry.deniedHttpCount).to.equal(2)
		end)
	end)
end