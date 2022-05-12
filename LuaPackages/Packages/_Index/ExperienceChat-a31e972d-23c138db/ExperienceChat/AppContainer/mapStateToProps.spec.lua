local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(c)
		c.mapStateToProps = require(script.Parent.mapStateToProps)

		c.mockState = {
			CanLocalUserChat = false,
			Messages = {
				byMessageId = {},
				inOrder = {},
			},
			ChatVisibility = {
				isChatInputBarEnabled = {
					value = true,
				},
				isChatWindowEnabled = {
					value = true,
				},
			},
		}
	end)
	it("SHOULD return a function", function(c)
		expect(type(c.mapStateToProps)).toEqual("function")
	end)

	describe("GIVEN ChatVisibility.isChatInputBarEnabled", function()
		it("SHOULD return correct state when isChatInputBarEnabled.value is true", function(c)
			c.mockState.ChatVisibility.isChatInputBarEnabled.value = true
			local returnVal = c.mapStateToProps(c.mockState, nil)
			expect(returnVal.isChatInputBarVisible).toEqual(true)
		end)

		it("SHOULD return correct state when isChatInputBarEnabled.value is false", function(c)
			c.mockState.ChatVisibility.isChatInputBarEnabled.value = false
			local returnVal = c.mapStateToProps(c.mockState, nil)
			expect(returnVal.isChatInputBarVisible).toEqual(false)
		end)
	end)

	describe("GIVEN ChatVisibility.isChatWindowEnabled", function()
		it("SHOULD return correct state when isChatWindowEnabled.value is true", function(c)
			c.mockState.ChatVisibility.isChatWindowEnabled.value = true
			local returnVal = c.mapStateToProps(c.mockState, nil)
			expect(returnVal.isChatWindowVisible).toEqual(true)
		end)

		it("SHOULD return correct state when isChatWindowEnabled.value is false", function(c)
			c.mockState.ChatVisibility.isChatWindowEnabled.value = false
			local returnVal = c.mapStateToProps(c.mockState, nil)
			expect(returnVal.isChatWindowVisible).toEqual(false)
		end)
	end)
end
