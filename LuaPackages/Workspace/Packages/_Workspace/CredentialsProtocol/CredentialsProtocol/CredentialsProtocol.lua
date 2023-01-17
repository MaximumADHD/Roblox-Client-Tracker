local HttpService = game:GetService("HttpService")

local Root = script.Parent
local Packages = Root.Parent

local MessageBusPackage = require(Packages.MessageBus)
local MessageBus = MessageBusPackage.MessageBus
local t = require(Packages.t)
local Promise = require(Packages.Promise)

local Types = require(script.Parent.CredentialsProtocolTypes)

type MessageBus = MessageBusPackage.MessageBus
type Table = MessageBusPackage.Table
type Promise<T> = MessageBusPackage.Promise<T>

export type CredentialsProtocol = Types.CredentialsProtocol

export type CredentialsProtocolModule = CredentialsProtocol & {
	new: (MessageBus?) -> CredentialsProtocol,
	default: CredentialsProtocol,
}
local credentialsTypes = {
	FIDO2 = "FIDO2" :: "FIDO2",
}
local NAME = "Credentials"

local getCredentialRequestParams = {
	[credentialsTypes.FIDO2] = t.strictInterface({
		credentialType = t.string,
		--[[
            Example input:
            {
                "keyType": "device",
                "publicKey":{
                    "challenge":"AHxb1OEHtpjwwpTUxnyR/RHCj1eT/zahS1aqsxmiZNo=",
                    "timeout":60000,
                    "rpId":"sitetest3.robloxlabs.com",
                    "allowCredentials":[{"type":"public-key","id":"ckLDFcu4P6Sklp/H4RRBjmAZ7SVOhgOyuci9Mhye5Y79tER0eASYuh1f5zE9CfkIHwrFVikYRz/FJfQWKZn3YA=="}],
                    "userVerification":"discouraged"
                }
            }
        ]]
		parameters = t.strictInterface({
			keyType = t.optional(t.string),
			publicKey = t.interface({
				challenge = t.string,
				timeout = t.optional(t.number),
				rpId = t.optional(t.string),
				allowCredentials = t.optional(t.table),
				userVerification = t.optional(t.string),
				attestation = t.optional(t.string),
				extensions = t.optional(t.table),
			}),
		}),
	}),
}

local getCredentialResponseParams = {
	[credentialsTypes.FIDO2] = t.strictInterface({
		id = t.optional(t.string),
		rawId = t.optional(t.string),
		type = t.optional(t.string),
		response = t.interface({
			authenticatorData = t.string,
			clientDataJSON = t.string,
			signature = t.string,
			userHandle = t.optional(t.string),
		}),
		clientExtensionResults = t.optional(t.table),
	}),
}

local registerCredentialRequestParams = {
	[credentialsTypes.FIDO2] = t.strictInterface({
		credentialType = t.string,
		--[[
            Example input:
            {
                "keyType": "hardware",
                "publicKey":{
                    "challenge":"Yt01Y0p1d6SfHf3XcLHmqFAcXWXFh1P6KAtpuNIs3Oc=",
                    "rp":{"name":"Roblox","id":"sitetest3.robloxlabs.com"},
                    "user":{"name":"13334519658","displayName":"13334519658","id":"SDlueXhMTjZyMmc9LTE="},
                    "pubKeyCredParams": [
                        {"type":"public-key","alg":-7},
                        {"type":"public-key","alg":-35},
                        {"type":"public-key","alg":-36},
                        {"type":"public-key","alg":-8}
                    ],
                    "authenticatorSelection":{"userVerification":"discouraged"},
                    "timeout":60000
                }
            }
        ]]
		parameters = t.interface({
			keyType = t.optional(t.string),
			publicKey = t.interface({
				rp = t.interface({
					name = t.string,
					id = t.string,
				}),
				user = t.interface({
					name = t.string,
					displayName = t.string,
					id = t.string,
				}),
				challenge = t.string,
				pubKeyCredParams = t.optional(t.table),
				timeout = t.optional(t.number),
				excludeCredentials = t.optional(t.table),
				authenticationSelection = t.optional(t.table),
				attestation = t.optional(t.string),
				extensions = t.optional(t.table),
			}),
		}),
	}),
}

local registerCredentialResponseParams = {
	[credentialsTypes.FIDO2] = t.strictInterface({
		id = t.optional(t.string),
		rawId = t.optional(t.string),
		type = t.optional(t.string),
		response = t.interface({
			clientDataJSON = t.string,
			attestationObject = t.string,
		}),
		authenticationAttachment = t.optional(t.string),
		clientExtensionResults = t.optional(t.table),
	}),
}

