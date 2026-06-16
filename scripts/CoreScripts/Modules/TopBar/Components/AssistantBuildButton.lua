local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local BuildExperience = require(CorePackages.Workspace.Packages.BuildExperience)
local Constants = require(script.Parent.Parent.Constants)
local canShowAssistantBuild = require(script.Parent.canShowAssistantBuild)

export type Props = {
	layoutOrder: number?,
	setKeepOutArea: ((string, Vector2, Vector2) -> ())?,
}

local function AssistantBuildButton(props: Props): React.ReactNode
	local setKeepOutArea = props.setKeepOutArea

	local onAreaChanged = React.useCallback(function(rbx: GuiObject?)
		if setKeepOutArea == nil then
			return
		end

		local position = if rbx then rbx.AbsolutePosition else Vector2.zero
		local size = if rbx then rbx.AbsoluteSize else Vector2.zero
		setKeepOutArea(Constants.AssistantBuildKeepOutAreaId, position, size)
	end, { setKeepOutArea } :: { unknown })

	if not canShowAssistantBuild() then
		return nil
	end

	return React.createElement(BuildExperience.AssistantBuild, {
		layoutOrder = props.layoutOrder,
		onAreaChanged = if setKeepOutArea ~= nil then onAreaChanged else nil,
	})
end

return React.memo(AssistantBuildButton)
