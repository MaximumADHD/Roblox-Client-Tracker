local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local VoiceCallReceivedEventReceiver =
	require(CorePackages.Workspace.Packages.FriendsCalling.VoiceCallReceivedEventReceiver)

local folder = Instance.new("Folder")
folder.Name = "FriendsCalling"
folder.Parent = CoreGui

local root = ReactRoblox.createRoot(folder)
root:render(React.createElement(VoiceCallReceivedEventReceiver))
