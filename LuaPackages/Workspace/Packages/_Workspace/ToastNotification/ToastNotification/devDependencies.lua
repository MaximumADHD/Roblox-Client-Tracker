local ToastNotification = script.Parent
local Packages = ToastNotification.Parent

local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect

return {
	Rhodium = require(Packages.Dev.Rhodium),
	-- need to keep this as a function otherwise it breaks storybooks
	RhodiumHelpers = function()
		return require(Packages.Dev.RhodiumHelpers)
	end,
	JestGlobals = JestGlobals,
	jestExpect = jestExpect,
	jest = JestGlobals.jest,
	act = ReactRoblox.act,
	UIBloxUniversalAppConfig = require(Packages.Dev.RobloxAppUIBloxConfig),
	DeferredLuaHelpers = require(Packages.Dev.TestUtils).DeferredLuaHelpers,
}
