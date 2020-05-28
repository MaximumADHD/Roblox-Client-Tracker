--[[
	Component that shows a user headshot. This is not the same as
	createElement("ImageLabel", {
		Image = "rbxthumb://..."
	})
	as it displays the headshot with Design's intended look & feel for user headshots (e.g. in a circle and
	specialized loading/load failed indicators), as well as automatically changing the size we request from
	the backend based on the element's size

	Props:
		Id - UserId of the user whose headshot will be displayed

	Optional Props:
		Size
		Position
		AnchorPoint
		LayoutOrder
		ZIndex
]]
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)

local AutoThumbnail = require(Plugin.Src.Components.AutoThumbnails.AutoThumbnail)

local UserHeadshotThumbnail = Roact.Component:extend(script.Name)

function UserHeadshotThumbnail:getThumbnail(contentId, status)
	local props = self.props
	local theme = props.Theme:get("Plugin")

	if status == Enum.AssetFetchStatus.Success then
		return contentId
	elseif status == Enum.AssetFetchStatus.Failure then
		return theme.subjectThumbnail.loadFailureImage
	else
		return theme.subjectThumbnail.loadingImage
	end
end

--[[
	TODO (awarwick) 5/17/2020 This component is unnecessarily convoluted due to the difficulty of making the
	thumbnail a circle. Normally we would set border-radius to achieve this, but the engine doesn't support
	that, so we have to overlay the image with a mask that is see-through in a circle cutout, but the rest is
	opaque. The opaque part's color has to match the background color of the parent color or you'll be able
	to see the cutout negative. It is not feasible to pass this in as a prop because the icons may be parented
	to some shared component they don't know the background color of, so we have to determine the background
	color ourselves, which involves hooking into Parent/BackgroundColor3 changed events.

	Once UISYS-335 is shipped, we can remove init/didMount/willUnmount and replace the mask with the UICorner
	component
]]
function UserHeadshotThumbnail:init()
	self.maskRef = Roact.createRef()
	self.maskBackgroundParent = nil
	self.parentChanged = nil
	self.colorChanged = nil

	self.getBackgroundParent = function(rbx)
		local parent = rbx.Parent
		if parent == nil or not parent:IsA("GuiObject") then
			return nil
		elseif parent.BackgroundTransparency ~= 1 then
			return parent
		else
			return self.getBackgroundParent(parent)
		end
	end
end

function UserHeadshotThumbnail:didMount()
	local function colorChanged()
		local mask = self.maskRef:getValue()
		if not mask then return end
		mask.ImageColor3 = self.maskBackgroundParent.BackgroundColor3
	end
	local function parentChanged()
		local mask = self.maskRef:getValue()
		if not mask then return end
		self.maskBackgroundParent = self.getBackgroundParent(mask.Parent)
		if self.colorChanged then self.colorChanged:Disconnect() end
		if self.maskBackgroundParent then
			self.colorChanged = self.maskBackgroundParent:GetPropertyChangedSignal("BackgroundColor3"):Connect(colorChanged)
			colorChanged()
		end
	end

	local mask = self.maskRef:getValue()
	self.parentChanged = mask.AncestryChanged:Connect(parentChanged)
	parentChanged()
end

function UserHeadshotThumbnail:willUnmount()
	self.parentChanged:Disconnect()
	if self.colorChanged then
		self.colorChanged:Disconnect()
	end
end

function UserHeadshotThumbnail:render()
	local props = self.props
	local id = props.Id

	local size = props.Size
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local layoutOrder = props.LayoutOrder
	local zIndex = props.ZIndex

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		Position = position,
		AnchorPoint = anchorPoint,
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
	}, {
		AutoThumbnail = Roact.createElement(AutoThumbnail, {
			Id = id,
			ThumbnailType = "AvatarHeadShot",
			RenderContents = function(contentId, status)
				local thumbnail = self:getThumbnail(contentId, status)

				local props = self.props
				local theme = props.Theme:get("Plugin")

				return Roact.createElement("ImageLabel", {
					Size = UDim2.fromScale(1, 1),
					BackgroundColor3 = theme.subjectThumbnail.background,
					BackgroundTransparency = 0,
					BorderSizePixel = 0,

					Image = thumbnail,
				}, {
					Mask = Roact.createElement("ImageLabel", {
						[Roact.Ref] = self.maskRef,

						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = 1,
						Image = theme.subjectThumbnail.maskImage,
					}),
				})
			end,
		})
	})
end

ContextServices.mapToProps(UserHeadshotThumbnail, {
	Theme = ContextServices.Theme,
})

return UserHeadshotThumbnail