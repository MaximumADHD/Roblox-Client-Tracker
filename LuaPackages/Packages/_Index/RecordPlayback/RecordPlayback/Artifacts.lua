local root = script.Parent
local Packages = root.Parent

local HttpServiceMock = require(Packages.HttpServiceMock)

local deepEqual = require(root.deepEqual)
local RequestWriter = require(root.RequestWriter)
local RequestFormatter = require(root.RequestFormatter)

type Request = HttpServiceMock.Request
type Response = HttpServiceMock.Response
type FormattedRequest = RequestFormatter.FormattedRequest
type Writer = RequestWriter.RequestWriter

type Content = {
	usage: number,
	object: RequestWriter.SerializedObject,
}

type FindResult = { response: Response, error: nil } | { error: any, response: nil } | nil
export type Artifacts = {
	useRequestsOnce: (self: Artifacts) -> Artifacts,
	find: (self: Artifacts, request: Request) -> FindResult,
	getUnusedRequests: (self: Artifacts) -> { FormattedRequest },
	_loadRequests: (self: Artifacts) -> { Content },
	_deserialize: (self: Artifacts, module: ModuleScript) -> Content,
	_parent: Instance,
	_loadedContent: { Content }?,
	_formatter: RequestFormatter.RequestFormatter,
	_require: (ModuleScript) -> RequestWriter.SerializedObject,
	_useRequestsOnce: boolean,
}
type ArtifactsStatic = {
	new: (parent: Instance) -> Artifacts,
}

local Artifacts: Artifacts & ArtifactsStatic = {} :: any
local ArtifactsMetatable = { __index = Artifacts }

function Artifacts.new(parent: Instance): Artifacts
	return setmetatable({
		_parent = parent,
		_loadedContent = nil,
		_formatter = RequestFormatter.new(),
		_require = require,
		_useRequestsOnce = false,
	}, ArtifactsMetatable) :: any
end

function Artifacts:useRequestsOnce(): Artifacts
	self._useRequestsOnce = true
	return self
end

function Artifacts:find(request: Request): FindResult
	if not self._loadedContent then
		self._loadedContent = self:_loadRequests()
	end

	local adaptedRequest = self._formatter:formatRequest(request)

	for _, content: Content in ipairs(self._loadedContent or {}) do
		if
			(not self._useRequestsOnce or content.usage == 0)
			and deepEqual(content.object.request, adaptedRequest)
		then
			content.usage += 1
			local object = content.object
			if object.response then
				return { response = self._formatter:loadResponse(object.response) }
			else
				return { error = object.error }
			end
		end
	end

	return nil
end

function Artifacts:getUnusedRequests(): { FormattedRequest }
	if not self._loadedContent then
		self._loadedContent = self:_loadRequests()
	end

	local requests = {}

	for _, content: Content in ipairs(self._loadedContent or {}) do
		if content.usage == 0 then
			table.insert(requests, content.object.request)
		end
	end

	return requests
end

function Artifacts:_loadRequests(): { Content }
	local content = {}
	for _, module in self._parent:GetDescendants() do
		if module:IsA("ModuleScript") then
			table.insert(content, self:_deserialize(module))
		end
	end
	return content
end

function Artifacts:_deserialize(module: ModuleScript): Content
	-- since we are storing the requests data as Luau modules, we can
	-- deserialize simply by requiring the module
	local content = {
		object = self._require(module),
		usage = 0,
	}

	return content
end

return Artifacts
