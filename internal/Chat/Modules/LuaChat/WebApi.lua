local Modules = script.Parent
local Conversation = require(Modules.Models.Conversation)
local User = require(Modules.Models.User)
local Message = require(Modules.Models.Message)
local Functional = require(Modules.Functional)
local Config = require(Modules.Config)
local Constants = require(Modules.Constants)

local HttpDebug = require(Modules.Debug.HttpDebug)

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local ContentProvider = game:GetService("ContentProvider")

local WebApi = {}

local BASE_URL = ContentProvider.BaseUrl
if BASE_URL:find("https://www.") then
	BASE_URL = BASE_URL:sub(13)
elseif BASE_URL:find("http://www.") then
	BASE_URL = BASE_URL:sub(12)
end

--In the future, maybe change this to broom setting for Chat URL
local CHAT_URL = "https://chat." .. BASE_URL .. "v2/"
local WEB_URL = "https://www." .. BASE_URL
local API_URL = "https://api.".. BASE_URL
local GAMES_URL = "https://games." .. BASE_URL .. "v1/"

local GET_FRIENDS_MAX_RETRIES = 4

WebApi.Status = {
	PENDING = 0,
	UNKNOWN_ERROR = -1,
	NO_CONNECTIVITY = -2,
	INVALID_JSON = -3,
	BAD_TLS = -4,
	MODERATED = -5,

	OK = 200,
	BAD_REQUEST = 400,
	UNAUTHORIZED = 401,
	FORBIDDEN = 403,
	NOT_FOUND = 404,
	REQUEST_TIMEOUT = 408,
	INTERNAL_SERVER_ERROR = 500,
	NOT_IMPLEMENTED = 501,
	BAD_GATEWAY = 502,
	SERVICE_UNAVAILABLE = 503,
	GATEWAY_TIMEOUT = 504,
}

-- Util Funcs

local function getHttpStatus(response)
	for _, code in pairs(WebApi.Status) do
		if code >= 100 and response:find(tostring(code)) then
			return code
		end
	end

	if response:find("2%d%d") then
		return WebApi.Status.OK
	end

	if response:find("curl_easy_perform") and response:find("SSL") then
		return WebApi.Status.BAD_TLS
	end

	return WebApi.Status.UNKNOWN_ERROR
end

local function jsonEncode(data)
	return HttpService:JSONEncode(data)
end

local function jsonDecode(data)
	return HttpService:JSONDecode(data)
end

local function debugRandomDelay()
	if not Config.HttpDelay then
		return
	end

	local min = Config.HttpDelay[1]
	local max = Config.HttpDelay[2]

	local jitter = math.random(min, max) / 1000

	wait(jitter)
end

local function httpGet(url)
	debugRandomDelay()

	return game:HttpGetAsync(url)
end

local function httpPost(url, payload)
	debugRandomDelay()

	return game:HttpPostAsync(url, payload, "application/json")
end

local function httpGetJson(url)
	local debugRequest = HttpDebug:AddRequest("GET", url)

	local success, response = pcall(httpGet, url)
	local status = success and WebApi.Status.OK or getHttpStatus(response)

	HttpDebug:FinishRequest(debugRequest, status, response)

	if success then
		success, response = pcall(jsonDecode, response)
		status = success and status or WebApi.Status.INVALID_JSON
	end

	return response, status
end

local function httpPostJson(url, payload)
	local debugRequest = HttpDebug:AddRequest("POST", url, payload)

	local success, response = pcall(httpPost, url, payload)
	local status = success and WebApi.Status.OK or getHttpStatus(response)

	HttpDebug:FinishRequest(debugRequest, status, response)

	if success then
		success, response = pcall(jsonDecode, response)
		status = success and status or WebApi.Status.INVALID_JSON
	end

	return response, status
end

--[[
	Create a web request query string to put on the end of a URL given a data
	table.

	Arrays are handled, but generally data is expected to be flat.
]]
local function makeQueryString(data)
	local params = {}

	for key, value in pairs(data) do
		if value ~= nil then --for optional params
			if type(value) == "table" then
				for i = 1, #value do
					table.insert(params, key .. "=" .. value[i])
				end
			else
				table.insert(params, key .. "=" .. tostring(value))
			end
		end
	end

	return table.concat(params, "&")
