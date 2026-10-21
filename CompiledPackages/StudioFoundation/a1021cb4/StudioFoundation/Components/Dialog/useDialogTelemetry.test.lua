local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local React = require(Packages.React)
local ReactTestingUtils = require(Packages.Dev.ReactTestingUtils)
local TelemetryConfigs = require(Main.Resources.TelemetryConfigs)
local TelemetryServiceContext = require(Main.Contexts.TelemetryServiceContext)
local useDialogTelemetry = require(script.Parent.useDialogTelemetry)

local StudioUri = require(Main.Util.StudioUri)
local afterAll = JestGlobals.afterAll
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local e = React.createElement
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local stageHook = ReactTestingUtils.stageHook

local TEST_DIALOG_URI = StudioUri.fromPanel("Test", "Dialog")
local TEST_PRIMARY_BUTTON_URI =
	StudioUri.join(TEST_DIALOG_URI, { Category = "Widgets", ItemId = "Dialog/PrimaryButton" })
local TEST_SECONDARY_BUTTON_URI =
	StudioUri.join(TEST_DIALOG_URI, { Category = "Widgets", ItemId = "Dialog/SecondaryButton" })
local TEST_TERTIARY_BUTTON_URI =
	StudioUri.join(TEST_DIALOG_URI, { Category = "Widgets", ItemId = "Dialog/TertiaryButton" })
local TEST_ESCAPE_BUTTON_URI = StudioUri.join(TEST_DIALOG_URI, { Category = "Widgets", ItemId = "Dialog/Close" })

