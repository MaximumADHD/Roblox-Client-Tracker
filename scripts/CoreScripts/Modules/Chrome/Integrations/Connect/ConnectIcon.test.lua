-- `Foundation.Icon` is mocked to a spy so the test can read the `style` binding
-- directly.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local FFlagEnableChatIconUnibarDropdownFixEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableChatIconUnibarDropdownFixEnabled

-- SubMenuContext is intentionally NOT mocked so its identity matches the one
-- ConnectIcon requires internally, letting the Provider below feed useContext.
local SubMenuContext = require(Chrome.ChromeShared.Unibar.SubMenuContext)

local BASE_TRANSPARENCY = 0
local mockTokens = {
	Color = { Content = { Default = { Color3 = Color3.new(1, 1, 1), Transparency = BASE_TRANSPARENCY } } },
}

local iconPropsCapture: any = nil
local function IconSpy(props: any)
	iconPropsCapture = props
	return nil
end

jest.mock(CorePackages.Packages.Foundation, function()
	return {
		Hooks = {
			useTokens = function()
				return mockTokens
			end,
		},
		-- Host wrapper so the keyed Icon child actually mounts (and IconSpy runs).
		View = function(props: any)
			return React.createElement("Frame", {}, props.children)
		end,
		Icon = IconSpy,
		Enums = { IconVariant = { Filled = "Filled", Regular = "Regular" } },
	}
end)

jest.mock(CorePackages.Workspace.Packages.Chrome, function()
	return {
		Hooks = {
			useMappedSignal = function()
				return false
			end,
		},
		UnibarStyle = {
			use = function()
				return { ICON_SIZE = 36 }
			end,
		},
	}
end)

jest.mock(Chrome.ChromeShared.Service.ChromeUtils, function()
	return {
		MappedSignal = {
			new = function()
				return {}
			end,
		},
	}
end)

jest.mock(CorePackages.Workspace.Packages.AppChat.getAppChatNavbarItemConfig, function()
	return function()
		return { icon = "test-icon" }
	end
end)

jest.mock(Chrome.Integrations.Party.usePartyIcon, function()
	return function()
		return {
			image = { thumbnail = "", backgroundColor = nil },
			size = React.createBinding(0),
		}
	end
end)

local ConnectIcon = require(script.Parent.ConnectIcon)

local function renderConnectIcon()
	iconPropsCapture = nil
	local transition, setTransition = React.createBinding(1)
	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(
			React.createElement(
				SubMenuContext.Provider,
				{ value = transition },
				React.createElement(ConnectIcon, {
					integrationId = "connect_unibar",
					isIconVisible = true,
					shouldShowCustomBadge = false,
					isSquadIndicatorEnabled = false,
				})
			)
		)
	end)

	local cleanup = function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end
	return setTransition, cleanup
end

describe("ConnectIcon dropdown-close transition", function()
	it("SHOULD fade the chat icon toward transparent as the dropdown closes", function()
		if FFlagEnableChatIconUnibarDropdownFixEnabled then
			local setTransition, cleanup = renderConnectIcon()

			local style = iconPropsCapture.style
			expect(style).never.toBeNil()
			expect(style:getValue().Transparency).toBe(BASE_TRANSPARENCY)

			ReactRoblox.act(function()
				setTransition(0)
			end)
			expect(style:getValue().Transparency).toBe(1)

			cleanup()
		end
	end)
end)
