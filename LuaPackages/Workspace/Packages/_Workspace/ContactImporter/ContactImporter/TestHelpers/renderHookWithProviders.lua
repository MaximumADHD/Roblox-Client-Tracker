--[[
	A helper function for testing hooks providers.
]]

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local dependencies = require(ContactImporter.dependencies)
local ReactRoblox = dependencies.ReactRoblox
local act = ReactRoblox.act

local createTreeWithProviders = devDependencies.createTreeWithProviders

local function renderHookWithProviders(callback: any, setupProps: any?)
	local result

	local Wrapper = function(props)
		result = callback(props)
		return nil
	end

	local function createRootElement(props)
		local value = createTreeWithProviders(Wrapper, setupProps or {})

		return value
	end

	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)

	act(function()
		root:render(createRootElement({}))
	end)

	local function rerender(newProps)
		act(function()
			root:render(createRootElement(newProps))
		end)
	end

	local function cleanup()
		root:unmount()
	end

	return {
		result = result,
		rerender = rerender,
		cleanup = cleanup,
	}
end

return renderHookWithProviders
