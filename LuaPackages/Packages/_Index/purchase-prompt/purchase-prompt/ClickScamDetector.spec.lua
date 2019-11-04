return function()
	local UserInputService = game:GetService("UserInputService")

	local ClickScamDetector = require(script.Parent.ClickScamDetector)

	-- We need better ways to fake time passing, so that we can test further functionality;
	-- May want to indirect the `tick` function in the ClickScamDetector and allow overriding

	it("should always report a scam if the mouse is locked", function()
		local clickScamDetector = ClickScamDetector.new()

		-- No clicks have been fired
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
		expect(clickScamDetector:isClickValid()).to.equal(false)

		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
		clickScamDetector:destroy()
	end)

	it("should report a scam if there are many clicks in quick succession", function()
		local clickScamDetector = ClickScamDetector.new()

		local fakeInput = {
			UserInputType = Enum.UserInputType.MouseButton1,
		}
		clickScamDetector:_onInput(fakeInput)
		clickScamDetector:_onInput(fakeInput)
		clickScamDetector:_onInput(fakeInput)
		expect(clickScamDetector:isClickValid()).to.equal(false)

		clickScamDetector:destroy()
	end)
end