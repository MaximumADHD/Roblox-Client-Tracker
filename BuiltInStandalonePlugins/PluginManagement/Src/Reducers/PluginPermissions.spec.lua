local Plugin = script.Parent.Parent.Parent

local PluginPermissions = require(script.Parent.PluginPermissions)
local SetAllPluginPermissions = require(Plugin.Src.Actions.SetAllPluginPermissions)
local Constants = require(Plugin.Src.Util.Constants)

local function createFakeRequestPermissionData(permissionType, domainName, isAllowed)
	return {
		Type = permissionType,
		Data = {
			Domain = domainName,
			Allowed = isAllowed,
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
			local permissionType = Constants.PERMISSION_TYPES.HttpService
			local isAllowed = true

			local state = PluginPermissions(nil, SetAllPluginPermissions({
				[assetId] = {
					createFakeRequestPermissionData(permissionType, domainName, isAllowed),
				},
			}))

			local entry = state[assetId]
			expect(entry.httpPermissions).to.be.ok()
			expect(entry.httpPermissions[1]).to.be.ok()
			expect(entry.httpPermissions[1].data.domain).to.equal(domainName)
			expect(entry.httpPermissions[1].allowed).to.equal(isAllowed)
			expect(entry.httpPermissions[1].type).to.equal(permissionType)
		end)

		it("should update the allowed/denied http counts", function()
			local assetId = 165687726
			local domainName = "hello"
			local permissionType = Constants.PERMISSION_TYPES.HttpService

			local state = PluginPermissions(nil, SetAllPluginPermissions({
				[assetId] = {
					createFakeRequestPermissionData(permissionType, domainName, true),
					createFakeRequestPermissionData(permissionType, domainName, true),
					createFakeRequestPermissionData(permissionType, domainName, true),
					createFakeRequestPermissionData(permissionType, domainName, false),
					createFakeRequestPermissionData(permissionType, domainName, false),
				},
			}))

			local entry = state[assetId]
			expect(entry.allowedHttpCount).to.equal(3)
			expect(entry.deniedHttpCount).to.equal(2)
		end)
	end)
end