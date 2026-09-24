local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)
local FFlagStudioFoundationThemeContext = require(Main.SharedFlags.getFFlagStudioFoundationThemeContext)()
local Types = require(Main.Types)

if FFlagStudioFoundationThemeContext then
	local ThemeContext = require(Main.Contexts.ThemeContext)

	local function useThemeName(): Types.ThemeName
		return React.useContext(ThemeContext.Context) :: Types.ThemeName
	end

	return useThemeName
else
	local Framework = require(Packages.Framework)
	local ContextServices = Framework.ContextServices
	local Design = ContextServices.Design
	local useState = React.useState
	local useEffect = React.useEffect
	type FIXME = Types.FIXME

	function getStudioTheme()
		local ok, _settings = pcall(function()
			return settings()
		end)
		local settings = if not ok then nil else _settings:FindFirstChild("Studio")

		return if settings then settings.Theme else nil
	end

	local function useThemeName()
		local design = (Design :: FIXME).use()
		local theme, setTheme = useState(getStudioTheme)

		useEffect(function()
			local connection = design:getSignal():Connect(function()
				setTheme(getStudioTheme())
			end)

			return function()
				connection:Disconnect()
			end
		end, {})

		return theme
	end

	return useThemeName
end
