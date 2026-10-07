local CorePackages = game:GetService("CorePackages")

local FFlagFixPromptGameInviteUIMissingDisplayName =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagFixPromptGameInviteUIMissingDisplayName

local GetCustomizedInvitePromptParams = require(script.Parent.getCustomizedInvitePromptParams)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect

local mockSendingDisabled = function()
	return false, false
end

local mockCustomizationDisabled = function()
	return true, false
end

local mockCustomizationEnabled = function()
	return true, true
end

local mockDefinedOptions = function()
	local options = Instance.new("ExperienceInviteOptions")
	options.InviteMessageId = "message-id-string"
	options.InviteUser = 416
	options.PromptMessage = "Custom Prompt"
	options.LaunchData = "LaunchData"
	return options
end

it("returns nil when and invite cannot be sent", function()
	local nilParams = GetCustomizedInvitePromptParams(nil, mockSendingDisabled)
	local optionsParams = GetCustomizedInvitePromptParams(Instance.new("ExperienceInviteOptions"), mockSendingDisabled)
	expect(nilParams).toBeNil()
	expect(optionsParams).toBeNil()
end)

it("drops customization-only options when customization is disabled", function()
	local nilParams = GetCustomizedInvitePromptParams(nil, mockCustomizationDisabled)
	expect(nilParams).toEqual({})

	local options = mockDefinedOptions()
	-- We recently had to change this from an int to a string in game-engine
	-- Some tests fails on older version of the engine because of that, so we
	-- skip these if this property isn't a string
	if typeof(options.InviteMessageId) ~= "string" then
		return
	end
	local optionsParams = GetCustomizedInvitePromptParams(options, mockCustomizationDisabled)
	assert(optionsParams ~= nil, "expected params when invite can be sent")
	expect(optionsParams.inviteMessageId).toBeNil()
	expect(optionsParams.promptMessage).toBeNil()
	expect(optionsParams.launchData).toBeNil()
end)

it("keeps the invite recipient when customization is disabled", function()
	local options = mockDefinedOptions()
	if typeof(options.InviteMessageId) ~= "string" then
		return
	end
	local optionsParams = GetCustomizedInvitePromptParams(options, mockCustomizationDisabled)
	assert(optionsParams ~= nil, "expected params when invite can be sent")

	if FFlagFixPromptGameInviteUIMissingDisplayName then
		expect(optionsParams.inviteUserId).toBe(options.InviteUser)
	else
		expect(optionsParams.inviteUserId).toBeNil()
	end
end)

it("returns an empty table when no ExperienceInviteOptions are provided", function()
	local params = GetCustomizedInvitePromptParams(nil, mockCustomizationEnabled)
	expect(params).toEqual({})
end)

it("returns an empty table when an unmodified ExperienceInviteOptions is provided", function()
	local options = Instance.new("ExperienceInviteOptions")
	if typeof(options.InviteMessageId) ~= "string" then
		return
	end
	local params = GetCustomizedInvitePromptParams(options, mockCustomizationEnabled)
	expect(params).toEqual({})
end)

it("unpacks the correct values from ExperienceInviteOptions when provided", function()
	local options = mockDefinedOptions()
	if typeof(options.InviteMessageId) ~= "string" then
		return
	end
	local params = GetCustomizedInvitePromptParams(options, mockCustomizationEnabled)
	expect(params).toEqual({
		inviteUserId = options.InviteUser,
		inviteMessageId = options.InviteMessageId,
		promptMessage = options.PromptMessage,
		launchData = options.LaunchData,
	})
end)
