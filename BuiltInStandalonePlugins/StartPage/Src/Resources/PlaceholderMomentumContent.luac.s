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
       17 DUPTABLE                         R3 K15 [{[1] = "Momentum/Tutorials", ["ImageUrl"] = "rbxasset://textures/StartPage/Tutorials.png", ["Name"], ["Description"], ["Link"]}]
       18 LOADK                            R6 K9 ["DiscoverStudioPlaceholder"]
       19 LOADK                            R7 K16 ["Tutorials.Title"]
       20 NAMECALL                         R4 R0 K11 ["getText"]
       22 CALL                             R4 3 1
       23 SETTABLEKS                       R4 R3 K4 ["Name"]
       25 LOADK                            R6 K9 ["DiscoverStudioPlaceholder"]
       26 LOADK                            R7 K17 ["Tutorials.Desc"]
       27 NAMECALL                         R4 R0 K11 ["getText"]
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K5 ["Description"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K18 ["composeUrl"]
       35 GETUPVAL                         R5 1
       36 LOADK                            R6 K19 ["docs/en-us/tutorials?utm_source=studio&utm_content=start_page"]
       37 CALL                             R4 2 1
       38 SETTABLEKS                       R4 R3 K6 ["Link"]
       40 DUPTABLE                         R4 K22 [{[1] = "Momentum/Datamodel", ["ImageUrl"] = "rbxasset://textures/StartPage/Datamodel.png", ["Name"], ["Description"], ["Link"]}]
       41 LOADK                            R7 K9 ["DiscoverStudioPlaceholder"]
       42 LOADK                            R8 K23 ["Principles.Title"]
       43 NAMECALL                         R5 R0 K11 ["getText"]
       45 CALL                             R5 3 1
       46 SETTABLEKS                       R5 R4 K4 ["Name"]
       48 LOADK                            R7 K9 ["DiscoverStudioPlaceholder"]
       49 LOADK                            R8 K24 ["Principles.Desc"]
       50 NAMECALL                         R5 R0 K11 ["getText"]
       52 CALL                             R5 3 1
       53 SETTABLEKS                       R5 R4 K5 ["Description"]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K18 ["composeUrl"]
       58 GETUPVAL                         R6 1
       59 LOADK                            R7 K25 ["docs/en-us/creation#experiences?utm_source=studio&utm_content=start_page"]
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K6 ["Link"]
       63 DUPTABLE                         R5 K28 [{[1] = "Momentum/Avatar", ["ImageUrl"] = "rbxasset://textures/StartPage/Avatar.png", ["Name"], ["Description"], ["Link"]}]
       64 LOADK                            R8 K9 ["DiscoverStudioPlaceholder"]
       65 LOADK                            R9 K29 ["Avatar.Title"]
       66 NAMECALL                         R6 R0 K11 ["getText"]
       68 CALL                             R6 3 1
       69 SETTABLEKS                       R6 R5 K4 ["Name"]
       71 LOADK                            R8 K9 ["DiscoverStudioPlaceholder"]
       72 LOADK                            R9 K30 ["Avatar.Desc"]
       73 NAMECALL                         R6 R0 K11 ["getText"]
       75 CALL                             R6 3 1
       76 SETTABLEKS                       R6 R5 K5 ["Description"]
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R6 R6 K18 ["composeUrl"]
       81 GETUPVAL                         R7 1
       82 LOADK                            R8 K31 ["docs/avatar?utm_source=studio&utm_content=start_page"]
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K6 ["Link"]
       86 DUPTABLE                         R6 K34 [{[1] = "Momentum/Engine", ["ImageUrl"] = "rbxasset://textures/StartPage/Engine.png", ["Name"], ["Description"], ["Link"]}]
       87 LOADK                            R9 K9 ["DiscoverStudioPlaceholder"]
       88 LOADK                            R10 K35 ["Engine.Title"]
       89 NAMECALL                         R7 R0 K11 ["getText"]
       91 CALL                             R7 3 1
       92 SETTABLEKS                       R7 R6 K4 ["Name"]
       94 LOADK                            R9 K9 ["DiscoverStudioPlaceholder"]
       95 LOADK                            R10 K36 ["Engine.Desc"]
       96 NAMECALL                         R7 R0 K11 ["getText"]
       98 CALL                             R7 3 1
       99 SETTABLEKS                       R7 R6 K5 ["Description"]
      101 GETUPVAL                         R7 0
      102 GETTABLEKS                       R7 R7 K18 ["composeUrl"]
      104 GETUPVAL                         R8 1
      105 LOADK                            R9 K37 ["docs/en-us/platform?utm_source=studioe&utm_content=start_page"]
      106 CALL                             R7 2 1
      107 SETTABLEKS                       R7 R6 K6 ["Link"]
      109 DUPTABLE                         R7 K40 [{[1] = "Momentum/CreatorHub", ["ImageUrl"] = "rbxasset://textures/StartPage/CreatorHub.png", ["Name"], ["Description"], ["Link"]}]
      110 LOADK                            R10 K9 ["DiscoverStudioPlaceholder"]
      111 LOADK                            R11 K41 ["CreatorHub.Title"]
      112 NAMECALL                         R8 R0 K11 ["getText"]
      114 CALL                             R8 3 1
      115 SETTABLEKS                       R8 R7 K4 ["Name"]
      117 LOADK                            R10 K9 ["DiscoverStudioPlaceholder"]
      118 LOADK                            R11 K42 ["CreatorHub.Desc"]
      119 NAMECALL                         R8 R0 K11 ["getText"]
      121 CALL                             R8 3 1
      122 SETTABLEKS                       R8 R7 K5 ["Description"]
      124 GETUPVAL                         R8 0
      125 GETTABLEKS                       R8 R8 K18 ["composeUrl"]
      127 GETUPVAL                         R9 1
      128 LOADK                            R10 K43 ["?utm_source=studio&utm_content=start_page"]
      129 CALL                             R8 2 1
      130 SETTABLEKS                       R8 R7 K6 ["Link"]
      132 SETLIST                          R1 R2 6 [1]
      134 GETUPVAL                         R2 2
      135 NAMECALL                         R2 R2 K44 ["isTutorialBannerClosed"]
      137 CALL                             R2 1 1
      138 JUMPIFNOT                        R2 ; [+21]
      139 DUPTABLE                         R4 K49 [{[1] = "Momentum/Tour", ["ImageUrl"] = "rbxasset://textures/StartPage/StudioTour.png", ["Name"], ["Description"], ["LaunchTutorialOnClick"] = True}]
      140 LOADK                            R7 K9 ["DiscoverStudioPlaceholder"]
      141 LOADK                            R8 K50 ["StudioTour.Title"]
      142 NAMECALL                         R5 R0 K11 ["getText"]
      144 CALL                             R5 3 1
      145 SETTABLEKS                       R5 R4 K4 ["Name"]
      147 LOADK                            R7 K9 ["DiscoverStudioPlaceholder"]
      148 LOADK                            R8 K51 ["StudioTour.Desc"]
      149 NAMECALL                         R5 R0 K11 ["getText"]
      151 CALL                             R5 3 1
      152 SETTABLEKS                       R5 R4 K5 ["Description"]
      154 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      156 MOVE                             R3 R1
      157 GETIMPORT                        R2 K54 [table.insert]
      159 CALL                             R2 2 0
      160 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R2 K9 ["Url"]
       18 GETTABLEKS                       R3 R2 K10 ["new"]
       20 CALL                             R3 0 1
       21 GETTABLEKS                       R3 R3 K11 ["CREATOR_HUB_URL"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K12 ["Src"]
       27 GETTABLEKS                       R5 R5 K13 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K14 ["Util"]
       36 GETTABLEKS                       R6 R6 K15 ["Services"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K16 ["StartPageManager"]
       41 NEWTABLE                         R7 1 0
       43 DUPCLOSURE                       R8 K17 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R8 R7 K18 ["get"]
       49 RETURN                           R7 1