end

local function extractConvosAndUsers(response)
	local conversations = {}
	local users = {}

	for _, webConversation in ipairs(response) do
		for _, participant in ipairs(webConversation.participants) do
			if users[tostring(participant.targetId)] == nil then
				local user = User.fromData(participant.targetId, participant.name, false)
				users[user.id] = user
			end
		end
		local conversation = Conversation.fromWeb(webConversation)
		table.insert(conversations, conversation)
	end

	return conversations, users
end


local webPresenceMap = {
	[0] = User.PresenceType.OFFLINE,
	[1] = User.PresenceType.ONLINE,
	[2] = User.PresenceType.IN_GAME,
	[3] = User.PresenceType.IN_STUDIO
}

-- Fetch Functions

function WebApi.MakeUserProfileUrl(userId)
	return string.format("%susers/%s/profile", WEB_URL, tostring(userId))
end

function WebApi.MakeItemUrl(itemId)
	return string.format("%scatalog/%s", WEB_URL, tostring(itemId))
end


function WebApi.MakeReportUserUrl(userId, conversationId)
	-- Web is fixing a bug that requires a redirectUrl for this page to work
	-- Until then we will use a redirect url
	-- once fixed we can switch to: "%sabusereport/embedded/chat?id=%s&actionName=%s&conversationId=%s"
	local redirectUrl = string.format("%shome&conversationid=%s#!/", WEB_URL, tostring(conversationId))
	return string.format("%sabusereport/embedded/chat?id=%s&actionName=%s&conversationId=%s&redirecturl=%s",
		WEB_URL, tostring(userId), "chat", tostring(conversationId), redirectUrl)
end

--[[
This endpoint returns:

	public class PresenceViewModel
	{
		public PresenceType UserPresenceType { get; }
		public string LastLocation { get; }
		public string AbsolutePlaceUrl { get; }
		public long? PlaceId { get; }
		public Guid? GameId { get; }
		public bool IsGamePlayableOnCurrentDevice { get; }
		public int UserId { get; }
		public string EndpointType => "Presence";
	}

	Where the PresenceType is defined as:

	public enum PresenceType
	{
		Offline = 0,
		Online = 1,
		InGame = 2,
		InStudio = 3
	}
]]
function WebApi.GetUserPresences(userIds)
	local query = makeQueryString({
		userIds = userIds
	})

	local url = WEB_URL .. "/presence/users?" .. query

	local parsed, status = httpGetJson(url)

	if status ~= WebApi.Status.OK then
		return status, nil
	end

	local result = {}
	for _, presence in ipairs(parsed) do
		local userPresence = webPresenceMap[presence.UserPresenceType]

		result[tostring(presence.UserId)] = {
			presence = userPresence,
			lastLocation = presence.LastLocation,
		}
	end

	return status, result
end

function WebApi.GetUsername(userId)
	local url = API_URL .. "/users/" .. userId

	local parsed, status = httpGetJson(url)

	if status ~= WebApi.Status.OK then
		return status, nil
	end

	local result =
	{
		username = parsed.Username,
	}

	return status, result
end


function WebApi.GetFriendshipCount()
	--Endpoint documented here:
	--https://api.roblox.com/docs#Friends
	local query = makeQueryString({
		userId = Players.LocalPlayer.UserId,
	})
	local url = API_URL .. "/user/get-friendship-count?" .. query

	local parsed, status = httpGetJson(url)

	if status ~= WebApi.Status.OK then
		return status, 0
	end

	return status, parsed.count
end

function WebApi.GetFriends(page)
	--Endpoint documented here:
	--https://api.roblox.com/docs#Friends
	local query = makeQueryString({
		page = page,
	})
	local url = API_URL .. "/users/" .. tostring(Players.LocalPlayer.UserId) .. "/friends?" .. query

	local status = nil
	local parsed = nil
	local retryCount = 0
	local waitTime = 1
	while status ~= WebApi.Status.OK do
		if retryCount >= GET_FRIENDS_MAX_RETRIES then
			return status, nil
		end

		if retryCount > 0 then
			wait(waitTime)
		end

		parsed, status = httpGetJson(url)
		waitTime = waitTime * 2
		retryCount = retryCount + 1
	end

	local result = {}
	for _, user in ipairs(parsed) do
		local userId = tostring(user.Id)
		local userFromData = User.fromData(userId, user.Username, true)
		result[userId] = userFromData
	end

	return status, result
