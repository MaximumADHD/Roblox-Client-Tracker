local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Promise)
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local CrossExperience = require(CorePackages.Workspace.Packages.CrossExperience)
local Constants = CrossExperience.Constants

VoiceChatServiceManager:asyncInit()
	:andThen(function()
		local success, AudioFocusService = pcall(function()
			return game:GetService("AudioFocusService")
		end)
		if success and AudioFocusService then
			local contextId = Constants.AUDIO_FOCUS_MANAGEMENT.UGC.CONTEXT_ID
			local focusPriority = Constants.AUDIO_FOCUS_MANAGEMENT.UGC.FOCUS_PRIORITY

			AudioFocusService:RegisterContextIdFromLua(contextId)

			local deafenAll = function()
				VoiceChatServiceManager:MuteAll(true, "AudioFocusManagement UGC")
				if not VoiceChatServiceManager.localMuted then
					VoiceChatServiceManager:ToggleMic()
				end
			end

			local undeafenAll = function()
				VoiceChatServiceManager:MuteAll(false, "AudioFocusManagement UGC")
				if not VoiceChatServiceManager.localMuted then
					VoiceChatServiceManager:ToggleMic()
				end
			end

			AudioFocusService.OnDeafenVoiceAudio:Connect(function(serviceContextId)
				if serviceContextId == contextId then
					log:info("UGC OnDeafenVoiceAudio fired" .. serviceContextId)
					deafenAll()
				end
			end)

			AudioFocusService.OnUndeafenVoiceAudio:Connect(function(serviceContextId)
				if serviceContextId == contextId then
					log:info("UGC OnUndeafenVoiceAudio fired" .. serviceContextId)
					undeafenAll()
				end
			end)

			local requestAudioFocusWithPromise = function(id, prio)
				return Promise.new(function(resolve, reject)
					local requestSuccess, focusGranted =
						pcall(AudioFocusService.RequestFocus, AudioFocusService, id, prio)
					if requestSuccess then
						resolve(focusGranted) -- Still resolve, but indicate failure to grant focus
					else
						reject("Failed to call RequestFocus due to an error") -- Reject the promise in case of an error
					end
				end)
			end

			requestAudioFocusWithPromise(contextId, focusPriority)
				:andThen(function(focusGranted)
					if focusGranted then
						log:info("UGC audio focus request granted, preparing to undeafen.")
						VoiceChatServiceManager.muteChanged.Event:Once(function(muted)
							if muted ~= nil then
								VoiceChatServiceManager:MuteAll(false, "AudioFocusManagement UGC")
							end
						end)
					else
						log:info("UGC audio focus requested denied, preparing to deafen.")
						VoiceChatServiceManager.muteChanged.Event:Once(function(muted)
							if muted ~= nil then
								VoiceChatServiceManager:MuteAll(true, "AudioFocusManagement UGC")
							end
						end)
					end
				end)
				:catch(function()
					log:info("[UGC] Error requesting focus inside UGCdatamodel")
				end)
		end
	end)
	:catch(function()
		log:info("VCSM was not initialized [CEV ExperienceAudioFocusBinder]")
	end)
