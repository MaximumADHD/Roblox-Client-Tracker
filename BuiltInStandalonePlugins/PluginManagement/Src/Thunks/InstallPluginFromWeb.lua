local FFlagPluginManagementFixYieldingAndRetries = settings():GetFFlag("PluginManagementFixYieldingAndRetries")

local Plugin = script.Parent.Parent.Parent
local PIS = require(Plugin.Src.Constants.PluginInstalledStatus)
local SetPluginInstallStatus = require(Plugin.Src.Actions.SetPluginInstallStatus)
local SetPluginId = require(Plugin.Src.Actions.SetPluginId)
local SetPluginMetadata = require(Plugin.Src.Actions.SetPluginMetadata)
local ClearPluginData = require(Plugin.Src.Actions.ClearPluginData)

-- studioServiceImpl : (StudioService)
-- apiImpl : (Http.API)
-- analytics: Analytics implementation
-- pluginId : (string)
return function(studioServiceImpl, apiImpl, analytics, pluginId)
	return function(store)
		-- clear out any previous data for this plugin
		store:dispatch(ClearPluginData(pluginId));
		store:dispatch(SetPluginId(pluginId))
		store:flush();

		analytics:report("TryInstallPluginFromWeb", pluginId)

		local function setStatus(code, message)
			if code == PIS.PLUGIN_INSTALLED_SUCCESSFULLY then
				analytics:report("InstallPluginFromWebSuccess", pluginId)
			else
				analytics:report("InstallPluginFromWebFailure", pluginId, code)
			end
			store:dispatch(SetPluginInstallStatus(pluginId, code, message))
		end

		-- when a plugin is installed from the web, we must do 3 things :
		-- 1) check the ownership of the plugin to make sure we're not installing a plugin we don't own
		local userId = studioServiceImpl:GetUserId()
		apiImpl.API.Ownership.HasAsset(pluginId, userId):andThen(function(ownershipResults)
			local isOwned = tostring(ownershipResults.responseBody) == "true"
			if isOwned then

				-- 2) get the assetVersionId
				return apiImpl.Develop.v1.Plugins({ pluginId }):andThen( function(pluginsResults)
					if pluginsResults.responseBody and pluginsResults.responseBody.data then
						local pluginsData = pluginsResults.responseBody.data
						local targetPluginData = pluginsData[1]
						if targetPluginData and targetPluginData["versionId"] then

							if FFlagPluginManagementFixYieldingAndRetries then
								store:dispatch(SetPluginMetadata(pluginId, targetPluginData["name"],
									targetPluginData["description"] or "", tostring(targetPluginData["commentsEnabled"]),
									tostring(targetPluginData["versionId"]) or "", targetPluginData["created"] or "",
									targetPluginData["updated"] or ""))
							else
								spawn(function()
									store:dispatch(SetPluginMetadata(pluginId, targetPluginData["name"],
										targetPluginData["description"] or "", tostring(targetPluginData["commentsEnabled"]),
										tostring(targetPluginData["versionId"]) or "", targetPluginData["created"] or "",
										targetPluginData["updated"] or ""))
								end)
							end

							-- 3) tell the c++ code to install the plugin
							local versionNumber = targetPluginData["versionId"]
							if FFlagPluginManagementFixYieldingAndRetries then
								local success, errorMsg = pcall(function()
									studioServiceImpl:TryInstallPlugin(pluginId, versionNumber)
								end)

								if success then
									setStatus(PIS.PLUGIN_INSTALLED_SUCCESSFULLY, "")
									return
								else
									setStatus(PIS.PLUGIN_NOT_INSTALLED, errorMsg or "")
									return
								end
							else
								-- Http Requests complain if the callbacks yield, so spawn this into a different thread
								spawn(function()
									local success, errorMsg = pcall(function()
										studioServiceImpl:TryInstallPlugin(pluginId, versionNumber)
									end)
									if success then
										setStatus(PIS.PLUGIN_INSTALLED_SUCCESSFULLY, "")
										return
									else
										setStatus(PIS.PLUGIN_NOT_INSTALLED, errorMsg or "")
										return
									end
								end)
							end

						else
							-- whatever we got back, it isn't the expected format
							setStatus(PIS.PLUGIN_DETAILS_UNAVAILABLE, tostring(pluginsResults.responseBody))
							return
						end

					else
						-- whatever we got back, it isn't the expected format
						setStatus(PIS.PLUGIN_DETAILS_UNAVAILABLE, tostring(pluginsResults.responseBody))
						return
					end

				end, function(pluginErr)
					-- failed to fetch details about the plugin
					setStatus(PIS.HTTP_ERROR, pluginErr)
					return
				end)

			else
				-- you don't own this plugin, you can't install it
				setStatus(PIS.PLUGIN_NOT_OWNED, "")
				return
			end
		end, function(ownershipErr)
			-- failed to fetch ownership information
			setStatus(PIS.HTTP_ERROR, ownershipErr)
			return
		end)

	end
end