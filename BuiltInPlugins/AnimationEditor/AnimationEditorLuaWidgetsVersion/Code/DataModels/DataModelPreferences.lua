local Preferences = {}

Preferences.preferences = nil
Preferences.EditPreferenceEvent = nil

Preferences.Type = {
	CursorPoseSnapping={Default=true},  
	SnapIncrement={Default=0.05},
	TransparentSelect={Default=true},
	Interpolation={Default=true},
	Tooltips={Default=true}
}

local function getSerializationName(self, key)
	return "AnimEditor_" .. key
end

local function getSetting(self, Paths, key, default)
	local serialized = Paths.Globals.Plugin:GetSetting(getSerializationName(self, key))
	return serialized and serialized or default	
end

local function setSetting(self, Paths, key, val)
	return Paths.Globals.Plugin:SetSetting(getSerializationName(self, key), val)	
end

function Preferences:populatePreferencesTable(Paths)
	self.Paths = Paths
	self.preferences = {}	
	for key,typeVal in pairs(self.Type) do
		self.preferences[typeVal] = getSetting(self, Paths, key, typeVal.Default)
	end
end

function Preferences:serializePreferencesTable(Paths)	
	for key,typeVal in pairs(self.Type) do
		setSetting(self, Paths, key, self.preferences[typeVal])
	end
end

function Preferences:init(Paths)
	self.Paths = Paths
	self.EditPreferenceEvent = Paths.UtilityScriptEvent:new()  
end

function Preferences:terminate()
	self.EditPreferenceEvent = nil
end

function Preferences:getTickIncrements()
	return self.preferences[Preferences.Type.TickIncrement]
end

function Preferences:setValue(theType, val)
	local isExistingPreferenceType = nil ~= self.preferences[theType]
	local isNewValueGood = nil ~= val -- nil should not be passed, false should be an explcit false, not nil
	if isExistingPreferenceType and isNewValueGood then
		self.preferences[theType] = val
		
		if nil ~= self.EditPreferenceEvent then
			self.EditPreferenceEvent:fire(theType, val)
		end
	end
end

function Preferences:getValue(theType)
	return self.preferences[theType]
end

return Preferences