local CredentialsProtocol: CredentialsProtocolModule = {
	CredentialsTypes = credentialsTypes,
	GET_CREDENTIALS_REQUEST_DESCRIPTOR = {
		[credentialsTypes.FIDO2] = {
			mid = MessageBus.getMessageId(NAME, "getCredentialsRequest"),
			validateParams = getCredentialRequestParams[credentialsTypes.FIDO2],
		},
	},
	GET_CREDENTIALS_RESPONSE_DESCRIPTOR = {
		[credentialsTypes.FIDO2] = {
			mid = MessageBus.getMessageId(NAME, "getCredentialsResponse"),
			validateParams = getCredentialResponseParams[credentialsTypes.FIDO2],
		},
	},
	REGISTER_CREDENTIALS_REQUEST_DESCRIPTOR = {
		[credentialsTypes.FIDO2] = {
			mid = MessageBus.getMessageId(NAME, "registerCredentialsRequest"),
			validateParams = registerCredentialRequestParams[credentialsTypes.FIDO2],
		},
	},
	REGISTER_CREDENTIALS_RESPONSE_DESCRIPTOR = {
		[credentialsTypes.FIDO2] = {
			mid = MessageBus.getMessageId(NAME, "registerCredentialsResponse"),
			validateParams = registerCredentialResponseParams[credentialsTypes.FIDO2],
		},
	},
	IS_AVAILABLE_REQUEST_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "isAvailableRequest"),
		validateParams = t.strictInterface({
			credentialType = t.valueOf(credentialsTypes),
		}),
	},
	IS_AVAILABLE_RESPONSE_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "isAvailableResponse"),
		validateParams = t.strictInterface({
			isAvailable = t.boolean,
		}),
	},
} :: CredentialsProtocolModule;

(CredentialsProtocol :: any).__index = CredentialsProtocol

function CredentialsProtocol.new(): CredentialsProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
		getCredentialsRequestInFlight = false,
		registerCredentialsRequestInFlight = false,
	}, CredentialsProtocol)
	return (self :: any) :: CredentialsProtocol
end

--[[
    Gets the assertion response from the native layer.
]]
function CredentialsProtocol:getCredentials(credType: string, data: string, timeoutSeconds: number): Promise<string?>
	-- If a previous in-flight request was already sent to the native layer, then reject.
	if not self.getCredentialsRequestInFlight then
		local promise = Promise.race({
			Promise.new(function(resolve, _)
				self.subscriber:subscribe(self.GET_CREDENTIALS_RESPONSE_DESCRIPTOR[credType], function(params: Table)
					self.subscriber:unsubscribe(self.GET_CREDENTIALS_RESPONSE_DESCRIPTOR[credType])
					self.getCredentialsRequestInFlight = false
					local result = HttpService:JSONEncode(params)
					resolve(result)
				end)
			end),
			Promise.delay(timeoutSeconds):andThen(function()
				self.subscriber:unsubscribe(self.GET_CREDENTIALS_RESPONSE_DESCRIPTOR[credType])
				self.getCredentialsRequestInFlight = false
			end),
		})

		self.getCredentialsRequestInFlight = true
		MessageBus.publish(self.GET_CREDENTIALS_REQUEST_DESCRIPTOR[credType], {
			credentialType = credType,
			parameters = HttpService:JSONDecode(data),
		})
		return promise
	end
	return Promise.reject()
end

--[[
    Gets the attestation response from the native layer.
]]
function CredentialsProtocol:registerCredentials(
	credType: string,
	data: string,
	timeoutSeconds: number
): Promise<string?>
	-- If a previous in-flight request was already sent to the native layer, then reject.
	if not self.registerCredentialsRequestInFlight then
		local promise = Promise.race({
			Promise.new(function(resolve, _)
				self.subscriber:subscribe(
					self.REGISTER_CREDENTIALS_RESPONSE_DESCRIPTOR[credType],
					function(params: Table)
						self.subscriber:unsubscribe(self.REGISTER_CREDENTIALS_RESPONSE_DESCRIPTOR[credType])
						self.registerCredentialsRequestInFlight = false
						local result = HttpService:JSONEncode(params)
						resolve(result)
					end
				)
			end),
			Promise.delay(timeoutSeconds):andThen(function()
				self.subscriber:unsubscribe(self.REGISTER_CREDENTIALS_RESPONSE_DESCRIPTOR[credType])
				self.registerCredentialsRequestInFlight = false
			end),
		})

		self.registerCredentialsRequestInFlight = true
		MessageBus.publish(self.REGISTER_CREDENTIALS_REQUEST_DESCRIPTOR[credType], {
			credentialType = credType,
			parameters = HttpService:JSONDecode(data),
		})
		return promise
	end
	return Promise.reject()
end

--[[
    Returns native support status of the credentials protocol.
]]
function CredentialsProtocol:isAvailable(credType: string, timeoutSeconds: number): Promise<boolean>
	local promise = Promise.race({
		Promise.new(function(resolve, _)
			self.subscriber:subscribe(self.IS_AVAILABLE_RESPONSE_DESCRIPTOR, function(params: Table)
				self.subscriber:unsubscribe(self.IS_AVAILABLE_RESPONSE_DESCRIPTOR)
				resolve(params.isAvailable)
			end)
		end),
		Promise.delay(timeoutSeconds):andThen(function()
			self.subscriber:unsubscribe(self.IS_AVAILABLE_RESPONSE_DESCRIPTOR[credType])
			-- If we don't receive a response from the native layer then assume that the protocol is not supported.
			return Promise.resolve(false)
		end),
	})

	MessageBus.publish(self.IS_AVAILABLE_REQUEST_DESCRIPTOR, {
		credentialType = credType,
	})

	return promise
end

CredentialsProtocol.default = CredentialsProtocol.new()

return CredentialsProtocol
