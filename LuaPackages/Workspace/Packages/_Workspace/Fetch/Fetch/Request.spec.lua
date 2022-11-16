local HttpService = game:GetService("HttpService")
local Packages = script.Parent.Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect

local Request = require(script.Parent.Request).Request

return function()
	describe("constructor", function()
		it("should use default values if no options provided", function()
			local request = Request.new("localhost:4000")

			jestExpect(request.url).toEqual("localhost:4000")
			jestExpect(request.headers.headerList).toEqual({})
			jestExpect(request.method).toEqual("GET")
			jestExpect(request.destination).toEqual("document")
			jestExpect(request.referrer).toEqual("client")
			jestExpect(request.referrerPolicy).toEqual("no-referrer")
			jestExpect(request.mode).toEqual("cors")
			jestExpect(request.credentials).toEqual("omit")
			jestExpect(request.cache).toEqual(Enum.HttpCachePolicy.None)
			jestExpect(request.redirect).toEqual("error")
			jestExpect(request.integrity).toEqual("")
			jestExpect(request.keepalive).toEqual(false)
			jestExpect(request.isReloadNavigation).toEqual(false)
			jestExpect(request.isHistoryNavigation).toEqual(false)
			jestExpect(request.signal).toBeDefined()
			jestExpect(request.duplex).toEqual("half")
		end)

		it("should handle url as first argument with options", function()
			local request = Request.new("localhost:4000", {
				method = "PUT",
				headers = { testHeader = "testHeaderValue" },
				body = HttpService:JSONEncode({ testValue = 1 }),
				referrer = "x",
				referrerPolicy = "unsafe-url",
				mode = "no-cors",
				credentials = "include",
				cache = Enum.HttpCachePolicy.None,
				redirect = "follow",
				integrity = "?",
				keepalive = true,
				duplex = "half",
			})

			jestExpect(request.url).toEqual("localhost:4000")
			jestExpect(request.headers.headerList).toEqual({ testHeader = "testHeaderValue" })
			jestExpect(request.method).toEqual("PUT")
			jestExpect(request.destination).toEqual("document")
			jestExpect(request.referrerPolicy).toEqual("no-referrer")
			jestExpect(request.referrer).toEqual("client")
			jestExpect(request.mode).toEqual("no-cors")
			jestExpect(request.credentials).toEqual("include")
			jestExpect(request.cache).toEqual(Enum.HttpCachePolicy.None)
			jestExpect(request.redirect).toEqual("follow")
			jestExpect(request.integrity).toEqual("?")
			jestExpect(request.keepalive).toEqual(true)
			jestExpect(request.isReloadNavigation).toEqual(false)
			jestExpect(request.isHistoryNavigation).toEqual(false)
			jestExpect(request.signal).toBeDefined()
			jestExpect(request.duplex).toEqual("half")
		end)

		it("should handle Request as first argument", function()
			local request = Request.new("localhost:4000", {
				method = "PUT",
				headers = { testHeader = "testHeaderValue" },
				body = HttpService:JSONEncode({ testValue = 1 }),
				referrer = "x",
				referrerPolicy = "unsafe-url",
				mode = "no-cors",
				credentials = "include",
				cache = Enum.HttpCachePolicy.None,
				redirect = "follow",
				integrity = "?",
				keepalive = true,
				duplex = "half",
			})

			local request2 = Request.new(request, {
				method = "POST",
			})

			jestExpect(request2.url).toEqual("localhost:4000")
			jestExpect(request2.headers.headerList).toEqual({ testHeader = "testHeaderValue" })
			jestExpect(request2.method).toEqual("POST")
			jestExpect(request2.destination).toEqual("document")
			jestExpect(request2.referrerPolicy).toEqual("no-referrer")
			jestExpect(request2.referrer).toEqual("client")
			jestExpect(request2.mode).toEqual("cors")
			jestExpect(request2.credentials).toEqual("include")
			jestExpect(request2.cache).toEqual(Enum.HttpCachePolicy.None)
			jestExpect(request2.redirect).toEqual("follow")
			jestExpect(request2.integrity).toEqual("?")
			jestExpect(request2.keepalive).toEqual(true)
			jestExpect(request2.isReloadNavigation).toEqual(false)
			jestExpect(request2.isHistoryNavigation).toEqual(false)
			jestExpect(request2.signal).toBeDefined()
			jestExpect(request2.duplex).toEqual("half")
		end)

		it("should error for a bad first argument", function()
			jestExpect(function()
				-- This is caught by analysis, type to any to check behavior
				Request.new(4 :: any)
			end).toThrow("The first argument of Request.new() must be a string or Request object")
		end)

		it("should error when providing body to GET/HEAD request", function()
			jestExpect(function()
				Request.new("url", {
					body = "BODY",
					method = "GET",
				})
			end).toThrow("'body' should not be provided as an option for request method GET")
		end)
	end)

	it("should support :clone()", function()
		local request = Request.new("localhost:4000", {
			method = "PUT",
			headers = { testHeader = "testHeaderValue" },
			body = HttpService:JSONEncode({ testValue = 1 }),
			referrer = "x",
			referrerPolicy = "unsafe-url",
			mode = "no-cors",
			credentials = "include",
			cache = Enum.HttpCachePolicy.Full,
			redirect = "follow",
			integrity = "?",
			keepalive = true,
			duplex = "half",
		})

		local requestClone = request:clone()

		jestExpect(requestClone.url).toEqual("localhost:4000")
		jestExpect(requestClone.headers.headerList).toEqual({ testHeader = "testHeaderValue" })
		jestExpect(requestClone.method).toEqual("PUT")
		jestExpect(requestClone.destination).toEqual("document")
		jestExpect(requestClone.referrerPolicy).toEqual("no-referrer")
		jestExpect(requestClone.referrer).toEqual("client")
		jestExpect(requestClone.mode).toEqual("cors")
		jestExpect(requestClone.credentials).toEqual("include")
		jestExpect(requestClone.cache).toEqual(Enum.HttpCachePolicy.Full)
		jestExpect(requestClone.redirect).toEqual("follow")
		jestExpect(requestClone.integrity).toEqual("?")
		jestExpect(requestClone.keepalive).toEqual(true)
		jestExpect(requestClone.isReloadNavigation).toEqual(false)
		jestExpect(requestClone.isHistoryNavigation).toEqual(false)
		jestExpect(requestClone.signal).toBeDefined()
		jestExpect(requestClone.duplex).toEqual("half")
	end)

	it("should support :json()", function()
		local request = Request.new("localhost:4000", {
			method = "PUT",
			body = HttpService:JSONEncode({ testValue = 1 }),
		})

		jestExpect(request:json():expect()).toEqual({ testValue = 1 })
	end)

	it("should support :text()", function()
		local request = Request.new("localhost:4000", {
			method = "PUT",
			body = HttpService:JSONEncode({ testValue = 1 }),
		})

		jestExpect(request:text():expect()).toEqual(HttpService:JSONEncode({ testValue = 1 }))
	end)
end
