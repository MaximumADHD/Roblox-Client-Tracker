local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(c)
		c.mapStateToProps = require(script.Parent.mapStateToProps)
	end)

	it("SHOULD return a function", function(c)
		expect(type(c.mapStateToProps)).toEqual("function")
	end)

	describe("WHEN called", function()
		it("SHOULD return the correct state when isChatInputBarVisible and isChatWindowVisible are true", function(c)
			local mockState = {
				ChatVisibility = {
					isChatInputBarVisible = true,
					isChatWindowVisible = true,
				},
				Messages = {
					byMessageId = {},
					inOrder = {},
				},
			}
			local returnVal = c.mapStateToProps(mockState, nil)
			expect(returnVal.isChatWindowVisible).toEqual(true)
			expect(returnVal.isChatInputBarVisible).toEqual(true)
		end)

		it("SHOULD return the correct state when isChatInputBarVisible and isChatWindowVisible are false", function(c)
			local mockState = {
				ChatVisibility = {
					isChatInputBarVisible = false,
					isChatWindowVisible = false,
				},
				Messages = {
					byMessageId = {},
					inOrder = {},
				},
			}
			local returnVal = c.mapStateToProps(mockState, nil)
			expect(returnVal.isChatWindowVisible).toEqual(false)
			expect(returnVal.isChatInputBarVisible).toEqual(false)
		end)
	end)
end
