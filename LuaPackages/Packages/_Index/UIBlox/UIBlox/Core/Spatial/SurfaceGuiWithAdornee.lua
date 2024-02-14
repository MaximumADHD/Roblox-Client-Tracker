local Spatial = script.Parent
local Core = Spatial.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Shared = require(Packages.Shared)

local shallowEqual = Shared.shallowEqual

local AdorneeAttachmentRefContext = React.createContext(nil :: React.Ref<Attachment>?)

export type Props = {
	name: string?, -- Used to identify instances in UI tree (mostly for debugging purposes)
	detached: boolean?, -- Whether to detach from the relatively-positioned `Part` hierarchy
	adorneeProps: {
		Size: Vector3 | React.Binding<Vector3>,
		CFrame: CFrame | React.Binding<CFrame>,
		Parent: Instance?,
	},
	surfaceGuiProps: {
		CanvasSize: Vector2 | React.Binding<Vector2>,
		Enabled: boolean?,
		Shape: Enum.SurfaceType?,
		HorizontalCurvature: number?,
		ZOffset: number?,
		Parent: Instance?,
	},
	children: React.React_Node, -- Children to be parented to the `SurfaceGui`
}

local function SurfaceGuiWithAdornee(props: Props)
	local name = props.name or "Unnamed"
	local detached = props.detached or false
	local adorneeProps = props.adorneeProps
	local surfaceGuiProps = props.surfaceGuiProps

	local adorneeRef = React.useRef(nil :: Part?)
	local selfAttachmentRef = React.useRef(nil :: Attachment?)
	local childrenAttachmentRef = React.useRef(nil :: Attachment?)

	local parentAttachmentRef = React.useContext(AdorneeAttachmentRefContext)
	local isRootAdornee = detached or parentAttachmentRef == nil

	local surfaceGui = React.createElement("SurfaceGui", {
		Name = `{name}_SurfaceGui`,
		Adornee = adorneeRef,
		Active = true,
		Enabled = surfaceGuiProps.Enabled,
		CanvasSize = surfaceGuiProps.CanvasSize,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AlwaysOnTop = true,
		LightInfluence = 0,
		Shape = surfaceGuiProps.Shape,
		HorizontalCurvature = surfaceGuiProps.HorizontalCurvature,
		ZOffset = surfaceGuiProps.ZOffset,
	}, props.children)

	return React.createElement(AdorneeAttachmentRefContext.Provider, {
		value = if props.detached then nil else childrenAttachmentRef,
	}, {
		SurfaceGui = if surfaceGuiProps.Parent ~= nil
			then ReactRoblox.createPortal(surfaceGui, surfaceGuiProps.Parent)
			else surfaceGui,
		AdorneePortal = ReactRoblox.createPortal({
			Adornee = React.createElement("Part", {
				Name = `{name}_Part`,
				ref = adorneeRef,
				Transparency = 1,
				Size = adorneeProps.Size,
				CFrame = if isRootAdornee then adorneeProps.CFrame else nil,
				CanCollide = false,
				CanTouch = false,
				Anchored = isRootAdornee,
			}, {
				ParentAttachment = if isRootAdornee
					then nil
					else React.createElement(React.Fragment, nil, {
						SelfAttachment = React.createElement("Attachment", {
							Name = `{name}_SelfAttachment`,
							CFrame = adorneeProps.CFrame,
							ref = selfAttachmentRef,
						}),
						ParentConstraint = React.createElement("RigidConstraint", {
							Name = `{name}_ParentConstraint`,
							Enabled = true,
							Attachment0 = parentAttachmentRef,
							Attachment1 = selfAttachmentRef,
						}),
					}),
				ChildrenAttachment = React.createElement("Attachment", {
					Name = `{name}_ChildrenAttachment`,
					CFrame = CFrame.identity,
					ref = childrenAttachmentRef,
				}),
			}),
		}, adorneeProps.Parent or workspace),
	})
end

return React.memo(SurfaceGuiWithAdornee, function(prevProps: Props, nextProps: Props)
	return prevProps.name == nextProps.name
		and prevProps.detached == nextProps.detached
		and shallowEqual(prevProps.adorneeProps, nextProps.adorneeProps)
		and shallowEqual(prevProps.surfaceGuiProps, nextProps.surfaceGuiProps)
		and prevProps.children == nextProps.children
end)
