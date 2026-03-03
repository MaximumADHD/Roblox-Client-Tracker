local Signal = {
	Connect = function(signal: RBXScriptSignal, callback: (...any) -> ())
		return signal:Connect(callback)
	end,
}

return Signal
