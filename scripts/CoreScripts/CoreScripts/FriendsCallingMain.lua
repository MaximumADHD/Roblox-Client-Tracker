local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local CallPip = require(CorePackages.Workspace.Packages.FriendsCalling.CallPip)
local CallPipDisplayOrder = require(CorePackages.Workspace.Packages.FriendsCalling.CallPipDisplayOrder)
local FFlagFriendsCallingCallPip =
	require(CorePackages.Workspace.Packages.FriendsCalling.FFlagFriendsCallingCallPip)
local VoiceCallReceivedEventReceiver =
	require(CorePackages.Workspace.Packages.FriendsCalling.VoiceCallReceivedEventReceiver)

local folder = Instance.new("Folder")
folder.Name = "FriendsCalling"
folder.Parent = CoreGui

-- The overlay covers the chrome bar but stops below the hardware inset, so the
-- experience stays visible in that strip.
local IN_EXPERIENCE_HOST = {
	displayOrder = CallPipDisplayOrder.InExperience,
	exposesTopSafeArea = true,
	followsAppColorMode = false,
	screenInsets = Enum.ScreenInsets.None,
}

local root = ReactRoblox.createRoot(folder)
root:render(React.createElement(React.Fragment, nil, {
	CallPip = if FFlagFriendsCallingCallPip
		then React.createElement(CallPip, { host = IN_EXPERIENCE_HOST })
		else nil,
	VoiceCallReceivedEventReceiver = React.createElement(VoiceCallReceivedEventReceiver),
}))
