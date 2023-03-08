local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)

type Props = {
	store: any,
	updateRoute: () -> (),
}

local function TenFootUiContainer(props: Props)
	-- placeholder
	return React.createElement("Folder", nil, {})
end

return TenFootUiContainer
