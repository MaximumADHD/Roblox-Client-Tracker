local RoactNavigation = require(script.Parent.Parent.Parent)
local TrackNavigationEvents = require(script.Parent.Parent.TrackNavigationEvents)
local PageNavigationEvent = require(script.Parent.Parent.PageNavigationEvent)


return function()
	local testPage = "TEST PAGE"
	local testPageWillFocus = PageNavigationEvent.new(testPage, RoactNavigation.Events.WillFocus)
	local testPageWillBlur = PageNavigationEvent.new(testPage, RoactNavigation.Events.WillBlur)

	local trackNavigationEvents = TrackNavigationEvents.new()
	it("should implement equalTo function", function()
		expect(trackNavigationEvents:equalTo({})).to.be.equal(true)

		local navigationEvents = trackNavigationEvents:getNavigationEvents()
		table.insert(navigationEvents, testPageWillFocus)
		expect(trackNavigationEvents:equalTo({testPageWillFocus})).to.be.equal(true)
		expect(trackNavigationEvents:equalTo({})).to.be.equal(false)

		table.insert(navigationEvents, testPageWillBlur)
		expect(trackNavigationEvents:equalTo({testPageWillFocus, testPageWillBlur})).to.be.equal(true)

		table.insert(navigationEvents, testPageWillFocus)
		expect(trackNavigationEvents:equalTo({testPageWillFocus, testPageWillBlur})).to.be.equal(false)
		expect(trackNavigationEvents:equalTo({testPageWillFocus, testPageWillBlur, testPageWillFocus})).to.be.equal(true)
	end)

	it("should be empty after reset", function()
		trackNavigationEvents:resetNavigationEvents()
		local navigationEvents = trackNavigationEvents:getNavigationEvents()
		expect(typeof(navigationEvents)).to.be.equal('table')
		expect(#navigationEvents).to.be.equal(0)
		expect(trackNavigationEvents:equalTo({})).to.be.equal(true)
	end)

end
