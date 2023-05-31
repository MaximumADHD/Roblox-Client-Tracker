local root = script.Parent
local Packages = root.Parent

local Promise = require(Packages.Promise)
local SharedUtils = require(Packages.SharedUtils)
local HttpServiceMock = require(Packages.HttpServiceMock)
local PrettyFormat = require(Packages.PrettyFormat)

local ImmediateSignal = require(root.ImmediateSignal)
type ImmediateSignal<T...> = ImmediateSignal.ImmediateSignal<T...>

type Request = HttpServiceMock.Request
type PromiseStatus =
	typeof(Promise.Status.Started)
	| typeof(Promise.Status.Resolved)
	| typeof(Promise.Status.Rejected)
	| typeof(Promise.Status.Cancelled)
type Promise<T> = SharedUtils.PromiseLike<T>

type RequestPromiseTrackerMembers<T> = {
	_makeRequest: <T>(request: Request) -> T,
	_running: boolean,
	_source: string,
	_rejections: { any },
	_promises: { [Promise<T>]: boolean },
	_warn: <U...>(U...) -> (),
	_onClose: ImmediateSignal<()>,
}
export type RequestPromiseTrackerMethods = {
	makeRequest: <T>(
		self: RequestPromiseTrackerMethods & RequestPromiseTrackerMembers<T>,
		request: Request,
		source: string
	) -> Promise<T>,
	getRejections: <T>(
		self: RequestPromiseTrackerMethods & RequestPromiseTrackerMembers<T>
	) -> { any },
	getRunningPromises: <T>(
		self: RequestPromiseTrackerMethods & RequestPromiseTrackerMembers<T>
	) -> { Promise<T> },
	close: <T>(self: RequestPromiseTrackerMethods & RequestPromiseTrackerMembers<T>) -> (),
}
export type RequestPromiseTracker<T> = RequestPromiseTrackerMethods & RequestPromiseTrackerMembers<T>

type RequestPromiseTrackerStatic = {
	new: <T>(
		makeRequest: (Request, source: string) -> T,
		testSource: string
	) -> RequestPromiseTrackerMethods & RequestPromiseTrackerMembers<T>,
}

local RequestPromiseTracker: RequestPromiseTrackerMethods & RequestPromiseTrackerStatic = {} :: any
local RequestPromiseTrackerMetatable = { __index = RequestPromiseTracker }

function RequestPromiseTracker.new<T>(
	makeRequest: (Request, source: string) -> T,
	testSource: string
): RequestPromiseTracker<T>
	return setmetatable({
		_makeRequest = makeRequest,
		_running = true,
		_source = testSource,
		_rejections = {},
		_promises = {},
		_warn = warn,
		_onClose = ImmediateSignal.new(),
	}, RequestPromiseTrackerMetatable) :: any
end

function RequestPromiseTracker:makeRequest<T>(request: Request, source: string): Promise<T>
	if not self._running then
		local message = string.format(
			"Attempt to create request after test was done. Test location: %s\nRequest: %s\n\nRequest was made at: %s",
			self._source,
			PrettyFormat.format(request),
			source
		)
		self._warn(message)
		return Promise.resolve({
			type = "error",
			error = message,
		})
	end

	local function processError(rejectedValue)
		table.insert(self._rejections, rejectedValue)
		return {
			type = "error",
			error = rejectedValue,
		}
	end

	local function filterInternalErrors(result)
		if result.type == "internal-error" then
			local message = tostring(result.error)
			table.insert(self._rejections, message)
			return {
				type = "error",
				error = message,
			}
		elseif result.type == "suspend" then
			return Promise.new(function(resolve, _reject)
				self._onClose:connect(function()
					resolve({
						type = "error",
						error = "request was delayed until the record-playback logic ended",
					})
				end)
			end)
		end

		return result
	end

	local promise = Promise.try(self._makeRequest, request)
		:andThen(filterInternalErrors, processError)
	self._promises[promise] = true

	return promise
end

function RequestPromiseTracker:getRejections<T>(): { any }
	return self._rejections
end

function RequestPromiseTracker:getRunningPromises<T>(): { Promise<T> }
	local runningPromises = {}
	for promise in pairs(self._promises) do
		local status = promise:getStatus()

		if status == Promise.Status.Started then
			table.insert(runningPromises, promise)
		end
	end
	return runningPromises :: { any }
end

function RequestPromiseTracker:close<T>()
	if not self._running then
		error("Attempt to close an already closed promise tracker")
	end
	self._running = false
	self._onClose:fire()
end

return RequestPromiseTracker
