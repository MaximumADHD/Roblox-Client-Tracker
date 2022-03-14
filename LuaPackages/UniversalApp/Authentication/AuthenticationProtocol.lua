local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local Promise = require(CorePackages.Promise)
local t = require(CorePackages.Packages.t)

local NAME = "Authentication"

local authProviders = {
	MSDK = "MSDK",
}

local authPlatforms = {
	PC = "Win32",
	Mac = "MacOS",
	Android = "Android",
	IOS = "iOS",
}

local authMethods = {
	WECHAT = "WeChat",
	QQ = "QQ",
	NONE = "None",
}

--[[
	Android login result flag codes:
	https://wiki.ssl.msdk.qq.com/Android/const.html#Android_eFlag
	IOS login result flag codes:
	https://wiki.ssl.msdk.qq.com/IOS/const.html#IOS_eFlag
]]
local MSDKStatusFlags = {
	eFlag_Succ = 0,

	eFlag_QQ_UserCancel = 1001,
	eFlag_QQ_LoginFail=1002,
	eFlag_QQ_NetworkErr=1003,
	eFlag_QQ_NotInstall=1004,
	eFlag_QQ_NotSupportApi=1005,

	eFlag_WX_NotInstall = 2000,
	eFlag_WX_NotSupportApi = 2001,
	eFlag_WX_UserCancel=2002,
	eFlag_WX_LoginFail=2004,

	eFlag_Need_Realname_Auth = 3005,
	eFlag_Need_MSDK_Realname_Auth = 3006,

	eFlag_Local_Invalid=-2,
}

--[[
	should only display errors for the following cases:
]]
local MSDKMessageKeys = {
	[MSDKStatusFlags.eFlag_Succ] = "",

	[MSDKStatusFlags.eFlag_WX_NotInstall] = "Authentication.Login.WeChat.NotInstalled",
	[MSDKStatusFlags.eFlag_WX_NotSupportApi] = "Authentication.Login.Label.WeChatVersionNotSupported",
	[MSDKStatusFlags.eFlag_WX_UserCancel] = "Authentication.Login.Label.WeChatUserCancel",
	[MSDKStatusFlags.eFlag_WX_LoginFail] = "Authentication.Login.Response.TencentLoginFailurePleaseTryAgain",

	[MSDKStatusFlags.eFlag_QQ_UserCancel] = "Authentication.Login.Label.QQUserCancel",
	[MSDKStatusFlags.eFlag_QQ_LoginFail] = "Authentication.Login.Response.TencentLoginFailurePleaseTryAgain",
}

local MSDKUnknowErrMessageKey = "Authentication.Login.Response.TencentLoginFailurePleaseTryAgain"

local messageKeys = {
	[authProviders.MSDK] = MSDKMessageKeys,
}

local unknownMessageKey = {
	[authProviders.MSDK] = MSDKUnknowErrMessageKey,
}

local validateAuthProviderList = t.valueOf(authProviders)
local validatePlatformList = t.valueOf(authPlatforms)
local validateAuthMethodList = t.valueOf(authMethods)

local AuthenticationProtocol = {
	AuthProviders = authProviders,
	AuthMethods = authMethods,

	AUTH_REQUEST_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "authRequest"),
		validateParams = t.strictInterface({
			authProvider = validateAuthProviderList,
			authMethod = validateAuthMethodList,
		}),
	},

	AUTH_RESPONSE_DESCRIPTORS = {
		[authProviders.MSDK] = {
			mid = MessageBus.getMessageId(NAME, "MSDKAuthResponse"),
			validateParams = t.strictInterface({
				platform = validatePlatformList,
				status = t.number,
				tokenAuthBody = t.optional(t.strictInterface({
					openId = t.string,
					accessToken = t.string,
					refreshToken = t.string,
					accessTokenExpiry = t.number,
					refreshTokenExpiry = t.number,
					channelId = t.number,
				})),
			}),
		},
	},
}

AuthenticationProtocol.__index = AuthenticationProtocol

function AuthenticationProtocol.new(): AuthenticationProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, AuthenticationProtocol)
	return self
end

--[[
	Notify native layer for log in

	@param authProvider: MSDK for Luobu; TBD for global
	@param authMethod: the auth method for given auth provider
	@return promise<table>: flag (enum) indicates the success or failure
]]
function AuthenticationProtocol:requestAuth(authProvider: string, authMethod: string): Promise
	local promise = Promise.new(function(resolve, _)
		local authResponseDesc = self.AUTH_RESPONSE_DESCRIPTORS[authProvider]

		self.subscriber:subscribe(authResponseDesc, function(params: Table)
			self.subscriber:unsubscribe(authResponseDesc)

			local result
			if authProvider == self.AuthProviders.MSDK then
				result = {
					statusCode = params.status,
					tokenAuthBody = params.tokenAuthBody,
					errMessageKey = messageKeys[authProvider][params.status] or unknownMessageKey[authProvider],
				}
			end
			resolve(result)
		end)
	end)

	MessageBus.publish(self.AUTH_REQUEST_DESCRIPTOR, {
		authProvider = authProvider,
		authMethod = authMethod,
	})

	return promise
end

--[[
	Listen to authentication callback of PC web auth

	@param authProvider: MSDK for Luobu; TBD for global
	@return promise<table>: flag (enum) indicates the success or failure
]]
function AuthenticationProtocol:listenWebAuthResponset(authProvider: string): Promise
	local promise = Promise.new(function(resolve, _)
		local authResponseDesc = self.AUTH_RESPONSE_DESCRIPTORS[authProvider]

		self.subscriber:subscribe(authResponseDesc, function(params: Table)
			self.subscriber:unsubscribe(authResponseDesc)

			local result
			if authProvider == self.AuthProviders.MSDK then
				result = {
					statusCode = params.status,
					tokenAuthBody = params.tokenAuthBody,
					errMessageKey = messageKeys[authProvider][params.status] or unknownMessageKey[authProvider],
				}
			end
			resolve(result)
		end)
	end)

	return promise
end

AuthenticationProtocol.default = AuthenticationProtocol.new()

return AuthenticationProtocol
