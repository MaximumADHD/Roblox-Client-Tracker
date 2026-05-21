local BuilderIcons = require(script.Parent.Parent.Icon)

local PlatformIconMap = {
	[Enum.Platform.PS3] = BuilderIcons.Playstation,
	[Enum.Platform.PS4] = BuilderIcons.Playstation,
	[Enum.Platform.PS5] = BuilderIcons.Playstation,
	[Enum.Platform.XBoxOne] = BuilderIcons.Xbox,
	[Enum.Platform.XBox360] = BuilderIcons.Xbox,
	[Enum.Platform.Android] = BuilderIcons.Android,
	[Enum.Platform.IOS] = BuilderIcons.Apple,
	[Enum.Platform.OSX] = BuilderIcons.Apple,
	[Enum.Platform.Windows] = BuilderIcons.Microsoft,
	[Enum.Platform.MetaOS] = BuilderIcons.Meta,
}

return PlatformIconMap
