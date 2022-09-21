local HttpService = game:GetService("HttpService")

local root = script.Parent
local Packages = root.Parent

local SharedUtils = require(Packages.SharedUtils)
local unwrapPromiseError = SharedUtils.unwrapPromiseError
local RequestPipeline = require(Packages.RequestPipeline)
local PrettyFormat = require(Packages.PrettyFormat)
local HttpServiceMock = require(Packages.HttpServiceMock)

local Artifacts = require(root.Artifacts)
local ArtifactLoader = require(root.ArtifactLoader)
local RequestFormatter = require(root.RequestFormatter)
local RequestPromiseTracker = require(root.RequestPromiseTracker)
local UrlUtils = require(root.UrlUtils)
local LineWriter = SharedUtils.LineWriter
local Error = SharedUtils.Error
local try = SharedUtils.try

type TODO = any
type HttpServiceApi = TODO
type Artifacts = Artifacts.Artifacts
type ArtifactLoader = ArtifactLoader.ArtifactLoader
type FormattedRequest = RequestFormatter.FormattedRequest
type RequestPipeline = RequestPipeline.RequestPipeline
type RequestPromiseTracker = RequestPromiseTracker.RequestPromiseTrackerMethods
type RequestResult = HttpServiceMock.RequestResult
type PromiseLike<T> = SharedUtils.PromiseLike<T>

type ExecuteCallback = (HttpServiceApi) -> () & (HttpServiceApi) -> (() -> ()?)

export type RecordPlayback = {
	forceRecording: (self: RecordPlayback) -> RecordPlayback,
	recordMissingRequests: (self: RecordPlayback) -> RecordPlayback,
	ignoreMissingRequests: (self: RecordPlayback) -> RecordPlayback,
	skipExistenceAssertion: (self: RecordPlayback) -> RecordPlayback,
	reusableRequests: (self: RecordPlayback) -> RecordPlayback,
	execute: (self: RecordPlayback, callback: ExecuteCallback) -> (),
	_insertRecorder: (self: RecordPlayback, pipeline: RequestPipeline) -> (),
	_insertPlayback: (self: RecordPlayback, artifacts: Artifacts, pipeline: RequestPipeline) -> (),
	_insertIgnore: (self: RecordPlayback, pipeline: RequestPipeline) -> (),
	_recordMissingRequests: boolean,
	_forceRecording: boolean,
	_ignoreMissingRequests: boolean,
	_assertRequestExistence: boolean,
	_useRequestsOnlyOnce: boolean,
	_artifactLoader: ArtifactLoader,
	_contentLocation: string,
	_httpService: HttpServiceApi,
	_promiseTracker: RequestPromiseTracker?,
	_warn: <U...>(U...) -> (),
}
type RecordPlaybackStatic = {
	new: (artifactLoader: ArtifactLoader, contentLocation: string) -> RecordPlayback,
}

local function sortRequests(a: FormattedRequest, b: FormattedRequest)
	local aUrl = a.url
	local bUrl = b.url
	if aUrl.host == bUrl.host then
		if aUrl.path == bUrl.path then
			local aQuery = UrlUtils.formatQuery(aUrl.query)
			local bQuery = UrlUtils.formatQuery(bUrl.query)
			return aQuery < bQuery
		else
			return aUrl.path < bUrl.path
		end
	else
		return aUrl.host < bUrl.host
	end
end

local RecordPlayback: RecordPlayback & RecordPlaybackStatic = {} :: any
local RecordPlaybackMetatable = { __index = RecordPlayback }

function RecordPlayback.new(artifactLoader: ArtifactLoader, contentLocation: string): RecordPlayback
	return setmetatable({
		_recordMissingRequests = false,
		_forceRecording = false,
		_ignoreMissingRequests = false,
		_assertRequestExistence = true,
		_useRequestsOnlyOnce = true,
		_artifactLoader = artifactLoader,
		_contentLocation = contentLocation,
		_httpService = HttpService,
		_warn = warn,
	}, RecordPlaybackMetatable) :: any
end

function RecordPlayback:forceRecording(): RecordPlayback
	self._forceRecording = true
	return self
end

function RecordPlayback:recordMissingRequests(): RecordPlayback
	self._recordMissingRequests = true
	return self
end

function RecordPlayback:ignoreMissingRequests(): RecordPlayback
	self._ignoreMissingRequests = true
	return self
end

function RecordPlayback:skipExistenceAssertion(): RecordPlayback
	self._assertRequestExistence = false
	return self
end

function RecordPlayback:reusableRequests(): RecordPlayback
	self._useRequestsOnlyOnce = false
	return self
end

