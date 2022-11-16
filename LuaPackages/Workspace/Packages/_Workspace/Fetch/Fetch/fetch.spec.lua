local HttpService = game:GetService("HttpService")
local Packages = script.Parent.Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local jest = require(Packages.Dev.JestGlobals).jest
local buildFetch = require(script.Parent.fetch)

local AbortSignal = require(script.Parent.AbortSignal).AbortSignal

local function makeHttpServiceMock(mockSuccess, mockResponse): HttpService
	local HttpServiceMock = {
		RequestInternal = function(_options)
			return {
				Start = function(_self, callback)
					callback(mockSuccess, mockResponse)
				end,
			}
		end,
	}

	return HttpServiceMock :: any
end

return function()
	it("should fetch a url", function()
		local HttpServiceMock = makeHttpServiceMock(true, {
			Body = HttpService:JSONEncode({
				userId = 1,
				displayName = "Roblox",
			}),
			Success = true,
			StatusCode = 200,
			StatusMessage = "OK",
			Headers = {},
		})
		local fetch = buildFetch(HttpServiceMock)
		local result = fetch("https://users.roblox.com//v1/users/1", {
			method = "GET",
			cache = Enum.HttpCachePolicy.None,
		}):expect()

		jestExpect(result).toBeDefined()
		jestExpect(result.ok).toEqual(true)
		jestExpect(result.status).toEqual(200)
		jestExpect(result.statusText).toEqual("OK")

		local json = result:json():expect()
		jestExpect(json).toBeDefined()
		jestExpect(json.displayName).toEqual("Roblox")
	end)

	describe("Errors", function()
		it("should return 404 status for invalid request to valid url", function()
			local HttpServiceMock = makeHttpServiceMock(true, {
				Body = HttpService:JSONEncode({
					errors = {
						{
							message = "The user id is invalid.",
						},
					},
				}),
				Success = false,
				StatusCode = 404,
				StatusMessage = "Not Found",
				Headers = {},
			})
			local fetch = buildFetch(HttpServiceMock)
			local result = fetch("https://users.roblox.com//v1/users/0", {
				method = "GET",
			}):expect()

			jestExpect(result).toBeDefined()
			jestExpect(result.ok).toEqual(false)
			jestExpect(result.status).toEqual(404)
			jestExpect(result.statusText).toEqual("Not Found")

			local json = result:json():expect()
			jestExpect(json).toBeDefined()
			jestExpect(json.errors).toBeDefined()
			jestExpect(json.errors[1].message).toEqual("The user id is invalid.")
		end)

		it("should fire an AbortSignal if the HttpService fetch fails", function()
			local HttpServiceMock = makeHttpServiceMock(false, {
				ErrorMessage = "HttpError: InvalidUrl",
			})
			local fetch = buildFetch(HttpServiceMock)
			local signal = AbortSignal.abort("test error")
			local callback = jest.fn()

			signal:connect(function()
				callback()
			end)

			jestExpect(function()
				fetch("notAURL", {
					signal = signal,
					method = "GET",
				}):expect()
			end).toThrow("HttpError: InvalidUrl")

			-- Wait for this signal to fire, needed for deferred lua
			task.wait()

			jestExpect(callback).toHaveBeenCalled()
		end)

		it("should reject if passed bad Request options", function()
			jestExpect(function()
				local HttpServiceMock = makeHttpServiceMock(true, {})
				local fetch = buildFetch(HttpServiceMock)
				fetch("https://users.roblox.com//v1/users/0", {
					body = "body",
					method = "GET",
				}):expect()
			end).toThrow("'body' should not be provided as an option for request method GET")
		end)

		it("should send post requests", function()
			local HttpServiceMock = makeHttpServiceMock(true, {
				Body = HttpService:JSONEncode({
					userPresences = {
						{
							lastLocation = "Website",
							lastOnline = "2006-02-27T21:06:40.3Z",
							userId = 1,
							userPresenceType = 0,
						},
					},
				}),
				Success = true,
				StatusCode = 200,
				StatusMessage = "",
				Headers = {},
			})
			local fetch = buildFetch(HttpServiceMock)

			local body = HttpService:JSONEncode({
				userIds = { 1 },
			})
			local response = fetch("https://presence.roblox.com/v1/presence/users", {
				method = "POST",
				body = body,
				headers = {
					["Content-Type"] = "application/json",
					["Accept"] = "application/json",
				},
			}):expect()

			local json = response:json():expect()
			jestExpect(json).toBeDefined()
			jestExpect(json).toEqual({
				userPresences = {
					{
						lastLocation = "Website",
						lastOnline = "2006-02-27T21:06:40.3Z",
						userId = 1,
						userPresenceType = 0,
					},
				},
			})
		end)
	end)
end
