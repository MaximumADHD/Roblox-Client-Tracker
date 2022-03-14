--[[
	https://jira.rbx.com/browse/UIBLOX-202
	Deprecated. DONT NOT USE
]]

local Loading = script.Parent.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Packages = UIBlox.Parent
local enumerate = require(Packages.enumerate)

if UIBloxConfig.devHasDeprecationWarning then
	warn("ReloadingStyle Enum is deprecated.")
end

return enumerate("ReloadingStyle", {
	"AllowReload",
	"LockReload",
})
