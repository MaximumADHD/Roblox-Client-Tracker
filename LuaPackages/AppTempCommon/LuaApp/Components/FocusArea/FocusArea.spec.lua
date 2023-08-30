--!nonstrict
return function()
	local FocusArea = require(script.Parent.FocusArea)
	local CorePackages = game:GetService("CorePackages")
	local GuiService = game:GetService("GuiService")
	local CoreGui = game:GetService("CoreGui")
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local act = ReactRoblox.act
	local Roact = require(CorePackages.Roact)
	local common = require(script.Parent.common)
	local LuaApp = script.Parent.Parent.Parent
	local SetIsControllerMode = require(LuaApp.Actions.SetIsControllerMode)
	local GetGuiServiceSelectEnabled = require(script.Parent.GetGuiServiceSelectEnabled)
	local GetFFlagLuaAppAddSignalToFocusArea = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppAddSignalToFocusArea
	local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local guiServiceSelectEnabled

	local function createElementInScreenGui(name, props, children, store)
		local screenGui = Instance.new("ScreenGui", CoreGui)
		local element = Roact.createFragment({
			Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				Roact.createElement("Frame", {}, {
					[name] = Roact.createElement(FocusArea, props, children),
				}),
			}),
		})

		return screenGui, Roact.mount(element, screenGui)
	end

	local initialState = {
		ControllerMode = true,
	}

	local function reducer(state, action)
		if action.type == SetIsControllerMode.name then
			return {
				ControllerMode = action.isControllerMode,
			}
		end

		return state
	end

	local function makeStore()
		return Rodux.Store.new(reducer, initialState, { Rodux.thunkMiddleware })
	end

	-- TODO: when remove GetFFlagLuaAppAddSignalToFocusArea, change parameter name to focusAreaSignal
	local function focus(focusAreaRef: any)
		if GetFFlagLuaAppAddSignalToFocusArea() then
			local focusAreaSignal = focusAreaRef
			focusAreaSignal:fire(true)
		else
			act(function()
				focusAreaRef.current:requestFocus()
			end)
		end
	end

	-- TODO: when remove GetFFlagLuaAppAddSignalToFocusArea, change parameter name to focusAreaSignal
	local function blur(focusAreaRef: any)
		if GetFFlagLuaAppAddSignalToFocusArea() then
			local focusAreaSignal = focusAreaRef
			focusAreaSignal:fire(false)
		else
			act(function()
				focusAreaRef.current:yieldFocus(false)
			end)
		end
	end

	beforeAll(function()
		guiServiceSelectEnabled = GetGuiServiceSelectEnabled()
	end)

	it("should create and destroy without errors (no props, one child)", function()
		if not guiServiceSelectEnabled then
			return
		end

		local store = makeStore()
		local screenGui, instance = createElementInScreenGui("EmptyFocusArea", {}, {
			Roact.createElement("Frame"),
		}, store)

		Roact.unmount(instance)
		screenGui:Destroy()
	end)

	it("should create and destroy without errors (all props, multiple children)", function()
		if not guiServiceSelectEnabled then
			return
		end

		local focusAreaRef
		local focusSignal
		if GetFFlagLuaAppAddSignalToFocusArea() then
			focusSignal = Signal.new()
		else
			focusAreaRef = Roact.createRef()
		end

		local store = makeStore()
		local screenGui, instance = createElementInScreenGui("TestFocusArea1", {
			SelectionBehavior = Enum.SelectionBehavior.Escape,
			subscribeToNavigationEvents = false,
			requestOnMount = true,
			focusSignal = if GetFFlagLuaAppAddSignalToFocusArea() then focusSignal else nil,
			[Roact.Ref] = if GetFFlagLuaAppAddSignalToFocusArea() then nil else focusAreaRef,
		}, {
			ChildFrame = Roact.createElement("Frame"),
			SiblingFrame = Roact.createElement("Frame"),
		}, store)

		if not GetFFlagLuaAppAddSignalToFocusArea() then
			expect(focusAreaRef.current).never.toBeNil()
		end
		expect((common.getSelection() :: GuiObject).Name).toBe("TestFocusArea1")

		Roact.unmount(instance)
		screenGui:Destroy()
	end)

	it("should check restoration behavior", function()
		if not guiServiceSelectEnabled then
			return
		end

		local focusAreaRef
		local focusSignal
		if GetFFlagLuaAppAddSignalToFocusArea() then
			focusSignal = Signal.new()
		else
			focusAreaRef = Roact.createRef()
		end

		local store = makeStore()
		local screenGui, instance = createElementInScreenGui("TestFocusArea2", {
			SelectionBehavior = Enum.SelectionBehavior.Escape,
			requestOnMount = true,
			focusSignal = if GetFFlagLuaAppAddSignalToFocusArea() then focusSignal else nil,
			[Roact.Ref] = if GetFFlagLuaAppAddSignalToFocusArea() then nil else focusAreaRef,
		}, {
			ChildFrame = Roact.createElement("Frame"),
			SiblingFrame = Roact.createElement("Frame"),
			AnotherSibling = Roact.createElement("Frame"),
		}, store)

		-- Check that the focus area exists
		if not GetFFlagLuaAppAddSignalToFocusArea() then
			expect(focusAreaRef.current).never.toBeNil()
		end
		expect((common.getSelection() :: GuiObject).Name).toBe("TestFocusArea2")

		-- Change the selection
		GuiService.SelectedCoreObject = screenGui:FindFirstChild("SiblingFrame", true)
		expect((common.getSelection() :: GuiObject).Name).toBe("SiblingFrame")

		-- Blur the focus area
		if GetFFlagLuaAppAddSignalToFocusArea() then
			blur(focusSignal)
		else
			blur(focusAreaRef)
			expect(focusAreaRef.current).never.toBeNil()
		end
		expect(common.getSelection()).toBeNil()

		-- Expect the selection state to be restored when refocused
		if GetFFlagLuaAppAddSignalToFocusArea() then
			focus(focusSignal)
		else
			focus(focusAreaRef)
			expect(focusAreaRef.current).never.toBeNil()
		end
		expect((common.getSelection() :: GuiObject).Name).toBe("SiblingFrame")

		Roact.unmount(instance)
		screenGui:Destroy()
	end)

	it("should check selection when no selectable children", function()
		if not guiServiceSelectEnabled then
			return
		end

		local focusAreaRef
		local focusSignal
		if GetFFlagLuaAppAddSignalToFocusArea() then
			focusSignal = Signal.new()
		else
			focusAreaRef = Roact.createRef()
		end

		local store = makeStore()
		local screenGui, instance = createElementInScreenGui("TestFocusArea3", {
			SelectionBehavior = Enum.SelectionBehavior.Escape,
			focusSignal = if GetFFlagLuaAppAddSignalToFocusArea() then focusSignal else nil,
			[Roact.Ref] = if GetFFlagLuaAppAddSignalToFocusArea() then nil else focusAreaRef,
		}, {
			ChildFrame = Roact.createElement("Frame"),
			SiblingFrame = Roact.createElement("Frame"),
			AnotherSibling = Roact.createElement("Frame"),
		}, store)

		-- Check that if the default doesn't exist, the focus area is correctly selected
		if GetFFlagLuaAppAddSignalToFocusArea() then
			focus(focusSignal)
		else
			expect(focusAreaRef.current).never.toBeNil()
			focus(focusAreaRef)
		end
		expect((common.getSelection() :: GuiObject).Name).toBe("TestFocusArea3")

		Roact.unmount(instance)
		screenGui:Destroy()
	end)
end
