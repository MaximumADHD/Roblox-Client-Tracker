local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)
local Types = require(Main.Types)

type DialogType = Types.DialogType

export type DialogIconProps = {
	icon: string,
	color: Foundation.ColorStyle,
}

local function useDialogIconProps(tokens: Foundation.Tokens, dialogType: DialogType)
	local iconPropsByType = React.useMemo(function(): { [DialogType]: DialogIconProps? }
		return table.freeze({
			Warning = table.freeze({
				icon = BuilderIcons.Icon.TriangleExclamation,
				color = tokens.Color.System.Warning,
			}),
			Critical = table.freeze({
				icon = BuilderIcons.Icon.CircleX,
				color = tokens.Color.System.Alert,
			}),
			Success = table.freeze({
				icon = BuilderIcons.Icon.CircleCheck,
				color = tokens.Color.System.Success,
			}),
		})
	end, { tokens })

	return iconPropsByType[dialogType]
end

return useDialogIconProps
