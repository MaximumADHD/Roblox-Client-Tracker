-- singleton (can't be undone/redone)

local ImportFBXAnimation = {}

function ImportFBXAnimation:execute(Paths)
	local dummy = Paths.DataModelRig:getItem().Item.Parent
	-- Sanity check
	if dummy:FindFirstChild("InitialPoses") then
		Paths.DataModelSession:resetAnimation()

		local function onAnimationImported(kfs)
			-- Move to AnimSaves
			if dummy:FindFirstChild("AnimSaves") == nil then
				local m = Instance.new("Model", dummy)
				m.Name = "AnimSaves"
			end

			kfs.Parent = dummy.AnimSaves
			kfs.Priority = "Core" -- move this to C++ at some point
			Paths.DataModelKeyframes:loadKeyframeSequence(kfs)
		end

		local success, kfsOrErr = pcall(function() return Paths.Globals.Plugin:ImportFbxAnimation(dummy) end)
		if success then
			onAnimationImported(kfsOrErr)
		else
			print("Error importing FBX animation: " ..kfsOrErr)
		end
	else
		warn("Rig does not have initial pose data. Rig must be imported via FBX to use this feature!")
	end
end

return ImportFBXAnimation
