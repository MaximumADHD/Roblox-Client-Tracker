local root = script.Parent
local Cryo = require(root.Cryo)

local UriIds = {}
UriIds.__index = UriIds

function UriIds:new(ids, delimiter)
	return setmetatable({
		ids = UriIds.makeArray(ids),
		delimiter = delimiter
	}, self)
end

function UriIds:setIds(ids)
	self.ids = UriIds.makeArray(ids)
end

function UriIds.makeArray(ids)
	if type(ids) == "table" then
		return ids
	end
	return {ids}
end

function UriIds:__tostring()
	return table.concat(self.ids, self.delimiter)
end

local RequestBuilder = {}
RequestBuilder.__index = RequestBuilder

export type RequestBuilderType = typeof(setmetatable(
	{} :: {
		baseUrl: string,
		pathElements: {string},
		args: { [string]: any },
		configurableIds: any,
		namedIds: { [string]: { any }},
		idsDelimiter: string,
		options: {
			queryArgs: { [string]: any }?,
			postBody: { [string]: any }?,
			headers: { [string]: string | Secret }?,
		},
		useExpandedForm: { [string]: boolean },
		statusIds: any,
		additionalData: any,
		_plugInConfigurableIds: any,
	},
	RequestBuilder
))

-- The default constructor for our class is called `new` by convention.
function RequestBuilder.new(baseUrl: string, additionalData: any?): RequestBuilderType
	-- Remove any trailing slashes from baseUrl
	local normalizedBaseUrl = baseUrl:gsub("/*$", "")

	local self = {
		baseUrl = normalizedBaseUrl,
		args = {},
		pathElements = {},
		configurableIds = nil,
		namedIds = {},
		 idsDelimiter = ",",
		 options = {
		 	queryArgs = nil,
		 	postBody = nil,
			headers = nil,
		 },
		useExpandedForm = {},
		statusIds = nil,
		additionalData = additionalData or {},
	}

	setmetatable(self, RequestBuilder)

	return self
end

function RequestBuilder.path(self: RequestBuilderType, path: string)
	-- Remove leading and trailing slashes from the path part
	path = path:gsub("^/", ""):gsub("/$", "")
	table.insert(self.pathElements, path)
	return self
end

function RequestBuilder.id(self: RequestBuilderType, ids, key)
	if not key and #self.pathElements < 1 then
		warn("Cannot name id or ids because there is no leading path segment and no name is provided")
	end
	local name = key or self.pathElements[#self.pathElements]
	self.namedIds[name] = ids

	self.configurableIds = UriIds:new(ids, self.idsDelimiter)
	table.insert(self.pathElements, self.configurableIds)
	return self
end

function RequestBuilder.queryArgWithIds(self: RequestBuilderType, argName, ids)
	local combinedIds = Cryo.List.join(ids, self.namedIds[argName] or {})
	self.namedIds[argName] = combinedIds
	self.configurableIds = UriIds:new(combinedIds, self.idsDelimiter)
	self.args = Cryo.Dictionary.join(self.args, {
		[argName] = self.configurableIds
	})
	return self
end

function RequestBuilder.expandedQueryArgsWithIds(self:RequestBuilderType, argName, ids)
	self.useExpandedForm[argName] = true
	self:queryArgWithIds(argName, ids)
	return self
end

function RequestBuilder.queryArgs(self:RequestBuilderType, args)
	self.args = Cryo.Dictionary.join(self.args, args)
	self.options.queryArgs = Cryo.Dictionary.join(args, self.options.queryArgs or {})
	return self
end

function RequestBuilder.body(self:RequestBuilderType, dictionary)
	self.options.postBody = dictionary
	return self
end

function RequestBuilder.headers(self:RequestBuilderType, headers: { [string]: string | Secret })
	self.options.headers = headers
	return self
end

function RequestBuilder.makeKeyMapper(self:RequestBuilderType)
	return function(someId)
		return self:getStatusIds()
			and self:makeStatusUrl(someId)
			or self:makeNamedIdsUrl(someId)
	end
end

function RequestBuilder._normalize(self:RequestBuilderType, url)
	return url:gsub("/+", "/")
end

function RequestBuilder.makeUri(self:RequestBuilderType)
	local fullPath = ""
	for _, element in ipairs(self.pathElements) do
		fullPath = fullPath .. "/" .. tostring(element)
	end
	return self:_normalize(fullPath)
end

local function concatArguments(argsString: string, argName: string, argIds, useExpandedForm: boolean?): string
	if useExpandedForm then
		for _, id in pairs(argIds.ids) do
			argsString = concatArguments(argsString, argName, id)
		end
	else
		local arg = tostring(argName) .. "=" .. tostring(argIds)
		if argsString:len() > 1 then
			argsString = argsString .. "&" .. arg
		else
			argsString = arg
		end
	end

	return argsString
end

function RequestBuilder.makeQueryArgs(self:RequestBuilderType, ids: any, onlyNamedIds: boolean?)
	self:_plugInConfigurableIds(ids)
	local argsString = ""
	for argName, argIds in pairs(self.args) do
		if (onlyNamedIds and self.namedIds[argName])
			or not onlyNamedIds
		then
			argsString = concatArguments(argsString, argName, argIds, self.useExpandedForm[argName])
		end
	end
	if argsString:len() > 1 then
		return "?" .. argsString
	end
	return ""
end

function RequestBuilder.makeUrl(self:RequestBuilderType, ids: any, onlyNamedIds: boolean?)
	self:_plugInConfigurableIds(ids)
	local fullUrl = self.baseUrl .. self:makeUri() .. self:makeQueryArgs(ids, onlyNamedIds)
	return fullUrl
end

function RequestBuilder.makeStatusUrl(self:RequestBuilderType, ids): string
	local url = self.baseUrl .. self:makeUri()
	if not ids then
		return url
	end
	local idsTable: {string} = type(ids) == "table" and ids or { ids }
	local idsString = ''
	for i, id in pairs(idsTable) do
		idsString = i > 1
			and idsString .. "&" .. id
			or id
	end
	return url .. "?" .. idsString
end

function RequestBuilder.makeNamedIdsUrl(self:RequestBuilderType, ids)
	return self:makeUrl(ids, true)
end

function RequestBuilder.makeOptions(self:RequestBuilderType)
	return self.options
end

function RequestBuilder._plugInConfigurableIds(self:RequestBuilderType, ids)
	if ids ~= nil and self.configurableIds then
		self.configurableIds:setIds(ids)
	end
end

function RequestBuilder.getIds(self:RequestBuilderType)
	if self.configurableIds and self.configurableIds.ids then
		return self.configurableIds.ids
	elseif self.statusIds then
		return self.statusIds
	else
		return {}
	end
end

function RequestBuilder.getNamedIds(self:RequestBuilderType)
	return self.namedIds
end

function RequestBuilder.setStatusIds(self:RequestBuilderType, ids)
	if self.configurableIds then
		warn("Cannot set statusIds because ids already provided in URl")
		return self
	end
	self.statusIds = Cryo.List.join(self.statusIds or {}, ids)
	return self
end

function RequestBuilder.getStatusIds(self:RequestBuilderType)
	if self.configurableIds then
		return nil
	else
		return self.statusIds
	end
end

function RequestBuilder.getAdditionalData(self:RequestBuilderType)
	return self.additionalData or {}
end

return RequestBuilder
