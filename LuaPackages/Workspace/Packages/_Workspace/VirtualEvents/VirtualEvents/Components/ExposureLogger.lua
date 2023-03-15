local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local RoactAppExperiment = require(VirtualEvents.Parent.RoactAppExperiment)
local useRefImpression = require(VirtualEvents.Hooks.useRefImpression)

local useIXPService = RoactAppExperiment.useIXPService

export type Props = {
	exposureLayer: string,
	onExposure: (() -> ())?,
}

local function ExposureLogger(props: Props)
	local ref = React.useRef(nil :: Frame?)
	local ixpService = useIXPService()

	useRefImpression(ref, function()
		ixpService:LogUserLayerExposure(props.exposureLayer)

		if props.onExposure then
			props.onExposure()
		end
	end)

	return React.createElement("Frame", {
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(0, 0),
		BackgroundTransparency = 1,
		ref = ref,
	})
end

return ExposureLogger
