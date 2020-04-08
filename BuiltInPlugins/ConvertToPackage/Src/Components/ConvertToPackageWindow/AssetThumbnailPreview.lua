--[[
	AssetThumbnailPreview
	Finds "instances" from the store provider and displays them in a ViewportFrame with a title below.
	Will attempt to use a ThumbnailCamera if it finds one.

	Necessary Props:
		UDim2 Size - size of the preview
		UDim2 Position - position of the preview
		boolean showTitle - defaults to true if nil
		number titleHeight - height of title text (defaults to 24)
		number titlePadding - distance from title text to preview (defaults to 12)

	Optional Props:
		string title - the text of the title below the ViewportFrame, defaults to first instance name
		int LayoutOrder - will be used by the layouter to change the position of the components (defaults to 1 if not passed in)

]]

local PREVIEW_TITLE_PADDING = 12
local PREVIEW_TITLE_HEIGHT = 24

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = Plugin.Src.Util

local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local UILibrary = require(Packages.UILibrary)

local Constants = require(Util.Constants)
local RoundFrame = UILibrary.Component.RoundFrame

local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local function removeAllScripts(object)
	for _, descendant in pairs(object:GetDescendants()) do
		if descendant:IsA("LuaSourceContainer") then
			descendant:Destroy()
		end
	end
end

local function hasShowableObject(object)
	if object:IsA("PVInstance") then
		return true
	end
	for _, descendant in pairs(object:GetDescendants()) do
		if descendant:IsA("PVInstance") then
			if not descendant:FindFirstAncestorWhichIsA("LuaSourceContainer") then
				return true
			end
		end
	end
	return false
end

local AssetThumbnailPreview = Roact.PureComponent:extend("AssetThumbnailPreview")

function AssetThumbnailPreview:init(props)
	self.viewportRef = Roact.createRef()
end

function AssetThumbnailPreview:didMount()
	if self.props.instances and hasShowableObject(self.props.instances[1]) then
		local viewportFrame = self.viewportRef.current
		viewportFrame:ClearAllChildren()

		local camera = Instance.new("Camera")
		camera.Name = "Camera"
		camera.Parent = viewportFrame
		viewportFrame.CurrentCamera = camera
		local model = Instance.new("Model")
		model.Parent = viewportFrame

		for _, instance in pairs(self.props.instances) do
			if not instance:IsA("LuaSourceContainer") then
				-- Certain objects have parent constraints
				-- i.e. Attachments must be parented to Part objects
				pcall(function()
					local clone = instance:Clone()
					removeAllScripts(clone)
					clone.Parent = model
				end)
			end
		end

		local modelCF = model:GetModelCFrame()
		camera:SetImageServerView(modelCF)

		local radius = model:GetExtentsSize().magnitude/2
		local halfFov = math.rad(camera.FieldOfView)/2
		local depth = radius/math.tan(halfFov)

		-- 1. remove translation
		-- 2. move to model position
		-- 3. push camera back by depth in the original angle given by SetImageServerView
		-- SetImageServerView ensures that camera.CFrame.p and modelCF.p will always be different values
		camera.CFrame = (camera.CFrame - camera.CFrame.p) + modelCF.p + ((camera.CFrame.p - modelCF.p).unit * depth)
	end
end

function AssetThumbnailPreview:getName()
	if self.props.instances and #self.props.instances > 0 then
		return self.props.instances[1].Name
	end
	return ""
end

function AssetThumbnailPreview:render()
	return withTheme(function(theme)
		local props = self.props

		local title = props.title or self:getName()
		local showTitle = true
		if nil ~= props.ShowTitle then
			showTitle = props.showTitle
		end
		local position = props.Position or UDim2.new(1, 0, 1, 0)
		local titleHeight = props.titleHeight or PREVIEW_TITLE_HEIGHT
		local titlePadding = props.titlePadding or PREVIEW_TITLE_PADDING
		local layoutOrder = props.LayoutOrder or 1
		local showPlaceholder = self.props.instances and not hasShowableObject(self.props.instances[1])
		return Roact.createElement("Frame", {
			Name = "AssetThumbnailPreview",
			BackgroundTransparency = 1,
			Size = props.Size,
			Position = position,

			LayoutOrder = layoutOrder
		}, {
			PreviewFrame = Roact.createElement(RoundFrame, {
				BackgroundColor3 = theme.thumbnailPreview.background,
				BorderColor3 = theme.thumbnailPreview.border,
				Size = showTitle and UDim2.new(1, 0, 1, -(titleHeight + titlePadding)) or UDim2.new(1, 0, 1, 0),
			}, {
				Viewport = not showPlaceholder and Roact.createElement("ViewportFrame", {
					[Roact.Ref] = self.viewportRef,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = theme.thumbnailPreview.background,
					BackgroundTransparency = 1,
				}),
				PreviewPlaceholder = showPlaceholder and Roact.createElement("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 0,
					Image = Constants.Images.IMAGE_PLACEHOLDER,
					BackgroundColor3 = theme.thumbnailPreview.background,
					ImageColor3 = theme.thumbnailPreview.placeholderColor
				}),
			}),
			Title = showTitle and Roact.createElement("TextLabel", {
				Text = title,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextColor3 = theme.thumbnailPreview.text,
				Position = UDim2.new(0, 0, 1, -titleHeight),
				Size = UDim2.new(1, 0, 0, titleHeight),
				BackgroundTransparency = 1,
			})
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}
	return {
		instances = state.AssetConfigReducer.instances,
	}
end

return RoactRodux.connect(mapStateToProps)(AssetThumbnailPreview)