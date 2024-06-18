-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = {}
var1.CAMERA_DISTANCE_SCALE = 0.8
var1.INITIAL_FOCUS_DIRECTION = Vector3.new(0, 0, 65535)
var1.MAX_GENERATIONS_MESSAGE = "You have reached the maximum concurrent jobs, please try again later."
var1.INVENTORY_URL = "https://create.roblox.com/dashboard/creations?activeTab=Image"
local var13 = {}
var13.CANCELED = "Canceled"
var13.PENDING = "Pending"
var13.COMPLETED = "Completed"
var13.FAILED = "Failed"
var1.STATUS = var13
local var18 = {}
var18.INSERT = "Insert"
var18.INVENTORY = "Inventory"
var18.EXPORT = "Export"
var18.REMOVE = "Remove"
var1.DROPDOWN_ACTIONS = var18
local var23 = {}
var23.ADD = "ADD"
var23.UPDATE = "UPDATE"
var23.REMOVE = "REMOVE"
var1.GENERATION_ACTIONS = var23
var1.COMPLETED_GENERATIONS_INDEX = 3
var1.MAX_SEED_VALUE = 2147483647
var1.TEXTURE_GENERATOR_LEGAL_ACCEPT = "TextureGeneratorLegalAccept"
var1.TERMS_OF_SERVICE_URL = "https://en.help.roblox.com/hc/en-us/articles/20121392440212-AI-Based-Tools-Supplemental-Terms-and-Disclaimer"
return var1
