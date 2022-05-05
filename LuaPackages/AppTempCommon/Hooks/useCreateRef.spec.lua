return function ()
	local CorePackages = game:GetService("CorePackages")

	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local useCreateRef = require(script.Parent.useCreateRef)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should assign initial value to the ref", function()
		local refNumber
		local refString
		local function component()
			refNumber = useCreateRef(123)
			refString = useCreateRef("HelloRef")
			return nil
		end

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		expect(refNumber).toBeDefined()
		expect(refNumber.current).toBe(123)
		expect(refString).toBeDefined()
		expect(refString.current).toBe("HelloRef")

		root:unmount()
	end)

	it("should allow current value to be updated", function()
		local refNumber
		local function component()
			refNumber = useCreateRef(123)

			React.useEffect(function()
				refNumber.current = 456
			end, {})

			return nil
		end

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		expect(refNumber).toBeDefined()
		expect(refNumber.current).toBe(456)
	end)

	it("should remember current value between renders", function()
		local countRef
		local function component()
			countRef = useCreateRef(0)
			countRef.current += 1
			return nil
		end

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		expect(countRef).toBeDefined()
		local count1 = countRef.current
		expect(count1).toBeGreaterThan(0)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		local count2 = countRef.current
		expect(count2).toBeGreaterThan(count1)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		local count3 = countRef.current
		expect(count3).toBeGreaterThan(count2)

		root:unmount()
	end)

	it("should bind to NextSelection props without error", function()
		local bottomRef
		local function component()
			bottomRef = useCreateRef(nil)

			return React.createElement(React.Fragment, {}, {
				Top = React.createElement("Frame", {
					Size = UDim2.fromScale(1, 0.5),
					NextSelectionUp = bottomRef,
					NextSelectionDown = bottomRef,
					NextSelectionLeft = bottomRef,
					NextSelectionRight = bottomRef,
				}),
				Bottom = React.createElement("Frame", {
					Size = UDim2.fromScale(1, 0.5),
					Position = UDim2.fromScale(0, 0.5),
					ref = bottomRef,
				}),
			})
		end

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(component))
		end)

		expect(bottomRef).toBeDefined()
		expect(bottomRef.current).toMatchInstance({
			Name = "Bottom",
		})

		root:unmount()
	end)
end
