local ViewRecycler = script:FindFirstAncestor("ViewRecycler")
local PackageContainer = ViewRecycler.Parent
local Dev = PackageContainer:FindFirstChild("Dev")

if Dev == nil then
	Dev = game:GetService("CorePackages").Packages.Dev
end

return {
	JestGlobals = require(Dev.JestGlobals),
}
