local HttpService = game:GetService("HttpService")
local Packages = script.Parent.Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect

local Response = require(script.Parent.Response).Response

return function()
	describe("Constructor", function()
		it("should support empty options", function()
			local response = Response.new()

			jestExpect(response.ok).toEqual(true)
			jestExpect(response.status).toEqual(200)
			jestExpect(response.statusText).toEqual("")
			jestExpect(response.headers.headerList).toEqual({})
			jestExpect(response.headers.guard).toEqual("response")
			jestExpect(response.type).toEqual("text")
			jestExpect(response.url).toEqual("")
			jestExpect(response.redirected).toEqual(false)

			jestExpect(response.body).toEqual(nil)
		end)

		it("should support body and empty init", function()
			local body = HttpService:JSONEncode({
				a = 1,
				b = {
					c = 2,
					d = 3,
				},
			})
			local response = Response.new(body)

			jestExpect(response.ok).toEqual(true)
			jestExpect(response.status).toEqual(200)
			jestExpect(response.statusText).toEqual("")
			jestExpect(response.headers.headerList).toEqual({})
			jestExpect(response.headers.guard).toEqual("response")
			jestExpect(response.type).toEqual("text")
			jestExpect(response.url).toEqual("")
			jestExpect(response.redirected).toEqual(false)

			jestExpect(response.body).toEqual(body)
		end)

		it("should support body and init", function()
			local body = HttpService:JSONEncode({
				a = 1,
				b = {
					c = 2,
					d = 3,
				},
			})
			local response = Response.new(body, {
				status = 404,
				statusText = "Not OK",
				headers = {
					testHeader = "yes",
				},
			})

			jestExpect(response.ok).toEqual(false)
			jestExpect(response.status).toEqual(404)
			jestExpect(response.statusText).toEqual("Not OK")
			jestExpect(response.headers.headerList).toEqual({
				testHeader = "yes",
			})
			jestExpect(response.headers.guard).toEqual("response")
			jestExpect(response.type).toEqual("text")
			jestExpect(response.url).toEqual("")
			jestExpect(response.redirected).toEqual(false)

			jestExpect(response.body).toEqual(body)
		end)
	end)

	it("should support :text()", function()
		local response = Response.new("hello = 'world'")
		local text = response:text():expect()
		jestExpect(text).toEqual("hello = 'world'")
	end)

	it("should support :json()", function()
		local body = HttpService:JSONEncode({
			hello = "world",
		})
		local response = Response.new(body)
		local json = response:json():expect()
		jestExpect(json).toEqual({ hello = "world" })
	end)

	it("should support the static Error method", function()
		local response = Response.error()
		jestExpect(response.type).toEqual("error")
		jestExpect(response.status).toEqual(0)
		jestExpect(response.statusText).toEqual("")
	end)

	it("should support :clone()", function()
		local blob = {
			a = 1,
			b = {
				c = 2,
				d = 3,
			},
		}

		local body = HttpService:JSONEncode(blob)
		local response = Response.new(body, {
			status = 201,
			statusText = "LGTM",
			headers = {
				testHeader = "headerValue",
			},
		})

		local clonedResponse = response:clone()
		jestExpect(clonedResponse.ok).toEqual(true)
		jestExpect(clonedResponse.status).toEqual(201)
		jestExpect(clonedResponse.statusText).toEqual("LGTM")
		jestExpect(clonedResponse.headers.headerList).toEqual({
			testHeader = "headerValue",
		})
		jestExpect(clonedResponse.headers.guard).toEqual("response")
		jestExpect(clonedResponse.type).toEqual("text")
		jestExpect(clonedResponse.url).toEqual("")
		jestExpect(clonedResponse.redirected).toEqual(false)

		jestExpect(clonedResponse.body).toEqual(body)

		jestExpect(clonedResponse:json():expect()).toEqual(blob)
	end)
end
