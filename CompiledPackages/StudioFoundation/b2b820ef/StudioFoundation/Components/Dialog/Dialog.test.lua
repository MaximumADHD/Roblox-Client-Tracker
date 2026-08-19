local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local FoundationTestingLibrary = require(Packages.Dev.FoundationTestingLibrary)
local Framework = require(Packages.Framework)
local JestGlobals = require(Packages.Dev.JestGlobals)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local ReactTestingUtils = require(Packages.Dev.ReactTestingUtils)
local mockContext = require(Main.Util.mockContext)

local MockPlugin = Framework.TestHelpers.Instances.MockPlugin
local Plugin = Framework.ContextServices.Plugin
local StudioUri = require(Main.Util.StudioUri)
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local createRenderSpy = FoundationTestingLibrary.createRenderSpy
local describe = JestGlobals.describe
local e = React.createElement
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local provide = Framework.ContextServices.provide
local render = ReactTestingLibrary.render
local waitForEvents = ReactTestingUtils.waitForEvents
local within = ReactTestingLibrary.within

local FFlagStudioFoundationThemeContext = require(Main.SharedFlags.getFFlagStudioFoundationThemeContext)()
-- Dialog renders DialogPanel's FoundationProviderAdapter, which resolves the theme from Studio settings
-- on the legacy (flag-off) path, unavailable in headless tests, so skip these when the flag is off.
local itIfThemeContext: any = if FFlagStudioFoundationThemeContext then it else it.skip

local dialogUri = StudioUri.join(plugin:GetUri(), {
	Category = "Panels",
	ItemId = "MyDialog",
})

local function checkBindable(received: unknown, expected: unknown)
	if ReactIs.isBinding(received) then
		expect((received :: React.Binding<unknown>):getValue()).toEqual(expected)
	else
		expect(received).toEqual(expected)
	end
end

