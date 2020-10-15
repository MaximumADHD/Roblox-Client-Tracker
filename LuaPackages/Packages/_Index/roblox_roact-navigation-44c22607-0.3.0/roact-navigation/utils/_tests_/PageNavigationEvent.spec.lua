local RoactNavigation = require(script.Parent.Parent.Parent)
local PageNavigationEvent = require(script.Parent.Parent.PageNavigationEvent)

return function()
	local testPage = "TEST PAGE"
	local willFocusEvent = RoactNavigation.Events.WillFocus

	it("should validate constructor inputs", function()
		expect(function () PageNavigationEvent.new(testPage, willFocusEvent) end).never.to.throw()

		expect(function () PageNavigationEvent.new(testPage, 1) end).to.throw()
		expect(function () PageNavigationEvent.new(testPage, "event") end).to.throw()
		expect(function () PageNavigationEvent.new(testPage, nil) end).to.throw()
		expect(function () PageNavigationEvent.new(testPage, {some = "junk"}) end).to.throw()
		expect(function () PageNavigationEvent.new(1, willFocusEvent) end).to.throw()
		expect(function () PageNavigationEvent.new(nil, willFocusEvent) end).to.throw()
		expect(function () PageNavigationEvent.new({"bogus"}, willFocusEvent) end).to.throw()
	end)

	it("should be constructed from page name and RoactNavigation.Events", function()
		for _, event in pairs(RoactNavigation.Events) do
			local pageName = testPage .. tostring(event)
			local testPageNavigationEvent = PageNavigationEvent.new(pageName, event)
			expect(testPageNavigationEvent.pageName).to.be.equal(pageName)
			expect(testPageNavigationEvent.event).to.be.equal(event)
			expect(PageNavigationEvent.isPageNavigationEvent(testPageNavigationEvent)).to.be.equal(true)
		end
	end)

	it("should implement tostring and eq", function()
		for _, event in pairs(RoactNavigation.Events) do
			local pageName = testPage .. tostring(event)
			local testPageNavigationEvent = PageNavigationEvent.new(pageName, event)
			expect(testPageNavigationEvent:equalTo(PageNavigationEvent.new(pageName, event))).to.be.equal(true)
			expect(tostring(testPageNavigationEvent)).to.be.equal(string.format("%-15s - %s",tostring(event), pageName))
		end

		local testPageNavigationEvent = PageNavigationEvent.new(testPage, willFocusEvent)
		local willFocus = PageNavigationEvent.new(testPage, willFocusEvent)
		expect(testPageNavigationEvent:equalTo(willFocus)).to.be.equal(true)
		local bogusWillFocus = PageNavigationEvent.new(testPage .. "bogus", willFocusEvent)
		expect(testPageNavigationEvent:equalTo(bogusWillFocus)).to.be.equal(false)
		local willBlur = PageNavigationEvent.new(testPage, RoactNavigation.Events.WillBlur)
		expect(testPageNavigationEvent:equalTo(willBlur)).to.be.equal(false)
	end)
end
