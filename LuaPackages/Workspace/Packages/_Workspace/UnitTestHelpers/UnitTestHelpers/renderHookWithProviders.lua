--[[
	A helper function for testing hooks providers.
]]
local Root = script.Parent
local Packages = Root.Parent
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local act = ReactRoblox.act
local createTreeWithProviders = require(script.Parent.createTreeWithProviders)

type CreateTreeWithProvidersConfig = createTreeWithProviders.CreateTreeWithProvidersConfig

local function renderHookWithProviders(hook: (...any) -> any, setupConfig: CreateTreeWithProvidersConfig?)
	local result
	local makeHelper

	local Wrapper = function(props)
		result = hook(props)
		return nil
	end

	local function createRootElement(config: CreateTreeWithProvidersConfig?)
		local value = createTreeWithProviders(Wrapper, config)

		return value
	end

	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)

	act(function()
		root:render(createRootElement(setupConfig))
	end)

	local function rerender(newConfig: CreateTreeWithProvidersConfig?)
		act(function()
			root:render(createRootElement(newConfig or setupConfig))
		end)

		return makeHelper()
	end

	local function cleanup()
		root:unmount()
	end

	makeHelper = function()
		return {
			result = result,
			rerender = rerender,
			cleanup = cleanup,
		}
	end

	return makeHelper()
end

return renderHookWithProviders
