local Foundation = script:FindFirstAncestor("Foundation")

local Logger = require(Foundation.Utility.Logger)
local useTokens = require(Foundation.Providers.Style.useTokens)

local function useScaledValue(value: number): string
	local tokens = useTokens()

	if value <= tokens.Size.Size_3000 then
		Logger:warning(
			"useScaledValue should be used for values larger than Size tokens. "
				.. "For smaller values, please align to a Size or derivative token."
		)
	end

	return value * tokens.Config.UI.Scale
end

return useScaledValue
