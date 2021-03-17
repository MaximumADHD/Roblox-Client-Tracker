--[[
	Constant values that are used across multiple files within this project.
]]

local Constants = {

SCREENS = {
	CREATE_NEW_GAME = "CREATE_NEW_GAME",
	CHOOSE_GAME = "CHOOSE_GAME",
	CHOOSE_PLACE = "CHOOSE_PLACE",
	PUBLISH_SUCCESSFUL = "PUBLISH_SUCCESSFUL",
	PUBLISH_FAIL = "PUBLISH_FAIL",
},

QUERY_STATE = {
	QUERY_STATE_NONE = "NONE",
	QUERY_STATE_QUERYING = "QUERYING",
	QUERY_STATE_FAILED = "FAILED",
	QUERY_STATE_SUCCESS = "SUCCESS"
},

GENRE_IDS = {
	"All", "Adventure", "Tutorial", "Funny", "Ninja", "FPS", "Scary", "Fantasy",
	"War", "Pirate", "RPG", "SciFi", "Sports", "TownAndCity", "WildWest",
},

SUBJECT_TYPE = {
	USER = "USER",
	GROUP = "GROUP",
},

MENU_BAR_WIDTH = 192,

FOOTER_HEIGHT = 65,

TEXT_SIZE = 22,

}

return Constants
