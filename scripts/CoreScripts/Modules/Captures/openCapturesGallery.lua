-- Only the members openCapturesGallery uses; SettingsHub is nonstrict and exports no type.
export type SettingsHub = {
	Instance: { CapturesPage: unknown? },
	GetVisibility: (self: SettingsHub) -> boolean,
	SwitchToPage: (self: SettingsHub, page: unknown, ignoreStack: boolean) -> (),
	SetVisibility: (self: SettingsHub, visible: boolean, noAnimation: boolean, customStartPage: unknown) -> (),
}

-- Returns false when SettingsHub has no Captures page (e.g. spatial UI).
local function openCapturesGallery(settingsHub: SettingsHub): boolean
	local capturesPage = settingsHub.Instance.CapturesPage
	if not capturesPage then
		return false
	end

	if settingsHub:GetVisibility() then
		settingsHub:SwitchToPage(capturesPage, true)
	else
		settingsHub:SetVisibility(true, false, capturesPage)
	end

	return true
end

return openCapturesGallery
