--!nocheck
local Framework = script:FindFirstAncestor("Util").Parent

-- Not in unit-tests/analyze: Find ReactRoblox package in containing plugin
if Framework.Parent.Parent and Framework.Parent.Parent.Parent then
	local ReactRoblox = Framework.Parent.Parent.Parent:FindFirstChild("ReactRoblox")
	if ReactRoblox and ReactRoblox:IsA("ModuleScript") then
		return require(ReactRoblox)
	end
end

-- In unit-tests/analyze: Use sibling
if Framework.Parent:FindFirstChild("ReactRoblox") then
	return require(Framework.Parent.ReactRoblox)
end

-- the luau typechecker can't follow dynamic requires (i.e. `return require(ReactRoblox)` above) so we manually stub them here.
export type RootType = any

return nil
