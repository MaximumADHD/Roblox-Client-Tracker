-- ROBLOX upstream: https://github.com/testing-library/react-testing-library/blob/v12.1.5/src/act-compat.js
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(Packages.Promise)

local exports = {}

-- local React = require(Packages.React)
-- local ReactDOM = require(Packages["react-dom"]).default
local testUtils = require(script.Parent.jsHelpers["react-dom"]["test-utils"])
local reactAct = testUtils.act
local actSupported = reactAct ~= nil

-- act is supported react-dom@16.8.0
-- so for versions that don't have act from test utils
-- we do this little polyfill. No warnings, but it's
-- better than nothing.
-- ROBLOX deviation START: don't polyfill
-- local function actPolyfill(cb)
-- 	ReactDOM:unstable_batchedUpdates(cb)
-- 	ReactDOM:render(React.createElement("Frame", nil), Instance.new("Frame"))
-- end

local act = reactAct
-- ROBLOX deviation END

local youHaveBeenWarned = false
local isAsyncActSupported = nil

local function asyncAct(cb)
	if actSupported == true then
		if isAsyncActSupported == nil then
			return Promise.new(function(resolve, reject)
				-- patch console.error here
				local originalConsoleError = console.error
				console.error = function(...: any)
					local args = table.pack(...)
					--[[ if console.error fired *with that specific message* ]]
					--[[ istanbul ignore next ]]
					local firstArgIsString = typeof(args[1]) == "string"
					if
						firstArgIsString
						and string.find(
								args[
									1 --[[ ROBLOX adaptation: added 1 to array index ]]
								],
								"Warning: Do not await the result of calling ReactTestUtils.act"
							)
							== 1
					then
						-- v16.8.6
						isAsyncActSupported = false
					elseif
						firstArgIsString
						and string.find(
								args[1],
								"Warning: The callback passed to ReactTestUtils.act(...) function must not return anything"
							)
							== 1
					then
						-- no-op
					else
						originalConsoleError(...)
					end
				end

				local cbReturn, result
				local ok, err = pcall(function()
					result = reactAct(function()
						cbReturn = cb()
						return cbReturn
					end)
				end)

				if not ok then
					console.error = originalConsoleError
					reject(err)
					return
				end

				result:andThen(function()
					console.error = originalConsoleError
					-- if it got here, it means async act is supported
					isAsyncActSupported = true
					resolve()
				end, function(err)
					console.error = originalConsoleError
					isAsyncActSupported = true
					reject(err)
				end)

				-- 16.8.6's act().then() doesn't call a resolve handler, so we need to manually flush here, sigh

				if isAsyncActSupported == false then
					console.error = originalConsoleError
					--[[ istanbul ignore next ]]
					if not youHaveBeenWarned then
						-- if act is supported and async act isn't and they're trying to use async
						-- act, then they need to upgrade from 16.8 to 16.9.
						-- This is a seamless upgrade, so we'll add a warning
						console.error(
							'It looks like you\'re using a version of react-dom that supports the "act" function, but not an awaitable version of "act" which you will need. Please upgrade to at least react-dom@16.9.0 to remove this warning.'
						)
						youHaveBeenWarned = true
					end

					cbReturn:andThen(function()
						-- a faux-version.
						-- todo - copy https://github.com/facebook/react/blob/master/packages/shared/enqueueTask.js
						Promise.resolve():andThen(function()
							-- use sync act to flush effects
							act(function() end)
							resolve()
						end)
					end, reject)
				end
			end)
		elseif isAsyncActSupported == false then
			-- use the polyfill directly
			local result: Promise<any>
			act(function()
				result = cb() :: any
			end)
			return result:andThen(function()
				return (Promise.resolve() :: Promise<any>):andThen(function()
					-- use sync act to flush effects
					act(function() end)
				end)
			end) :: any
		end
		-- all good! regular act
		return act(cb)
	end

	-- use the polyfill
	local result: Promise<any>
	act(function()
		result = cb() :: any
	end)
	return result:andThen(function()
		return Promise.resolve():andThen(function()
			-- use sync act to flush effects
			act(function() end)
		end)
	end)
end

exports.default = act
exports.asyncAct = asyncAct

--[[ eslint no-console:0 ]]
return exports
