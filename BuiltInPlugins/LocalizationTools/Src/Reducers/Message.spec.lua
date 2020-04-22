local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local SetMessage = require(Plugin.Src.Actions.SetMessage)
local Message = require(script.Parent.Message)

return function()
	it("should return a string", function()
		local state = Message(nil, "")
		expect(type(state)).to.equal("string")
		expect(state).to.be.ok()
	end)

	describe("SetMessage", function()
		it("should validate input", function()
			expect(function()
				SetMessage(nil)
			end).to.throw()
			expect(function()
				SetMessage(true)
			end).to.throw()
			expect(function()
				SetMessage({})
			end).to.throw()
		end)

		it("should set state", function()
			local message = "message"
			local r = Rodux.Store.new(Message)
			local state = r:getState()
			expect(state).to.equal("")

			state = Message(state, SetMessage(message))
			expect(state).to.equal(message)
		end)
	end)
end