# 🧪 Testing with Wrappers: Signal, Connection, Instance
This guide explains how to write tests using the Wrappers module to handle Roblox signals and connections in a testable, mockable way.

## ⚙️ Why Use Wrappers in Tests?
Roblox APIs like `RBXScriptSignal:Connect` and `RBXScriptConnection:Disconnect` are difficult to spy on directly in tests. The Wrappers module solves this by wrapping those APIs in functions you can mock and observe.

Wrappers covered:

- Wrappers.Instance.GetPropertyChangedSignal
- Wrappers.Signal.Connect
- Wrappers.Connection.Disconnect

## 🧪 Writing Tests
Here’s a breakdown of how to use these wrappers in unit tests with [Jest](https://github.com/Roblox/jest-roblox-internal).

### ✅ 1. Test Signal Subscription with Connect
To verify that your component listens to a property change signal, spy on the wrapper functions.

```luau
local getPropertyChangedSignalSpy = jest.spyOn(Wrappers.Instance, "GetPropertyChangedSignal")
local connectSpy = jest.spyOn(Wrappers.Signal, "Connect")

local testGui = Instance.new("ScreenGui")

render(React.createElement(OverlayProvider, {
	gui = testGui,
}))

expect(getPropertyChangedSignalSpy).toHaveBeenCalledWith(testGui, "IgnoreGuiInset")
expect(connectSpy).toHaveBeenCalledWith(
	getPropertyChangedSignalSpy.mock.results[1].value,
	expect.any("function")
)
```

This verifies that:
- `GetPropertyChangedSignal` is called with the correct instance and property name.
- The result is passed into `Connect` along with a listener.

### 🔄 2. Test Disconnecting on Prop Change
When the gui prop changes, the old signal connection should be disconnected. Use `Disconnect` to confirm proper cleanup.

```luau
local disconnectSpy = jest.spyOn(Wrappers.Connection, "Disconnect")

local testGui = Instance.new("ScreenGui")
local root = render(React.createElement(OverlayProvider, { gui = testGui }))

local newGui = Instance.new("SurfaceGui")

act(function()
	root.rerender(React.createElement(OverlayProvider, {
		gui = newGui,
	}))
end)

expect(disconnectSpy).toHaveBeenCalledWith(connectSpy.mock.results[1].value)
```

This ensures:
- Only one connection exists at a time.
- The previous connection is explicitly disconnected before setting up a new one.

### 🔁 3. Cleanup on Unmount
Unmounting the component should also clean up signal connections:

```luau
root:unmount()
expect(disconnectSpy).toHaveBeenCalled()
```

This pattern prevents memory leaks or lingering listeners during test runs or actual gameplay.

## 📌 Best Practices
Use `jest.spyOn(Wrappers, ...)` instead of mocking Roblox objects directly.

Assert on both the arguments passed and the call count to ensure correctness.

Reset mocks in `beforeEach()` to prevent cross-test contamination:

```luau
beforeEach(function()
	jest.clearAllMocks()
end)
```
