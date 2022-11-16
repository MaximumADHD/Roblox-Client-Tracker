return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local useDidUpdate = require(script.Parent.useDidUpdate)

	it("SHOULD call not call callback if it has only mounted", function()
		local event = jest.fn()
		local didUpdateRef
		local function component(props)
			didUpdateRef = useDidUpdate(event)
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).never.toHaveBeenCalled()
		expect(didUpdateRef.current).toBe(false)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD work on mounting without callback", function()
		local didUpdateRef
		local function component(props)
			didUpdateRef = useDidUpdate()
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(didUpdateRef.current).toBe(false)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD call the callback if component didUpdate", function()
		local event = jest.fn()
		local didUpdateRef
		local changeEffect
		local function component(props)
			local _, setTriggerEffect = React.useState(false)
			didUpdateRef = useDidUpdate(event)
			changeEffect = setTriggerEffect
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).never.toHaveBeenCalled()
		expect(didUpdateRef.current).toBe(false)

		ReactRoblox.act(function()
			changeEffect(true)
		end)

		expect(event).toHaveBeenCalledTimes(1)
		expect(didUpdateRef.current).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD effect on every subsequent update", function()
		local event = jest.fn()
		local didUpdateRef
		local changeEffect
		local function component(props)
			local _, setTriggerEffect = React.useState(false)
			didUpdateRef = useDidUpdate(event)
			changeEffect = setTriggerEffect
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(event).never.toHaveBeenCalled()
		expect(didUpdateRef.current).toBe(false)

		ReactRoblox.act(function()
			changeEffect(true)
		end)

		expect(event).toHaveBeenCalledTimes(1)
		expect(didUpdateRef.current).toBe(true)

		ReactRoblox.act(function()
			changeEffect(false)
		end)

		expect(event).toHaveBeenCalledTimes(2)
		expect(didUpdateRef.current).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("SHOULD work without a callback on every update", function()
		local didUpdateRef
		local changeEffect
		local function component(props)
			local _, setTriggerEffect = React.useState(false)
			didUpdateRef = useDidUpdate()
			changeEffect = setTriggerEffect
		end

		local element = React.createElement(component)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(didUpdateRef.current).toBe(false)

		ReactRoblox.act(function()
			changeEffect(true)
		end)

		expect(didUpdateRef.current).toBe(true)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end
