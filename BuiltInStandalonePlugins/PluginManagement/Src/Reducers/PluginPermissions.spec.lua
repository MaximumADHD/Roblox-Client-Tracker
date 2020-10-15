local Plugin = script.Parent.Parent.Parent

local PluginPermissions = require(script.Parent.PluginPermissions)
local SetAllPluginPermissions = require(Plugin.Src.Actions.SetAllPluginPermissions)
local Constants = require(Plugin.Src.Util.Constants)

local function createFakeHttpRequestPermissionData(domainName, isAllowed)
	return {
		Type = Constants.PERMISSION_TYPES.HttpService,
		Data = {
			Domain = domainName,
			Allowed = isAllowed,
		},
	}
end

local function createFakeScriptInjectionPermissionData(isAllowed)
	return {
		Type = Constants.PERMISSION_TYPES.ScriptInjection,
		Data = {
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
			local isAllowed = true

			local state = PluginPermissions(nil, SetAllPluginPermissions({
				[assetId] = {
					createFakeHttpRequestPermissionData(domainName, isAllowed),
				},
			}))

			local entry = state[assetId]
			expect(entry.httpPermissions).to.be.ok()
			expect(entry.httpPermissions[1]).to.be.ok()
			expect(entry.httpPermissions[1].data.domain).to.equal(domainName)
			expect(entry.httpPermissions[1].allowed).to.equal(isAllowed)
			expect(entry.httpPermissions[1].type).to.equal(Constants.PERMISSION_TYPES.HttpService)
			expect(entry.allowedScriptInjection).to.equal(nil)
		end)

		it("should update the allowed/denied http counts", function()
			local assetId = 165687726
			local domainName = "hello"

			local state = PluginPermissions(nil, SetAllPluginPermissions({
				[assetId] = {
					createFakeHttpRequestPermissionData(domainName, true),
					createFakeHttpRequestPermissionData(domainName, true),
					createFakeHttpRequestPermissionData(domainName, true),
					createFakeHttpRequestPermissionData(domainName, false),
					createFakeHttpRequestPermissionData(domainName, false),
					createFakeScriptInjectionPermissionData(true),
				},
			}))

			local entry = state[assetId]
			expect(entry.allowedHttpCount).to.equal(3)
			expect(entry.deniedHttpCount).to.equal(2)
			expect(entry.allowedScriptInjection).to.equal(true)
		end)
	end)
end