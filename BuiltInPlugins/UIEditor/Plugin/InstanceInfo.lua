







local function areAncestorsEnabledAndVisible(instance)
	if not instance or not instance.Parent then return false end
	
	if (instance.Parent:IsA("ScreenGui") and instance.Parent.Enabled == true) then
		return true
	end
	
	if (instance.Parent:IsA("GuiObject") and instance.Parent.Visible == true) then
		return areAncestorsEnabledAndVisible(instance.Parent)
	end
	
	if (instance.Parent:IsA("Folder")) then
		return areAncestorsEnabledAndVisible(instance.Parent)
	end
	
	return false
	
	--GuiObject    -Visible
	--ScreenGui    -Enabled
	
	
	--non GuiBase2d Parent or screen gui final
	
	
end



local InstanceInfo = {}

function InstanceInfo:isVisible(object, p)

	if (not object:IsA("GuiObject")) then
		return false
	end
	
	if (not object.Visible) then
		return false
	end	
	
	if (not areAncestorsEnabledAndVisible(object)) then
		return false
	end
	
	if (object.BackgroundTransparency >= 1.0) then
		if (object:IsA("ImageLabel") or object:IsA("ImageButton")) then
			return object.Image ~= "" and object.ImageTransparency < 1.0
		end
		
		if (object:IsA("TextLabel") or object:IsA("TextButton")) then
			return object.Text ~= "" and object.TextTransparency < 1.0
		end
		return false
	end
	
	return true
end

-- bool InstanceInfo:canSeeThrough(GuiObject object)
function InstanceInfo:canSeeThrough(object)
		
	if (not object:IsA("GuiObject") or
		not object.Visible or
		not areAncestorsEnabledAndVisible(object) or
		object.BackgroundTransparency > 0) then
		return true
	end
		
	return false
	
end

return InstanceInfo
















