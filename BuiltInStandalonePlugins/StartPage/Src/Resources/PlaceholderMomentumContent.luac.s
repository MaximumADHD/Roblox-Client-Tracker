PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        5 GETUPVAL                         R3 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 LOADK                            R4 K1 ["docs/"]
        8 JUMP                             ; [+1]
        9 LOADK                            R4 K2 ["docs/en-us/"]
       10 CALL                             R2 2 1
       11 NEWTABLE                         R3 0 5
       13 DUPTABLE                         R4 K10 [{["ContentId"] = "Momentum/Tutorials", ["ImageUrl"] = "rbxasset://textures/StartPage/Tutorials.png", ["Name"], ["Description"], ["Link"]}]
       14 LOADK                            R7 K11 ["DiscoverStudioPlaceholder"]
       15 LOADK                            R8 K12 ["Tutorials.Title"]
       16 NAMECALL                         R5 R0 K13 ["getText"]
       18 CALL                             R5 3 1
       19 SETTABLEKS                       R5 R4 K7 ["Name"]
       21 LOADK                            R7 K11 ["DiscoverStudioPlaceholder"]
       22 LOADK                            R8 K14 ["Tutorials.Desc"]
       23 NAMECALL                         R5 R0 K13 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K8 ["Description"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K0 ["composeUrl"]
       31 MOVE                             R6 R2
       32 LOADK                            R7 K15 ["tutorials?utm_source=studio&utm_content=start_page"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K9 ["Link"]
       36 DUPTABLE                         R5 K18 [{["ContentId"] = "Momentum/Datamodel", ["ImageUrl"] = "rbxasset://textures/StartPage/Datamodel.png", ["Name"], ["Description"], ["Link"]}]
       37 LOADK                            R8 K11 ["DiscoverStudioPlaceholder"]
       38 LOADK                            R9 K19 ["Principles.Title"]
       39 NAMECALL                         R6 R0 K13 ["getText"]
       41 CALL                             R6 3 1
       42 SETTABLEKS                       R6 R5 K7 ["Name"]
       44 LOADK                            R8 K11 ["DiscoverStudioPlaceholder"]
       45 LOADK                            R9 K20 ["Principles.Desc"]
       46 NAMECALL                         R6 R0 K13 ["getText"]
       48 CALL                             R6 3 1
       49 SETTABLEKS                       R6 R5 K8 ["Description"]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K0 ["composeUrl"]
       54 MOVE                             R7 R2
       55 LOADK                            R8 K21 ["creation#experiences?utm_source=studio&utm_content=start_page"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K9 ["Link"]
       59 DUPTABLE                         R6 K24 [{["ContentId"] = "Momentum/Avatar", ["ImageUrl"] = "rbxasset://textures/StartPage/Avatar.png", ["Name"], ["Description"], ["Link"]}]
       60 LOADK                            R9 K11 ["DiscoverStudioPlaceholder"]
       61 LOADK                            R10 K25 ["Avatar.Title"]
       62 NAMECALL                         R7 R0 K13 ["getText"]
       64 CALL                             R7 3 1
       65 SETTABLEKS                       R7 R6 K7 ["Name"]
       67 LOADK                            R9 K11 ["DiscoverStudioPlaceholder"]
       68 LOADK                            R10 K26 ["Avatar.Desc"]
       69 NAMECALL                         R7 R0 K13 ["getText"]
       71 CALL                             R7 3 1
       72 SETTABLEKS                       R7 R6 K8 ["Description"]
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K0 ["composeUrl"]
       77 GETUPVAL                         R8 2
       78 LOADK                            R9 K27 ["docs/avatar?utm_source=studio&utm_content=start_page"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K9 ["Link"]
       82 DUPTABLE                         R7 K30 [{["ContentId"] = "Momentum/Engine", ["ImageUrl"] = "rbxasset://textures/StartPage/Engine.png", ["Name"], ["Description"], ["Link"]}]
       83 LOADK                            R10 K11 ["DiscoverStudioPlaceholder"]
       84 LOADK                            R11 K31 ["Engine.Title"]
       85 NAMECALL                         R8 R0 K13 ["getText"]
       87 CALL                             R8 3 1
       88 SETTABLEKS                       R8 R7 K7 ["Name"]
       90 LOADK                            R10 K11 ["DiscoverStudioPlaceholder"]
       91 LOADK                            R11 K32 ["Engine.Desc"]
       92 NAMECALL                         R8 R0 K13 ["getText"]
       94 CALL                             R8 3 1
       95 SETTABLEKS                       R8 R7 K8 ["Description"]
       97 GETUPVAL                         R8 1
       98 GETTABLEKS                       R8 R8 K0 ["composeUrl"]
      100 MOVE                             R9 R2
      101 LOADK                            R10 K33 ["platform?utm_source=studioe&utm_content=start_page"]
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K9 ["Link"]
      105 DUPTABLE                         R8 K36 [{["ContentId"] = "Momentum/CreatorHub", ["ImageUrl"] = "rbxasset://textures/StartPage/CreatorHub.png", ["Name"], ["Description"], ["Link"]}]
      106 LOADK                            R11 K11 ["DiscoverStudioPlaceholder"]
      107 LOADK                            R12 K37 ["CreatorHub.Title"]
      108 NAMECALL                         R9 R0 K13 ["getText"]
      110 CALL                             R9 3 1
      111 SETTABLEKS                       R9 R8 K7 ["Name"]
      113 LOADK                            R11 K11 ["DiscoverStudioPlaceholder"]
      114 LOADK                            R12 K38 ["CreatorHub.Desc"]
      115 NAMECALL                         R9 R0 K13 ["getText"]
      117 CALL                             R9 3 1
      118 SETTABLEKS                       R9 R8 K8 ["Description"]
      120 GETUPVAL                         R9 1
      121 GETTABLEKS                       R9 R9 K0 ["composeUrl"]
      123 GETUPVAL                         R10 2
      124 LOADK                            R11 K39 ["?utm_source=studio&utm_content=start_page"]
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R8 K9 ["Link"]
      128 SETLIST                          R3 R4 5 [1]
      130 JUMPIF                           R1 ; [+22]
      131 LOADN                            R6 1
      132 DUPTABLE                         R7 K43 [{["ContentId"] = "Momentum/Sketch", ["ImageUrl"] = "rbxasset://textures/StartPage/Sketch.png", ["Name"], ["Description"], ["Link"] = "https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"}]
      133 LOADK                            R10 K11 ["DiscoverStudioPlaceholder"]
      134 LOADK                            R11 K44 ["SketchSeries.Title"]
      135 NAMECALL                         R8 R0 K13 ["getText"]
      137 CALL                             R8 3 1
      138 SETTABLEKS                       R8 R7 K7 ["Name"]
      140 LOADK                            R10 K11 ["DiscoverStudioPlaceholder"]
      141 LOADK                            R11 K45 ["SketchSeries.Desc"]
      142 NAMECALL                         R8 R0 K13 ["getText"]
      144 CALL                             R8 3 1
      145 SETTABLEKS                       R8 R7 K8 ["Description"]
      147 FASTCALL3                        TABLE_INSERT R3 R6 R7
      149 MOVE                             R5 R3
      150 GETIMPORT                        R4 K48 [table.insert]
      152 CALL                             R4 3 0
      153 GETUPVAL                         R4 3
      154 NAMECALL                         R4 R4 K49 ["isTutorialBannerClosed"]
      156 CALL                             R4 1 1
      157 JUMPIFNOT                        R4 ; [+21]
      158 DUPTABLE                         R6 K54 [{["ContentId"] = "Momentum/Tour", ["ImageUrl"] = "rbxasset://textures/StartPage/StudioTour.png", ["Name"], ["Description"], ["LaunchTutorialOnClick"] = True}]
      159 LOADK                            R9 K11 ["DiscoverStudioPlaceholder"]
      160 LOADK                            R10 K55 ["StudioTour.Title"]
      161 NAMECALL                         R7 R0 K13 ["getText"]
      163 CALL                             R7 3 1
      164 SETTABLEKS                       R7 R6 K7 ["Name"]
      166 LOADK                            R9 K11 ["DiscoverStudioPlaceholder"]
      167 LOADK                            R10 K56 ["StudioTour.Desc"]
      168 NAMECALL                         R7 R0 K13 ["getText"]
      170 CALL                             R7 3 1
      171 SETTABLEKS                       R7 R6 K8 ["Description"]
      173 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      175 MOVE                             R5 R3
      176 GETIMPORT                        R4 K48 [table.insert]
      178 CALL                             R4 2 0
      179 RETURN                           R3 1

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
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K17 ["SharedFlags"]
       47 GETTABLEKS                       R8 R8 K18 ["getFFlagIsLuobuBuild"]
       49 CALL                             R7 1 1
       50 NEWTABLE                         R8 1 0
       52 DUPCLOSURE                       R9 K19 [PROTO_0]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R9 R8 K20 ["get"]
       59 RETURN                           R8 1
