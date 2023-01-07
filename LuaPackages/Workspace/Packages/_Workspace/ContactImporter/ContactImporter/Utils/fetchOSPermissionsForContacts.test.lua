local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local fetchOSPermissionsForContacts = require(script.Parent.fetchOSPermissionsForContacts)
local dependencies = require(ContactImporter.dependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local MessageBus = devDependencies.MessageBus
local PermissionsProtocol = dependencies.PermissionsProtocol

local permissionsProtocol, subscriber

-- FIXME: https://jira.rbx.com/browse/APPFDN-1941
describe.skip("fetchOSPermissionsForContacts helper function", function()
	beforeAll(function()
		permissionsProtocol = PermissionsProtocol.new()
	end)

	beforeEach(function()
		subscriber = MessageBus.Subscriber.new()
	end)

	afterEach(function()
		subscriber:unsubscribeFromAllMessages()
	end)

	it("SHOULD call callback function with true if authorized permissions", function()
		local mockCallback = jest.fn()
		local callbackFn = function(permissionGranted)
			mockCallback(permissionGranted)
		end

		subscriber:subscribeProtocolMethodRequest(
			permissionsProtocol.HAS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
			function(params)
				MessageBus.publishProtocolMethodResponse(
					permissionsProtocol.HAS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
					{
						status = permissionsProtocol.Status.AUTHORIZED,
						missingPermissions = {},
					},
					0,
					{}
				)
			end
		)
		fetchOSPermissionsForContacts(permissionsProtocol, callbackFn)
		task.wait()
		jestExpect(mockCallback).toHaveBeenCalledWith(true)
	end)

	it("SHOULD call callback function with false if no permissions", function()
		local mockCallback = jest.fn()
		local callbackFn = function(permissionGranted)
			mockCallback(permissionGranted)
		end

		subscriber:subscribeProtocolMethodRequest(
			permissionsProtocol.HAS_PERMISSIONS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
			function(params)
				MessageBus.publishProtocolMethodResponse(
					permissionsProtocol.HAS_PERMISSIONS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR,
					{
						status = permissionsProtocol.Status.DENIED,
						missingPermissions = {},
					},
					0,
					{}
				)
			end
		)
		fetchOSPermissionsForContacts(permissionsProtocol, callbackFn)
		task.wait()
		jestExpect(mockCallback).toHaveBeenCalledWith(false)
	end)
end)
