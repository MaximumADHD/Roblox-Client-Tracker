local RoactAppExperiment = script:FindFirstAncestor("RoactAppExperiment")

local IXPService = game:GetService("IXPService")

local React = require(RoactAppExperiment.Parent.React)
local ExperimentContext = require(script.Parent.ExperimentContext)

local function useIXPService()
	local ixpServiceFromContext: IXPService? = React.useContext(ExperimentContext)
	if ixpServiceFromContext then
		return ixpServiceFromContext
	else
		return IXPService
	end
end

return useIXPService
