local Packages = script:FindFirstAncestor("SceneManagement").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

export type Props = {
	adorneeSize: Vector3,
	adorneeCFrame: CFrame,
	canvasSize: Vector2,
	alwaysOnTop: boolean,
	isVisible: boolean,
	name: string,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	children: any?,
}

local function SurfaceGuiWithAdornee(props: Props)
	local adorneeRef = React.useRef(nil)

	return {
		AdorneePortal = ReactRoblox.createPortal({
			Adornee = React.createElement("Part", {
				Name = props.name .. "_Part",
				ref = adorneeRef,
				Transparency = 1,
				Size = props.adorneeSize,
				CFrame = props.adorneeCFrame,
				CanCollide = false,
				CanTouch = false,
			}),
		}, props.adorneeParent),
		SurfaceGuiPortal = ReactRoblox.createPortal({
			SurfaceGui = React.createElement("SurfaceGui", {
				Name = props.name .. "_SurfaceGui",
				Adornee = adorneeRef,
				Active = true,
				Enabled = props.isVisible,
				CanvasSize = props.canvasSize,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				AlwaysOnTop = props.alwaysOnTop,
				LightInfluence = 0,
				children = props.children,
			}),
		}, props.surfaceGuiParent),
	}
end

return SurfaceGuiWithAdornee
