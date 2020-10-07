--[[
	Provides HTTP request methods for ScreenTime feature.
]]

local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)
local UrlBuilder = require(CorePackages.Packages.UrlBuilder).UrlBuilder
local Logging = require(CorePackages.Logging)
local ArgCheck = require(CorePackages.ArgCheck)

local TEA_END_POINTS = {
	GET_INSTRUCTIONS = "timed-entertainment-allowance/v1/instructions",
	REPORT_EXECUTION = "timed-entertainment-allowance/v1/reportExecute",
}

local RESPONSE_FORMATS = {
	GET_INSTRUCTIONS = {
		errorCode = "number",
		instructions = "table"
	},
	INSTRUCTION = {
		type = "number",
		instructionName = "string",
		serialId = "string",
		title = "string",
		message = "string",
		url = "string",
		modalType = "number",
		data = "string"
	},
	REPORT_EXECUTION = {
		errorCode = "number",
	},
}

local TAG = "HttpRequests"

local getInstructionsUrl = UrlBuilder.new({
	base = Url.APIS_URL,
	path = TEA_END_POINTS.GET_INSTRUCTIONS
})()

local reportExecutionUrl = UrlBuilder.new({
	base = Url.APIS_URL,
	path = TEA_END_POINTS.REPORT_EXECUTION
})()

--[[
	A helper function to check object table have the required fields and fields'
		type specified in format table.
	It will throw exceptions, so must be encapsulated by pcall.
]]
local function checkFormat(format, object)
	for key, typeString in pairs(format) do
		assert(object[key] ~= nil, "Missing key")
		assert(type(object[key]) == typeString, "Wrong type")
	end
end

local HttpRequests = {
	httpService = nil,
}

--[[
	Create a new HttpRequests object.

	@param httpService: Pass in HttpService from game:GetService("HttpService")
]]
function HttpRequests:new(httpService)
	ArgCheck.isNotNil(httpService, "httpService")
	local obj = {
		httpService = httpService,
	}
	setmetatable(obj, self)
	self.__index = self
	return obj
end

--[[
	Query TEA endpoint to get the instructions to execute.

	@param callback: it should be non-nil with signature:
		callback(success, unauthorized, instructions)
			success (boolean): indicate whether the query is successful.
			unauthorized (boolean): if success is false, indicate whether the
				failure is due to authorization issue.
			instructions (table): if success is true, this is the result
				(associative array) of tables following
				RESPONSE_FORMATS.INSTRUCTION format.
]]
function HttpRequests:getInstructions(callback)
	ArgCheck.isNotNil(self.httpService, "httpService")
	ArgCheck.isNotNil(callback, "callback")
	local httpRequest = self.httpService:RequestInternal({
		Url = getInstructionsUrl,
		Method = "GET",
	})
	httpRequest:Start(function(reqSuccess, reqResponse)
		local success
		local err
		local unauthorized = false
		local instructions = {}
		if not reqSuccess then
			success = false
			err = "Connection error"
		elseif reqResponse.StatusCode == 401 then
			success = false
			unauthorized = true
			err = "Unauthorized"
		elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
			success = false
			err = "Status code: " .. reqResponse.StatusCode
		else
			-- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
			success, err = pcall(function()
				local json = self.httpService:JSONDecode(reqResponse.Body)
				checkFormat(RESPONSE_FORMATS.GET_INSTRUCTIONS, json)
				assert(json.errorCode == 0, "Error code is not 0")
				for i, instruction in ipairs(json.instructions) do
					checkFormat(RESPONSE_FORMATS.INSTRUCTION, instruction)
				end
				instructions = json.instructions
			end)
		end
		if not success then
			Logging.warn(TAG .. " getInstructions failed: " .. getInstructionsUrl .. ", ".. err)
		end
		callback(success, unauthorized, instructions)
	end)
end

--[[
	Tell TEA endpoint that an instruction has been executed.

	@param instructionName: from RESPONSE_FORMATS.INSTRUCTION
	@param serialId: from RESPONSE_FORMATS.INSTRUCTION
	@param callback: can be nil, signature: callback(success)
		success (boolean): indicate whether the http request is successful.
]]
function HttpRequests:reportExecution(instructionName, serialId, callback)
	ArgCheck.isNotNil(self.httpService, "httpService")
	-- ISO 8601, Example: 2020-06-04T04:44:09Z
	local formattedTime = os.date("%Y-%m-%dT%H:%M:%SZ")
	local payload = self.httpService:JSONEncode({
		instructionName = instructionName,
		serialId = serialId,
		execTime = formattedTime,
	})
	local httpRequest = self.httpService:RequestInternal({
		Url = reportExecutionUrl,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
		},
		Body = payload,
	})
	httpRequest:Start(function(reqSuccess, reqResponse)
		local success
		local err
		if not reqSuccess then
			success = false
			err = "Connection error"
		elseif reqResponse.StatusCode < 200 and reqResponse.StatusCode >= 400 then
			success = false
			err = "Status code: " .. reqResponse.StatusCode
		else
			-- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
			success, err = pcall(function()
				local json = self.httpService:JSONDecode(reqResponse.Body)
				checkFormat(RESPONSE_FORMATS.REPORT_EXECUTION, json)
				assert(json.errorCode == 0, "Error code is not 0")
			end)
		end
		if not success then
			Logging.warn(TAG .. " reportExecution failed: " .. reportExecutionUrl .. ", ".. err)
		end
		if callback ~= nil then
			callback(success)
		end
	end)
end

return HttpRequests