end

function WebApi.GetUser(userId)
	local url = API_URL .. "/users/" .. tostring(userId)
	local parsed, status = httpGetJson(url)

	return status, parsed
end

function WebApi.GetUserConversations(pageNumber, pageSize)
	pageNumber = pageNumber or 1
	pageSize = pageSize or Constants.PageSize.GET_CONVERSATIONS

	local queryString = makeQueryString({
		pageNumber = pageNumber,
		pageSize = pageSize
	})
	local requestUrl = CHAT_URL .. "get-user-conversations?" .. queryString

	local response, status = httpGetJson(requestUrl)

	if status ~= WebApi.Status.OK then
		return status, nil
	end

	local conversations, users = extractConvosAndUsers(response, status)

	local result = {
		conversations = conversations,
		users = users
	}

	return status, result
end

--[[
	Takes a table of conversation IDs and gets the latest messages for these
	conversations

	TODO: handle paging
]]
function WebApi.GetLatestMessages(conversationIds)
	local queryString = makeQueryString({
		conversationIds = conversationIds,
		pageSize = 1,
	})
	local requestUrl = CHAT_URL .. "multi-get-latest-messages?" .. queryString

	local response, status = httpGetJson(requestUrl)

	if status ~= WebApi.Status.OK then
		return status, nil
	end

	local messages = {}
	if status == WebApi.Status.OK then
		for _, webConversation in ipairs(response) do
			local lastMessage = webConversation.chatMessages[1]

			if lastMessage ~= nil then
				local message = Message.fromWeb(lastMessage, tostring(webConversation.conversationId))
				table.insert(messages, message)
			end
		end
	end

	return status, messages
end

function WebApi.GetMessages(convoId, pageSize, exclusiveStartMessageId)
	local queryString = makeQueryString({
		conversationId = convoId,
		pageSize = pageSize,
		exclusiveStartMessageId = exclusiveStartMessageId,
	})
	local requestUrl = CHAT_URL .. "get-messages?" .. queryString

	local response, status = httpGetJson(requestUrl)

	if status ~= WebApi.Status.OK then
		return status, nil
	end

	--Assumption: Messages received are temporally contiguous
	--and ordered from most recent to least recent
	local previousMessageId = nil
	local messages = Functional.MapReverse(response, function(web)
		local message = Message.fromWeb(web, convoId, previousMessageId)
		previousMessageId = message.id
		return message
	end)
	return status, messages
end

function WebApi.GetConversations(convoIds)
	local queryString = makeQueryString({
		conversationIds = convoIds,
	})
	local requestUrl = CHAT_URL .. "get-conversations?" .. queryString

	local response, status = httpGetJson(requestUrl)

	if status ~= WebApi.Status.OK then
		return status, nil
	end

	local conversations, users = extractConvosAndUsers(response)

	local result = {
		conversations = conversations,
		users = users,
	}

	return status, result
end

function WebApi.RemoveUserFromConversation(userId, convoId)
	local payload = jsonEncode({
		participantUserId = userId,
		conversationId = convoId,
	})
	local requestUrl = CHAT_URL .. "remove-from-conversation"
	local _, status = httpPostJson(requestUrl, payload)

	return status
end

function WebApi.RenameGroupConversation(convoId, newTitle)
	local payload = jsonEncode({
		conversationId = convoId,
		newTitle = newTitle,
	})
	local requestUrl = CHAT_URL .. "rename-group-conversation"
	local response, status = httpPostJson(requestUrl, payload)

	if status ~= WebApi.Status.OK then
		return status
	end

	if response.resultType ~= "Success" then
		warn("Message was not sent successfully.")
		return WebApi.Status.MODERATED
	end

	return status
end

