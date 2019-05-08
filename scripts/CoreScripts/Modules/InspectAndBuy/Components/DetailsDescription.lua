local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local InspectAndBuyFolder = script.Parent.Parent
local Colors = require(InspectAndBuyFolder.Colors)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

local TEXT_SIZE_SMALL = 16
local DETAILS_SIZES = 451

local DetailsDescription = Roact.PureComponent:extend("DetailsDescription")

--[[
	Sets the variables used to display text. If a bundle is
	being shown, they will display the bundle's data instead.
]]
function DetailsDescription:setText()
	local assetInfo = self.props.assetInfo or {}
	local partOfBundle = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
	local bundleInfo = self.props.bundleInfo or {}

	if partOfBundle then
		local bundleId = UtilityFunctions.getBundleId(assetInfo)
		if bundleInfo[bundleId] then
			self.description = bundleInfo[bundleId].description or ""
		end
	elseif assetInfo then
		self.description = assetInfo.description or ""
	end
end

function DetailsDescription:init()
	self.description = ""
	self.descriptionRef = Roact.createRef()
end

function DetailsDescription:render()
	self:setText()
	local size = self:calculateSize()

	return Roact.createElement("TextLabel", {
		BackgroundTransparency = 1,
		LayoutOrder = 4,
		Size = UDim2.new(1, -20, 0, size),
		Text = self.description or "",
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextSize = TEXT_SIZE_SMALL,
		TextWrapped = true,
		Font = Enum.Font.Gotham,
		TextColor3 = Colors.White,
		[Roact.Ref] = self.descriptionRef,
	})
end

function DetailsDescription:calculateSize()
	if self.descriptionRef.current and self.props.assetInfo then
		local size = TextService:GetTextSize(self.description,
			TEXT_SIZE_SMALL, Enum.Font.Gotham, Vector2.new(self.descriptionRef.current.AbsoluteSize.X, 5000)).Y
		self.descriptionRef.current.Parent.CanvasSize = UDim2.new(1, 0, 0, DETAILS_SIZES + size)
		return size
	end
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		return {
			view = state.view,
			assetInfo = state.assets[assetId],
			detailsInformation = state.detailsInformation,
			bundleInfo = state.bundles,
		}
	end
)(DetailsDescription)