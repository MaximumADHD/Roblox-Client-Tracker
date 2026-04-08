local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local ChromeService = require(Root.Service)
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local useObservableValue = require(Root.Hooks.useObservableValue)

type MenuList = ChromePackage.MenuList

return function()
	return (useObservableValue(ChromeService:menuList()) or {}) :: MenuList
end
