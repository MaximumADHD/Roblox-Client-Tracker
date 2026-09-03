local ViewRecyclerReact = script:FindFirstAncestor("ViewRecyclerReact")
local PackageContainer = ViewRecyclerReact.Parent
local Dev = PackageContainer:FindFirstChild("Dev")

if Dev == nil then
	local Packages = game:GetService("CorePackages").Packages
	Dev = Packages.Dev
	PackageContainer = Packages
end

return {
	JestGlobals = require(Dev.JestGlobals),
	ReactRoblox = require(PackageContainer:FindFirstChild("ReactRoblox") or Dev.ReactRoblox),
}
