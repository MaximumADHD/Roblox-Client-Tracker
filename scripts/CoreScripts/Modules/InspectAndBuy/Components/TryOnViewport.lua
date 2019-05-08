local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Constants = require(InspectAndBuyFolder.Constants)
local AvatarViewport = require(InspectAndBuyFolder.Components.AvatarViewport)
local GetHumanoidDescriptionFromCostumeId = require(InspectAndBuyFolder.Thunks.GetHumanoidDescriptionFromCostumeId)

local TryOnViewport = Roact.PureComponent:extend("TryOnViewport")

local function isPartOfBundle(assetInfo)
	return assetInfo and assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
end

function TryOnViewport:init()
	self.model = self.props.localPlayerModel
	self.model.HumanoidRootPart.Anchored = true
	self.humanoidDescriptions = {}
	self.humanoidDescriptionForLocalPlayer = self.model.Humanoid.HumanoidDescription
	self.state = {
		obtainedHumanoidDescriptions = {}
	}
end

function TryOnViewport:didMount()
	self.isMounted = true
end

function TryOnViewport:didUpdate(prevProps)
	local assetInfo = self.props.assetInfo
	local bundles = self.props.bundles
	local tryingOnInfo = self.props.tryingOnInfo
	local prevTryingOnInfo = prevProps.tryingOnInfo

	if tryingOnInfo ~= prevTryingOnInfo and tryingOnInfo.tryingOn and isPartOfBundle(assetInfo) then
		local bundleId = assetInfo.bundlesAssetIsIn[1]
		local costumeId = bundles[bundleId].costumeId

		-- Get the humanoid description of this bundle's costume.
		self.props.getHumanoidDescriptionFromCostumeId(costumeId, function(humanoidDescription)
			if self and self.isMounted then
				self.humanoidDescriptions[costumeId] = humanoidDescription
				self:setState({
					obtainedHumanoidDescriptions = Cryo.Dictionary.join(self.state.obtainedHumanoidDescriptions, {[costumeId] = true})
				})
			end
		end)
	end
end

function TryOnViewport:render()
	local assetInfo = self.props.assetInfo
	local bundles = self.props.bundles
	local tryingOnInfo = self.props.tryingOnInfo
	local humanoidDescription = self.humanoidDescriptionForLocalPlayer:Clone()
	local visible = tryingOnInfo.tryingOn
	local setScrollingEnabled = self.props.setScrollingEnabled

	if tryingOnInfo and tryingOnInfo.tryingOn then
		if isPartOfBundle(assetInfo) then
			local bundleId = assetInfo.bundlesAssetIsIn[1]
			local costumeId = bundles[bundleId].costumeId
			local costumeHumanoidDescription = self.humanoidDescriptions[costumeId]
			visible = self.state.obtainedHumanoidDescriptions[costumeId] == true
			if costumeHumanoidDescription then
				-- Overwrite the inspecter's assets with any asset from the costume.
				for _, value in pairs(Constants.HumanoidDescriptionAssetNames) do
					if tonumber(costumeHumanoidDescription[value]) and tostring(costumeHumanoidDescription[value]) ~= "0" then
						humanoidDescription[value] = costumeHumanoidDescription[value]
					end
				end
			end
		else
			humanoidDescription[Constants.HumanoidDescriptionIdToName[tryingOnInfo.assetTypeId]] = tryingOnInfo.assetId
		end
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 300),
		LayoutOrder = 2,
		Visible = visible,
	}, {
		AvatarViewport = Roact.createElement(AvatarViewport, {
			size = UDim2.new(0.75, 0, 1, 0),
			position = UDim2.new(0.5, 0, 0.5, 0),
			humanoidDescription = humanoidDescription,
			model = self.model,
			visible = true,
			backgroundTransparency = 1,
			setScrollingEnabled = setScrollingEnabled,
		})
	})
end

function TryOnViewport:willUnmount()
	self.isMounted = false
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		return {
			assetInfo = state.assets[assetId],
			bundles = state.bundles,
			tryingOnInfo = state.tryingOnInfo,
		}
	end,
	function(dispatch)
		return {
			getHumanoidDescriptionFromCostumeId = function(costumeId, callback)
				return dispatch(GetHumanoidDescriptionFromCostumeId(costumeId, callback))
			end,
		}
	end
)(TryOnViewport)