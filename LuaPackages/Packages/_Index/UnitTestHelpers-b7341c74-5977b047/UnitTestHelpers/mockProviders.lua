--[[
	Test helper that wraps components under test with mock providers.
]]

local Packages = script:FindFirstAncestor("UnitTestHelpers").Parent

local Dash = require(Packages.Dash)
local Roact = require(Packages.Roact)
local RoactNavigation = require(Packages.RoactNavigation)
local RoactRodux = require(Packages.RoactRodux)
local Rodux = require(Packages.Rodux)
local UIBlox = require(Packages.UIBlox)
local t = require(Packages.t)

local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
local StyleConstants = UIBlox.App.Style.Constants

local MockContentProvider = require(Packages.UnitTestHelpers.MockContentProvider)

local validateExtraArgs = t.strictInterface({
	includeStoreProvider = t.optional(t.boolean), -- adds a StoreProvider in the hierarchy
	store = t.optional(t.table), -- a populated table of data from a reducer to include with the StoreProvider
	topLevelReducer = t.optional(t.callback), -- top-level reducer to create mock store with
	initialStoreState = t.optional(t.table),
	includeStyleProvider = t.optional(t.boolean), -- adds a StyleProvider in the hierarchy
	includeLocalizationProvider = t.optional(t.boolean), -- adds a LocalizationProvider in the hierarchy
	includeNavigationProvider = t.optional(t.boolean), -- adds a RoactNavigation.Provider in the hierarchy
	includeFocusControllerProvider = t.optional(t.boolean),
	middlewareList = t.optional(t.table),
	appStyle = t.optional(t.table),
	focusController = t.optional(t.table),
	captureFocusOnMount = t.optional(t.boolean),
	includeContentProvider = t.optional(t.boolean),
	localization = t.optional(t.table),
	navigation = t.optional(t.table), -- a specific RoactNavigation navigation prop to be used by components in the tree
})

local function getDefaultArgs()
	return {
		includeStoreProvider = false,
		store = nil,
		topLevelReducer = nil,
		initialStoreState = nil,
		includeStyleProvider = true,
		includeLocalizationProvider = true,
		includeNavigationProvider = false,
		includeFocusControllerProvider = false,
		focusController = nil,
		captureFocusOnMount = false,
		includeContentProvider = false,
		middlewareList = nil,
		appStyle = {
			themeName = StyleConstants.ThemeName.Dark,
			fontName = StyleConstants.FontName.Gotham,
		},
		localization = {}, --Localization.mock(),
		navigation = {
			isFocused = function() return false end,
			addListener = function()
				return {
					remove = function() end,
				}
			end,
			getParam = function() return nil end,
			navigate = function() end,
			state = {
				routeName = "DummyRoute",
			},
		},
	}
end

-- validate that the default args are correct
assert(validateExtraArgs(getDefaultArgs()))

local function staticReducer(state)
	return state
end

--[[
	Provides a test hierarchy for rendering a component that requires context providers

	@param componentMap - (map<string, Roact.Component>) a map of elements to test render
	@param extraArgs - optional table used to configure mock providers (see validation and defaults above)
	@return The root element of the test hierarchy
]]
local function mockProviders(componentMap, extraArgs: any?)
	assert(componentMap, "Expected a map of components, received none")

	local args = getDefaultArgs()
	if extraArgs then
		assert(validateExtraArgs(extraArgs))
		args = Dash.join(args, extraArgs)
	end

	if args.includeStoreProvider then
		local roduxMiddleware = { Rodux.thunkMiddleware }

		if args.middlewareList then
			Dash.append(roduxMiddleware, args.middlewareList)
		end

		local reducer = args.topLevelReducer or staticReducer
		local store
		if args.store then
			store = args.store
		elseif args.initialStoreState then
			store = Rodux.Store.new(reducer, args.initialStoreState, roduxMiddleware)
		else
			store = Rodux.Store.new(reducer, nil, roduxMiddleware)
		end

		componentMap = {
			StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, componentMap)
		}
	end

	if args.includeStyleProvider then
		componentMap = {
			StyleProvider = Roact.createElement(AppStyleProvider, {
				style = args.appStyle,
			}, componentMap)
		}
	end

	if args.includeNavigationProvider then
		componentMap = {
			NavigationProvider = Roact.createElement(RoactNavigation.Provider, {
				value = args.navigation,
			}, componentMap)
		}
	end

	local root = Roact.createElement("Folder", {}, componentMap)

	if args.includeContentProvider then
		root = Roact.createElement(UIBlox.App.Context.ContentProvider.Provider, {
			value = MockContentProvider.new(),
		}, root)
	end

	return root
end

return mockProviders
