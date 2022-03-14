local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local Utils = require(script.Parent)

return function()
	describe("Utils", function()
		it("should return a table of functions", function()
			expect(type(Utils)).toEqual("table")
			expect(type(Utils.isCommand)).toEqual("function")
			expect(type(Utils.getDisplayNameFromCommand)).toEqual("function")
		end)

		it("should return if a message is a command correctly", function()
			local isCommand = Utils.isCommand

			local fakeCommands = { "hello world", "/muted Player", "/mute" }
			for _, command in ipairs(fakeCommands) do
				expect(isCommand(command)).toEqual(false)
			end

			local realCommands = { "/mute Player1", "/unmute Player1" }
			expect(isCommand(realCommands[1])).toEqual("mute")
			expect(isCommand(realCommands[2])).toEqual("unmute")
		end)

		it("should return the displayName from a command correctly", function()
			local getDisplayNameFromCommand = Utils.getDisplayNameFromCommand
			local command = "/mute displayname1"
			expect(getDisplayNameFromCommand(command)).toEqual("displayname1")

			command = "/unmute "
			expect(getDisplayNameFromCommand(command)).toEqual("")
		end)
	end)
end
