--[[
	A helper function for testing hooks with the Rodux store.
]]

local CorePackages = game:GetService("CorePackages")
local RoactRodux = require(CorePackages.RoactRodux)
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local act = ReactRoblox.act

local function renderHookWithStore<T>(store, callback: (any) -> T, initialProps: any?)
	local result: { current: any? } = {}

	local Wrapper = function(props)
		result.current = callback(props)
		return nil
	end

	local function createRootElement(props)
		local element = React.createElement(Wrapper, props)
		if store ~= nil then
			element = React.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				Wrapper = element,
			})
		end
		return element
	end

	local container = Instance.new("Frame")
	local root = ReactRoblox.createRoot(container)

	act(function()
		root:render(createRootElement(initialProps or {}))
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

return renderHookWithStore
