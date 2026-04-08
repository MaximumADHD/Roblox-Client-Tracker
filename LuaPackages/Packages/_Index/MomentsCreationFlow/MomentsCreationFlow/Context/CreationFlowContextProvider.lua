local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

type CreationFlowContextProps = {
	captures: { Capture },
	children: React.ReactNode,
	value: any,
	exitCreationFlow: () -> (),
}

local function CreationFlowContextProvider(props: CreationFlowContextProps)
	return React.createElement(CreationFlowContext.Provider, {
		value = Dash.join(props.value, {
			captures = props.captures,
			exitCreationFlow = props.exitCreationFlow,
		}),
	}, props.children)
end

return CreationFlowContextProvider