function RecordPlayback:execute(callback: ExecuteCallback)
	if self._forceRecording then
		self._artifactLoader:delete(self._contentLocation)
	end
	local artifacts = self._artifactLoader:load(self._contentLocation, {
		useRequestsOnce = self._useRequestsOnlyOnce,
	})

	local pipeline = RequestPipeline.RequestPipeline.new()

	if artifacts then
		self:_insertPlayback(artifacts, pipeline)
	end
	if artifacts == nil or self._recordMissingRequests then
		self:_insertRecorder(pipeline)
	end
	if self._ignoreMissingRequests then
		self:_insertIgnore(pipeline)
	end

	local function makeRequest(request)
		return pipeline:process(request)
	end
	-- keep the location of which test code executed this, so the library
	-- can better report which test could be trying to run promises after
	-- being done
	local executeSource = debug.traceback(nil, 2)
	local promiseTracker = RequestPromiseTracker.new(makeRequest, executeSource)
	promiseTracker._warn = self._warn

	local function requestImplementation(
		request: HttpServiceMock.Request,
		requestSource: string
	): PromiseLike<RequestResult>
		return promiseTracker:makeRequest(request, requestSource)
	end
	local httpServiceMock = HttpServiceMock.new(requestImplementation)

	-- Luau errors because `callback` may return nothing
	-- this may be linked with the function overloading used here, since
	-- the type is (HttpService) -> () & (HttpService) -> (() -> ())
	-- The `or nil` part fixes the error
	local success, cleanUp = try(function()
		return callback(httpServiceMock) or nil
	end)

	promiseTracker:close()

	if not success then
		-- need something to hold the stack trace information, otherwise
		-- the error context will be lost
		error(cleanUp)
		return
	end

	local messageWriter = LineWriter.new()

	if self._assertRequestExistence and artifacts ~= nil then
		local unusedRequests = artifacts:getUnusedRequests()
		local totalUnusedRequests = #unusedRequests

		table.sort(unusedRequests, sortRequests)

		if totalUnusedRequests == 1 then
			messageWriter:write(
				"A request was expected to happen but it did not: "
					.. PrettyFormat.format(unusedRequests[1], {})
			)
		elseif totalUnusedRequests > 1 then
			messageWriter:write("%d requests were expected to happen:", totalUnusedRequests)

			for _, expectedRequest in ipairs(unusedRequests) do
				messageWriter:write(" -> " .. PrettyFormat.format(expectedRequest, {}))
			end
		end
	end

	if cleanUp then
		local ok, err = try(cleanUp)

		if not ok then
			messageWriter
				:verticalSpace()
				:write("The clean-up callback has encountered an error: %s", tostring(err))
		end
	end

	local rejections = promiseTracker:getRejections()
	local totalRejection = #rejections
	if totalRejection ~= 0 then
		messageWriter
			:verticalSpace()
			:write(
				"%d promise%s rejected:",
				totalRejection,
				if totalRejection == 1 then "" else "s"
			)
		for _, rejection in ipairs(rejections) do
			messageWriter:write(" -> %s", tostring(rejection))
		end
	end

	local runningPromises = promiseTracker:getRunningPromises()
	local totalRunning = #runningPromises

	if totalRunning ~= 0 then
		messageWriter:verticalSpace():write(
			"%d promise%s are still running. Make sure that these promise are being cancelled:",
			totalRunning,
			if totalRunning == 1 then "" else "s"
		)
		for _, promise in ipairs(runningPromises) do
			messageWriter:write(" -> %s", promise._source)
		end
	end

	local errorMessage = messageWriter:toString()
	if errorMessage ~= "" then
		error(Error.new(errorMessage, 1))
	end
end

function RecordPlayback:_insertRecorder(pipeline: RequestPipeline)
	local makeRequest = RequestPipeline.createPassthrough(self._httpService)

	local writer = self._artifactLoader:getWriter(self._contentLocation)

	pipeline:appendProcessor(RequestPipeline.Matcher.all(), function(request)
		local result = makeRequest(request):expect()

		if result.type == "response" then
			writer:writeResponse(request, result.response)
		elseif result.type == "error" then
			writer:writeError(request, unwrapPromiseError(result.error))
		end

		return result
	end)
end

function RecordPlayback:_insertPlayback(artifacts: Artifacts, pipeline: RequestPipeline)
	pipeline:appendOptionalProcessor(function(request)
		local result = artifacts:find(request)

		if result == nil then
			if self._recordMissingRequests then
				return nil
			end

			local message = ("Unable to find response for the request %s\n\n"):format(
				PrettyFormat.format(request, {})
			) .. "To record only new requests, configure the RecordPlayback object by calling `recordMissingRequests()`\n"
			return nil, message
		else
			if result.response ~= nil then
				return {
					type = "response",
					response = result.response,
				}
			end

			return {
				type = "error",
				error = result.error,
			}
		end
	end)
end

function RecordPlayback:_insertIgnore(pipeline: RequestPipeline)
	pipeline:appendProcessor(RequestPipeline.Matcher.all(), function(_request)
		return {
			type = "suspend",
		}
	end)
end

return RecordPlayback
