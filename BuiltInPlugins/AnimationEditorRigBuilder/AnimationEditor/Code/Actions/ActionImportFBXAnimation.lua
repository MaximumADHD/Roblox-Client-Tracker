-- singleton (can't be undone/redone)

local ImportFBXAnimation = {}

function ImportFBXAnimation:execute(Paths)
	local dummy = Paths.DataModelRig:getItem().Item.Parent
	--Sanity check
	if dummy:FindFirstChild("InitialPoses") then
		Paths.DataModelSession:resetAnimation()
		local conn = nil
		conn = workspace.ChildAdded:connect(function(c)
			if c.Name == "ImportedAnimation" then
				--Move to AnimSaves
				if dummy:FindFirstChild("AnimSaves") == nil then
					local m = Instance.new("Model", dummy)
					m.Name = "AnimSaves"
				end
				wait()
				c.Parent = dummy.AnimSaves
				c.Priority = "Core" --move this to C++ at some point
				Paths.DataModelKeyframes:loadKeyframeSequence(c)
				conn:disconnect()
			end
		end)
		Paths.Globals.Plugin:ImportFbxAnimation(dummy)
	else
		warn("Rig does not have initial pose data. Rig must be imported via FBX to use this feature!")
	end
end

return ImportFBXAnimation
