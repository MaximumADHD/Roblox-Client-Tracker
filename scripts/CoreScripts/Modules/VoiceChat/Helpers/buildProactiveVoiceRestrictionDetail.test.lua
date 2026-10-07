local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local buildProactiveVoiceRestrictionDetail = require(script.Parent.buildProactiveVoiceRestrictionDetail)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local LABELS = {
	["Feature.UniversalFeatureRestrictions.AbuseVector.LabelName.Voice"] = "Voice",
	["Feature.UniversalFeatureRestrictions.AbuseVector.Lowercase.LabelName.Voice"] = "voice",
}

local function build(settings)
	return buildProactiveVoiceRestrictionDetail({
		settings = settings,
		userId = 123,
		now = 1000,
		format = function(key, arguments)
			if LABELS[key] then
				return LABELS[key]
			end
			return if arguments
				then `{key}:{arguments.abuseVector or ""}:{arguments.number or ""}`
				else key
		end,
	})
end

describe("buildProactiveVoiceRestrictionDetail", function()
	it("builds non-acknowledgeable nudges with generic UFR copy and a lowercase label", function()
		local detail = build(nil)
		expect(detail.title).toBe("Feature.UniversalFeatureRestrictions.Generic.DialogTitleV2.Nudge:voice:")
		expect(detail.body).toBe("Feature.UniversalFeatureRestrictions.Generic.DialogBody.Nudge")
		expect(detail.punishmentTypeDescription).toBe("nudge")
		expect(detail.acknowledgeable).toBe(false)
		expect(detail.interventionId).toBe("")
		expect(detail.endDate).toBe("")
	end)

	it("builds timeout titles from the remaining minutes and authoritative end date", function()
		for _, case in {
			{
				settings = { isBanned = true, banReason = 6, bannedUntil = { Seconds = 1060 } },
				title = "Feature.UniversalFeatureRestrictions.Generic.DialogTitleV2.Suspended.Minute:Voice:1",
				endDate = "1970-01-01T00:17:40Z",
			},
			{
				settings = { isBanned = true, banReason = 7, bannedUntil = { Seconds = 1061 } },
				title = "Feature.UniversalFeatureRestrictions.Generic.DialogTitleV2.Suspended.Minutes:Voice:2",
				endDate = "1970-01-01T00:17:41Z",
			},
		} do
			local detail = build(case.settings)
			expect(detail.punishedUserId).toBe(123)
			expect(detail.title).toBe(case.title)
			expect(detail.body).toBe("Feature.UniversalFeatureRestrictions.Generic.DialogBody.Suspended")
			expect(detail.punishmentTypeDescription).toBe("timeout")
			expect(detail.endDate).toBe(case.endDate)
			expect(detail.beginDate).toBe("")
			expect(detail.duration).toBeNil()
			expect(detail.acknowledgeable).toBe(false)
		end
	end)

	it("builds permanent bans with generic UFR copy and no invented end date", function()
		local detail = build({ isBanned = true, banReason = 1 })
		expect(detail.punishmentTypeDescription).toBe("ban")
		expect(detail.title).toBe("Feature.UniversalFeatureRestrictions.Generic.DialogTitle.Banned:voice:")
		expect(detail.body).toBe("Feature.UniversalFeatureRestrictions.Generic.DialogBody.Banned")
		expect(detail.beginDate).toBe("")
		expect(detail.endDate).toBe("")
		expect(detail.acknowledgeable).toBe(false)
	end)

	it("displays at least one remaining minute for stale proactive settings", function()
		local detail = build({ isBanned = true, banReason = 7, bannedUntil = { Seconds = 100 } })
		expect(detail.title).toBe("Feature.UniversalFeatureRestrictions.Generic.DialogTitleV2.Suspended.Minute:Voice:1")
		expect(detail.endDate).toBe("1970-01-01T00:01:40Z")
	end)
end)
