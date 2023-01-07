local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders = require(VirtualEvents.withMockProviders)

local function testHook(callback: () -> ())
	local container = Instance.new("ScreenGui")
	local root = ReactRoblox.createRoot(container)

	local function HookTester()
		callback()
		return nil
	end

	local element = withMockProviders({
		HookTester = React.createElement(HookTester),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)
end

return testHook
