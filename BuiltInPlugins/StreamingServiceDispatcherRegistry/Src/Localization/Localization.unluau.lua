-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var128 = {}
var128.stringResourceTable = var0.Src.Resources.Localization.SourceStrings
var128.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var128.pluginName = "StreamingServiceDispatcherRegistry"
return require(var0.Packages.Framework).ContextServices.Localization.new(var128)
