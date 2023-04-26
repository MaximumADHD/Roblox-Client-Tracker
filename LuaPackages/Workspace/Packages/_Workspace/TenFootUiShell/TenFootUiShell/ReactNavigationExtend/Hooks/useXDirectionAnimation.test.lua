local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Constants = require(TenFootUiShell.Constants)
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local useXDirectionAnimation = require(script.Parent.useXDirectionAnimation)

type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type NavigationState = TenFootUiCommon.NavigationState
type NavigationObject = TenFootUiCommon.NavigationObject
type ScreenKind = TenFootUiCommon.ScreenKind
type Config = useXDirectionAnimation.Config
type XDirectionAnimationConfig = useXDirectionAnimation.XDirectionAnimationConfig

local testCallback, defaultTestConfig: Config, backgroundModel

beforeEach(function()
	testCallback = jest.fn()
	defaultTestConfig = {
		isVisible = true,
		index = 1,
		screenKind = "Default",
		setScreenPropsState = testCallback,
		adornee = Instance.new("Part"),
	}

	backgroundModel = Instance.new("Model")
	backgroundModel.Name = Constants.BACKGROUND_MODEL_NAME
	backgroundModel.Parent = ReplicatedStorage
end)

afterEach(function()
	backgroundModel:Destroy()
end)

it("should not animate when adornee is nil", function()
	local initialTestConfig = table.clone(defaultTestConfig)
	initialTestConfig.adornee = nil

	local setConfigExt
	local ret: XDirectionAnimationConfig
	local element = React.createElement(function()
		local testConfig: Config, setTestConfig = React.useState(initialTestConfig)
		setConfigExt = setTestConfig
		ret = useXDirectionAnimation(testConfig)
		return
	end)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(ret.visible).toBeTruthy()
	expect(ret.cframe).toEqual(expect.any("CFrame"))
	expect(ret.groupTransparency).toEqual(0)
	expect(testCallback).never.toHaveBeenCalled()

	-- update
	local updatedConfig = table.clone(initialTestConfig)
	updatedConfig.isVisible = false
	updatedConfig.index = 1

	ReactRoblox.act(function()
		setConfigExt(updatedConfig)
	end)

	expect(ret.visible).toBeFalsy()
	expect(ret.cframe).toEqual(expect.any("CFrame"))
	expect(ret.groupTransparency).toEqual(0)
	expect(testCallback).never.toHaveBeenCalled()

	ReactRoblox.act(function()
		root:unmount()
	end)
end)

it("should animate when adornee is not nil", function()
	local setConfigExt
	local ret: XDirectionAnimationConfig
	local element = React.createElement(function()
		local testConfig: Config, setTestConfig = React.useState(defaultTestConfig)
		setConfigExt = setTestConfig
		ret = useXDirectionAnimation(testConfig)
		return
	end)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(ret.visible).toBeTruthy()
	expect(ret.cframe).toEqual(expect.any("CFrame"))
	expect(ret.groupTransparency).toEqual(0)
	expect(testCallback).toHaveBeenCalled()

	-- update: close
	local updatedConfig = table.clone(defaultTestConfig)
	updatedConfig.isVisible = false
	updatedConfig.index = 2

	ReactRoblox.act(function()
		setConfigExt(updatedConfig)
	end)

	expect(ret.visible).toBeTruthy() -- should be true while animation not completed
	expect(ret.cframe).toEqual(expect.any("table")) -- Is it possible to test against Luau types?
	expect(ret.groupTransparency).toEqual(expect.any("table"))

	ReactRoblox.act(function()
		wait(3) -- wait for the animation to complete
	end)

	expect(ret.visible).toBeFalsy() -- should be false after animation complete

	-- update: navigate to other pages
	updatedConfig = table.clone(defaultTestConfig)
	updatedConfig.isVisible = false
	updatedConfig.index = 3

	ReactRoblox.act(function()
		setConfigExt(updatedConfig)
	end)

	expect(ret.visible).toBeFalsy()
	expect(ret.cframe).toEqual(expect.any("CFrame"))
	expect(ret.groupTransparency).toEqual(0)

	-- update: re-open
	updatedConfig = table.clone(defaultTestConfig)
	updatedConfig.isVisible = true
	updatedConfig.index = 1

	ReactRoblox.act(function()
		setConfigExt(updatedConfig)
	end)

	expect(ret.visible).toBeTruthy()
	expect(ret.cframe).toEqual(expect.any("table"))
	expect(ret.groupTransparency).toEqual(expect.any("table"))

	wait(1)

	ReactRoblox.act(function()
		root:unmount()
	end)
end)

it("should animate correctly for non default page", function()
	local initialTestConfig = table.clone(defaultTestConfig)
	initialTestConfig.screenKind = "FullScreen"
	initialTestConfig.isVisible = false

	local setConfigExt
	local ret: XDirectionAnimationConfig
	local element = React.createElement(function()
		local testConfig: Config, setTestConfig = React.useState(initialTestConfig)
		setConfigExt = setTestConfig
		ret = useXDirectionAnimation(testConfig)
		return
	end)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(ret.visible).toBeFalsy()
	expect(ret.cframe).toEqual(expect.any("CFrame"))
	expect(ret.groupTransparency).toEqual(0)
	expect(testCallback).toHaveBeenCalled()

	-- update
	local updatedConfig = table.clone(initialTestConfig)
	updatedConfig.isVisible = true
	updatedConfig.index = 2

	ReactRoblox.act(function()
		setConfigExt(updatedConfig)
	end)

	expect(ret.visible).toBeTruthy()
	expect(ret.cframe).toEqual(expect.any("table"))
	expect(ret.groupTransparency).toEqual(expect.any("table"))
	expect(testCallback).toHaveBeenCalled()

	wait(1)

	ReactRoblox.act(function()
		root:unmount()
	end)
end)
