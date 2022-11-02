local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.Workspace.Packages.MessageBus)

export type AuthResponse = {
	statusCode: number,
	tokenAuthBody: {
		openId: string,
		accessToken: string,
		refreshToken: string,
		accessTokenExpiry: number,
		refreshTokenExpiry: number,
		channelId: number,
	}?,
	errMessageKey: string,
}

export type AuthenticationProtocol = {
	AuthProviders: {
		MSDK: "MSDK",
	},
	AuthMethods: {
		WECHAT: "WeChat",
		QQ: "QQ",
		NONE: "None",
	},
	AUTH_REQUEST_DESCRIPTOR: Types.MessageDescriptor,
	AUTH_RESPONSE_DESCRIPTORS: {
		MSDK: Types.MessageDescriptor,
	},

	requestAuth: (AuthenticationProtocol, authProvider: string, authMethod: string) -> Types.Promise<AuthResponse?>,
	listenWebAuthResponset: (AuthenticationProtocol, authProvider: string) -> Types.Promise<AuthResponse?>,

	subscriber: Types.Subscriber,
}

return nil
