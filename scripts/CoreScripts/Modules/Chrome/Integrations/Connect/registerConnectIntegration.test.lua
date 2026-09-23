-- Activating the Connect icon opens AppChat. connect_unibar is the unibar chat
-- entry point in the rename-off arm, so it reports ChromeUnibar when the feature is
-- on; connect_dropdown keeps the shared ChromeDropdown fallback. Both flag states
-- are covered by the runner's flag sweep.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

-- SocialCommon initializes UIBlox at require time (unavailable here), so stub it to
-- the enum the integration reads. Values match the real ChatEntryPointNames.
jest.mock(CorePackages.Workspace.Packages.SocialCommon, function()
	return {
		Enums = {
			ChatEntryPointNames = {
				ChromeUnibar = "ChromeUnibar",
				ChromeDropdown = "ChromeDropdown",
			},
		},
	}
end)

local lastRegisterProps: any = nil
local fakeChromeService = {
	register = function(_self, props)
		lastRegisterProps = props
		return {
			id = props.id,
			notification = {
				clear = function() end,
				fireCount = function() end,
			},
		}
	end,
}
jest.mock(Chrome.Service, function()
	return fakeChromeService
end)

jest.mock(Chrome.ChromeShared.Service.ChromeUtils, function()
	return {
		MappedSignal = {
			new = function(_event, _getValue)
				return {
					get = function()
						return false
					end,
					connect = function()
						return { disconnect = function() end }
					end,
				}
			end,
		},
	}
end)

-- Run the dismissal action synchronously so the open path is exercised inline.
jest.mock(Chrome.Integrations.ChromeIntegrationUtils, function()
	return {
		dismissRobloxMenuAndRun = function(action)
			action()
		end,
	}
end)

jest.mock(Chrome.Flags.GetFStringConnectTooltipLocalStorageKey, function()
	return function()
		return "connect_tooltip_key"
	end
end)

jest.mock(Chrome.ChromeShared.Service.LocalStore, function()
	return {
		storeForLocalPlayer = function() end,
	}
end)

jest.mock(script.Parent.ConnectIcon, function()
	return function()
		return nil
	end
end)

-- Non-directional input keeps activation out of the focus-nav branch.
jest.mock(CorePackages.Workspace.Packages.Responsive, function()
	return {
		GetInputModeStore = function()
			return {
				getLastInputType = function()
					return "Touch"
				end,
			}
		end,
		Input = {
			Directional = "Directional",
		},
	}
end)

-- Rename-off arm: keeps the label branch off the UniversalAppPolicy terminology path.
jest.mock(CorePackages.Workspace.Packages.SocialExperiments, function()
	return {
		ArgoPartyExperimentation = {
			getIsRenameEnabled = function()
				return false
			end,
		},
	}
end)

jest.mock(CorePackages.Workspace.Packages.UniversalAppPolicy, function()
	return {
		getAppFeaturePolicies = function()
			return {
				getCanSeeChatTerminology = function()
					return false
				end,
				getCanAccessParty = function()
					return true
				end,
			}
		end,
	}
end)

local appChatModalVisible = false
local setVisibleCalls: { { visible: boolean, entryPoint: string? } } = {}
jest.mock(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal, function()
	local function fakeSignal()
		return {
			Event = {
				Connect = function(_self, _callback)
					return { Disconnect = function() end }
				end,
			},
		}
	end
	return {
		getVisible = function(_self)
			return appChatModalVisible
		end,
		default = {
			currentSquadId = "",
			unreadCount = 0,
			visibilitySignal = fakeSignal(),
			currentSquadIdSignal = fakeSignal(),
			unreadCountSignal = fakeSignal(),
			setVisible = function(_self, visible, entryPoint)
				table.insert(setVisibleCalls, { visible = visible, entryPoint = entryPoint })
			end,
		},
	}
end)

local ChatEntryPointNames = require(CorePackages.Workspace.Packages.SocialCommon).Enums.ChatEntryPointNames
local FFlagAppChatDistinctUnibarEntryPoint =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagAppChatDistinctUnibarEntryPoint
local registerConnectIntegration = require(script.Parent.registerConnectIntegration)

local function activate(id: string)
	registerConnectIntegration(id, 0)
	assert(lastRegisterProps ~= nil, "expected the integration to register with ChromeService")
	lastRegisterProps.activated()
end

describe("registerConnectIntegration entry point", function()
	beforeEach(function()
		appChatModalVisible = false
		table.clear(setVisibleCalls)
	end)

	it("SHOULD open AppChat from connect_unibar with the unibar-specific entry point", function()
		activate("connect_unibar")

		expect(#setVisibleCalls).toBe(1)
		expect(setVisibleCalls[1].visible).toBe(true)
		if FFlagAppChatDistinctUnibarEntryPoint then
			expect(setVisibleCalls[1].entryPoint).toBe(ChatEntryPointNames.ChromeUnibar)
		else
			expect(setVisibleCalls[1].entryPoint).toBeNil()
		end
	end)

	it("SHOULD open AppChat from connect_dropdown without an entry-point override", function()
		activate("connect_dropdown")

		expect(#setVisibleCalls).toBe(1)
		expect(setVisibleCalls[1].visible).toBe(true)
		expect(setVisibleCalls[1].entryPoint).toBeNil()
	end)
end)
