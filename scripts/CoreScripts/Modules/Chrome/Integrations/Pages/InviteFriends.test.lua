--!nonstrict
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local registeredProps: any = nil
local mockIsPlatformInviteUIEnabled = false

jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = {
			Available = "Available",
			Unavailable = "Unavailable",
		},
		register = function(_self, props)
			registeredProps = props
			return { id = props.id }
		end,
	}
end)

jest.mock(Chrome.Integrations.CommonIcon, function()
	return function()
		return nil
	end
end)

jest.mock(Chrome.Integrations.Pages.InGameMenuIntegrationUtils, function()
	return {
		toggleInviteFriendsPage = function() end,
	}
end)

jest.mock(CorePackages.Workspace.Packages.GameInvite, function()
	return {
		GameInviteModalManager = {
			isGameModalOpen = function()
				return false
			end,
			ToggleGameInviteModalEvent = {
				Event = {
					Connect = function() end,
				},
			},
		},
	}
end)

jest.mock(CorePackages.Workspace.Packages.GameInvite.isPlatformInviteUIEnabled, function()
	return function()
		return mockIsPlatformInviteUIEnabled
	end
end)

local FFlagGameInviteInExpJoinOrInviteLabel =
	require(CorePackages.Workspace.Packages.GameInvite.FFlagGameInviteInExpJoinOrInviteLabel)

local function loadLabel(isPlatformInviteUIEnabled: boolean): string
	mockIsPlatformInviteUIEnabled = isPlatformInviteUIEnabled
	registeredProps = nil

	jest.isolateModules(function()
		require(script.Parent.InviteFriends)
	end)

	return registeredProps.label
end

describe("InviteFriends integration label", function()
	if FFlagGameInviteInExpJoinOrInviteLabel then
		it("SHOULD label the side sheet item Join or Invite", function()
			expect(loadLabel(false)).toBe("CoreScripts.InGameMenu.PageTitle.JoinOrInvite")
		end)

		it("SHOULD label the side sheet item Invite Friends WHEN the platform invite UI is enabled", function()
			expect(loadLabel(true)).toBe("CoreScripts.InGameMenu.PageTitle.InviteFriends")
		end)
	else
		it("SHOULD label the side sheet item Invite Friends", function()
			expect(loadLabel(false)).toBe("CoreScripts.InGameMenu.PageTitle.InviteFriends")
		end)
	end
end)
