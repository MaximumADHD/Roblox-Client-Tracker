--!strict
return {
	-- Plugin specific: Requires ChangeHistoryService
	useHistory = require(script.useHistory),

	-- Plugin specific: Requires SelectionService
	useSelection = require(script.useSelection),

	-- Testing

	-- DEPRECATED: Use ReactTestingUtils.waitForEvents instead
	waitForEvents = require(script.waitForEvents),

	createNextOrder = require(script.createNextOrder),
	useAsync = require(script.useAsync),
	useClock = require(script.useClock),
	useComposedRef = require(script.useComposedRef),
	useDebounce = require(script.useDebounce),
	useDebouncedState = require(script.useDebouncedState),
	useDelayedActionHandler = require(script.useDelayedActionHandler),
	useEventConnection = require(script.useEventConnection),
	useForwardRef = require(script.useForwardRef),
	useInitializedValue = require(script.useInitializedValue),
	useLazyRef = require(script.useLazyRef),
	usePrevious = require(script.usePrevious),
	useProperties = require(script.useProperties),
	usePropertiesDeferred = require(script.usePropertiesDeferred),
	useRefToState = require(script.useRefToState),
	useStackState = require(script.useStackState),
	useToggleState = require(script.useToggleState),

	ContextStack = require(script.ContextStack),
	EventConnection = require(script.EventConnection),

	createUnimplemented = require(script.createUnimplemented),
	createUniqueKey = require(script.createUniqueKey),

	LUAU_ANALYZE_ERROR = require(script.LUAU_ANALYZE_ERROR),
}
