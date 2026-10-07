local CorePackages = game:GetService("CorePackages")

local createVoiceRestrictionController =
	require(CorePackages.Workspace.Packages.VoiceChat.createVoiceRestrictionController)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local VoiceConstants = require(script.Parent.Parent.Constants)
local getRestrictionType = require(script.Parent.getRestrictionType)

type NudgeType = getRestrictionType.NudgeType
type VoiceSettings = createVoiceRestrictionController.VoiceSettings

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

describe("getRestrictionType", function()
	it("classifies each voice restriction by its settings", function()
		local nudgeBanReason = VoiceConstants.BAN_REASON.NUDGE_V3
		local cases: { { settings: VoiceSettings?, expected: NudgeType } } = {
			{ settings = nil, expected = "Nudge" },
			{ settings = { isBanned = true, banReason = 1 }, expected = "PermanentBan" },
			{
				settings = { isBanned = true, banReason = nudgeBanReason, bannedUntil = { Seconds = 1000 } },
				expected = "NudgeBan",
			},
			{
				settings = { isBanned = true, banReason = 6, bannedUntil = { Seconds = 1000 } },
				expected = "TemporaryBan",
			},
		}

		for _, case in cases do
			expect(getRestrictionType(case.settings)).toBe(case.expected)
		end
	end)

	it("treats a nudge ban reason without an expiry as a permanent ban", function()
		local settings = { isBanned = true, banReason = VoiceConstants.BAN_REASON.NUDGE_V3 }

		expect(getRestrictionType(settings)).toBe("PermanentBan")
	end)
end)
