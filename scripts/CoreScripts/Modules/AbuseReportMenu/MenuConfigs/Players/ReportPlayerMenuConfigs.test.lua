--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local Constants = require(root.Components.Constants)
local PlayerModalSelectorMenuConfig = require(root.MenuConfigs.Players.PlayerModalSelectorMenuConfig)
local ReportPlayerMenuItemConfigList = require(root.MenuConfigs.Players.ReportPlayerMenuItemConfigList)
local SubmitReportButtonMenuConfig = require(root.MenuConfigs.Players.SubmitReportButtonMenuConfig)
local getIsDisabled: (any, any) -> boolean = (SubmitReportButtonMenuConfig :: any).getIsDisabled

describe("ReportPlayerMenuConfigs", function()
	it("includes the expected player report menu fields", function()
		local componentNames = {}
		for _, config in ReportPlayerMenuItemConfigList do
			table.insert(componentNames, config.componentName)
		end

		expect(componentNames).toEqual({
			"MethodOfAbuse",
			"PlayerSelector",
			"AbuseReason",
			"OptionalScreenshot",
			"FreeComments",
			"SubmitButton",
		})
	end)

	it("updates only the selected player when a player is chosen", function()
		local player = {
			DisplayName = "Reported Player",
			Name = "ReportedPlayer",
			UserId = 123,
		}
		local analyticsDispatch = jest.fn()
		local dispatchUIStates = jest.fn()

		PlayerModalSelectorMenuConfig.onUpdateSelectedOption(
			{
				identifier = player.Name,
				label = player.DisplayName,
			},
			{
				playerObjects = { player },
			} :: any,
			dispatchUIStates,
			{
				analyticsDispatch = analyticsDispatch,
			} :: any
		)

		expect(analyticsDispatch).toHaveBeenCalledWith({
			type = Constants.AnalyticsActions.IncrementPersonChanged,
		})
		expect(dispatchUIStates).toHaveBeenCalledTimes(1)
		expect(dispatchUIStates).toHaveBeenCalledWith({
			type = Constants.PlayerMenuActions.UpdateAbuser,
			abuseId = player.UserId,
			abuser = player,
		})
	end)

	it("enables text submission when a player and reason are selected", function()
		local isDisabled = getIsDisabled({
			abuseReason = "Bullying",
			allegedAbuser = {},
			methodOfAbuse = Constants.AbuseMethods.TextChat,
		}, {})

		expect(isDisabled).toBe(false)
	end)

	it("disables text submission when the player or reason is missing", function()
		local missingPlayerIsDisabled = getIsDisabled({
			abuseReason = "Bullying",
			methodOfAbuse = Constants.AbuseMethods.TextChat,
		}, {})
		local missingReasonIsDisabled = getIsDisabled({
			allegedAbuser = {},
			methodOfAbuse = Constants.AbuseMethods.TextChat,
		}, {})

		expect(missingPlayerIsDisabled).toBe(true)
		expect(missingReasonIsDisabled).toBe(true)
	end)

	it("keeps voice submission eligible with complete inputs", function()
		local isDisabled = getIsDisabled({
			abuseReason = "Bullying",
			allegedAbuser = {},
			allegedAbuserId = 123,
			methodOfAbuse = Constants.AbuseMethods.VoiceChat,
		}, {
			analyticsState = {
				menuOpenedUnixTimestampMilliseconds = 1,
			},
		})

		expect(isDisabled).toBe(false)
	end)
end)
