local Packages = script:FindFirstAncestor("SceneManagement").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

export type Props = {
	adorneeSize: Vector3,
	adorneeCFrame: CFrame,
	adorneeAnchored: boolean,
	canvasSize: Vector2,
	alwaysOnTop: boolean,
	isVisible: boolean,
	name: string,
	adorneeParent: Instance,
	surfaceGuiParent: Instance,
	setAdornee: (Instance?) -> ()?,
	setSurfaceGui: (Instance?) -> ()?,
	adorneeChildren: any,
	surfaceGuiChildren: any,
}

local function SurfaceGuiWithAdornee(props: Props)
	local adorneeRef = React.useRef(nil)
	local setAdornee = props.setAdornee
	local setSurfaceGui = props.setSurfaceGui

	local refCallback = React.useCallback(function(instance)
		adorneeRef.current = instance
		if setAdornee then
			setAdornee(instance)
		end
	end, { setAdornee, adorneeRef } :: { any })

	return {
		AdorneePortal = ReactRoblox.createPortal({
			Adornee = React.createElement("Part", {
				Name = props.name .. "_Part",
				ref = refCallback,
				Transparency = 1,
				Size = props.adorneeSize,
				CFrame = props.adorneeCFrame,
				CanCollide = false,
				CanTouch = false,
				children = props.adorneeChildren,
				Anchored = props.adorneeAnchored,
			}),
		}, props.adorneeParent),
		SurfaceGuiPortal = ReactRoblox.createPortal({
			SurfaceGui = React.createElement("SurfaceGui", {
				Name = props.name .. "_SurfaceGui",
				ref = setSurfaceGui,
				Adornee = adorneeRef,
				Active = true,
				Enabled = props.isVisible,
				CanvasSize = props.canvasSize,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				AlwaysOnTop = props.alwaysOnTop,
				LightInfluence = 0,
				children = props.surfaceGuiChildren,
			}),
		}, props.surfaceGuiParent),
	}
end

return SurfaceGuiWithAdornee
