-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var13 = {}
local var14 = {}
var14.Foo = "FOO"
var13.Dark = var14
local var2 = {}
var2.Foo = "BAR"
var13.Light = var2
return require(var0.Packages.Framework).Style.makeTheme(var0.Src.Components, var13)
