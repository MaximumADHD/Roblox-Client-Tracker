local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local PartyIcon = require(script.Parent.PartyIcon)

local ChromeService = require(Chrome.Service)
local ChromeIntegrationUtils = require(Chrome.Integrations.ChromeIntegrationUtils)
local GetFStringConnectTooltipLocalStorageKey = require(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey)
local LocalStore = require(Chrome.ChromeShared.Service.LocalStore)

local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

local ChromeFocusUtils = require(CorePackages.Workspace.Packages.Chrome).FocusUtils
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local InExperienceAppChatModal = require(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal)
local MouseIconOverrideService = require(CorePackages.Workspace.Packages.CoreScriptsCommon).MouseIconOverrideService
local React = require(CorePackages.Packages.React)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol

local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local partyVisibilitySignal = MappedSignal.new(InExperienceAppChatModal.default.visibilitySignal.Event, function()
	return InExperienceAppChatModal:getVisible()
end)

return function(id: string, initialAvailability: number)
	local integration = ChromeService:register({
		id = id,
		sideSheetPlacement = SideSheetPlacement.None,
		label = "Feature.Squads.Label.Party",
		activated = function()
			if InExperienceAppChatModal:getVisible() then
				InExperienceAppChatModal.default:setVisible(false)
			else
				ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
					local inputModeStore = Responsive.GetInputModeStore(false)
					if inputModeStore.getLastInputType(false) == Responsive.Input.Directional then
						ChromeFocusUtils.FocusOffChrome()
					end
					InExperienceAppChatModal.default:setVisible(true)
				end)
			end
			LocalStore.storeForLocalPlayer(GetFStringConnectTooltipLocalStorageKey(), true)
		end,
		isActivated = partyVisibilitySignal,
		components = {
			Icon = function(props)
				return React.createElement(PartyIcon, {
					integrationId = id,
					isIconVisible = props.visible,
				})
			end,
		},
		initialAvailability = initialAvailability,
	})

	-- Force the cursor to show when the AppChat modal is visible
	local MOUSE_OVERRIDE_KEY = Symbol.named("InExperienceRobloxParty")
	InExperienceAppChatModal.default.visibilitySignal.Event:Connect(function(visible)
		if visible then
			MouseIconOverrideService.push(MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
		else
			MouseIconOverrideService.pop(MOUSE_OVERRIDE_KEY)
		end
	end)

	return integration
end
