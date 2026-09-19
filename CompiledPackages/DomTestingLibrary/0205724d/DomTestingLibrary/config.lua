-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/config.ts
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

-- ROBLOX deviation START: extracted to avoid circular dependency
local defaultIgnore = require(script.Parent["config-default-ignore"])
-- ROBLOX deviation END

-- ROBLOX deviation START: unknown types
type Partial<T> = Object
-- ROBLOX deviation END

local exports = {}

local configModule = require(script.Parent.types.config)
type Config = configModule.Config
type ConfigFn = configModule.ConfigFn
local prettyDOM = require(script.Parent["pretty-dom"]).prettyDOM

type Callback<T> = () -> T
type InternalConfig = Config & { _disableExpensiveErrorDiagnostics: boolean }

-- It would be cleaner for this to live inside './queries', but
-- other parts of the code assume that all exports from
-- './queries' are query functions.
local config: InternalConfig = {
	testIdAttribute = "data-testid",
	asyncUtilTimeout = 1000,
	-- asyncWrapper and advanceTimersWrapper is to support React's async `act` function.
	-- forcing react-testing-library to wrap all async functions would've been
	-- a total nightmare (consider wrapping every findBy* query and then also
	-- updating `within` so those would be wrapped too. Total nightmare).
	-- so we have this config option that's really only intended for
	-- react-testing-library to use. For that reason, this feature will remain
	-- undocumented.
	asyncWrapper = function(cb: (...any) -> Promise<any>)
		return cb()
	end,
	unstable_advanceTimersWrapper = function(cb: (...any) -> any)
		return cb()
	end,
	eventWrapper = function(cb: (...any) -> ())
		return cb()
	end,
	-- default value for the `hidden` option in `ByRole` queries
	defaultHidden = false,
	-- default value for the `ignore` option in `ByText` queries
	defaultIgnore = defaultIgnore.getIgnore(),
	-- showOriginalStackTrace flag to show the full error stack traces for async errors
	showOriginalStackTrace = false,

	-- throw errors w/ suggestions for better queries. Opt in so off by default.
	throwSuggestions = false,

	-- called when getBy* queries fail. (message, container) => Error
	getElementError = function(message: string?, container)
		local prettifiedDOM = prettyDOM(container)
		local error_ = Error.new(Array.join(
			Array.filter({
				message,
				-- ROBLOX deviation: message does not make sense in Lua.
				-- ("Ignored nodes: comments, <script />, <style />\n%s"):format(prettifiedDOM),
				prettifiedDOM,
				-- ROBLOX deviation END
			}, Boolean.toJSBoolean),
			"\n\n"
		))
		error_.name = "TestingLibraryElementError"
		return error_
	end,
	_disableExpensiveErrorDiagnostics = false,
	computedStyleSupportsPseudoElements = false,
}

local function runWithExpensiveErrorDiagnosticsDisabled<T>(callback: Callback<T>)
	local ok, result = pcall(function()
		config._disableExpensiveErrorDiagnostics = true
		return callback()
	end)

	config._disableExpensiveErrorDiagnostics = false

	if not ok then
		error(result)
	end

	return result
end
exports.runWithExpensiveErrorDiagnosticsDisabled = runWithExpensiveErrorDiagnosticsDisabled

local function configure(newConfig: ConfigFn | Partial<Config>)
	if typeof(newConfig) == "function" then
		-- Pass the existing config out to the provided function
		-- and accept a delta in return
		newConfig = newConfig(config)
	end

	if (newConfig :: Partial<Config>).defaultIgnore then
		defaultIgnore.setIgnore((newConfig :: Partial<Config>).defaultIgnore)
	end

	-- Merge the incoming config delta
	config = Object.assign({}, Object.assign(config, { defaultIgnore = Object.None }), newConfig)
end
exports.configure = configure

local function getConfig()
	-- ROBLOX deviation START: get current state of ignore (in a different file beacuse of circular dep)
	local defaultIgnore = defaultIgnore.getIgnore()
	-- ROBLOX deviation END

	return Object.assign({}, config, { defaultIgnore = defaultIgnore })
end
exports.getConfig = getConfig

return exports
