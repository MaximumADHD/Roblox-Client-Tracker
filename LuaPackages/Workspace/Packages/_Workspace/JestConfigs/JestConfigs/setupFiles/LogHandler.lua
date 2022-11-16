local LogService = game:GetService("LogService")

local Root = script:FindFirstAncestor("JestConfigs")
local Packages = Root.Parent

local JestGlobals = require(Packages.JestGlobals)
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local expect = JestGlobals.expect

local hasHitAnErrorOrWarning = false

beforeAll(function()
	LogService.MessageOut:Connect(function(_, messageType)
		if messageType == Enum.MessageType.MessageError or messageType == Enum.MessageType.MessageWarning then
			hasHitAnErrorOrWarning = true
		end
	end)
end)

afterAll(function()
	--[[
		FIXME: This wait is a hack. Ideally, we'd prefer
		to flush the MessageOut signal queue, either
		implicitly or explicitly.
	]]
	task.wait(0.2)
	expect(hasHitAnErrorOrWarning).toBe(false)
end)
