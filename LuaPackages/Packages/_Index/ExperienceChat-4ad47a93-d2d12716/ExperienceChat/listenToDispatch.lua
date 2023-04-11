return function(bindableEvent: BindableEvent)
	return function(callback)
		bindableEvent.Event:Connect(callback)
	end
end
