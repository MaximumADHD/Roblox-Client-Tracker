local ReplicatedStorage = game:GetService('ReplicatedStorage')

local AppScene = {}

function AppScene:Init()
	if not self.RootScene then
		self.RootScene = ReplicatedStorage:WaitForChild('AvatarEditorScene'):Clone()
		self.RootScene.Name = 'AvatarEditorScene'
	end
end

local appScene = game:GetService('Workspace'):FindFirstChild('AvatarEditorScene')

if appScene then
	AppScene.RootScene = appScene
else
	AppScene:Init()
end

return AppScene