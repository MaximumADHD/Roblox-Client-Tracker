game:DefineFastFlag("JoinWithoutMicPermissions3", false)

-- Consumers of this flag come in 3 main categories:
-- 1. Ensuring CoreVoiceManager will still create VoiceChatInternal when we don't have mic permission.
-- 2. Ensuring getCamMicPermissions will not ping microphone permissions unless specifically requested by the user.
-- 3. Ensuring the UI will show up correctly when then user doesn't have mic permissions

-- We can do this because we will set userInSeamlessVoice to the correct value before 1 and 2 are called.
-- Everything added for 3 is additive, so it doesn't matter if those are enabled even though the user
-- isn't in seamless voice: the UI will still be correct.

local userInSeamlessVoice = true

return function(seamlessVoiceOverride: boolean?)
    if seamlessVoiceOverride ~= nil then
        userInSeamlessVoice = seamlessVoiceOverride
    end
    return game:GetFastFlag("JoinWithoutMicPermissions3") and userInSeamlessVoice
end
