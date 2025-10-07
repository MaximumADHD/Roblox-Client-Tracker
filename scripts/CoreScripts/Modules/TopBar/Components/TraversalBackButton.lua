local CorePackages = game:GetService("CorePackages")
local TeleportService = game:GetService("TeleportService")

local React = require(CorePackages.Packages.React)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local PlaceInfoRodux = require(CorePackages.Workspace.Packages.PlaceInfoRodux)

local Foundation = require(CorePackages.Packages.Foundation)
local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

local Traversal = CoreScriptsRoactCommon.Traversal
local TeleportBackButton = Traversal.TeleportBackButton
local PlaceInfoController = PlaceInfoRodux.PlaceInfoController

local FFlagUsePlaceInfoController = PlaceInfoRodux.Flags.FFlagUsePlaceInfoController

local function TraversalBackButton(props: {}, ref: React.Ref<GuiObject>?): React.React_Node
	local prevUniverseId, prevPlaceId = TeleportService:GetThirdPartyTeleportInfo(false)
	-- don't render on no prevs, for example on first time joins
	if prevUniverseId <= 0 or prevPlaceId <= 0 then
		return nil
	end

	local tokens = useTokens()

	local placeName, setPlaceName = React.useBinding("Previous experience") -- TODO i18n
	if FFlagUsePlaceInfoController then
		PlaceInfoController.default:name(prevPlaceId):andThen(function(result)
			if not result then
				return
			end
			setPlaceName(result)
		end):catch(function(err)
			warn(err)
		end)
	end

	-- shrink because button width may get to large even with text limits
	return React.createElement(View, {
		tag = "auto-xy shrink",
	}, {
		TraversalBackButton = React.createElement(TeleportBackButton, {
			text = placeName,
			textLimitWidth = tokens.Size.Size_2500 * 2,

			-- pass through props
			ref = ref,
		}),
	})
end

return React.memo(React.forwardRef(TraversalBackButton))
