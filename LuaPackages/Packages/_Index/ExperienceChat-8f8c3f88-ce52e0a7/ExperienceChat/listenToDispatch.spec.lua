local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local listenToDispatch = require(script.Parent.listenToDispatch)

return function()
	describe("given a bindable event", function()
		local bindableEvent = Instance.new("BindableEvent")
		local listen = listenToDispatch(bindableEvent)

		it("should accept a callback", function()
			local spy = jest.fn()
			listen(function(...)
				spy(...)
			end)

			bindableEvent:Fire({
				type = "hello world",
			})
			task.wait()

			expect(spy).toHaveBeenCalledWith({ type = "hello world" })
		end)
	end)
end
