local root = script.Parent
local Packages = root.Parent

local HttpServiceMock = require(Packages.HttpServiceMock)
local SharedUtils = require(Packages.SharedUtils)
local LineWriter = SharedUtils.LineWriter

local Matcher = require(root.Matcher)

type Request = HttpServiceMock.Request
type Response = HttpServiceMock.Response
type RequestResult<R = Response> = HttpServiceMock.RequestResult<R>

type Matcher = Matcher.Matcher

local DEFAULT_REASON = "unspecified"

type Processor =
	{ matcher: Matcher, mapper: (Request) -> RequestResult }
	| { matcher: nil, mapper: (Request) -> (RequestResult?, string?) }
export type RequestPipeline = {
	appendOptionalProcessor: (
		self: RequestPipeline,
		mapper: (Request) -> (RequestResult?, string?)
	) -> RequestPipeline,
	appendProcessor: (
		self: RequestPipeline,
		matcher: Matcher | (Request) -> (boolean, string?),
		mapper: (Request) -> RequestResult
	) -> RequestPipeline,
	process: (self: RequestPipeline, request: Request) -> RequestResult,
	_processors: { Processor },
}
type RequestPipelineStatic = {
	new: () -> RequestPipeline,
}

local RequestPipeline: RequestPipeline & RequestPipelineStatic = {} :: any
local RequestPipelineMetatable = { __index = RequestPipeline }

function RequestPipeline.new(): RequestPipeline
	return setmetatable({
		_processors = {},
	}, RequestPipelineMetatable) :: any
end

function RequestPipeline:appendOptionalProcessor(
	mapper: (Request) -> (RequestResult?, string?)
): RequestPipeline
	table.insert(self._processors, {
		matcher = nil,
		mapper = mapper,
	})
	return self
end

function RequestPipeline:appendProcessor(
	matcher: Matcher | (Request) -> (boolean, string?),
	mapper: (Request) -> RequestResult
): RequestPipeline
	table.insert(self._processors, {
		matcher = if typeof(matcher) == "function" then Matcher.fromFilter(matcher) else matcher,
		mapper = mapper,
	})
	return self
end

function RequestPipeline:process(request: Request): RequestResult
	local reasons = {}

	if #self._processors == 0 then
		error(
			"RequestPipeline does not contain any processor. Make sure to "
				.. "insert one with `appendProcessor` or `appendOptionalProcessor`",
			2
		)
	end

	for _, processor in ipairs(self._processors) do
		if processor.matcher then
			local result = processor.matcher:matches(request)

			if result.success then
				return processor.mapper(request)
			end

			table.insert(reasons, result.reason or DEFAULT_REASON)
		else
			local mapper: (Request) -> (RequestResult?, string?) = processor.mapper
			local result, reason = mapper(request)

			if result then
				return result
			end

			table.insert(reasons, reason or DEFAULT_REASON)
		end
	end

	local lines = LineWriter.new()
		:write(
			"The request pipeline was unable to process a request because "
				.. "it did not match with any matcher. Here is why each matcher failed:"
		)
		:write("")
	for index, processor in ipairs(self._processors) do
		local reason = reasons[index]
		local isMultiline = reason:find("\n") ~= nil
		lines:write(
			"%4d. %s%s%s%s",
			index,
			if processor.matcher then processor.matcher.name .. ":" else "",
			if isMultiline and processor.matcher then "\n" else " ",
			reason,
			if isMultiline then "\n" else ""
		)
	end

	return {
		type = "internal-error",
		error = lines:toString(),
	}
end

return RequestPipeline
