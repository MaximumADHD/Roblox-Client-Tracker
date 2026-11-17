local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local FreeTrialChipHostView = require(script.Parent.FreeTrialChipHostView)
local useFreeTrialChipHostViewModel = require(script.Parent.useFreeTrialChipHostViewModel)

type Props = useFreeTrialChipHostViewModel.Props

local function FreeTrialChipHost(props: Props): React.ReactNode
	local viewProps = useFreeTrialChipHostViewModel(props)
	if viewProps == nil then
		return nil
	end

	-- createElement's ReactElement does not subtype React.Node.
	return React.createElement(FreeTrialChipHostView, viewProps) :: React.ReactNode
end

return FreeTrialChipHost
