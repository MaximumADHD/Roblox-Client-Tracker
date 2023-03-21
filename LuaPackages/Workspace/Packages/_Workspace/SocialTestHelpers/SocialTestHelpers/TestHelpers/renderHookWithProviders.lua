--[[
	A helper function for testing hooks providers.
]]

local SocialTestHelpers = script:FindFirstAncestor("SocialTestHelpers")
local dependencies = require(SocialTestHelpers.dependencies)
local ReactRoblox = dependencies.ReactRoblox
local act = ReactRoblox.act
local Dash = dependencies.Dash

local createTreeWithProviders = require(script.Parent.createTreeWithProviders)

local function renderHookWithProviders(callback: any, setupProps: any?)
	local result

	local Wrapper = function(props)
		result = callback(props)
		return nil
	end

	local function createRootElement(props: any?, updatedSetupProps: any?)
		local config = Dash.join(setupProps or {}, updatedSetupProps or {})
		config.props = Dash.join(config.props or {}, props or {})

		local value = createTreeWithProviders(Wrapper, config)

		return value
	end

	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)

	act(function()
		root:render(createRootElement({}))
	end)

	local function rerender(newProps: any?, setupProps: any?)
		act(function()
			root:render(createRootElement(newProps, setupProps))
		end)
	end

	local function cleanup()
		root:unmount()
	end

	return {
		result = result,
		--* use getResult instead of result (result doesn't get updated after hook update)
		getResult = function()
			return result
		end,
		rerender = rerender,
		cleanup = cleanup,
	}
end

return renderHookWithProviders
