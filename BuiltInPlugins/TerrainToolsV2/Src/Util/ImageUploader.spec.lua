local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Networking = Framework.Http.Networking
local Promise = Framework.Util.Promise

local ImageUploader = require(script.Parent.ImageUploader)

return function()
	it("should be creatable", function()
		local networking = Networking.mock()
		local imageUploader = ImageUploader.new(networking)
		expect(imageUploader).to.be.ok()
	end)

	it("should expect a networking instance", function()
		expect(function()
			ImageUploader.new()
		end).to.throw()
	end)

	describe("upload", function()
		it("should check parameters", function()
			local imageUploader = ImageUploader.new({})

			expect(function()
				imageUploader:upload()
			end).to.throw()

			expect(function()
				imageUploader:upload("")
			end).to.throw()

			expect(function()
				imageUploader:upload("", "")
			end).to.throw()

			expect(function()
				imageUploader:upload("", "", "")
			end).to.throw()
		end)

		it("should send the correct request", function()
			local requestSent = false

			local id = "rbxtemp://0"
			local name = "Foo"
			local description = "Bar"
			local contents = "SomeImageDataHere"

			local networking = Networking.mock({
				onRequest = function(options)
					local url = options.Url
					expect(url:find("name=" .. name)).to.be.ok()
					expect(url:find("description=" .. description)).to.be.ok()

					expect(options.Body).to.equal(contents)

					requestSent = true
				end,
			})

			local imageUploader = ImageUploader.new(networking)

			imageUploader:upload(id, name, description, contents)

			expect(requestSent).to.equal(true)
		end)

		it("should return a promise", function()
			local networking = Networking.mock()
			local imageUploader = ImageUploader.new(networking)

			local promise = imageUploader:upload("", "", "", "")
			expect(Promise.is(promise)).to.equal(true)
		end)

		it("should only request each id once", function()
			local requestCount = 0

			local networking = Networking.mock({
				onRequest = function(options)
					requestCount = requestCount + 1
				end,
			})

			local imageUploader = ImageUploader.new(networking)

			local testId = "rbxtemp://0"
			local otherId = "rbxtemp://1"

			expect(requestCount).to.equal(0)
			local promise1 = imageUploader:upload(testId, "", "", "")
			expect(requestCount).to.equal(1)

			-- Requesting the same ID shouldn't send another request
			-- And the promise we get back should be the same as the last time
			local promise2 = imageUploader:upload(testId, "", "", "")
			expect(requestCount).to.equal(1)
			expect(promise1).to.equal(promise2)

			local otherPromise = imageUploader:upload(otherId, "", "", "")
			expect(requestCount).to.equal(2)
			expect(otherPromise).to.never.equal(promise1)
		end)

		it("should resolve to the response body", function()
			local body = "ResponseBody"

			local networking = Networking.mock({
				onRequest = function(options)
					return {
						Body = body,
						Success = true,
						StatusMessage = "OK",
						StatusCode = 200,
					}
				end,
			})

			local imageUploader = ImageUploader.new(networking)

			local promise = imageUploader:upload("", "", "", "")

			local promiseResolved = false

			promise:andThen(function(response)
				promiseResolved = true
				expect(response).to.equal(body)
			end)

			expect(promiseResolved).to.equal(true)
		end)

		it("should handle the request failing", function()
			local networking = Networking.mock({
				onRequest = function(options)
					return {
						Body = "Some fake error",
						Success = false,
						StatusMessage = "",
						StatusCode = 500,
					}
				end,
			})

			local imageUploader = ImageUploader.new(networking)

			local promise = imageUploader:upload("", "", "", "")

			local promiseResolved = false
			local promiseRejected = false

			promise:andThen(function(v)
				promiseResolved = true
			end, function(v)
				promiseRejected = true
			end)

			expect(promiseResolved).to.equal(false)
			expect(promiseRejected).to.equal(true)
		end)
	end)
end
