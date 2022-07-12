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
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local Stylizer = Framework.Style.Stylizer
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AutoThumbnail = require(Plugin.Src.Components.Thumbnails.AutoThumbnail)
local UserHeadshotThumbnail = Roact.Component:extend(script.Name)

function UserHeadshotThumbnail:getThumbnail(contentId, status)
	local props = self.props
	local theme = props.Stylizer
	
	if status == Enum.AssetFetchStatus.Success then
		return contentId
	elseif status == Enum.AssetFetchStatus.Failure then
		return theme.subjectThumbnail.loadFailureImage
	else
		return theme.subjectThumbnail.loadingImage
	end
end

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
				local theme = props.Stylizer 

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


UserHeadshotThumbnail = withContext({
	Stylizer = Stylizer,
})(UserHeadshotThumbnail)



return UserHeadshotThumbnail
