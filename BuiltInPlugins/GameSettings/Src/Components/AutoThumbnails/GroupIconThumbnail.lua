--[[
	Component that shows a group's icon. This is not the same as
	createElement("ImageLabel", {
		Image = "rbxthumb://..."
	})
	as it displays the icon with Design's intended look & feel for group icons (e.g. specialized loading/load
	load failed indicators), as well as automatically changing the size we request from the backend based
	on the element's size

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

local GroupIconThumbnail = Roact.Component:extend(script.Name)

function GroupIconThumbnail:getThumbnail(contentId, status)
	local props = self.props
	local theme = props.Theme:get("Plugin")

	if status == Enum.AssetFetchStatus.Success then
		return contentId
	elseif status == Enum.AssetFetchStatus.Failure then
		return theme.groupThumbnail.loadFailureImage
	else
		return theme.groupThumbnail.loadingImage
	end
end

function GroupIconThumbnail:render()
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
			ThumbnailType = "GroupIcon",
			RenderContents = function(contentId, status)
				local thumbnail = self:getThumbnail(contentId, status)

				return Roact.createElement("ImageLabel", {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,

					Image = thumbnail,
				})
			end,
		})
	})
end

ContextServices.mapToProps(GroupIconThumbnail, {
	Theme = ContextServices.Theme,
})

return GroupIconThumbnail