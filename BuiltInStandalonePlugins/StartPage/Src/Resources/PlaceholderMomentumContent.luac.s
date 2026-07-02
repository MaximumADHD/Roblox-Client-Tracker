PROTO_0:
        0 NEWTABLE                         R1 0 6
        2 DUPTABLE                         R2 K8 [{[1] = "Momentum/Sketch", ["ImageUrl"] = "rbxasset://textures/StartPage/Sketch.png", ["Name"], ["Description"], ["Link"] = "https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"}]
        3 LOADK                            R5 K9 ["DiscoverStudioPlaceholder"]
        4 LOADK                            R6 K10 ["SketchSeries.Title"]
        5 NAMECALL                         R3 R0 K11 ["getText"]
        7 CALL                             R3 3 1
        8 SETTABLEKS                       R3 R2 K4 ["Name"]
       10 LOADK                            R5 K9 ["DiscoverStudioPlaceholder"]
       11 LOADK                            R6 K12 ["SketchSeries.Desc"]
       12 NAMECALL                         R3 R0 K11 ["getText"]
       14 CALL                             R3 3 1
       15 SETTABLEKS                       R3 R2 K5 ["Description"]
       17 DUPTABLE                         R3 K16 [{[1] = "Momentum/Tutorials", ["ImageUrl"] = "rbxasset://textures/StartPage/Tutorials.png", ["Name"], ["Description"], ["Link"] = "https://create.roblox.com/docs/en-us/tutorials?utm_source=studio&utm_content=start_page"}]
       18 LOADK                            R6 K9 ["DiscoverStudioPlaceholder"]
       19 LOADK                            R7 K17 ["Tutorials.Title"]
       20 NAMECALL                         R4 R0 K11 ["getText"]
       22 CALL                             R4 3 1
       23 SETTABLEKS                       R4 R3 K4 ["Name"]
       25 LOADK                            R6 K9 ["DiscoverStudioPlaceholder"]
       26 LOADK                            R7 K18 ["Tutorials.Desc"]
       27 NAMECALL                         R4 R0 K11 ["getText"]
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K5 ["Description"]
       32 DUPTABLE                         R4 K22 [{[1] = "Momentum/Datamodel", ["ImageUrl"] = "rbxasset://textures/StartPage/Datamodel.png", ["Name"], ["Description"], ["Link"] = "https://create.roblox.com/docs/en-us/creation#experiences?utm_source=studio&utm_content=start_page"}]
       33 LOADK                            R7 K9 ["DiscoverStudioPlaceholder"]
       34 LOADK                            R8 K23 ["Principles.Title"]
       35 NAMECALL                         R5 R0 K11 ["getText"]
       37 CALL                             R5 3 1
       38 SETTABLEKS                       R5 R4 K4 ["Name"]
       40 LOADK                            R7 K9 ["DiscoverStudioPlaceholder"]
       41 LOADK                            R8 K24 ["Principles.Desc"]
       42 NAMECALL                         R5 R0 K11 ["getText"]
       44 CALL                             R5 3 1
       45 SETTABLEKS                       R5 R4 K5 ["Description"]
       47 DUPTABLE                         R5 K28 [{[1] = "Momentum/Avatar", ["ImageUrl"] = "rbxasset://textures/StartPage/Avatar.png", ["Name"], ["Description"], ["Link"] = "https://create.roblox.com/docs/avatar?utm_source=studio&utm_content=start_page"}]
       48 LOADK                            R8 K9 ["DiscoverStudioPlaceholder"]
       49 LOADK                            R9 K29 ["Avatar.Title"]
       50 NAMECALL                         R6 R0 K11 ["getText"]
       52 CALL                             R6 3 1
       53 SETTABLEKS                       R6 R5 K4 ["Name"]
       55 LOADK                            R8 K9 ["DiscoverStudioPlaceholder"]
       56 LOADK                            R9 K30 ["Avatar.Desc"]
       57 NAMECALL                         R6 R0 K11 ["getText"]
       59 CALL                             R6 3 1
       60 SETTABLEKS                       R6 R5 K5 ["Description"]
       62 DUPTABLE                         R6 K34 [{[1] = "Momentum/Engine", ["ImageUrl"] = "rbxasset://textures/StartPage/Engine.png", ["Name"], ["Description"], ["Link"] = "https://create.roblox.com/docs/en-us/platform?utm_source=studioe&utm_content=start_page"}]
       63 LOADK                            R9 K9 ["DiscoverStudioPlaceholder"]
       64 LOADK                            R10 K35 ["Engine.Title"]
       65 NAMECALL                         R7 R0 K11 ["getText"]
       67 CALL                             R7 3 1
       68 SETTABLEKS                       R7 R6 K4 ["Name"]
       70 LOADK                            R9 K9 ["DiscoverStudioPlaceholder"]
       71 LOADK                            R10 K36 ["Engine.Desc"]
       72 NAMECALL                         R7 R0 K11 ["getText"]
       74 CALL                             R7 3 1
       75 SETTABLEKS                       R7 R6 K5 ["Description"]
       77 DUPTABLE                         R7 K40 [{[1] = "Momentum/CreatorHub", ["ImageUrl"] = "rbxasset://textures/StartPage/CreatorHub.png", ["Name"], ["Description"], ["Link"] = "https://create.roblox.com/?utm_source=studio&utm_content=start_page"}]
       78 LOADK                            R10 K9 ["DiscoverStudioPlaceholder"]
       79 LOADK                            R11 K41 ["CreatorHub.Title"]
       80 NAMECALL                         R8 R0 K11 ["getText"]
       82 CALL                             R8 3 1
       83 SETTABLEKS                       R8 R7 K4 ["Name"]
       85 LOADK                            R10 K9 ["DiscoverStudioPlaceholder"]
       86 LOADK                            R11 K42 ["CreatorHub.Desc"]
       87 NAMECALL                         R8 R0 K11 ["getText"]
       89 CALL                             R8 3 1
       90 SETTABLEKS                       R8 R7 K5 ["Description"]
       92 SETLIST                          R1 R2 6 [1]
       94 GETUPVAL                         R2 0
       95 NAMECALL                         R2 R2 K43 ["isTutorialBannerClosed"]
       97 CALL                             R2 1 1
       98 JUMPIFNOT                        R2 ; [+21]
       99 DUPTABLE                         R4 K48 [{[1] = "Momentum/Tour", ["ImageUrl"] = "rbxasset://textures/StartPage/StudioTour.png", ["Name"], ["Description"], ["LaunchTutorialOnClick"] = True}]
      100 LOADK                            R7 K9 ["DiscoverStudioPlaceholder"]
      101 LOADK                            R8 K49 ["StudioTour.Title"]
      102 NAMECALL                         R5 R0 K11 ["getText"]
      104 CALL                             R5 3 1
      105 SETTABLEKS                       R5 R4 K4 ["Name"]
      107 LOADK                            R7 K9 ["DiscoverStudioPlaceholder"]
      108 LOADK                            R8 K50 ["StudioTour.Desc"]
      109 NAMECALL                         R5 R0 K11 ["getText"]
      111 CALL                             R5 3 1
      112 SETTABLEKS                       R5 R4 K5 ["Description"]
      114 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      116 MOVE                             R3 R1
      117 GETIMPORT                        R2 K53 [table.insert]
      119 CALL                             R2 2 0
      120 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["StartPageManager"]
       25 NEWTABLE                         R4 1 0
       27 DUPCLOSURE                       R5 K11 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K12 ["get"]
       31 RETURN                           R4 1
