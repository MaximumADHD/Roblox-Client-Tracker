local Root = script:FindFirstAncestor("SceneUnderstanding")

local safelyAccessProperty = require(Root.safelyAccessProperty)

--[=[
	Checks if an Instance is a Source Asset.

	A Source Asset is any Instance that has a positive, non-zero
	`SourceAssetId`. This is a property that gets set on instances inserted from
	the Creator Store.

	Since `SourceAssetId` can only be accessed in RobloxScript security
	contexts, this function ensures that an error does not ocurr if called from
	a lower security level to ensure graceful degredation.

	Usage:

	```lua
	if SceneUnderstanding.isSourceAsset(workspace.Car) then
		print("The car is a Source Asset")
	end
	```

	@within SceneUnderstanding
]=]
local function isSourceAsset(instance: Instance): boolean
	return safelyAccessProperty(instance, "SourceAssetId", -1) > 0
end

return isSourceAsset
