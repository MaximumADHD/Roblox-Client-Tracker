local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local RBXConsoleCommand = require(script.Parent.RBXConsoleCommand)

return function()
	describe("WHEN clientRun is called", function()
		describe("WHEN GetCore(DevConsoleVisible) is not set", function()
			it("SHOULD run without issue", function()
				expect(RBXConsoleCommand.clientRun).never.toThrow()
			end)
		end)

		describe("WHEN GetCore(DevConsoleVisible) is set", function()
			beforeAll(function(c)
				c.callback = jest.fn()
				game:GetService("StarterGui"):RegisterGetCore("DevConsoleVisible", function(...)
					c.callback(...)
				end)
			end)

			it("SHOULD run without issue", function()
				expect(RBXConsoleCommand.clientRun).never.toThrow()
			end)

			it("SHOULD invoke the callback", function(c)
				expect(c.callback).toHaveBeenCalled()
			end)
		end)
	end)
end
