local validate = require(script.Parent.validate)


local PageNavigationEvent = {}
PageNavigationEvent.__index = PageNavigationEvent

function PageNavigationEvent.new(pageName, event)
	validate(typeof(pageName) == "string", "pageName should be string")
	validate(typeof(event) == "userdata", "event should be RoactNavigation.Event")
	local self = {
		event = event,
		pageName = pageName,
	}

	setmetatable(self, PageNavigationEvent)

	return self
end

function PageNavigationEvent.isPageNavigationEvent(instance)
    return getmetatable(instance).__index == PageNavigationEvent
end


PageNavigationEvent.__tostring = function (pageNavigationEvent)
	return string.format( "%-15s - %s", tostring(pageNavigationEvent.event), pageNavigationEvent.pageName)
end


function PageNavigationEvent:equalTo(anotherPageNavigationEvent)
	validate(PageNavigationEvent.isPageNavigationEvent(anotherPageNavigationEvent), "should be PageNavigationEvent")
	return self.pageName == anotherPageNavigationEvent.pageName and self.event == anotherPageNavigationEvent.event
end


return PageNavigationEvent