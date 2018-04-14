return function()
	local Store = require(script.Parent.Store)
	local loggerMiddleware = require(script.Parent.loggerMiddleware)

	it("should print whenever an action is dispatched", function()
		local outputCount = 0

		local function reducer(state, action)
			return state
		end

		local function outputFunction()
			outputCount = outputCount + 1
		end

		local logger = loggerMiddleware(outputFunction)

		local store = Store.new(reducer, {
			value = 0,
			otherValue = {},
		}, { logger })

		store:dispatch({
			type = "test",
		})

		expect(outputCount).to.equal(1)
	end)
end
