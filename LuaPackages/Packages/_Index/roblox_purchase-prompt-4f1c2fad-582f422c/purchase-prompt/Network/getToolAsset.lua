local function getToolAsset(network, assetId)
	return network.loadAssetForEquip(assetId)
		:andThen(function(tool)
			if tool:IsA("Tool") then
				return tool
			else
				local children = tool:GetChildren()
				for _, child in ipairs(children) do
					if child:IsA("Tool") then
						return child
					end
				end
			end
		end)
		:catch(function(failure)
			-- There isn't really much we can do here with error reporting,
			-- since the failure is unrelated to purchasing itself
			return nil
		end)
end

return getToolAsset