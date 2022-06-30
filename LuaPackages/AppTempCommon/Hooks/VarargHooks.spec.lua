return function()
	local CorePackages = game:GetService("CorePackages")

	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local VarargHooks = require(script.Parent.VarargHooks)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should rerun effect when dependencies change", function()
		local count = 0
		local function component(props)
			VarargHooks.useEffect(function()
				count += 1
			end, props.a, props.b)
			return nil
		end

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		local function renderWithProps(a, b)
			ReactRoblox.act(function()
				root:render(React.createElement(component, {
					a = a,
					b = b,
				}))
			end)
		end

		renderWithProps(1, 2)
		expect(count).toBe(1)

		renderWithProps(1, 2)
		expect(count).toBe(1)

		renderWithProps(1, 3)
		expect(count).toBe(2)

		root:unmount()
	end)

	it("should handle nil dependencies", function()
		local count = 0
		local function component(props)
			VarargHooks.useEffect(function()
				count += 1
			end, props.a, props.b)
			return nil
		end

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		local function renderWithProps(a, b)
			ReactRoblox.act(function()
				root:render(React.createElement(component, {
					a = a,
					b = b,
				}))
			end)
		end

		renderWithProps(1, 2)
		expect(count).toBe(1)

		renderWithProps(nil, 2)
		expect(count).toBe(2)

		renderWithProps(nil, 2)
		expect(count).toBe(2)

		renderWithProps(nil, nil)
		expect(count).toBe(3)

		renderWithProps(1, nil)
		expect(count).toBe(4)

		renderWithProps(1, nil)
		expect(count).toBe(4)

		root:unmount()
	end)

	it("should distinguish false from nil", function()
		local count = 0
		local function component(props)
			VarargHooks.useEffect(function()
				count += 1
			end, props.a, props.b)
			return nil
		end

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		local function renderWithProps(a, b)
			ReactRoblox.act(function()
				root:render(React.createElement(component, {
					a = a,
					b = b,
				}))
			end)
		end

		renderWithProps(1, false)
		expect(count).toBe(1)

		renderWithProps(1, false)
		expect(count).toBe(1)

		renderWithProps(1, nil)
		expect(count).toBe(2)

		renderWithProps(1, nil)
		expect(count).toBe(2)

		renderWithProps(1, false)
		expect(count).toBe(3)

		root:unmount()
	end)
end
