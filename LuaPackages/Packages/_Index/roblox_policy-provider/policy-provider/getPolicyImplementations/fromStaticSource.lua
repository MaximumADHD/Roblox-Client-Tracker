local function noOpt()
end

return function()
	return function(externalPolicy)
		assert(externalPolicy, "expected externalPolicy")

		return {
			read = function()
				return externalPolicy
			end,

			onPolicyChanged = function(func)
				func = func or noOpt
				return Instance.new("BindableEvent").Event:Connect(func)
			end,
		}
	end
end