function WebApi.SendMessage(conversationId, messageText, previousMessageId)
	local payload = jsonEncode({
		conversationId = conversationId,
		message = messageText
	})
	local requestUrl = CHAT_URL .. "send-message"
	local response, status = httpPostJson(requestUrl, payload)

	if status ~= WebApi.Status.OK then
		return status, response
	end

	if response.resultType ~= "Success" then
		warn("Message was not sent successfully.")
		return WebApi.Status.MODERATED, nil
	end

	return status, Message.fromSentWeb(response, conversationId, previousMessageId)
end

function WebApi.StartGroupConversation(conversation)
	local participantUserIds = Functional.Map(conversation.participants, function(value)
		return tonumber(value)
	end)
	local payload = jsonEncode({
		participantUserIds = participantUserIds,
		title = conversation.title,
	})
	local requestUrl = CHAT_URL .. "start-group-conversation"
	local response, status = httpPostJson(requestUrl, payload)

	if status == WebApi.Status.OK then
		if not response.resultType == "Success" then
			status = WebApi.Status.UNKNOWN_ERROR
		else
			local conversation = Conversation.fromWeb(response.conversation, conversation.clientId)
			return status, conversation
		end
	end

	return status, nil
end

function WebApi.StartOneToOneConversation(userId, clientId)
	local payload = jsonEncode({
		participantuserId = userId,
	})

	local requestUrl = CHAT_URL .. "start-one-to-one-conversation"
	local response, status = httpPostJson(requestUrl, payload)

	if status == WebApi.Status.OK then
		if not response.resultType == "Success" then
			warn("Server returned error:" .. response)
			status = WebApi.Status.UNKNOWN_ERROR
		else
			local conversation = Conversation.fromWeb(response.conversation, clientId)
			return status, conversation
		end
	end

	return status, nil
end

function WebApi.PostTypingStatus(conversationId, isTyping)
	local payload = jsonEncode({
		conversationId = conversationId,
		isTyping = isTyping,
	})
	local requestUrl = CHAT_URL .. "update-user-typing-status"
	local _, status = httpPostJson(requestUrl, payload)

	return status
end

function WebApi.GetUnreadConversationCount()

	local requestUrl = CHAT_URL .. "get-unread-conversation-count"
	local result, status = httpGetJson(requestUrl)
	local count = tonumber(result.count)
	return status, count
end

function WebApi.MarkAsRead(conversationId, endMessageId)
	local payload = jsonEncode({
		conversationId = conversationId,
		endMessageId = endMessageId,
	})
	local requestUrl = CHAT_URL .. "mark-as-read"
	local _, status = httpPostJson(requestUrl, payload)
	return status
end

function WebApi.AddUsersToConversation(convoId, participants)
	local payload = jsonEncode({
		participantUserIds = participants,
		conversationId = convoId,
	})
	local requestUrl = CHAT_URL .. "add-to-conversation"
	local response, status = httpPostJson(requestUrl, payload)

	if status == WebApi.Status.OK then
		if not response.resultType == "Success" then
			status = WebApi.Status.UNKNOWN_ERROR
		end
	end

	return status
end

function WebApi.GetChatSettings()
	local requestUrl = CHAT_URL .. "chat-settings"
	local response, status = httpGetJson(requestUrl)

	return status, response
end

function WebApi.GetPlaceInfo(placeId)
	local payload = makeQueryString({
		placeIds = {placeId}
	})
	local requestUrl = GAMES_URL .. "games/multiget-place-details?" .. payload

	local parsed, status = httpGetJson(requestUrl)

	if status ~= WebApi.Status.OK then
		return status, nil
	end

	return status, parsed
end

function WebApi.GetPlaceThumbnail(imageToken, width, height)
	local payload = makeQueryString({
		imageTokens = {imageToken},
		width = width,
		height = height
	})
	local requestUrl = GAMES_URL .. "games/game-thumbnails?" .. payload

	local parsed, status = httpGetJson(requestUrl)

	if status ~= WebApi.Status.OK then
		return status, nil
	end

	return status, parsed
end

function WebApi.GetGameIcon(gameId)
	local payload = makeQueryString({
		placeId = gameId
	})
	local requestUrl = WEB_URL .. "places/icons/json?" .. payload
	local info, status = httpGetJson(requestUrl)

	local assetid = status == WebApi.Status.OK and "rbxassetid://" .. info.ImageId or ""

	return status, assetid
end

return WebApi