describe("Dialog", function()
	local spyDialogPanel
	local spyDialogView

	local createTestElement
	local getDialogPanelProps
	local getDialogViewProps
	local mockUseDialogTelemetry

	beforeAll(function()
		jest.mock(Main.Components.Dialog.DialogPanel, function()
			local DialogPanel = jest.requireActual(Main.Components.Dialog.DialogPanel)
			DialogPanel, spyDialogPanel = createRenderSpy(DialogPanel)
			return DialogPanel
		end)
		jest.mock(Main.Components.Dialog.DialogView, function()
			local DialogView = jest.requireActual(Main.Components.Dialog.DialogView)
			DialogView, spyDialogView = createRenderSpy(DialogView)
			return DialogView
		end)

		-- Mock useDialogTelemetry to just return the onUserInteracted callback
		jest.mock(Main.Components.Dialog.useDialogTelemetry, function()
			mockUseDialogTelemetry = jest.fn()
			return function(props)
				mockUseDialogTelemetry(props)
				return props
			end
		end)

		local Dialog = require(script.Parent.Dialog)

		createTestElement = function(props: Dialog.Props, mockPlugin: any?)
			local element = e(Dialog, props)

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

		-- For props types, only
		local DialogPanel = require(Main.Components.Dialog.DialogPanel)
		local DialogView = require(Main.Components.Dialog.DialogView)

		getDialogPanelProps = function(): DialogPanel.Props
			local calls = spyDialogPanel.mock.calls
			expect(#calls).toBeGreaterThanOrEqual(1)
			local lastCall = calls[#calls]
			return lastCall[1]
		end

		getDialogViewProps = function(): DialogView.Props
			local calls = spyDialogView.mock.calls
			expect(#calls).toBeGreaterThanOrEqual(1)
			local lastCall = calls[#calls]
			return lastCall[1]
		end
	end)

	beforeEach(function()
		spyDialogPanel.mockClear()
		spyDialogView.mockClear()
		mockUseDialogTelemetry.mockClear()
	end)

	itIfThemeContext("should render a DialogPanel with the provided URI", function()
		local mockPlugin = MockPlugin.new()

		render(createTestElement({
			uri = dialogUri,
			type = "Default",
			onUserInteracted = jest.fn(),
		}, mockPlugin))

		expect(getDialogPanelProps()).toMatchObject({
			uri = dialogUri,
		})
	end)

	itIfThemeContext("should render a DialogView under the DialogPanel", function()
		local mockPlugin = MockPlugin.new()

		render(createTestElement({
			uri = dialogUri,
			type = "Default",
			onUserInteracted = jest.fn(),
		}, mockPlugin))

		local panel = mockPlugin:GetSubWindow(1)
		expect(panel).toBeDefined()

		within(panel).getByTestId("--dialog")
	end)

	itIfThemeContext("should size the DialogPanel based on the DialogView", function()
		local mockPlugin = MockPlugin.new()
		local mockSetSizeAsync = jest.fn()
		mockPlugin.mockComponents.Panels.SetSizeAsync = mockSetSizeAsync

		render(createTestElement({
			uri = dialogUri,
			type = "Default",
			onUserInteracted = jest.fn(),
		}, mockPlugin))
		waitForEvents() -- Wait for AbsoluteSize changed signal to propagate

		local panel = mockPlugin:GetSubWindow(1)
		expect(panel).toBeDefined()

		local dialogView = within(panel).getByTestId("--dialog")

		-- First two arguments are self and the panel URI, which we don't care about
		expect(mockSetSizeAsync).toHaveBeenCalledWith(
			expect.anything(),
			expect.anything(),
			-- Selene doesn't recognize Vector2.max yet
			-- selene: allow(incorrect_standard_library_use)
			Vector2.max(dialogView.AbsoluteSize, Vector2.new(1, 1))
		)
	end)

	itIfThemeContext("should update the DialogView based on the provided properties", function()
		local mockOnActivated = jest.fn()
		local primaryActionUri = StudioUri.fromWidget("Test", "OK")

		render(createTestElement({
			uri = dialogUri,
			type = "Warning",
			title = "Test Title",
			description = "Test Description",
			primaryAction = {
				text = "OK",
				uri = primaryActionUri,
				onActivated = mockOnActivated,
			},
			width = 400,
		}))

		local props = getDialogViewProps()
		checkBindable(props.type, "Warning")
		checkBindable(props.title, "Test Title")
		checkBindable(props.description, "Test Description")
		checkBindable(
			props.primaryAction,
			expect.objectContaining({
				text = "OK",
				uri = primaryActionUri,
				onActivated = mockOnActivated,
			})
		)
		checkBindable(props.width, 400)
	end)

	itIfThemeContext("should call useDialogTelemetry to inject telemetry into the session lifecycle", function()
		local onUserInteracted = jest.fn()

		render(createTestElement({
			uri = dialogUri,
			type = "Default",
			onUserInteracted = onUserInteracted,
		}))

		expect(mockUseDialogTelemetry).toHaveBeenCalledTimes(1)
		expect(mockUseDialogTelemetry).toHaveBeenLastCalledWith(expect.objectContaining({
			uri = dialogUri,
			type = "Default",
			onUserInteracted = onUserInteracted,
		}))
	end)

	itIfThemeContext("should pass image and showIndeterminateProgressIndicator to DialogView", function()
		render(createTestElement({
			uri = dialogUri,
			type = "Default",
			image = "rbxassetid://12345",
			showIndeterminateProgressIndicator = true,
		}))

		local props = getDialogViewProps()
		checkBindable(props.image, "rbxassetid://12345")
		expect(props.showIndeterminateProgressIndicator).toBe(true)
	end)

	itIfThemeContext("should pass disabled to button actions", function()
		local mockPlugin = MockPlugin.new()

		render(createTestElement({
			uri = dialogUri,
			type = "Default",
			primaryAction = {
				text = "OK",
				uri = StudioUri.fromWidget("Test", "OK"),
				disabled = true,
				onActivated = jest.fn(),
			},
		}, mockPlugin))

		local props = getDialogViewProps()
		assert(props.primaryAction, "Expected primaryAction to be defined")
		expect(props.primaryAction.disabled).toBe(true)
	end)
end)
