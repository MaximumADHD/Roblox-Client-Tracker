PROTO_0:
  NEWTABLE R1 0 6
  DUPTABLE R2 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
  LOADK R3 K6 ["Momentum/Sketch"]
  SETTABLEKS R3 R2 K0 ["ContentId"]
  LOADK R3 K7 ["rbxasset://textures/StartPage/Sketch.png"]
  SETTABLEKS R3 R2 K1 ["ImageUrl"]
  LOADK R5 K8 ["DiscoverStudioPlaceholder"]
  LOADK R6 K9 ["SketchSeries.Title"]
  NAMECALL R3 R0 K10 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K2 ["Name"]
  LOADK R5 K8 ["DiscoverStudioPlaceholder"]
  LOADK R6 K11 ["SketchSeries.Desc"]
  NAMECALL R3 R0 K10 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K3 ["Description"]
  LOADK R3 K12 ["https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"]
  SETTABLEKS R3 R2 K4 ["Link"]
  DUPTABLE R3 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
  LOADK R4 K13 ["Momentum/Tutorials"]
  SETTABLEKS R4 R3 K0 ["ContentId"]
  LOADK R4 K14 ["rbxasset://textures/StartPage/Tutorials.png"]
  SETTABLEKS R4 R3 K1 ["ImageUrl"]
  LOADK R6 K8 ["DiscoverStudioPlaceholder"]
  LOADK R7 K15 ["Tutorials.Title"]
  NAMECALL R4 R0 K10 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K2 ["Name"]
  LOADK R6 K8 ["DiscoverStudioPlaceholder"]
  LOADK R7 K16 ["Tutorials.Desc"]
  NAMECALL R4 R0 K10 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K3 ["Description"]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+2]
  LOADK R4 K17 ["https://create.roblox.com/docs/en-us/tutorials?utm_source=studio&utm_content=start_page"]
  JUMP [+1]
  LOADK R4 K18 ["https://create.roblox.com/docs/en-us/tutorials"]
  SETTABLEKS R4 R3 K4 ["Link"]
  DUPTABLE R4 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
  LOADK R5 K19 ["Momentum/Datamodel"]
  SETTABLEKS R5 R4 K0 ["ContentId"]
  LOADK R5 K20 ["rbxasset://textures/StartPage/Datamodel.png"]
  SETTABLEKS R5 R4 K1 ["ImageUrl"]
  LOADK R7 K8 ["DiscoverStudioPlaceholder"]
  LOADK R8 K21 ["Principles.Title"]
  NAMECALL R5 R0 K10 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["Name"]
  LOADK R7 K8 ["DiscoverStudioPlaceholder"]
  LOADK R8 K22 ["Principles.Desc"]
  NAMECALL R5 R0 K10 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Description"]
  GETUPVAL R6 0
  JUMPIFNOT R6 [+2]
  LOADK R5 K23 ["https://create.roblox.com/docs/en-us/creation#experiences?utm_source=studio&utm_content=start_page"]
  JUMP [+1]
  LOADK R5 K24 ["https://create.roblox.com/docs/en-us/creation#experiences"]
  SETTABLEKS R5 R4 K4 ["Link"]
  DUPTABLE R5 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
  LOADK R6 K25 ["Momentum/Avatar"]
  SETTABLEKS R6 R5 K0 ["ContentId"]
  LOADK R6 K26 ["rbxasset://textures/StartPage/Avatar.png"]
  SETTABLEKS R6 R5 K1 ["ImageUrl"]
  LOADK R8 K8 ["DiscoverStudioPlaceholder"]
  LOADK R9 K27 ["Avatar.Title"]
  NAMECALL R6 R0 K10 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K2 ["Name"]
  LOADK R8 K8 ["DiscoverStudioPlaceholder"]
  LOADK R9 K28 ["Avatar.Desc"]
  NAMECALL R6 R0 K10 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K3 ["Description"]
  GETUPVAL R7 0
  JUMPIFNOT R7 [+2]
  LOADK R6 K29 ["https://create.roblox.com/docs/avatar?utm_source=studio&utm_content=start_page"]
  JUMP [+1]
  LOADK R6 K30 ["https://create.roblox.com/docs/avatar"]
  SETTABLEKS R6 R5 K4 ["Link"]
  DUPTABLE R6 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
  LOADK R7 K31 ["Momentum/Engine"]
  SETTABLEKS R7 R6 K0 ["ContentId"]
  LOADK R7 K32 ["rbxasset://textures/StartPage/Engine.png"]
  SETTABLEKS R7 R6 K1 ["ImageUrl"]
  LOADK R9 K8 ["DiscoverStudioPlaceholder"]
  LOADK R10 K33 ["Engine.Title"]
  NAMECALL R7 R0 K10 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K2 ["Name"]
  LOADK R9 K8 ["DiscoverStudioPlaceholder"]
  LOADK R10 K34 ["Engine.Desc"]
  NAMECALL R7 R0 K10 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["Description"]
  GETUPVAL R8 0
  JUMPIFNOT R8 [+2]
  LOADK R7 K35 ["https://create.roblox.com/docs/en-us/platform?utm_source=studioe&utm_content=start_page"]
  JUMP [+1]
  LOADK R7 K36 ["https://create.roblox.com/docs/en-us/platform"]
  SETTABLEKS R7 R6 K4 ["Link"]
  DUPTABLE R7 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
  LOADK R8 K37 ["Momentum/CreatorHub"]
  SETTABLEKS R8 R7 K0 ["ContentId"]
  LOADK R8 K38 ["rbxasset://textures/StartPage/CreatorHub.png"]
  SETTABLEKS R8 R7 K1 ["ImageUrl"]
  LOADK R10 K8 ["DiscoverStudioPlaceholder"]
  LOADK R11 K39 ["CreatorHub.Title"]
  NAMECALL R8 R0 K10 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K2 ["Name"]
  LOADK R10 K8 ["DiscoverStudioPlaceholder"]
  LOADK R11 K40 ["CreatorHub.Desc"]
  NAMECALL R8 R0 K10 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K3 ["Description"]
  GETUPVAL R9 0
  JUMPIFNOT R9 [+2]
  LOADK R8 K41 ["https://create.roblox.com/?utm_source=studio&utm_content=start_page"]
  JUMP [+1]
  LOADK R8 K42 ["https://create.roblox.com/"]
  SETTABLEKS R8 R7 K4 ["Link"]
  SETLIST R1 R2 6 [1]
  GETUPVAL R2 1
  NAMECALL R2 R2 K43 ["isTutorialBannerClosed"]
  CALL R2 1 1
  JUMPIFNOT R2 [+30]
  DUPTABLE R4 K45 [{"ContentId", "ImageUrl", "Name", "Description", "LaunchTutorialOnClick"}]
  LOADK R5 K46 ["Momentum/Tour"]
  SETTABLEKS R5 R4 K0 ["ContentId"]
  LOADK R5 K47 ["rbxasset://textures/StartPage/StudioTour.png"]
  SETTABLEKS R5 R4 K1 ["ImageUrl"]
  LOADK R7 K8 ["DiscoverStudioPlaceholder"]
  LOADK R8 K48 ["StudioTour.Title"]
  NAMECALL R5 R0 K10 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["Name"]
  LOADK R7 K8 ["DiscoverStudioPlaceholder"]
  LOADK R8 K49 ["StudioTour.Desc"]
  NAMECALL R5 R0 K10 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Description"]
  LOADB R5 1
  SETTABLEKS R5 R4 K44 ["LaunchTutorialOnClick"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K52 [table.insert]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Services"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["StartPageManager"]
  GETIMPORT R4 K12 [game]
  LOADK R6 K13 ["StartPageTrackLinkOrigin"]
  LOADB R7 0
  NAMECALL R4 R4 K14 ["DefineFastFlag"]
  CALL R4 3 1
  NEWTABLE R5 1 0
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K16 ["get"]
  RETURN R5 1
