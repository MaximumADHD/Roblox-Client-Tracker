return function(UrlBuilder)
	local PlatformAuthPatterns = {}

	PlatformAuthPatterns.account = function(platform: string)
		return UrlBuilder.fromString("auth:v1/" .. platform .. "/account")
	end

	PlatformAuthPatterns.connect = function(platform: string)
		return UrlBuilder.fromString("auth:v1/" .. platform .. "/connect")
	end

	PlatformAuthPatterns.disconnect = function(platform: string)
		return UrlBuilder.fromString("auth:v1/" .. platform .. "/disconnect")
	end

	PlatformAuthPatterns.login = function(platform: string)
		return UrlBuilder.fromString("auth:v1/" .. platform .. "/login")
	end

	PlatformAuthPatterns.signup = function(platform: string)
		return UrlBuilder.fromString("auth:v1/" .. platform .. "/signup")
	end

	return PlatformAuthPatterns
end
