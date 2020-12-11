--[[
	The replicateTools function can be used to copy the DeveloperTools library into
	ReplicatedStorage, into a folder named Packages. This enables developers who use Roact in their
	own games to debug their Roact trees, while permitting the library to resolve its own
	dependencies, such as Dash.
]]
local main = script.Parent.Parent.Parent
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Dash = require(main.Packages.Dash)
local find = Dash.find

local function clonePackage(packageName: string, packages: Folder)
	if packages:FindFirstChild(packageName) then
		return
	end
	local index = main.Packages._Index
	local packagePrefix = packageName .. "-"
	-- Find the package in the _Index folder either by its name, or prefix of a versioned entry
	local package = find(index:GetChildren(), function(child)
		return child.Name == packageName or child.Name:sub(1, #packagePrefix) == packagePrefix
	end)
	if package then
		local root = package:FindFirstChild(packageName)
		local clone = root:Clone()
		clone.Parent = packages
	end
end

local function replicateTools()
	local Packages = ReplicatedStorage:FindFirstChild("Packages")
	if not Packages then
		Packages = Instance.new("Folder")
		Packages.Name = "Packages"
		Packages.Parent = ReplicatedStorage
	end
	clonePackage("Dash", Packages)
	clonePackage("DeveloperTools", Packages)
end

return replicateTools
