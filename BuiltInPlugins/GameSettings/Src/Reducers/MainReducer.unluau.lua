-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var61 = {}
var61.Settings = require(var0.Src.Reducers.Settings)
var61.Status = require(var0.Src.Reducers.Status)
var61.MorpherEditorRoot = require(var0.Pages.AvatarPage.Reducers.MorpherEditorRoot)
var61.CollaboratorSearch = require(var0.Pages.PermissionsPage.Reducers.CollaboratorSearch)
var61.PageLoadState = require(var0.Src.Reducers.PageLoadState)
var61.PageSaveState = require(var0.Src.Reducers.PageSaveState)
var61.Metadata = require(var0.Src.Reducers.GameMetadata)
var61.GameOwnerMetadata = require(var0.Src.Reducers.GameOwnerMetadata)
var61.EditAsset = require(var0.Src.Reducers.EditAsset)
var61.ComponentLoadState = require(var0.Src.Reducers.ComponentLoadState)
return require(var0.Packages.Rodux).combineReducers(var61)
