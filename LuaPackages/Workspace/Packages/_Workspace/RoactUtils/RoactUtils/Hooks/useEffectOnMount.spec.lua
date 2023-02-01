local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local useEffectOnMount = require(script.Parent.useEffectOnMount)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)

return function()
	it("SHOULD call callback once", function()
		local callback = jest.fn()
		local function component(props)
			local _, _ = React.useState(true)
			useEffectOnMount(callback)
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(callback).toHaveBeenCalledTimes(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD call the callback once even after re-rendering", function()
		local callback = jest.fn()
		local changeEffect
		local function component(props)
			local defaultState: any = false
			local _, setTriggerEffect = React.useState(defaultState)
			useEffectOnMount(callback)
			changeEffect = setTriggerEffect
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(callback).toHaveBeenCalledTimes(1)

		ReactRoblox.act(function()
			changeEffect({})
		end)

		expect(callback).toHaveBeenCalledTimes(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end
