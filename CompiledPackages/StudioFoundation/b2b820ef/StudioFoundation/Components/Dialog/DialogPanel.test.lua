local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local DialogPanel = require(script.Parent.DialogPanel)
local Framework = require(Packages.Framework)
local JestGlobals = require(Packages.Dev.JestGlobals)
local React = require(Packages.React)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local ReactTestingUtils = require(Packages.Dev.ReactTestingUtils)
local Signals = require(Packages.Signals)
local mockContext = require(Main.Util.mockContext)

local MockPlugin = Framework.TestHelpers.Instances.MockPlugin
local Plugin = Framework.ContextServices.Plugin
local StudioUri = require(Main.Util.StudioUri)
local ThemeContext = require(Main.Contexts.ThemeContext)
local describe = JestGlobals.describe
local e = React.createElement
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local provide = Framework.ContextServices.provide
local render = ReactTestingLibrary.render
local uriToTestId = require(Main.Util.uriToTestId)
local waitForEvents = ReactTestingUtils.waitForEvents

local FFlagStudioFoundationThemeContext = require(Main.SharedFlags.getFFlagStudioFoundationThemeContext)()
-- DialogPanel renders a FoundationProviderAdapter that resolves the theme from Studio settings on
-- the legacy (flag-off) path, which is unavailable in headless tests, so skip when the flag is off.
local itIfThemeContext: any = if FFlagStudioFoundationThemeContext then it else it.skip

local function createTestElement(props: DialogPanel.Props, children: React.Node?, mockPlugin: any?)
	local element = e(DialogPanel, props, children)

	return mockContext({
		Element = if mockPlugin
			then provide({
				Plugin = Plugin.new(mockPlugin),
			}, {
				Element = element,
			})
			else element,
	})
end

local dialogUri = StudioUri.join(plugin:GetUri(), {
	Category = "Panels",
	ItemId = "MyDialog",
})

describe("DialogPanel", function()
	itIfThemeContext("should create a PluginGui when mounted", function()
		local mockPlugin = MockPlugin.new()
		local getSize, _ = Signals.createSignal(Vector2.new(400, 300))

		render(createTestElement({
			uri = dialogUri,
			getSize = getSize,
		}, nil, mockPlugin))

		expect(mockPlugin.subWindows).toHaveLength(1)
		local panel = mockPlugin.subWindows[1]
		expect(panel).toBeDefined()
		-- TODO (STUDIOPLAT-41649): MockPlugin creates ScreenGuis; uncomment when we migrate to PanelsManager in FTF
		-- expect(panel:IsA("PluginGui")).toBe(true)
	end)

	itIfThemeContext("should destroy the PluginGui when unmounted", function()
		local mockPlugin = MockPlugin.new()
		local getSize, _ = Signals.createSignal(Vector2.new(400, 300))

		local rendered = render(createTestElement({
			uri = dialogUri,
			getSize = getSize,
		}, nil, mockPlugin))

		local panel = mockPlugin.subWindows[1]

		rendered.unmount()
		waitForEvents() -- With deferred signals on, destruction is deferred

		expect(mockPlugin.subWindows).toHaveLength(0)
		expect(panel.Parent).toBeNil()
	end)

	itIfThemeContext("should resize the PluginGui based on the size signal", function()
		local mockPlugin = MockPlugin.new()
		local mockSetSizeAsync = jest.fn()
		mockPlugin.mockComponents.Panels.SetSizeAsync = mockSetSizeAsync
		local getSize, setSize = Signals.createSignal(Vector2.new(400, 300))

		render(createTestElement({
			uri = dialogUri,
			getSize = getSize,
		}, nil, mockPlugin))

		-- TODO (STUDIOPLAT-41649): We shouldn't need an additional StudioUri when migrating to PanelsManager
		local panelUri = StudioUri.join(mockPlugin:GetUri(), {
			Category = "Panels",
			ItemId = `Dialog_{uriToTestId(dialogUri)}`,
		})

		expect(mockSetSizeAsync).toHaveBeenCalledTimes(1)
		-- First argument is self, so we don't care about it
		expect(mockSetSizeAsync).toHaveBeenLastCalledWith(expect.anything(), panelUri, Vector2.new(400, 300))

		setSize(Vector2.new(500, 400))

		expect(mockSetSizeAsync).toHaveBeenCalledTimes(2)
		expect(mockSetSizeAsync).toHaveBeenLastCalledWith(expect.anything(), panelUri, Vector2.new(500, 400))
	end)

	itIfThemeContext("should render children into the PluginGui", function()
		local mockPlugin = MockPlugin.new()
		local getSize, _ = Signals.createSignal(Vector2.new(400, 300))
		local ref = React.createRef()

		local rendered = render(createTestElement(
			{
				uri = dialogUri,
				getSize = getSize,
			},
			e("Frame", {
				ref = ref,
			}),
			mockPlugin
		))

		local panel = mockPlugin.subWindows[1]
		local frame = ref.current
		expect(frame).toBeDefined()
		expect(frame:IsA("Frame")).toBe(true)
		expect(frame:IsDescendantOf(panel)).toBe(true)
		expect(frame:IsDescendantOf(rendered.container)).toBe(false)
	end)

	itIfThemeContext("should not render children if the PluginGui is not yet created", function()
		local mockPlugin = MockPlugin.new()
		mockPlugin.CreateQWidgetPluginGui = coroutine.yield -- Infinite yield to simulate PluginGui not being ready
		local getSize, _ = Signals.createSignal(Vector2.new(400, 300))
		local ref = React.createRef()

		render(createTestElement(
			{
				uri = dialogUri,
				getSize = getSize,
			},
			e("Frame", {
				ref = ref,
			}),
			mockPlugin
		))

		expect(ref.current).toBeNil()
	end)

	itIfThemeContext("should provide the Theme context to its children", function()
		local function TestDialogContents(props)
			local themeCtx = React.useContext(ThemeContext.Context)
			props.themeRef.current = themeCtx

			return nil
		end

		local getSize, _ = Signals.createSignal(Vector2.new(400, 300))
		local themeRef = React.createRef()

		render(createTestElement(
			{
				uri = dialogUri,
				getSize = getSize,
			},
			e(TestDialogContents, {
				themeRef = themeRef,
			})
		))

		expect({ "Dark", "Light" }).toContain(themeRef.current)
	end)
end)
