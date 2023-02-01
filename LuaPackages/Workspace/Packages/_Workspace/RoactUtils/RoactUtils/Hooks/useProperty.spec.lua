return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent

	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local useProperty = require(script.Parent.useProperty)

	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	it("it should return initial screen size", function()
		local lastSize
		local function component(props)
			local frameRef = React.useRef(nil)
			local size = useProperty(frameRef, "AbsoluteSize")
			lastSize = size

			return React.createElement("Frame", {
				Size = UDim2.fromOffset(props.width, props.height),
			}, {
				MonitoredFrame = React.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					ref = frameRef,
				}),
			})
		end

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		root:render(React.createElement(component, {
			width = 300,
			height = 200,
		}))

		ReactRoblox.act(function()
			wait()
		end)

		expect(lastSize).toEqual(Vector2.new(300, 200))
		root:unmount()
	end)
end
