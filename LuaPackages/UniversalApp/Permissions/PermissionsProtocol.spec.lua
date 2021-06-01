return function()
	local CorePackages = game:GetService("CorePackages")

	local MessageBus = require(CorePackages.UniversalApp.MessageBus)
	local PermissionsProtocol = require(CorePackages.UniversalApp.Permissions.PermissionsProtocol)

	local TestPermissions = {
		PermissionsProtocol.Permissions.CAMERA_ACCESS,
		PermissionsProtocol.Permissions.MICROPHONE_ACCESS
	}

	local InvalidPermissions = {
		"INVALID_PERMISSIONS"
	}

	describe("PermissionsProtocol", function()
		beforeAll(function(context)
			context.PermissionsProtocol = PermissionsProtocol.new()
		end)

		beforeEach(function(context)
			context.subscriber = MessageBus.Subscriber.new()
		end)

		afterEach(function(context)
			context.subscriber:unsubscribeFromAllMessages()
		end)

		it("should process permissions requests", function(context)
			local status = ""
			context.PermissionsProtocol:requestPermissions(TestPermissions):andThen(function(result)
				status = result.status
				expect(status).to.equal(PermissionsProtocol.Status.AUTHORIZED)
			end)

			context.subscriber:subscribe(PermissionsProtocol.PERMISSION_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(PermissionsProtocol.PERMISSION_RESPONSE_DESCRIPTOR, {
					status = PermissionsProtocol.Status.AUTHORIZED,
					missingPermissions = {},
				})
			end)
			wait()
			expect(status).to.equal(PermissionsProtocol.Status.AUTHORIZED)
		end)

		it("should process requests to check current permissions", function(context)
			local status = ""
			context.PermissionsProtocol:hasPermissions(TestPermissions):andThen(function(result)
				status = result.status
				expect(status).to.equal(PermissionsProtocol.Status.AUTHORIZED)
			end)

			context.subscriber:subscribe(PermissionsProtocol.HAS_PERMISSION_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(PermissionsProtocol.HAS_PERMISSION_RESPONSE_DESCRIPTOR, {
					status = PermissionsProtocol.Status.AUTHORIZED,
					missingPermissions = {},
				})
			end)
			wait()
			expect(status).to.equal(PermissionsProtocol.Status.AUTHORIZED)
		end)

		it("should process request to get supported permissions on device", function(context)
			local didSucceed = false
			context.PermissionsProtocol:getSupportedPermissionsList():andThen(function(result)
				didSucceed = result.permissions and
					#result.permissions == 2 and
					result.permissions[1] == TestPermissions[1] and
					result.permissions[2] == TestPermissions[2]
				expect(didSucceed).to.equal(true)
			end)

			context.subscriber:subscribe(PermissionsProtocol.SUPPORTS_PERMISSIONS_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(PermissionsProtocol.SUPPORTS_PERMISSIONS_RESPONSE_DESCRIPTOR, {
					permissions = TestPermissions,
				})
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should process correctly when permissions are supported by device", function(context)
			local didSucceed = false
			context.PermissionsProtocol:supportsPermissions(TestPermissions):andThen(function(supported)
				didSucceed = supported
				expect(didSucceed).to.equal(true)
			end)

			context.subscriber:subscribe(PermissionsProtocol.SUPPORTS_PERMISSIONS_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(PermissionsProtocol.SUPPORTS_PERMISSIONS_RESPONSE_DESCRIPTOR, {
					permissions = TestPermissions,
				})
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should process correctly when permissions are not supported by device", function(context)
			local didSucceed = false
			context.PermissionsProtocol:supportsPermissions(TestPermissions):andThen(function(supported)
				didSucceed = supported == false
				expect(didSucceed).to.equal(true)
			end)

			context.subscriber:subscribe(PermissionsProtocol.SUPPORTS_PERMISSIONS_REQUEST_DESCRIPTOR, function(params)
				MessageBus.publish(PermissionsProtocol.SUPPORTS_PERMISSIONS_RESPONSE_DESCRIPTOR, {
					permissions = {},
				})
			end)
			wait()
			expect(didSucceed).to.equal(true)
		end)

		it("should throw error when invalid permissions are given", function(context)
			expect(function()
				context.PermissionsProtocol:hasPermissions(InvalidPermissions)
			end).to.throw()

			expect(function()
				context.PermissionsProtocol:requestPermissions(InvalidPermissions)
			end).to.throw()

			expect(function()
				context.PermissionsProtocol:supportsPermissions(InvalidPermissions)
			end).to.throw()
		end)
	end)
end
