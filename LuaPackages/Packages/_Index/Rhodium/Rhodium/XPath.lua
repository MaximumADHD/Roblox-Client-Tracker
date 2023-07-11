--!strict
type Filter = {
	key: string,
	value: string,
}
type Segment = {
	filter: { Filter }?,
	name: any,
}

type XPathPrivate = {
	data: { Segment },
	root: Instance?,
}

type XPathStatic = {
	-- TODO: Change return types to use once downstream is ready to adopt
	-- new: (obj: string | Instance | XPath, root: Instance?) -> XPath,
	new: (obj: string | Instance | any, root: Instance?) -> any,
	addSlash: (str: string) -> string,
	removeSlash: (str: string) -> string,
}

type XPathInternal = XPathStatic & XPathPrivate & {
	__type: "XPath",
	waitDelay: number,
	waitTimeOut: number,

	size: (self: XPathInternal) -> number,
	mergeFilter: (self: XPathInternal, index: number, additionalFilter: { Filter }?) -> (),
	fromString: (self: XPathInternal, str: string) -> (),
	copy: (self: XPathInternal) -> XPathInternal,
	parent: (self: XPathInternal) -> XPathInternal?,
	_itemToString: (self: XPathInternal, item: Segment) -> string,
	toString: (self: XPathInternal, arg: nil | number | Segment) -> string,
	hasChild: (self: XPathInternal, child: XPathInternal) -> boolean,
	relative: (self: XPathInternal, root: XPathInternal) -> XPathInternal?,
	cat: (self: XPathInternal, path: string | XPath) -> XPathInternal,
	clearFilter: (self: XPathInternal) -> (),
	getFirstInstance: (self: XPathInternal) -> Instance?,
	getInstances: (self: XPathInternal) -> ({ Instance }, number),
	setWait: (self: XPathInternal, timeOut: number?, delay: number?) -> XPathInternal,
	waitFor: <T>(
		self: XPathInternal,
		execute: () -> T,
		condition: (T) -> boolean,
		delay: number?,
		timeOut: number?
	) -> (T?, boolean),
	waitForFirstInstance: (self: XPathInternal) -> Instance?,
	waitForInstances: (self: XPathInternal, condition: ({ Instance }) -> boolean) -> ({ Instance }?, boolean),
	waitForDisappear: (self: XPathInternal) -> boolean,
	waitForNInstances: (self: XPathInternal, n: number) -> ({ Instance }, boolean),
}

export type XPath = XPathStatic & {
	waitDelay: number,
	waitTimeOut: number,

	size: (self: XPath) -> number,
	mergeFilter: (self: XPath, index: number, additionalFilter: { Filter }?) -> (),
	fromString: (self: XPath, str: string) -> (),
	copy: (self: XPath) -> XPath,
	parent: (self: XPath) -> XPath?,
	toString: (self: XPath, arg: nil | number) -> string,
	hasChild: (self: XPath, child: XPath) -> boolean,
	relative: (self: XPath, root: XPath) -> XPath?,
	cat: (self: XPath, path: string | XPath) -> XPath,
	clearFilter: (self: XPath) -> (),
	getFirstInstance: (self: XPath) -> Instance?,
	getInstances: (self: XPath) -> ({ Instance }, number),
	setWait: (self: XPath, timeOut: number?, delay: number?) -> XPath,
	waitFor: <T>(
		self: XPath,
		execute: () -> T,
		condition: (T) -> boolean,
		delay: number?,
		timeOut: number?
	) -> (T?, boolean),
	waitForFirstInstance: (self: XPath) -> Instance?,
	waitForInstances: (self: XPath, condition: ({ Instance }) -> boolean) -> ({ Instance }?, boolean),
	waitForDisappear: (self: XPath) -> boolean,
	waitForNInstances: (self: XPath, n: number) -> ({ Instance }, boolean),
}

local XPath = ({
	__type = "XPath",
} :: any) :: XPathInternal;
(XPath :: any).__index = XPath

local specialChars = [[\.=[],]]
local specialCharMap = {}
for i = 1, #specialChars do
	local ch = specialChars:sub(i, i)
	specialCharMap[ch] = true
