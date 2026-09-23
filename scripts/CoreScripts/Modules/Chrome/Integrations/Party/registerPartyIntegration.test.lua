-- Activating the Party unibar icon opens AppChat, reporting the ChromeUnibar entry
-- point when the feature is on and no override (the shared ChromeDropdown fallback)
-- when it is off. Both flag states are covered by the runner's flag sweep.

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
		return { id = props.id }
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

jest.mock(script.Parent.PartyIcon, function()
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

local appChatModalVisible = false
local setVisibleCalls: { { visible: boolean, entryPoint: string? } } = {}
jest.mock(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal, function()
	return {
		getVisible = function(_self)
			return appChatModalVisible
		end,
		default = {
			visibilitySignal = {
				Event = {
					Connect = function(_self, _callback)
						return { Disconnect = function() end }
					end,
				},
			},
			setVisible = function(_self, visible, entryPoint)
				table.insert(setVisibleCalls, { visible = visible, entryPoint = entryPoint })
			end,
		},
	}
end)

local ChatEntryPointNames = require(CorePackages.Workspace.Packages.SocialCommon).Enums.ChatEntryPointNames
local FFlagAppChatDistinctUnibarEntryPoint =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagAppChatDistinctUnibarEntryPoint
local registerPartyIntegration = require(script.Parent.registerPartyIntegration)

local function activate()
	registerPartyIntegration("party_entrypoint", 0)
	assert(lastRegisterProps ~= nil, "expected the integration to register with ChromeService")
	lastRegisterProps.activated()
end

describe("registerPartyIntegration entry point", function()
	beforeEach(function()
		appChatModalVisible = false
		table.clear(setVisibleCalls)
	end)

	it("SHOULD open AppChat with the unibar-specific entry point", function()
		activate()

		expect(#setVisibleCalls).toBe(1)
		expect(setVisibleCalls[1].visible).toBe(true)
		if FFlagAppChatDistinctUnibarEntryPoint then
			expect(setVisibleCalls[1].entryPoint).toBe(ChatEntryPointNames.ChromeUnibar)
		else
			expect(setVisibleCalls[1].entryPoint).toBeNil()
		end
	end)

	it("SHOULD close AppChat without an entry point WHEN it is already visible", function()
		appChatModalVisible = true

		activate()

		expect(#setVisibleCalls).toBe(1)
		expect(setVisibleCalls[1].visible).toBe(false)
		expect(setVisibleCalls[1].entryPoint).toBeNil()
	end)
end)
