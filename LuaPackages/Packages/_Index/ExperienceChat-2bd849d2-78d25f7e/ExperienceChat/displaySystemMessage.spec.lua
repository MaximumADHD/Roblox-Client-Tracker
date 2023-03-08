local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local displaySystemMessage = require(script.Parent.displaySystemMessage)

return function()
	beforeAll(function(c)
		c.mockTranslator = {
			FormatByKey = function(_, key)
				return key
			end,
		}

		c.mockTextChannel = {
			DisplaySystemMessage = function() end,
		}
	end)

	it("SHOULD throw when passed the wrong value type", function(c)
		expect(function()
			displaySystemMessage(123 :: any, nil, "", c.mockTranslator, c.mockTextChannel)
		end).toThrow()
	end)

	it("SHOULD not throw when passed an array of strings", function(c)
		expect(function()
			displaySystemMessage({ "123", "456" }, nil, "", c.mockTranslator, c.mockTextChannel)
		end).never.toThrow()
	end)

	it("SHOULD not throw when passed an empty string", function(c)
		expect(function()
			displaySystemMessage("", nil, "", c.mockTranslator, c.mockTextChannel)
		end).never.toThrow()
	end)
end
