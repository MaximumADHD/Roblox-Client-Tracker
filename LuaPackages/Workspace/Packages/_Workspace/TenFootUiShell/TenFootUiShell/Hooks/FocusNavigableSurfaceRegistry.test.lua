local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local cleanup = ReactTestingLibrary.cleanup
local render = ReactTestingLibrary.render
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui
local FocusNavigableSurfaceRegistry = require(script.Parent.FocusNavigableSurfaceRegistry)

describe("FocusNavigableSurfaceRegistry", function()
	describe("Provider", function()
		it("should render children", function()
			local renderResult = render(
				React.createElement(
					FocusNavigableSurfaceRegistry.Provider,
					nil,
					React.createElement("TextLabel", { Text = "test" })
				)
			)
			local element = renderResult.getByText("test")
			expect(element).toBeDefined()
		end)
	end)
	describe("useRegisterFocusNavigableSurface", function()
		it("should return a function", function()
			local mock = jest.fn()
			local function Test()
				local registerFocusNavigableSurface = FocusNavigableSurfaceRegistry.useRegisterFocusNavigableSurface()
				mock(registerFocusNavigableSurface)
			end
			render(React.createElement(FocusNavigableSurfaceRegistry.Provider, nil, React.createElement(Test)))
			expect(mock).toHaveBeenCalledWith(expect.any("function"))
		end)
	end)
	describe("useDeRegisterFocusNavigableSurface", function()
		it("should return a function", function()
			local mock = jest.fn()
			local function Test()
				local deRegisterFocusNavigableSurface =
					FocusNavigableSurfaceRegistry.useDeRegisterFocusNavigableSurface()
				mock(deRegisterFocusNavigableSurface)
			end
			render(React.createElement(FocusNavigableSurfaceRegistry.Provider, nil, React.createElement(Test)))
			expect(mock).toHaveBeenCalledWith(expect.any("function"))
		end)
	end)
	describe("useRegistryEntry", function()
		it("should return nil if there is nothing", function()
			local mock = jest.fn()
			local function Test()
				local entry = FocusNavigableSurfaceRegistry.useRegistryEntry("Test")
				mock(entry)
			end
			render(React.createElement(FocusNavigableSurfaceRegistry.Provider, nil, React.createElement(Test)))
			expect(mock).toHaveBeenCalledWith(nil)
		end)
		it("should return the most recently added entry if there is something", function()
			local mock = jest.fn()
			local guiObject = Instance.new("Frame")
			local function Test()
				local registerFocusNavigableSurface = FocusNavigableSurfaceRegistry.useRegisterFocusNavigableSurface()
				React.useEffect(function()
					registerFocusNavigableSurface("Test", guiObject)
				end, { registerFocusNavigableSurface })
				local entry = FocusNavigableSurfaceRegistry.useRegistryEntry("Test")
				mock(entry)
			end
			render(React.createElement(FocusNavigableSurfaceRegistry.Provider, nil, React.createElement(Test)))
			expect(mock).toHaveBeenCalledWith(guiObject)
		end)
	end)
	describe("useFocusRegistryEntry", function()
		local focusNavigationService
		local interface
		beforeEach(function()
			interface = table.clone(CoreGuiInterface)
			interface.setSelection = jest.fn()
			focusNavigationService = FocusNavigationService.new(interface)
		end)

		afterEach(function()
			focusNavigationService:focusGuiObject(nil)
			focusNavigationService:teardown()
			cleanup()
		end)

		it("should call focus on a given registry entry", function()
			local guiObject = Instance.new("Frame")
			local function Test()
				local registerFocusNavigableSurface = FocusNavigableSurfaceRegistry.useRegisterFocusNavigableSurface()
				React.useEffect(function()
					registerFocusNavigableSurface("Test", guiObject)
				end, { registerFocusNavigableSurface })
				local entry = FocusNavigableSurfaceRegistry.useRegistryEntry("Test")
				local focusRegistryEntry = FocusNavigableSurfaceRegistry.useFocusRegistryEntry("Test")
				React.useEffect(function()
					focusRegistryEntry()
				end, { focusRegistryEntry, entry } :: { any })
			end
			render(
				React.createElement(
					ReactFocusNavigation.FocusNavigationContext.Provider,
					{ value = focusNavigationService },
					React.createElement(FocusNavigableSurfaceRegistry.Provider, nil, React.createElement(Test))
				)
			)
			expect(interface.setSelection).toHaveBeenCalledWith(guiObject)
		end)
	end)
end)