end

function XPath.addSlash(str: string): string
	local tab = {}
	for i = 1, str:len() do
		local ch = str:sub(i, i)
		if specialCharMap[ch] then
			table.insert(tab, "\\")
		end
		table.insert(tab, ch)
	end
	return table.concat(tab)
end

function XPath.removeSlash(str: string): string
	local tab = {}
	local isBackSlash = false
	for i = 1, str:len() do
		local ch = str:sub(i, i)
		if ch == "\\" and isBackSlash == false then
			isBackSlash = true
		else
			if isBackSlash == true then
				isBackSlash = false
			end
			table.insert(tab, ch)
		end
	end
	return table.concat(tab)
end

local function splitByCharWithSlash(s: string, token: string): { string }
	local result = {}
	if s == nil or s == "" then
		return result
	end
	local isBackSlash = false
	local lastIndex = 1
	for i = 1, s:len() do
		local ch = s:sub(i, i)
		if ch == "\\" and isBackSlash == false then
			isBackSlash = true
		else
			if isBackSlash == true then
				isBackSlash = false
			else
				if ch == token then
					table.insert(result, (s:sub(lastIndex, i - 1)))
					lastIndex = i + 1
				end
			end
		end
	end
	table.insert(result, (s:sub(lastIndex, s:len())))
	return result
end

local function deepCopy(t: { [string]: any })
	local t2 = {}
	for k, v in pairs(t) do
		if type(v) == "table" then
			t2[k] = deepCopy(v)
		else
			t2[k] = v
		end
	end
	return t2
end

function XPath.new(obj, root)
	local self: XPathInternal = {
		data = {} :: { Segment },
		root = root,
		waitDelay = 0.2,
		waitTimeOut = 2,
	} :: any

	setmetatable(self, XPath)

	if type(obj) == "string" then
		self:fromString(obj)
	elseif type(obj) == "userdata" then
		local current = obj
		while current do
			local name = current.Name
			if current.ClassName == "DataModel" then
				name = "game"
			end
			table.insert(self.data, 1, { name = name })
			-- It should be safe to assume that a `userdata` is an Instance, this
			-- will always be true in normal circumstances
			current = (current :: any).Parent
		end
	elseif type(obj) == "table" and (obj :: any).__type == XPath.__type then
		return (obj :: XPath):copy()
	else
		error(string.format("unknown parameter %s", tostring(obj)))
	end
	return (self :: any) :: XPath
end

function XPath:size(): number
	return #self.data
end

function XPath:mergeFilter(index, additionalFilter)
	if index > self:size() then
		error("bad index")
	end
	local filter = self.data[index].filter or {}
	local filterDict = {}
	for _, item in ipairs(filter) do
		filterDict[item.key] = item.value
	end
	if additionalFilter then
		for _, item in ipairs(additionalFilter) do
			filterDict[item.key] = tostring(item.value)
		end
	end
	local newFilter = {}
	for k, v in pairs(filterDict) do
		table.insert(newFilter, { key = k, value = v })
	end
	self.data[index].filter = newFilter
	return self
end

function XPath:fromString(str)
	local inBracket = false
	local isBackSlash = false
	local data = {} :: { Segment }
	local lastIndex = 1
	str = str .. "."
	for i = 1, str:len() do
		local ch = str:sub(i, i)
		if ch == "\\" and isBackSlash == false then
			isBackSlash = true
		else
			if isBackSlash == true then
				isBackSlash = false
			else
				if ch == "." then
					if not inBracket then
						table.insert(data, { name = str:sub(lastIndex, i - 1) })
						lastIndex = i + 1
					end
				elseif ch == "[" then
					if inBracket == true then
						error("no nested bracket allowed: " .. str)
					end
					inBracket = true
				elseif ch == "]" then
					if not inBracket then
						error("unbalanced brackets: " .. str)
					end
					inBracket = false
				end
			end
		end
	end
	if inBracket == true then
		error("unbalanced brackets: " .. str)
	end

	for i = 1, #data do
		-- Luau FIXME: `string.match` needs to be setup with a magic function to
		-- support captures
		local name: string?, filters: string? = data[i].name:match("%s*(.*[^\\])%[(.*[^\\])%]%s*")
		if name == nil then
			filters = ""
			name = data[i].name
		end
		if name ~= nil and filters ~= nil then
			data[i].name = XPath.removeSlash(name)
			local filterArray = splitByCharWithSlash(filters, ",")
			local filterObjs = {} :: { Filter }
			for _, filter in ipairs(filterArray) do
				-- Luau FIXME: `string.match` needs to be setup with a magic function to
				-- support captures
				local key: string?, value: string? = filter:match("^%s*(.-[^\\])%s*=%s*(.-)%s*$")
				if key and value then
					table.insert(filterObjs, { key = key, value = value })
				end
			end
			data[i].filter = filterObjs
		end
	end
	self.data = data
