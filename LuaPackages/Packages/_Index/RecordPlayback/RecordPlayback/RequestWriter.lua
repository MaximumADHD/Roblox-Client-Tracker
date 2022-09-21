local root = script.Parent
local Packages = root.Parent

local HttpServiceMock = require(Packages.HttpServiceMock)

local Location = require(root.Location)
local File = require(root.File)
local PathUtils = require(root.PathUtils)
local RequestFormatter = require(root.RequestFormatter)
local LuauModuleSerializer = require(root.LuauModuleSerializer)
local UrlUtils = require(root.UrlUtils)

type Request = HttpServiceMock.Request
type Response = HttpServiceMock.Response
type File = File.File
type Location = Location.Location
type FormattedRequest = RequestFormatter.FormattedRequest
type FormattedResponse = RequestFormatter.FormattedResponse
export type SerializedObject = {
	request: FormattedRequest,
	response: FormattedResponse,
	-- use to differentiate with the other variant
	error: nil,
} | {
	request: FormattedRequest,
	error: any,
	-- use to differentiate with the other variant
	response: nil,
}

-- this is an attempt at making an interface like type
-- the problem is that the type can't be used in place of a RequestWriter
-- type without needing an explicit type cast
type Writer<T> = {
	writeResponse: (self: T, Request, Response) -> (),
	writeError: (self: T, Request, any) -> (),
}
export type RequestWriter = Writer<RequestWriter> & {
	_writeObject: (self: RequestWriter, path: Location, object: any) -> (),
	_getRequestLocation: (self: RequestWriter, request: Request) -> Location,
	_location: Location,
	_createFile: (Location) -> File,
	_formatter: RequestFormatter.RequestFormatter,
	_serializer: LuauModuleSerializer.LuauModuleSerializer,
	_requestCounter: number,
}
type RequestWriterStatic = {
	new: (Location) -> RequestWriter,
}

local RequestWriter: RequestWriter & RequestWriterStatic = {} :: any
local RequestWriterMetatable = { __index = RequestWriter }

function RequestWriter.new(location: Location): RequestWriter
	return setmetatable({
		_location = location,
		_createFile = File.new,
		_formatter = RequestFormatter.new(),
		_serializer = LuauModuleSerializer.new(),
		_requestCounter = 0,
	}, RequestWriterMetatable) :: any
end

function RequestWriter:writeResponse(request: Request, response: Response)
	self:_writeObject(self:_getRequestLocation(request), {
		request = self._formatter:formatRequest(request),
		response = self._formatter:formatResponse(response),
	})
end

function RequestWriter:writeError(request: Request, errorObject: any)
	self:_writeObject(self:_getRequestLocation(request), {
		request = self._formatter:formatRequest(request),
		error = errorObject,
	})
end

function RequestWriter:_writeObject(path: Location, object: any)
	local file = self._createFile(path)

	local content = self._serializer:serialize(object)

	file:write(content)
end

function RequestWriter:_getRequestLocation(request: Request): Location
	-- use this counter to generate unique IDs to append at the end of
	-- the file name to ensure unique names
	self._requestCounter += 1

	local url = UrlUtils.parse(request.Url)

	local host = url.host
	local path = url.path

	if host == nil then
		local firstSlash = url.path:find("/")
		if firstSlash then
			host = url.path:sub(1, firstSlash - 1)
			path = url.path:sub(firstSlash + 1)
		else
			host = url.path
			path = ""
		end
	end

	local fileName = ""

	if path ~= "/" and path ~= "" then
		if path:sub(1, 1) == "/" then
			fileName ..= path:sub(2) .. "-"
		else
			fileName ..= path .. "-"
		end
	end

	fileName ..= request.Method

	if next(url.query) ~= nil then
		fileName ..= "-" .. UrlUtils.formatQuery(url.query)
	end

	fileName = PathUtils.sanitizeFileName(fileName)
	fileName ..= ("-%d.lua"):format(self._requestCounter)

	return self._location:join(PathUtils.sanitizeFileName(host), fileName)
end

return RequestWriter
