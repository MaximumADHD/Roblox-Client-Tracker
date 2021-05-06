local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local Promise = require(CorePackages.Promise)
local t = require(CorePackages.Packages.t)

local NAME = "Linking"
local urlValidator = t.strictInterface({
	url = t.string,
})

local LinkingProtocol = {
	REGISTER_URL_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "registerURL"),
		validateParams = t.strictInterface({
			url = t.string,
			domain = t.literal("Lua"),
		}),
	},
	DETECT_URL_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "detectURL"),
		validateParams = urlValidator,
	},
	HANDLE_LUA_URL_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "handleLuaURL"),
		validateParams = t.strictInterface({
			matchedUrl = t.string,
			url = t.string,
		}),
	},
	OPEN_URL_REQUEST_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "openURLRequest"),
		validateParams = urlValidator,
	},
	OPEN_URL_RESPONSE_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "openURLResponse"),
		validateParams = t.strictInterface({
			success = t.boolean,
		}),
	},
	IS_URL_REGISTERED_REQUEST_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "isURLRegisteredRequest"),
		validateParams = urlValidator,
	},
	IS_URL_REGISTERED_RESPONSE_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "isURLRegisteredResponse"),
		validateParams = t.strictInterface({
			isRegistered = t.boolean,
		}),
	},
}

LinkingProtocol.__index = LinkingProtocol

function LinkingProtocol.new(): LinkingProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
		isListeningForURLs = false,
	}, LinkingProtocol)
	return self
end

--[[
	Registers a URL that must be handled by Lua such as deep link navigation URLs.
	Note: the engine and the underlying platform may also register for URLs not handled by Lua.

	@param url: the url
]]--
function LinkingProtocol:registerURL(url: string): ()
	MessageBus.publish(self.REGISTER_URL_DESCRIPTOR, {
		url = url,
		domain = "Lua",
	})
end

--[[
	Detects and handles a URL if previously registered by any domain (Lua, Engine, or Platform).
	Call this when the user follows a link in Lua such as from an interactable widget.

	@param url: the url
]]--
function LinkingProtocol:detectURL(url: string): ()
	MessageBus.publish(self.DETECT_URL_DESCRIPTOR, {
		url = url,
	})
end

--[[
	Returns the last URL detected that Lua can handle.

	@return url: the last URL detected that Lua can handle.
]]--
function LinkingProtocol:getLastLuaURL(url: string): string?
	local params = MessageBus.getLast(self.HANDLE_LUA_URL_DESCRIPTOR)
	if params == nil then
		return nil
	end
	return params.url
end

--[[
	Begins listening for registered URLs. The listener function is called when a registered URL is detected.
	If a URL was detected while not listening, the listener will be invoked immediately with this pending URL unless sticky is set to false.

	@param listener<string>: the function to call when a URL registered by Lua is detected
	@param sticky: pass false if the listener should not be invoked immediately with any pending URL
]]--
function LinkingProtocol:listenForLuaURLs(listener: (string) -> (), sticky: boolean?): ()
	if self.isListeningForURLs then
		self:stopListeningForLuaURLs()
	end
	self.subscriber:subscribe(self.HANDLE_LUA_URL_DESCRIPTOR, function(params: Table)
		listener(params.url)
	end, sticky)
	self.isListeningForURLs = true
end

--[[
	Stops listening for registered URLs.
	If a URL is detected while not listening, it is saved as a pending URL until listening resumes.
]]--
function LinkingProtocol:stopListeningForLuaURLs(): ()
	if self.isListeningForURLs then
		self.subscriber:unsubscribe(self.HANDLE_LUA_URL_DESCRIPTOR)
		self.isListeningForURLs = false
	end
end

--[[
	Attempts to open the provided URL (Universal Resource Locator) externally (in an external browser or app)
	The resource identified by this URL may be local to the current app or it may be one that must be provided by a different app.
	Different platforms support different schemes. If a scheme provided is not registered, the promise resolves with false.

	See https://developer.android.com/training/app-links/deep-linking to learn more about this feature on Android.
	See https://developer.apple.com/documentation/uikit/uiapplication/1622952-canopenurl for iOS.
	All platforms support http and https which open in an external browser.

	Note: This does not open the URL in the internal web view, BrowserService is the recommended method for that.
	Note: Use the App Configuration system if platform specific schemes are required rather than platform specific code.

	@param url: the url
	@return promise<boolean>: resolves with true if the URL was opened successfully
]]--
function LinkingProtocol:openURL(url: string): Promise
	local promise = Promise.new(function(resolve, _)
		local desc = self.OPEN_URL_RESPONSE_DESCRIPTOR
		self.subscriber:subscribe(desc, function(params: Table)
			self.subscriber:unsubscribe(desc)
			resolve(params.success)
		end)
	end)

	MessageBus.publish(self.OPEN_URL_REQUEST_DESCRIPTOR, {
		url = url,
	})
	return promise
end

--[[
	Checks if the provided URL is registered.
	Use this API to determine if a URL should be detected & handled by the linking system or opened externally/in an embedded web view:

	linking:isURLRegistered(myUrl):andThen(function(isRegistered)
					if isRegistered then
						-- Let the linking system handle this URL
						linking:detectURL(myUrl)
					else
						-- Open externally or show in embedded web view
						-- linking:openURL() or open web view
					end
				end)

	@param url: the url
	@return promise<boolean>: resolves with true if the URL is registered by any domain (Lua, Engine, Platform)
]]--
function LinkingProtocol:isURLRegistered(url: string): Promise
	local promise = Promise.new(function(resolve, _)
		local desc = self.IS_URL_REGISTERED_RESPONSE_DESCRIPTOR
		self.subscriber:subscribe(desc, function(params: Table)
			self.subscriber:unsubscribe(desc)
			resolve(params.isRegistered)
		end)
	end)

	MessageBus.publish(self.IS_URL_REGISTERED_REQUEST_DESCRIPTOR, {
		url = url,
	})
	return promise
end

function LinkingProtocol:isEnabled(): boolean
	return game:GetEngineFeature("LinkingProtocol")
end

LinkingProtocol.default = LinkingProtocol.new()

return LinkingProtocol
