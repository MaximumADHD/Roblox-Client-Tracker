PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  NEWTABLE R1 0 6
  DUPTABLE R2 K5 [{"ImageUrl", "Name", "Description", "Link"}]
  LOADK R3 K6 ["rbxasset://textures/StartPage/Sketch.png"]
  SETTABLEKS R3 R2 K1 ["ImageUrl"]
  LOADK R5 K7 ["DiscoverStudioPlaceholder"]
  LOADK R6 K8 ["SketchSeries.Title"]
  NAMECALL R3 R0 K9 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K2 ["Name"]
  LOADK R5 K7 ["DiscoverStudioPlaceholder"]
  LOADK R6 K10 ["SketchSeries.Desc"]
  NAMECALL R3 R0 K9 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K3 ["Description"]
  LOADK R3 K11 ["https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"]
  SETTABLEKS R3 R2 K4 ["Link"]
  DUPTABLE R3 K5 [{"ImageUrl", "Name", "Description", "Link"}]
  LOADK R4 K12 ["rbxasset://textures/StartPage/Tutorials.png"]
  SETTABLEKS R4 R3 K1 ["ImageUrl"]
  LOADK R6 K7 ["DiscoverStudioPlaceholder"]
  LOADK R7 K13 ["Tutorials.Title"]
  NAMECALL R4 R0 K9 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K2 ["Name"]
  LOADK R6 K7 ["DiscoverStudioPlaceholder"]
  LOADK R7 K14 ["Tutorials.Desc"]
  NAMECALL R4 R0 K9 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K3 ["Description"]
  LOADK R4 K15 ["https://create.roblox.com/docs/en-us/tutorials"]
  SETTABLEKS R4 R3 K4 ["Link"]
  DUPTABLE R4 K5 [{"ImageUrl", "Name", "Description", "Link"}]
  LOADK R5 K16 ["rbxasset://textures/StartPage/Datamodel.png"]
  SETTABLEKS R5 R4 K1 ["ImageUrl"]
  LOADK R7 K7 ["DiscoverStudioPlaceholder"]
  LOADK R8 K17 ["Principles.Title"]
  NAMECALL R5 R0 K9 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["Name"]
  LOADK R7 K7 ["DiscoverStudioPlaceholder"]
  LOADK R8 K18 ["Principles.Desc"]
  NAMECALL R5 R0 K9 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Description"]
  LOADK R5 K19 ["https://create.roblox.com/docs/en-us/creation#experiences"]
  SETTABLEKS R5 R4 K4 ["Link"]
  DUPTABLE R5 K5 [{"ImageUrl", "Name", "Description", "Link"}]
  LOADK R6 K20 ["rbxasset://textures/StartPage/Avatar.png"]
  SETTABLEKS R6 R5 K1 ["ImageUrl"]
  LOADK R8 K7 ["DiscoverStudioPlaceholder"]
  LOADK R9 K21 ["Avatar.Title"]
  NAMECALL R6 R0 K9 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K2 ["Name"]
  LOADK R8 K7 ["DiscoverStudioPlaceholder"]
  LOADK R9 K22 ["Avatar.Desc"]
  NAMECALL R6 R0 K9 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K3 ["Description"]
  LOADK R6 K23 ["https://create.roblox.com/docs/avatar"]
  SETTABLEKS R6 R5 K4 ["Link"]
  DUPTABLE R6 K5 [{"ImageUrl", "Name", "Description", "Link"}]
  LOADK R7 K24 ["rbxasset://textures/StartPage/Engine.png"]
  SETTABLEKS R7 R6 K1 ["ImageUrl"]
  LOADK R9 K7 ["DiscoverStudioPlaceholder"]
  LOADK R10 K25 ["Engine.Title"]
  NAMECALL R7 R0 K9 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K2 ["Name"]
  LOADK R9 K7 ["DiscoverStudioPlaceholder"]
  LOADK R10 K26 ["Engine.Desc"]
  NAMECALL R7 R0 K9 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["Description"]
  LOADK R7 K27 ["https://create.roblox.com/docs/en-us/platform"]
  SETTABLEKS R7 R6 K4 ["Link"]
  DUPTABLE R7 K5 [{"ImageUrl", "Name", "Description", "Link"}]
  LOADK R8 K28 ["rbxasset://textures/StartPage/CreatorHub.png"]
  SETTABLEKS R8 R7 K1 ["ImageUrl"]
  LOADK R10 K7 ["DiscoverStudioPlaceholder"]
  LOADK R11 K29 ["CreatorHub.Title"]
  NAMECALL R8 R0 K9 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K2 ["Name"]
  LOADK R10 K7 ["DiscoverStudioPlaceholder"]
  LOADK R11 K30 ["CreatorHub.Desc"]
  NAMECALL R8 R0 K9 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K3 ["Description"]
  LOADK R8 K31 ["https://create.roblox.com/"]
  SETTABLEKS R8 R7 K4 ["Link"]
  SETLIST R1 R2 6 [1]
  GETUPVAL R2 1
  NAMECALL R2 R2 K32 ["isTutorialBannerClosed"]
  CALL R2 1 1
  JUMPIFNOT R2 [+27]
  DUPTABLE R4 K34 [{"ImageUrl", "Name", "Description", "LaunchTutorialOnClick"}]
  LOADK R5 K35 ["rbxasset://textures/StartPage/StudioTour.png"]
  SETTABLEKS R5 R4 K1 ["ImageUrl"]
  LOADK R7 K7 ["DiscoverStudioPlaceholder"]
  LOADK R8 K36 ["StudioTour.Title"]
  NAMECALL R5 R0 K9 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["Name"]
  LOADK R7 K7 ["DiscoverStudioPlaceholder"]
  LOADK R8 K37 ["StudioTour.Desc"]
  NAMECALL R5 R0 K9 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Description"]
  LOADB R5 1
  SETTABLEKS R5 R4 K33 ["LaunchTutorialOnClick"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K40 [table.insert]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R2 R3 K9 ["Localization"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["StartPageService"]
  NAMECALL R4 R4 K15 ["GetService"]
  CALL R4 2 1
  NEWTABLE R5 1 0
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K17 ["get"]
  RETURN R5 1
