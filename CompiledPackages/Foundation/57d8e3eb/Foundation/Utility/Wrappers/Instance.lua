local Instance = {
	GetPropertyChangedSignal = function(instance: Instance, propertyName: string)
		return instance:GetPropertyChangedSignal(propertyName)
	end,
}

return Instance
