return function(setup: any)
	return function(event, additionalInfo: any?)
		local eventInfo = setup.eventList[event]
		setup.diagImpl:reportStats(eventInfo.name, additionalInfo.loadingTime)
	end
end
