local Foundation = script:FindFirstAncestor("Foundation")

local Flags = require(Foundation.Utility.Flags)
local Logger = require(Foundation.Utility.Logger)
local useTokens = require(Foundation.Providers.Style.useTokens)

local function useScaledValue(value: number): number
	local tokens = useTokens()

	local scaledValue = if Flags.FoundationFixUseScaledValueWarning then value * tokens.Config.UI.Scale else value

	if scaledValue <= tokens.Size.Size_3000 then
		Logger:warning(
			"useScaledValue should be used for values larger than Size tokens. "
				.. "For smaller values, please align to a Size or derivative token."
		)
	end

	if Flags.FoundationFixUseScaledValueWarning then
		return scaledValue
	else
		return value * tokens.Config.UI.Scale
	end
end

return useScaledValue
