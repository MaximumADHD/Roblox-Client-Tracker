local HttpService = game:GetService("HttpService")
local Packages = script.Parent.Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect

local Body = require(script.Parent.Body).Body

return function()
	it("should handle json in :text()", function()
		local input = HttpService:JSONEncode({
			test = 1,
		})
		local body = Body.new(input)

		local text = body:text():expect()
		jestExpect(text).toEqual(HttpService:JSONEncode({
			test = 1,
		}))
	end)

	it("should handle plaintext in :text()", function()
		local body = Body.new("test plaintext")

		local text = body:text():expect()
		jestExpect(text).toEqual("test plaintext")
	end)

	it("should handle :json()", function()
		local bodyInit = HttpService:JSONEncode({
			test = 1,
		})
		local body = Body.new(bodyInit)

		local json = body:json():expect()

		jestExpect(json).toEqual({
			test = 1,
		})
	end)

	it("should error if BodyInit is not string or nil", function()
		jestExpect(function()
			-- Analysis catches this, type to any to check behavior
			Body.new(4 :: any)
		end).toThrow("Expected string or nil as the first argument to Body.new(), but got: number")
	end)

	it("should reject in :json if body cannot be decoded", function()
		local body = Body.new("badInput")

		jestExpect(function()
			body:json():expect()
		end).toThrow("Failed to decode response body as JSON")
	end)

	it("should reject for :blob()", function()
		local bodyInit = HttpService:JSONEncode({
			test = 1,
		})
		local body = Body.new(bodyInit)

		jestExpect(function()
			body:blob():expect()
		end).toThrow("blob not implemented")
	end)

	it("should reject for :arrayBuffer()", function()
		local bodyInit = HttpService:JSONEncode({
			test = 1,
		})
		local body = Body.new(bodyInit)

		jestExpect(function()
			body:arrayBuffer():expect()
		end).toThrow("arrayBuffer not implemented")
	end)

	it("should reject for :formData()", function()
		local bodyInit = HttpService:JSONEncode({
			test = 1,
		})
		local body = Body.new(bodyInit)

		jestExpect(function()
			body:formData():expect()
		end).toThrow("formData not implemented")
	end)

	it("should handle a nil body", function()
		local body = Body.new()

		jestExpect(body:text():expect()).toEqual("")
		jestExpect(function()
			body:json():expect()
		end).toThrow(
			"Failed to decode response body as JSON. JSON decoding is only supported for Content-Type = application/json"
		)
	end)
end
