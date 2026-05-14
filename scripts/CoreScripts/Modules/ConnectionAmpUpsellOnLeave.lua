--[[
	ConnectionAmpUpsellOnLeave

	Continue-button handlers for placelaunch errors recoverable via the AMP
	wizard (age verification / parental approval). On Granted, runs the
	supplied reconnect function; otherwise the user is left on the prompt.
]]
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local TelemetryService = game:GetService("TelemetryService")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FStringAgeCheckAmpFeature = SharedFlags.FStringLuaAppPlayButtonAgeCheckAmpFeatureName
local FStringAgeCheckAmpNamespace = SharedFlags.FStringLuaAppPlayButtonAgeCheckAmpNameSpace
local FFlagConnectionUpsellAnalytics = SharedFlags.FFlagConnectionUpsellAnalytics
local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url

-- { universeId, experienceManagementAction } is passed via recourseData (becomes
-- VPCUpsellContainer's requestDetails), not extraParameters.
local CAN_APPROVE_EXPERIENCE_FEATURE = "CanApproveExperience"

local PRIMARY_BUTTON_TEXT = "Continue"
local PRIMARY_BUTTON_LOCALIZATION_KEY = "InGame.ConnectionError.Action.Continue"

local WIZARD_DISPLAY_ORDER_ABOVE_PROMPT = 1

-- pcall + subscript guards engines without these ConnectionError variants.
local AgeVerificationRequiredEnum = nil
local ParentalApprovalRequiredEnum = nil
pcall(function()
	AgeVerificationRequiredEnum = Enum.ConnectionError["PlacelaunchAgeVerificationRequired"]
	ParentalApprovalRequiredEnum = Enum.ConnectionError["PlacelaunchParentalApprovalRequired"]
end)

local function logTelemetry(eventConfig, item)
	TelemetryService:LogCounter(eventConfig, { customFields = { selectedItem = item } }, 1.0)
end

-- During a placelaunch error only `game.PlaceId` is populated; universeId is
-- looked up via the same public endpoint used by auth-common's
-- GetUniverseIdFromPlaceId thunk. Yields; call from a coroutine / task.spawn.
local function fetchUniverseIdFromPlaceIdYielding(placeId: number): number?
	local url = string.format("%suniverses/v1/places/%d/universe", Url.APIS_URL, placeId)
	local fetchOk, body = pcall(HttpRbxApiService.GetAsyncFullUrl, HttpRbxApiService, url)
	if not fetchOk or type(body) ~= "string" then
		return nil
	end
	local decodeOk, decoded = pcall(HttpService.JSONDecode, HttpService, body)
	if not decodeOk or type(decoded) ~= "table" then
		return nil
	end
	local uid = decoded.universeId
	if type(uid) ~= "number" or uid <= 0 then
		return nil
	end
	return uid
end

type UpsellAnalyticsConfig = {
	upsellName: string,
	playabilityStatus: string,
	missingPlaceIdItem: string,
	universeIdLookupFailedItem: string,
}

-- Analytics config
-- throttlingPercentage MUST default to 10000 (no-throttle); 0 drops every event.
local UnlockPlayIntentEventConfig = if FFlagConnectionUpsellAnalytics
	then {
		eventName = "unlockPlayIntent",
		backends = { "EventIngest" },
		throttlingPercentage = game:DefineFastInt("ConnectionAmpUnlockPlayIntentThrottleHundredthsPercent", 10000),
		lastUpdated = { 2026, 5, 11 },
		description = "Fired when a user clicks Continue on an AMP age check / parental approval upsell from a game-join flow.",
	}
	else nil :: never

-- throttlingPercentage MUST default to 10000 (no-throttle); 0 drops every event.
local GameJoinUpsellImpressionEventConfig = if FFlagConnectionUpsellAnalytics
	then {
		eventName = "gameJoinUpsellImpression",
		backends = { "EventIngest" },
		throttlingPercentage = game:DefineFastInt(
			"ConnectionAmpGameJoinUpsellImpressionThrottleHundredthsPercent",
			10000
		),
		lastUpdated = { 2026, 5, 11 },
		description = "Fired when an AMP age check / parental approval upsell is shown during a game-join flow.",
	}
	else nil :: never

local standardizedFields: { string } = if FFlagConnectionUpsellAnalytics
	then { "addSessionInfo", "addSessionId", "addOSInfo" }
	else nil :: never

local AgeCheckAnalyticsConfig: UpsellAnalyticsConfig = if FFlagConnectionUpsellAnalytics
	then {
		upsellName = "AgeCheckRequired",
		playabilityStatus = "ContextualPlayabilityAgeCheckRequired",
		missingPlaceIdItem = "AmpAgeCheckMissingPlaceId",
		universeIdLookupFailedItem = "AgeCheckImpressionUniverseIdLookupFailed",
	}
	else nil :: never

local ParentApprovalAnalyticsConfig: UpsellAnalyticsConfig = if FFlagConnectionUpsellAnalytics
	then {
		upsellName = "ParentApprovalRequired",
		playabilityStatus = "ContextualPlayabilityRequireParentApproval",
		missingPlaceIdItem = "AmpParentApprovalMissingPlaceId",
		universeIdLookupFailedItem = "ParentApprovalImpressionUniverseIdLookupFailed",
	}
	else nil :: never

-- Populated by fireImpression's fetch.
local universeIdByPlaceId: { [number]: string } = if FFlagConnectionUpsellAnalytics then {} else nil :: never

local sendEvent: (UpsellAnalyticsConfig, string, any, string) -> () = if FFlagConnectionUpsellAnalytics
	then function(
		analyticsConfig: UpsellAnalyticsConfig,
		eventContext: string,
		telemetryEventConfig: any,
		universeId: string
	)
		TelemetryService:LogEvent(telemetryEventConfig, {
			eventContext = eventContext,
			standardizedFields = standardizedFields,
			customFields = {
				universeId = universeId,
				upsellName = analyticsConfig.upsellName,
				playabilityStatus = analyticsConfig.playabilityStatus,
			},
		})
	end
	else nil :: never

local fireClick: (UpsellAnalyticsConfig, number, string) -> () = if FFlagConnectionUpsellAnalytics
	then function(analyticsConfig: UpsellAnalyticsConfig, placeId: number, universeId: string)
		local resolved = (universeId ~= "" and universeId) or universeIdByPlaceId[placeId] or ""
		if universeId and universeId ~= "" then
			universeIdByPlaceId[placeId] = universeId
		end
		sendEvent(analyticsConfig, "GameJoin", UnlockPlayIntentEventConfig, resolved)
	end
	else nil :: never

-- Called synchronously from Connection.lua stateTransit inside GuiService.ErrorMessageChanged.
local fireImpression: (any, UpsellAnalyticsConfig, number) -> () = if FFlagConnectionUpsellAnalytics
	then function(eventConfig: any, analyticsConfig: UpsellAnalyticsConfig, placeId: number)
		if not placeId or placeId == 0 then
			logTelemetry(eventConfig, analyticsConfig.missingPlaceIdItem)
			return
		end
		local cached = universeIdByPlaceId[placeId]
		if cached then
			sendEvent(analyticsConfig, analyticsConfig.upsellName, GameJoinUpsellImpressionEventConfig, cached)
			return
		end
		task.spawn(function()
			local id = fetchUniverseIdFromPlaceIdYielding(placeId)
			local universeId = if id then tostring(id) else ""
			if id then
				universeIdByPlaceId[placeId] = universeId
			else
				logTelemetry(eventConfig, analyticsConfig.universeIdLookupFailedItem)
			end
			sendEvent(analyticsConfig, analyticsConfig.upsellName, GameJoinUpsellImpressionEventConfig, universeId)
		end)
	end
	else nil :: never

local fireImpressionAgeCheck: (any, number) -> () = if FFlagConnectionUpsellAnalytics
	then function(eventConfig: any, placeId: number)
		fireImpression(eventConfig, AgeCheckAnalyticsConfig, placeId)
	end
	else nil :: never

local fireImpressionParentalApproval: (any, number) -> () = if FFlagConnectionUpsellAnalytics
	then function(eventConfig: any, placeId: number)
		fireImpression(eventConfig, ParentApprovalAnalyticsConfig, placeId)
	end
	else nil :: never

-- pcall-required at call time so a broken require can't crash CoreScript init.
local function loadAmpUpsell()
	local ok, AmpUpsell = pcall(require, CorePackages.Workspace.Packages.AmpUpsell)
	return if ok then AmpUpsell else nil
end

-- Reuse the CoreScripts-singleton ApolloClient (also used by PlayerListMaster)
-- since InExperienceProviderContainer doesn't include an ApolloProvider.
local function loadCoreScriptsApolloClient()
	local ok, client = pcall(require, CoreGui.RobloxGui.Modules.ApolloClient)
	return if ok then client else nil
end

local function openWizardThenReconnect(
	eventConfig,
	reconnectFunction,
	wizardDisplayOrder,
	featureName,
	namespaceName,
	eventCtx,
	recourseData,
	extraParameters,
	telemetryItem
)
	logTelemetry(eventConfig, telemetryItem)

	local AmpUpsell = loadAmpUpsell()
	if not AmpUpsell then
		logTelemetry(eventConfig, "AmpWizardLoadFailed")
		return
	end

	local apolloClient = loadCoreScriptsApolloClient()
	if not apolloClient then
		logTelemetry(eventConfig, "AmpWizardApolloLoadFailed")
		return
	end

	-- pcall keeps wizard render errors from tearing down CoreScript init.
	local renderOk = pcall(function()
		AmpUpsell.InExpAmpWizardController.OpenAmpWizardContainerInExp(featureName, function(accessResponse)
			if accessResponse == AmpUpsell.AmpEnums.AccessResponseEnum.Granted then
				logTelemetry(eventConfig, "AmpWizardGrantedReconnect")
				reconnectFunction()
			else
				logTelemetry(eventConfig, "AmpWizardNotGranted")
			end
		end, recourseData, eventCtx, extraParameters, namespaceName, apolloClient, wizardDisplayOrder, true)
	end)

	if not renderOk then
		logTelemetry(eventConfig, "AmpWizardOpenError")
	end
end

local function createAgeCheckCallback(eventConfig, reconnectFunction, promptDisplayOrder: number)
	local wizardDisplayOrder = promptDisplayOrder + WIZARD_DISPLAY_ORDER_ABOVE_PROMPT
	return function()
		if FFlagConnectionUpsellAnalytics then
			fireClick(AgeCheckAnalyticsConfig, game.PlaceId, "")
		end
		openWizardThenReconnect(
			eventConfig,
			reconnectFunction,
			wizardDisplayOrder,
			FStringAgeCheckAmpFeature,
			FStringAgeCheckAmpNamespace,
			"gameJoinAgeCheckRequired",
			nil,
			nil,
			"AmpAgeCheckOpened"
		)
	end
end

local function createParentalApprovalCallback(eventConfig, reconnectFunction, promptDisplayOrder: number)
	local wizardDisplayOrder = promptDisplayOrder + WIZARD_DISPLAY_ORDER_ABOVE_PROMPT
	return function()
		local placeId = game.PlaceId
		if not placeId or placeId == 0 then
			logTelemetry(eventConfig, "AmpParentApprovalMissingPlaceId")
			return
		end

		-- Spawn so the yielding HTTP call doesn't block the button-click thread.
		task.spawn(function()
			local universeIdNumber = fetchUniverseIdFromPlaceIdYielding(placeId)

			if FFlagConnectionUpsellAnalytics then
				local clickUniverseId = if universeIdNumber then tostring(universeIdNumber) else ""
				fireClick(ParentApprovalAnalyticsConfig, placeId, clickUniverseId)
			end

			if not universeIdNumber then
				logTelemetry(eventConfig, "AmpParentApprovalUniverseIdLookupFailed")
				return
			end
			local universeId = tostring(universeIdNumber)

			openWizardThenReconnect(
				eventConfig,
				reconnectFunction,
				wizardDisplayOrder,
				CAN_APPROVE_EXPERIENCE_FEATURE,
				nil,
				"gameJoinContentMaturityLock",
				{
					universeId = universeId,
					experienceManagementAction = "Approve",
				},
				nil,
				"AmpParentApprovalOpened"
			)
		end)
	end
end

return {
	PrimaryButtonText = PRIMARY_BUTTON_TEXT,
	PrimaryButtonLocalizationKey = PRIMARY_BUTTON_LOCALIZATION_KEY,
	AgeVerificationRequiredEnum = AgeVerificationRequiredEnum,
	ParentalApprovalRequiredEnum = ParentalApprovalRequiredEnum,
	createAgeCheckCallback = createAgeCheckCallback,
	createParentalApprovalCallback = createParentalApprovalCallback,
	fireImpressionAgeCheck = fireImpressionAgeCheck,
	fireImpressionParentalApproval = fireImpressionParentalApproval,
}
