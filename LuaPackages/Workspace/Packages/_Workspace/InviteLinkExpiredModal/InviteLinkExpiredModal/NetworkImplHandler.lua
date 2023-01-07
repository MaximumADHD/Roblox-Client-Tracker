local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")
local dependencies = require(InviteLinkExpiredModal.dependencies)
local devDependencies = require(InviteLinkExpiredModal.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll

beforeAll(function(c)
	dependencies.RoduxNetworking.setNetworkImpl(function(url)
		error(string.format("Should have replaced network implementation for url: %s", tostring(url)))
	end)
end)
