local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local InspectAndBuyFolder = script.Parent.Parent
local Colors = require(InspectAndBuyFolder.Colors)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

local FFlagAssetDetailsUseAutomaticCanvasSize = require(InspectAndBuyFolder.Flags.FFlagAssetDetailsUseAutomaticCanvasSize)
local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
local GetFFlagIBEnableLimitedBundle = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableLimitedBundle)

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
	if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
		partOfBundle = assetInfo.parentBundleId ~= nil
	end
	local partOfBundleAndOffsale = partOfBundle and not assetInfo.isForSale
	if GetFFlagIBEnableLimitedBundle() then
		partOfBundleAndOffsale = partOfBundle
	end
	local bundleInfo = self.props.bundleInfo or {}

	if partOfBundleAndOffsale then
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
		Font = AppFonts.default:getDefault(),
		TextColor3 = Colors.White,
		[Roact.Ref] = self.descriptionRef,
	})
end

function DetailsDescription:calculateSize()
	if self.descriptionRef.current and self.props.assetInfo then
		local size = TextService:GetTextSize(self.description,
			TEXT_SIZE_SMALL, AppFonts.default:getDefault(), Vector2.new(self.descriptionRef.current.AbsoluteSize.X, 5000)).Y
		if not FFlagAssetDetailsUseAutomaticCanvasSize then
			self.descriptionRef.current.Parent.CanvasSize = UDim2.new(1, 0, 0, DETAILS_SIZES + size)
		end
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
