--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Signal = require(CorePackages.AppTempCommon.Common.Signal)
	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local useSignal = require(script.Parent.useSignal)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("if mounted, should call the callback when the signal is triggered", function()
		local signal = Signal.new()
		local count = 0

		local function component()
			useSignal(signal, function()
				count += 1
			end)
			return nil
		end

		local element = React.createElement(component)

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		signal:Fire()

		expect(count).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)

		signal:Fire()

		expect(count).toBe(1)
	end)

	-- A function can be passed to useState in place of the state value.
	-- To use a function as state, we must pass in another function that returns it.
	local function wrapFunction(func)
		return function()
			return func
		end
	end

	it("should handle updating the callback or signal", function()
		local firstSignal = Signal.new()
		local secondSignal = Signal.new()
		local count = 0
		local changeSignal, changeCallback

		local function SignalContainer()
			local signal, setSignal = React.useState(firstSignal)
			local callback, setCallback = React.useState(wrapFunction(function()
				count += 1
			end))

			useSignal(signal, callback)

			React.useEffect(function()
				changeSignal = setSignal
				changeCallback = function(newCallback)
					setCallback(wrapFunction(newCallback))
				end

				return function()
					changeSignal = nil
					changeCallback = nil
				end
			end, {})
			return nil
		end

		expect(count).toBe(0)

		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		ReactRoblox.act(function()
			root:render(React.createElement(SignalContainer))
		end)

		firstSignal:Fire()

		expect(count).toBe(1)

		ReactRoblox.act(function()
			changeSignal(secondSignal)
		end)

		firstSignal:Fire()

		expect(count).toBe(1)

		secondSignal:Fire()

		expect(count).toBe(2)

		ReactRoblox.act(function()
			changeCallback(function()
				-- this is intentionally blank
			end)
		end)

		secondSignal:Fire()

		expect(count).toBe(2)
	end)
end
