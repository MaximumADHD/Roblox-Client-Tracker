--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local UIBlox = require(CorePackages.Packages.UIBlox)
local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider

local VoiceIndicator = require(script.Parent.VoiceIndicatorFunc)
local VoiceStateContext = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)

-- VoiceIndicator -> useVoiceState requires a `userId`. For non-local userIds the
-- hook reads `VoiceChatServiceManager.participants[userIdStr]`, which is nil in
-- the test environment because `:asyncInit()` never runs. We therefore mount
-- against the local player's userId so the hook stays on the local-player branch
-- and never touches the participants table.
local LOCAL_USER_ID = Players and Players.LocalPlayer and Players.LocalPlayer.UserId or 1

local function mount(props)
	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)
	ReactRoblox.act(function()
		root:render(React.createElement(SelectionCursorProvider, {}, {
			Ctx = React.createElement(VoiceStateContext.Context.Provider, {
				value = { voiceEnabled = true, voiceState = "Joined" },
			}, {
				Indicator = React.createElement(VoiceIndicator, props),
			}),
		}))
	end)
	return root, container
end

local function unmount(root)
	ReactRoblox.act(function()
		root:unmount()
	end)
end

describe("VoiceIndicator", function()
	it("mounts and unmounts cleanly", function()
		local root, container = mount({ userId = LOCAL_USER_ID, iconStyle = "MicLight" })
		task.wait()
		expect(container:FindFirstChildOfClass("ImageButton")).never.toBeNil()
		unmount(root)
	end)

	it("mounts with hideOnError and showConnectingShimmer", function()
		local root = mount({
			userId = LOCAL_USER_ID,
			iconStyle = "MicLight",
			hideOnError = true,
			showConnectingShimmer = true,
		})
		task.wait()
		unmount(root)
	end)

	it("supports multiple concurrent instances with partial unmount", function()
		-- Regression guard for the BindToRenderStep name-collision bug:
		-- mounting and unmounting indicators in any order must not error or
		-- interfere with other indicators' render-step bindings.
		local r1 = mount({ userId = LOCAL_USER_ID, iconStyle = "MicLight" })
		local r2 = mount({ userId = LOCAL_USER_ID, iconStyle = "MicLight" })
		local r3 = mount({ userId = LOCAL_USER_ID, iconStyle = "MicLight" })
		task.wait()
		unmount(r2)
		unmount(r1)
		unmount(r3)
	end)
end)