describe("useDialogTelemetry", function()
	local mockLogEvent = jest.fn()
	local mockOnActivated = jest.fn()
	local mockOnClose = jest.fn()
	local stage

	local testProps = {
		uri = TEST_DIALOG_URI,
		type = "Default" :: "Default",
		primaryAction = {
			uri = TEST_PRIMARY_BUTTON_URI,
			text = "Primary",
			onActivated = mockOnActivated,
		},
		secondaryAction = {
			uri = TEST_SECONDARY_BUTTON_URI,
			text = "Secondary",
			onActivated = mockOnActivated,
		},
		tertiaryAction = {
			uri = TEST_TERTIARY_BUTTON_URI,
			text = "Tertiary",
			onActivated = mockOnActivated,
		},
		escapeAction = {
			uri = TEST_ESCAPE_BUTTON_URI,
			onClose = mockOnClose,
		},
	}

	beforeAll(function()
		-- Use mock timers to allow testing of time-related metrics
		jest.useFakeTimers()
	end)

	beforeEach(function()
		mockLogEvent.mockClear()

		stage = stageHook(useDialogTelemetry, {
			wrapper = function(props)
				-- Inject TelemetryService mock via context
				return e(TelemetryServiceContext.Provider, {
					value = {
						LogEvent = mockLogEvent,
					},
				}, props.children)
			end,
		})
		stage.render(testProps)
	end)

	afterAll(function()
		jest.useRealTimers()
	end)

	it("should send the StudioDialogShown event once on mount", function()
		-- The hook is already mounted by now (see beforeEach clause)
		expect(mockLogEvent).toHaveBeenCalledTimes(1)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(), -- self
			TelemetryConfigs.DIALOG_SHOWN,
			expect.anything() -- event fields (validated in a later test)
		)
	end)

	it("should send the StudioDialogDestroyed event once on unmount", function()
		mockLogEvent.mockClear() -- Clear initial StudioDialogShown call from mount

		stage.unmount()
		expect(mockLogEvent).toHaveBeenCalledTimes(1)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(), -- self
			TelemetryConfigs.DIALOG_DESTROYED,
			expect.anything() -- event fields (validated in a later test)
		)
	end)

	it("should return wrapped versions of the provided DialogActions", function()
		local wrappedDialogActions = stage.get()
		expect(wrappedDialogActions).toMatchObject({
			primaryAction = expect.objectContaining({
				uri = TEST_PRIMARY_BUTTON_URI,
				text = "Primary",
				onActivated = expect.any("function"),
			}),
			secondaryAction = expect.objectContaining({
				uri = TEST_SECONDARY_BUTTON_URI,
				text = "Secondary",
				onActivated = expect.any("function"),
			}),
			tertiaryAction = expect.objectContaining({
				uri = TEST_TERTIARY_BUTTON_URI,
				text = "Tertiary",
				onActivated = expect.any("function"),
			}),
			escapeAction = expect.objectContaining({
				uri = TEST_ESCAPE_BUTTON_URI,
				onClose = expect.any("function"),
			}),
		})

		-- It should call the provided onUserInteracted when invoked
		assert(wrappedDialogActions.primaryAction, "Expected primaryAction to be defined")
		wrappedDialogActions.primaryAction.onActivated(TEST_PRIMARY_BUTTON_URI)
		expect(mockOnActivated).toHaveBeenCalledTimes(1)
		expect(mockOnActivated).toHaveBeenLastCalledWith(TEST_PRIMARY_BUTTON_URI)
	end)

	it("should send the StudioDialogInteracted event once per interaction", function()
		mockLogEvent.mockClear() -- Clear initial StudioDialogShown call from mount

		local wrappedDialogActions = stage.get()

		assert(wrappedDialogActions.primaryAction, "Expected primaryAction to be defined")
		wrappedDialogActions.primaryAction.onActivated(TEST_PRIMARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenCalledTimes(1)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(), -- self
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.anything() -- event fields (validated in a later test)
		)

		assert(wrappedDialogActions.secondaryAction, "Expected secondaryAction to be defined")
		wrappedDialogActions.secondaryAction.onActivated(TEST_SECONDARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenCalledTimes(2)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.anything()
		)

		assert(wrappedDialogActions.tertiaryAction, "Expected tertiaryAction to be defined")
		wrappedDialogActions.tertiaryAction.onActivated(TEST_TERTIARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenCalledTimes(3)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.anything()
		)

		if wrappedDialogActions.escapeAction then
			assert(wrappedDialogActions.escapeAction, "Expected escapeAction to be defined")
			wrappedDialogActions.escapeAction.onClose()
			expect(mockOnClose).toHaveBeenCalledTimes(1)
			expect(mockLogEvent).toHaveBeenLastCalledWith(
				expect.anything(),
				TelemetryConfigs.DIALOG_INTERACTED,
				expect.anything()
			)
		end
	end)

	it("should share common dialog metadata across events in the same session", function()
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(), -- self
			TelemetryConfigs.DIALOG_SHOWN,
			expect.objectContaining({
				customFields = expect.objectContaining({
					DialogGuid = expect.any("string"),
					dialogUri = StudioUri.toString(TEST_DIALOG_URI),
					dialogType = "Default",
					primaryButtonUri = StudioUri.toString(TEST_PRIMARY_BUTTON_URI),
					secondaryButtonUri = StudioUri.toString(TEST_SECONDARY_BUTTON_URI),
					tertiaryButtonUri = StudioUri.toString(TEST_TERTIARY_BUTTON_URI),
				}),
			})
		)

		-- Get the session guid from the shown event
		local sessionGuid = mockLogEvent.mock.calls[1][3].customFields.DialogGuid

		-- StudioDialogInteracted event should have the same metadata
		local wrappedDialogActions = stage.get()
		assert(wrappedDialogActions.primaryAction, "Expected primaryAction to be defined")
		wrappedDialogActions.primaryAction.onActivated(TEST_PRIMARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					DialogGuid = sessionGuid, -- Should be the same session guid
					dialogUri = StudioUri.toString(TEST_DIALOG_URI),
					dialogType = "Default",
					primaryButtonUri = StudioUri.toString(TEST_PRIMARY_BUTTON_URI),
					secondaryButtonUri = StudioUri.toString(TEST_SECONDARY_BUTTON_URI),
					tertiaryButtonUri = StudioUri.toString(TEST_TERTIARY_BUTTON_URI),
				}),
			})
		)

		-- StudioDialogDestroyed event should also have the same metadata
		stage.unmount()
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_DESTROYED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					DialogGuid = sessionGuid, -- Should be the same session guid
					dialogUri = StudioUri.toString(TEST_DIALOG_URI),
					dialogType = "Default",
					primaryButtonUri = StudioUri.toString(TEST_PRIMARY_BUTTON_URI),
					secondaryButtonUri = StudioUri.toString(TEST_SECONDARY_BUTTON_URI),
					tertiaryButtonUri = StudioUri.toString(TEST_TERTIARY_BUTTON_URI),
				}),
			})
		)
	end)

	it("should update the common metadata as the dialog signals change", function()
		local wrappedDialogActions = stage.get()

		stage.render({
			uri = TEST_DIALOG_URI,
			type = "Critical" :: "Critical",
			primaryAction = {
				uri = TEST_PRIMARY_BUTTON_URI,
				text = "Primary",
				onActivated = mockOnActivated,
			},
		})
		assert(wrappedDialogActions.primaryAction, "Expected primaryAction to be defined")
		wrappedDialogActions.primaryAction.onActivated(TEST_PRIMARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(), -- self
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					dialogType = "Critical",
					primaryButtonUri = StudioUri.toString(TEST_PRIMARY_BUTTON_URI),
				}),
			})
		)
		-- expect.nothing does not work in expect.objectContaining, so check for the absence of secondary and tertiary button URIs with toEqual instead
		expect(mockLogEvent.mock.calls[#mockLogEvent.mock.calls][3].customFields.secondaryButtonUri).toBeNil()
		expect(mockLogEvent.mock.calls[#mockLogEvent.mock.calls][3].customFields.tertiaryButtonUri).toBeNil()

		stage.render({
			uri = TEST_DIALOG_URI,
			type = "Warning" :: "Warning",
			primaryAction = {
				uri = TEST_PRIMARY_BUTTON_URI,
				text = "Primary",
				onActivated = mockOnActivated,
			},
			secondaryAction = {
				uri = TEST_SECONDARY_BUTTON_URI,
				text = "Secondary",
				onActivated = mockOnActivated,
			},
		})
		stage.unmount()
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_DESTROYED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					dialogType = "Warning",
					primaryButtonUri = StudioUri.toString(TEST_PRIMARY_BUTTON_URI),
					secondaryButtonUri = StudioUri.toString(TEST_SECONDARY_BUTTON_URI),
				}),
			})
		)
		expect(mockLogEvent.mock.calls[#mockLogEvent.mock.calls][3].customFields.tertiaryButtonUri).toBeNil()
	end)

	it("should not send any events if dialog metadata changes", function()
		mockLogEvent.mockClear() -- Clear initial StudioDialogShown call from mount

		stage.render({
			uri = TEST_DIALOG_URI,
			type = "Critical" :: "Critical",
			primaryAction = {
				uri = TEST_PRIMARY_BUTTON_URI,
				text = "Primary",
				onActivated = mockOnActivated,
			},
		})
		expect(mockLogEvent).never.toHaveBeenCalled()
	end)

	it("should send the interacted button URI with the StudioDialogInteracted event", function()
		local wrappedDialogActions = stage.get()

		assert(wrappedDialogActions.primaryAction, "Expected primaryAction to be defined")
		wrappedDialogActions.primaryAction.onActivated(TEST_PRIMARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(), -- self
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					interactedButtonUri = StudioUri.toString(TEST_PRIMARY_BUTTON_URI),
				}),
			})
		)

		assert(wrappedDialogActions.secondaryAction, "Expected secondaryAction to be defined")
		wrappedDialogActions.secondaryAction.onActivated(TEST_SECONDARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					interactedButtonUri = StudioUri.toString(TEST_SECONDARY_BUTTON_URI),
				}),
			})
		)

		assert(wrappedDialogActions.tertiaryAction, "Expected tertiaryAction to be defined")
		wrappedDialogActions.tertiaryAction.onActivated(TEST_TERTIARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					interactedButtonUri = StudioUri.toString(TEST_TERTIARY_BUTTON_URI),
				}),
			})
		)

		if wrappedDialogActions.escapeAction then
			assert(wrappedDialogActions.escapeAction, "Expected escapeAction to be defined")
			wrappedDialogActions.escapeAction.onClose()
			expect(mockLogEvent).toHaveBeenLastCalledWith(
				expect.anything(),
				TelemetryConfigs.DIALOG_INTERACTED,
				expect.objectContaining({
					customFields = expect.objectContaining({
						interactedButtonUri = StudioUri.toString(TEST_ESCAPE_BUTTON_URI),
					}),
				})
			)
		end
	end)

	it("should send the interaction index with the StudioDialogInteracted event", function()
		local wrappedDialogActions = stage.get()

		assert(wrappedDialogActions.primaryAction, "Expected primaryAction to be defined")
		wrappedDialogActions.primaryAction.onActivated(TEST_PRIMARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(), -- self
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					interactionIndex = 0,
				}),
			})
		)

		assert(wrappedDialogActions.secondaryAction, "Expected secondaryAction to be defined")
		wrappedDialogActions.secondaryAction.onActivated(TEST_SECONDARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					interactionIndex = 1,
				}),
			})
		)

		assert(wrappedDialogActions.tertiaryAction, "Expected tertiaryAction to be defined")
		wrappedDialogActions.tertiaryAction.onActivated(TEST_TERTIARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					interactionIndex = 2,
				}),
			})
		)

		if wrappedDialogActions.escapeAction then
			assert(wrappedDialogActions.escapeAction, "Expected escapeAction to be defined")
			wrappedDialogActions.escapeAction.onClose()
			expect(mockLogEvent).toHaveBeenLastCalledWith(
				expect.anything(),
				TelemetryConfigs.DIALOG_INTERACTED,
				expect.objectContaining({
					customFields = expect.objectContaining({
						interactionIndex = 3,
					}),
				})
			)
		end
	end)

	it("should send the time to interaction with the StudioDialogInteracted event", function()
		local wrappedDialogActions = stage.get()

		-- Advance timers by 1.5 seconds before first interaction
		jest.advanceTimersByTime(1500)
		assert(wrappedDialogActions.primaryAction, "Expected primaryAction to be defined")
		wrappedDialogActions.primaryAction.onActivated(TEST_PRIMARY_BUTTON_URI)
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(), -- self
			TelemetryConfigs.DIALOG_INTERACTED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					timeToInteractSec = 1.5,
				}),
			})
		)
	end)

	it("should send the total interaction count with the StudioDialogDestroyed event", function()
		local wrappedDialogActions = stage.get()

		assert(wrappedDialogActions.primaryAction, "Expected primaryAction to be defined")
		wrappedDialogActions.primaryAction.onActivated(TEST_PRIMARY_BUTTON_URI)
		assert(wrappedDialogActions.secondaryAction, "Expected secondaryAction to be defined")
		wrappedDialogActions.secondaryAction.onActivated(TEST_SECONDARY_BUTTON_URI)
		assert(wrappedDialogActions.tertiaryAction, "Expected tertiaryAction to be defined")
		wrappedDialogActions.tertiaryAction.onActivated(TEST_TERTIARY_BUTTON_URI)
		if wrappedDialogActions.escapeAction then
			assert(wrappedDialogActions.escapeAction, "Expected escapeAction to be defined")
			wrappedDialogActions.escapeAction.onClose()
		end

		stage.unmount()
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_DESTROYED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					interactionCount = 4,
				}),
			})
		)
	end)

	it("should send the total duration of the dialog session with the StudioDialogDestroyed event", function()
		-- Advance timers by 2 seconds before unmounting the dialog
		jest.advanceTimersByTime(2000)

		stage.unmount()
		expect(mockLogEvent).toHaveBeenLastCalledWith(
			expect.anything(),
			TelemetryConfigs.DIALOG_DESTROYED,
			expect.objectContaining({
				customFields = expect.objectContaining({
					durationSec = 2,
				}),
			})
		)
	end)
end)
