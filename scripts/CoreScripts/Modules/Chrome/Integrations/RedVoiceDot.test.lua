local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui").RobloxGui

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local rtl = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)

-- The real tokens need UIBlox.init, which isn't run in unit tests.
jest.mock(Chrome.ChromeShared.Utility.GetStyleTokens, function()
	return function()
		return { Size = { Size_100 = 8 } }
	end
end)

local mockVoiceState = VoiceConstants.VOICE_STATE.MUTED
jest.mock(RobloxGui.Modules.VoiceChat.Hooks.useVoiceState, function()
	return function()
		return mockVoiceState
	end
end)

local RedVoiceDot = require(script.Parent.RedVoiceDot)

-- Renders the dot for a voice state, hands the Frame to `inspect`, and unmounts so renders don't pile up.
local function inspectDot(state: string, inspect: (dot: Frame) -> ())
	mockVoiceState = state
	local result
	ReactRoblox.act(function()
		result = rtl.render(React.createElement(RedVoiceDot, { position = UDim2.new(1, -7, 1, -7) }))
	end)
	inspect(result.getByText(function(_, node)
		return node.Name == "RedVoiceDot"
	end))
	result.unmount()
end

describe("RedVoiceDot", function()
	beforeEach(function()
		mockVoiceState = VoiceConstants.VOICE_STATE.MUTED
	end)

	it("SHOULD be visible WHEN the mic is live and idle or talking", function()
		for _, state in { VoiceConstants.VOICE_STATE.INACTIVE, VoiceConstants.VOICE_STATE.TALKING } do
			inspectDot(state, function(dot)
				expect(dot.Visible).toBe(true)
			end)
		end
	end)

	it("SHOULD be hidden WHEN the mic is muted, connecting or in error", function()
		for _, state in
			{
				VoiceConstants.VOICE_STATE.MUTED,
				VoiceConstants.VOICE_STATE.LOCAL_MUTED,
				VoiceConstants.VOICE_STATE.CONNECTING,
				VoiceConstants.VOICE_STATE.ERROR,
				VoiceConstants.VOICE_STATE.HIDDEN,
			}
		do
			inspectDot(state, function(dot)
				expect(dot.Visible).toBe(false)
			end)
		end
	end)

	it("SHOULD be a centered red circle at the given position", function()
		inspectDot(VoiceConstants.VOICE_STATE.TALKING, function(dot)
			expect(dot.Position).toBe(UDim2.new(1, -7, 1, -7))
			expect(dot.AnchorPoint).toBe(Vector2.new(0.5, 0.5))
			expect(dot.Size).toBe(UDim2.fromOffset(8, 8))
			expect(dot.BackgroundColor3).toBe(Color3.new(0.918, 0.2, 0.137))
			expect(dot:FindFirstChildOfClass("UICorner")).never.toBeNil()
		end)
	end)
end)
