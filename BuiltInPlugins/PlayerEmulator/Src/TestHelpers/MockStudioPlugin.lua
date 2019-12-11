local MockStudioPlugin = {}
MockStudioPlugin.__index = MockStudioPlugin

function MockStudioPlugin.new(setting)
	local plugin = {}
	setmetatable(plugin, MockStudioPlugin)
	plugin.setting = setting
	return plugin
end

function MockStudioPlugin:GetSetting(_)
	return self.setting
end

function MockStudioPlugin:SetSetting(_, setting)
	self.setting = setting
end

return MockStudioPlugin