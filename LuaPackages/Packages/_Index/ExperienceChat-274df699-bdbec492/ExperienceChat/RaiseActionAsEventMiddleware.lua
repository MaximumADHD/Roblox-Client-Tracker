local ActionBindableEvent = require(script.Parent.ActionBindableEvent)

return function(nextDispatch, _store)
	return function(action)
		ActionBindableEvent:Fire(action)
		nextDispatch(action)
	end
end
