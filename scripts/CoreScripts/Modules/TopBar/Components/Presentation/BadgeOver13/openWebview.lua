local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")

local function openWebview(url: string)
	local OPEN_CUSTOM_WEBVIEW = 20

	local CustomWebviewType = {
		FullScreen = 0,
		FormSheet = 2
	}

	local notificationData = HttpService:JSONEncode({
		title = if game:GetEngineFeature("SetWebViewTitle") then "Help Center" else nil,
		presentationStyle = CustomWebviewType.FormSheet,
		visible = true,
		url = url,
	})

	GuiService:BroadcastNotification(notificationData, OPEN_CUSTOM_WEBVIEW)
end

return openWebview
