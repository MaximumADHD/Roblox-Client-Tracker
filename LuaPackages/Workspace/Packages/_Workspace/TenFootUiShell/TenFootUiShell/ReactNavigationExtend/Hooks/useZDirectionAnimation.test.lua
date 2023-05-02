local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Constants = require(TenFootUiShell.Constants)
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local describe = JestGlobals.describe
local beforeEach = JestGlobals.beforeEach
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local TenFootUiScene = require(TenFootUiShell.Hooks.TenFootUiScene)
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local RouteViewState = require(ReactNavigationExtend.Views.RouteViewState)
local useZDirectionAnimation = require(script.Parent.useZDirectionAnimation)
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks

type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type ViewState = RouteViewState.ViewState
type Config = useZDirectionAnimation.Config

local testKey = "foo"
local routeState: RouteState = {
	key = testKey,
	routeName = "Foo",
}
local testState = {
	routes = {
		routeState,
	},
	index = 1,
	key = testKey,
}

local testDescriptor: Descriptor = mocks.makeMockDescriptor(testKey, testState, "Default")

describe("animate", function()
	local initialBgPosition, backgroundInstance
	beforeEach(function()
		local backgroundModel = Instance.new("Model")
		backgroundModel.Name = Constants.BACKGROUND_MODEL_NAME
		backgroundModel.Parent = ReplicatedStorage

		TenFootUiScene.initialize()

		backgroundInstance = TenFootUiScene.getBackgroundInstance() :: PVInstance
		initialBgPosition = backgroundInstance:GetPivot().Position
	end)

	local attachment = Instance.new("Attachment")
	local initialAttachmentPosition = attachment.Position
	local attachmentRef = React.createRef()
	attachmentRef.current = attachment

	local setOpenedSpy = jest.fn()
	local setClosedSpy = jest.fn()

	local intialtestConfig: Config = {
		willAnimate = false,
		viewState = "Opened" :: ViewState,
		setOpened = setOpenedSpy,
		setClosed = setClosedSpy,
		descriptor = testDescriptor,
		attachmentRef = attachmentRef,
	}

	local setConfigExt
	local element = React.createElement(function()
		local testConfig: Config, setTestConfig = React.useState(intialtestConfig)
		setConfigExt = setTestConfig
		useZDirectionAnimation(testConfig)
		return
	end)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))

	it("should not animate if willAnimate is false", function()
		ReactRoblox.act(function()
			root:render(element)
		end)

		wait(1)

		expect(backgroundInstance:GetPivot().Position).toEqual(initialBgPosition)
		expect(attachment.Position).toEqual(initialAttachmentPosition)
		expect(setOpenedSpy).never.toHaveBeenCalled()
		expect(setClosedSpy).never.toHaveBeenCalled()
	end)

	it("should not call setClose for closing screen if willAnimate is false", function()
		-- setClosed will be called from parent view animation
		local testConfig = table.clone(intialtestConfig)
		testConfig.willAnimate = false
		testConfig.viewState = "Closing"

		ReactRoblox.act(function()
			setConfigExt(testConfig)
		end)

		wait()

		expect(backgroundInstance:GetPivot().Position).toEqual(initialBgPosition)
		expect(attachment.Position).toEqual(initialAttachmentPosition)
		expect(setOpenedSpy).never.toHaveBeenCalled()
		expect(setClosedSpy).never.toHaveBeenCalled()
	end)

	it("should animate for opening screen", function()
		local testConfig = table.clone(intialtestConfig)
		testConfig.willAnimate = true
		testConfig.viewState = "Opening"

		ReactRoblox.act(function()
			setConfigExt(testConfig)
		end)

		wait()

		expect(backgroundInstance:GetPivot().Position).never.toEqual(initialBgPosition)
		expect(attachment.Position).never.toEqual(initialAttachmentPosition)

		wait(1)
		expect(attachment.Position).toEqual(initialAttachmentPosition)
		expect(setOpenedSpy).toHaveBeenCalledTimes(1)
	end)

	it("should animate for closing screen", function()
		local testConfig = table.clone(intialtestConfig)
		testConfig.willAnimate = true
		testConfig.viewState = "Closing"

		ReactRoblox.act(function()
			setConfigExt(testConfig)
		end)

		wait()

		expect(backgroundInstance:GetPivot().Position).never.toEqual(initialBgPosition)
		expect(attachment.Position).never.toEqual(initialAttachmentPosition)

		wait(1)
		expect(attachment.Position).never.toEqual(initialAttachmentPosition)
		expect(setClosedSpy).toHaveBeenCalledTimes(1)
	end)

	root:unmount()
end)
