local ToastNotification = script.Parent
local Packages = ToastNotification.Parent
return {
	React = require(Packages.React),
	ReactRoblox = require(Packages.ReactRoblox),
	UIBlox = require(Packages.UIBlox),
	Localization = require(Packages.Localization),
	RobloxAppHooks = require(Packages.RobloxAppHooks),
	RobloxAppEnums = require(Packages.RobloxAppEnums),
	LuauPolyfill = require(Packages.LuauPolyfill),
	t = require(Packages.t),
}
