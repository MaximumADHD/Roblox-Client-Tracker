return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local useEffectOnce = require(script.Parent.useEffectOnce)

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	it("SHOULD call the callback if when condition is true", function()
		local event = jest.fn()
		local function component(props)
			local triggerEffect, _ = React.useState(true)
			useEffectOnce(event, triggerEffect)
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).toHaveBeenCalledTimes(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD call the callback if when condition is truthy", function()
		local event = jest.fn()
		local function component(props)
			local triggerEffect, _ = React.useState({})
			useEffectOnce(event, triggerEffect)
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).toHaveBeenCalledTimes(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD call the callback if when condition changes to true", function()
		local event = jest.fn()
		local changeEffect
		local function component(props)
			local triggerEffect, setTriggerEffect = React.useState(false)
			useEffectOnce(event, triggerEffect)
			changeEffect = setTriggerEffect
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).never.toHaveBeenCalled()

		ReactRoblox.act(function()
			changeEffect(true)
		end)

		expect(event).toHaveBeenCalledTimes(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD call the callback once even if the condition changes value", function()
		local event = jest.fn()
		local changeEffect
		local function component(props)
			local defaultState: any = false
			local triggerEffect, setTriggerEffect = React.useState(defaultState)
			useEffectOnce(event, triggerEffect)
			changeEffect = setTriggerEffect
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).never.toHaveBeenCalled()

		ReactRoblox.act(function()
			changeEffect({})
		end)

		expect(event).toHaveBeenCalledTimes(1)


		ReactRoblox.act(function()
			changeEffect(false)
		end)

		ReactRoblox.act(function()
			changeEffect(true)
		end)

		expect(event).toHaveBeenCalledTimes(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD not call the callback if when condition is false", function()
		local event = jest.fn()
		local function component(props)
			local triggerEffect, _ = React.useState(false)
			useEffectOnce(event, triggerEffect)
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).never.toHaveBeenCalled()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD not call the callback if when condition is falsey", function()
		local event = jest.fn()
		local function component(props)
			local triggerEffect, _ = React.useState(nil)
			useEffectOnce(event, triggerEffect)
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).never.toHaveBeenCalled()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end
