-- singleton
local WarningDialog = {}

function WarningDialog:show(Paths, text)
	local dialogUI = Paths.GUIClonableWarningDialog:clone()
	dialogUI.RootFrame.TitleBar.Text = text

	local waitLock = false
	dialogUI.RootFrame.OKButton.MouseButton1Click:connect(function() waitLock = true end)

	dialogUI.Parent = game:GetService("CoreGui")
	while not waitLock do
		wait()
	end
	dialogUI.Parent = nil
end

return WarningDialog