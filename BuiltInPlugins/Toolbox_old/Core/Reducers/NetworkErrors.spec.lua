return function()
	local Plugin = script.Parent.Parent.Parent
	local ContentProvider = game:GetService("ContentProvider")

	local HttpResponse = require(Plugin.Libs.Http.HttpResponse)

	local NetworkError = require(Plugin.Core.Actions.NetworkError)

	local NetworkErrors = require(Plugin.Core.Reducers.NetworkErrors)

	it("should return a table", function()
		local state = NetworkErrors(nil, {})

		expect(type(state)).to.equal("table")
	end)

	describe("NetworkError action", function()
		it("should append the error to the list", function()
			local state = NetworkErrors(nil, {})

			local errorMessages = {
				"Network error test 1",
				"Network error test 2",
				"Network error test 3",
			}

			for _, errorMessage in ipairs(errorMessages) do
				local response = HttpResponse.new(errorMessage, 0, 200, "GET", ContentProvider.BaseUrl)
				state = NetworkErrors(state, NetworkError(response))

				for i, message in ipairs(state) do
					expect(message.responseBody).to.equal(errorMessages[i])
				end
			end
		end)
	end)
end