end

function XPath:copy()
	local result = deepCopy(self)
	setmetatable(result, XPath)
	return result
end

function XPath:parent()
	local newOne = self:copy()
	if #newOne.data <= 1 then
		--error("this is the root")
		return newOne
	else
		table.remove(newOne.data, #newOne.data)
	end
	return newOne
end

function XPath:_itemToString(item)
	local result = XPath.addSlash(item.name)
	if item.filter and #item.filter > 0 then
		local filter = {} :: { string }
		for _, v in ipairs(item.filter) do
			table.insert(filter, v.key .. " = " .. v.value)
		end
		result = result .. "[" .. table.concat(filter, ", ") .. "]"
	end
	return result
end

function XPath:toString(arg)
	if arg == nil then
		local tab = {}
		for _, item in ipairs(self.data) do
			table.insert(tab, self:_itemToString(item))
		end
		return table.concat(tab, ".")
	elseif type(arg) == "number" then
		if arg < 0 then
			-- Luau FIXME: shouldn't have to cast here
			arg = self:size() + arg + 1
		end
		if arg > self:size() or arg < 1 then
			error("invalid index")
		end
		return self:_itemToString(self.data[arg])
	elseif type(arg) == "table" then
		return self:_itemToString(arg)
	else
		error("Unsupported argument to `XPath:toString()`")
	end
end

function XPath:hasChild(child)
	return child:relative(self) ~= nil
end

function XPath:relative(root)
	if self:size() < #root.data then
		return nil
	end
	local newRoot = root:copy()
	local newSelf = self:copy()

	while #newRoot.data > 0 do
		if newRoot.data[1].name ~= newSelf.data[1].name then
			return nil
		end
		table.remove(newRoot.data, 1)
		table.remove(newSelf.data, 1)
	end
	return newSelf
end

function XPath:cat(path)
	if typeof(path) == "string" then
		path = XPath.new(path)
	end

	local newOne = self:copy()
	for _, k in ipairs((path :: XPathInternal).data) do
		table.insert(newOne.data, k)
	end
	return newOne
end

function XPath:clearFilter()
	for i = 1, self:size() do
		self.data[i].filter = nil
	end
	return self
end

local function getProperty(instance: Instance, property: string)
	local state, result = pcall(function()
		return (instance :: any)[property]
	end)
	return if state then result else nil
end

local function propertyMatch(prop, expr)
	prop = tostring(prop)
	expr = tostring(expr)
	return expr == "*" or prop == expr
end

local function findChildrenByName(instance: Instance, name: string): { Instance }
	local children = instance:GetChildren()
	local result: { Instance } = {}
	for _, child in ipairs(children) do
		if propertyMatch(getProperty(child, "Name"), name) then
			table.insert(result, child)
		end
	end
	-- for game.Players, their is no child "LocalPlayer", but you can access it.
	if #result == 0 then
		local child = getProperty(instance, name)
		if child then
			table.insert(result, child)
		end
	end
	return result
end

local function findChildren(instances: { Instance }, name: string): { Instance }
	local result: { Instance } = {}
	for _, instance in ipairs(instances) do
		local children = findChildrenByName(instance, name)
		for _, child in ipairs(children) do
			table.insert(result, child)
		end
	end
	return result
end

local function findCandidates(instances: { Instance }, path: { string })
	for _, name in ipairs(path) do
		instances = findChildren(instances, name)
	end
	return instances
end

local function passFilter(instance: Instance, filter: Filter): boolean
	local key = filter.key
	-- Luau FIXME: `string.match` needs to be setup with a magic function to
	-- support captures
	local path: string?, propertyName: string? = key:match("^%.?(.*[^\\])%.(%w-)$")

	if propertyName == nil then
		path = ""
		propertyName = key:match("^%.?(%w-)$")
	end

	if propertyName ~= nil then
		local pathData = splitByCharWithSlash(path :: string, ".")
		for i = 1, #pathData do
			pathData[i] = XPath.removeSlash(pathData[i])
		end

		local candidates = findCandidates({ instance }, pathData)
		for _, candidate in ipairs(candidates) do
			local property = getProperty(candidate, propertyName)
			if propertyMatch(property, XPath.removeSlash(filter.value)) then
				return true
			end
		end
	end

	return false
end

local function passFilters(instance: Instance, filters: { Filter }): boolean
	for _, filter in ipairs(filters) do
		if not passFilter(instance, filter) then
			return false
		end
	end
	return true
end

local function applyFilters(candidates: { Instance }, filters: { Filter }?): { Instance }
	if filters == nil then
		return candidates
	end
	local result = {}
	for _, candidate in ipairs(candidates) do
		if passFilters(candidate, filters :: { Filter }) then
			table.insert(result, candidate)
		end
	end
	return result
end

function XPath:getFirstInstance()
	local instances = self:getInstances()
	if #instances == 0 then
		return nil
	else
		return instances[1]
	end
end

function XPath:getInstances()
	if self:size() < 1 then
		error("instance " .. self:toString() .. " does not exist")
	end

	local rootInstance: Instance? = nil
	local rootName = self.data[1].name

	if rootName == "game" then
		rootInstance = game
	elseif rootName == "PluginGuiService" then
		rootInstance = game:GetService("PluginGuiService")
	end

	if self.root == nil and rootInstance == nil then
		error("instance " .. self:toString() .. " does not exist")
	end

	local instances: { Instance } = { (if self.root then self.root else rootInstance) :: any }
	local i = self.root and 1 or 2
	while i <= self:size() do
		local name = self.data[i].name
		local filters = self.data[i].filter
		local candidates = findChildren(instances, name)
		instances = applyFilters(candidates, filters)
		if #instances == 0 then
			return instances, i - 1
		end
		i = i + 1
	end
	return instances, i - 1
end

function XPath:setWait(timeOut, delay)
	self.waitDelay = delay or self.waitDelay
	self.waitTimeOut = timeOut or self.waitTimeOut
	return self
end

function XPath:waitFor<T>(execute: () -> T, condition: (T) -> boolean, delay, timeOut): (T?, boolean)
	delay = delay or self.waitDelay
	timeOut = timeOut or self.waitTimeOut

	-- selene: allow(incorrect_standard_library_use)
	assert(timeOut)

	timeOut = os.clock() + timeOut
	while true do
		local result = execute()
		if condition(result) then
			return result, true
		end
		task.wait(delay)
		if os.clock() > timeOut then
			return result, false
		end
	end
end

function XPath:waitForFirstInstance()
	local instances = self:waitForNInstances(1)
	if instances ~= nil and #instances > 0 then
		return instances[1]
	end
	return nil
end

function XPath:waitForInstances(condition)
	if type(condition) ~= "function" then
		error("arg #1 should be a function")
	end
	return self:waitFor(function()
		return self:getInstances()
	end, condition)
end

function XPath:waitForDisappear()
	local _, state = self:waitForInstances(function(instances)
		return #instances == 0
	end)
	return state == true
end

function XPath:waitForNInstances(n)
	local instances, didComplete = self:waitForInstances(function(foundInstances)
		return #foundInstances >= n
	end)
	return instances or {}, didComplete
end

return XPath
