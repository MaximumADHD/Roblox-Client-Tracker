--[==[
	returns func(
		Roact.element,
		table [
			parent = Instance,
			store = Rodux.Store,
		]
	)
]==]

local HttpService = game:GetService("HttpService")
local dependencies = require(script.Parent.Parent.Parent.dependencies)
local Roact = dependencies.Roact

local mockProviders = require(script.Parent.mockProviders)

return function(element, override)
	override = override or {}
	local parent = override.parent

	if parent == nil then
		parent = Instance.new("Frame")
		parent.Name = HttpService:GenerateGUID(false)
	end

	local tree = mockProviders(element, override)
	local handle = Roact.mount(tree, parent)
	return parent, function()
		Roact.unmount(handle)
		parent:Destroy()
	end
end
