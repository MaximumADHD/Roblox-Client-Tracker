-- Generated with Unluau (https://github.com/valencefun/unluau)
game:DefineFastFlag("AvatarPreviewerTestingScreen", false)
game:DefineFastFlag("PlacesServiceStopPlaySolo", false)
return function()
   return game:GetFastFlag("AvatarPreviewerTestingScreen") and game:GetFastFlag("PlacesServiceStopPlaySolo")
end
