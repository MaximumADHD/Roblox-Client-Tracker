PROTO_0:
        0 NEWTABLE                         R1 0 6
        2 DUPTABLE                         R2 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
        3 LOADK                            R3 K6 ["Momentum/Sketch"]
        4 SETTABLEKS                       R3 R2 K0 ["ContentId"]
        6 LOADK                            R3 K7 ["rbxasset://textures/StartPage/Sketch.png"]
        7 SETTABLEKS                       R3 R2 K1 ["ImageUrl"]
        9 LOADK                            R5 K8 ["DiscoverStudioPlaceholder"]
       10 LOADK                            R6 K9 ["SketchSeries.Title"]
       11 NAMECALL                         R3 R0 K10 ["getText"]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K2 ["Name"]
       16 LOADK                            R5 K8 ["DiscoverStudioPlaceholder"]
       17 LOADK                            R6 K11 ["SketchSeries.Desc"]
       18 NAMECALL                         R3 R0 K10 ["getText"]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R2 K3 ["Description"]
       23 LOADK                            R3 K12 ["https://www.youtube.com/playlist?list=PLMneGxZNs3ZawdQ3Y5bjCRHM75fDJydv9"]
       24 SETTABLEKS                       R3 R2 K4 ["Link"]
       26 DUPTABLE                         R3 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
       27 LOADK                            R4 K13 ["Momentum/Tutorials"]
       28 SETTABLEKS                       R4 R3 K0 ["ContentId"]
       30 LOADK                            R4 K14 ["rbxasset://textures/StartPage/Tutorials.png"]
       31 SETTABLEKS                       R4 R3 K1 ["ImageUrl"]
       33 LOADK                            R6 K8 ["DiscoverStudioPlaceholder"]
       34 LOADK                            R7 K15 ["Tutorials.Title"]
       35 NAMECALL                         R4 R0 K10 ["getText"]
       37 CALL                             R4 3 1
       38 SETTABLEKS                       R4 R3 K2 ["Name"]
       40 LOADK                            R6 K8 ["DiscoverStudioPlaceholder"]
       41 LOADK                            R7 K16 ["Tutorials.Desc"]
       42 NAMECALL                         R4 R0 K10 ["getText"]
       44 CALL                             R4 3 1
       45 SETTABLEKS                       R4 R3 K3 ["Description"]
       47 LOADK                            R4 K17 ["https://create.roblox.com/docs/en-us/tutorials?utm_source=studio&utm_content=start_page"]
       48 SETTABLEKS                       R4 R3 K4 ["Link"]
       50 DUPTABLE                         R4 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
       51 LOADK                            R5 K18 ["Momentum/Datamodel"]
       52 SETTABLEKS                       R5 R4 K0 ["ContentId"]
       54 LOADK                            R5 K19 ["rbxasset://textures/StartPage/Datamodel.png"]
       55 SETTABLEKS                       R5 R4 K1 ["ImageUrl"]
       57 LOADK                            R7 K8 ["DiscoverStudioPlaceholder"]
       58 LOADK                            R8 K20 ["Principles.Title"]
       59 NAMECALL                         R5 R0 K10 ["getText"]
       61 CALL                             R5 3 1
       62 SETTABLEKS                       R5 R4 K2 ["Name"]
       64 LOADK                            R7 K8 ["DiscoverStudioPlaceholder"]
       65 LOADK                            R8 K21 ["Principles.Desc"]
       66 NAMECALL                         R5 R0 K10 ["getText"]
       68 CALL                             R5 3 1
       69 SETTABLEKS                       R5 R4 K3 ["Description"]
       71 LOADK                            R5 K22 ["https://create.roblox.com/docs/en-us/creation#experiences?utm_source=studio&utm_content=start_page"]
       72 SETTABLEKS                       R5 R4 K4 ["Link"]
       74 DUPTABLE                         R5 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
       75 LOADK                            R6 K23 ["Momentum/Avatar"]
       76 SETTABLEKS                       R6 R5 K0 ["ContentId"]
       78 LOADK                            R6 K24 ["rbxasset://textures/StartPage/Avatar.png"]
       79 SETTABLEKS                       R6 R5 K1 ["ImageUrl"]
       81 LOADK                            R8 K8 ["DiscoverStudioPlaceholder"]
       82 LOADK                            R9 K25 ["Avatar.Title"]
       83 NAMECALL                         R6 R0 K10 ["getText"]
       85 CALL                             R6 3 1
       86 SETTABLEKS                       R6 R5 K2 ["Name"]
       88 LOADK                            R8 K8 ["DiscoverStudioPlaceholder"]
       89 LOADK                            R9 K26 ["Avatar.Desc"]
       90 NAMECALL                         R6 R0 K10 ["getText"]
       92 CALL                             R6 3 1
       93 SETTABLEKS                       R6 R5 K3 ["Description"]
       95 LOADK                            R6 K27 ["https://create.roblox.com/docs/avatar?utm_source=studio&utm_content=start_page"]
       96 SETTABLEKS                       R6 R5 K4 ["Link"]
       98 DUPTABLE                         R6 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
       99 LOADK                            R7 K28 ["Momentum/Engine"]
      100 SETTABLEKS                       R7 R6 K0 ["ContentId"]
      102 LOADK                            R7 K29 ["rbxasset://textures/StartPage/Engine.png"]
      103 SETTABLEKS                       R7 R6 K1 ["ImageUrl"]
      105 LOADK                            R9 K8 ["DiscoverStudioPlaceholder"]
      106 LOADK                            R10 K30 ["Engine.Title"]
      107 NAMECALL                         R7 R0 K10 ["getText"]
      109 CALL                             R7 3 1
      110 SETTABLEKS                       R7 R6 K2 ["Name"]
      112 LOADK                            R9 K8 ["DiscoverStudioPlaceholder"]
      113 LOADK                            R10 K31 ["Engine.Desc"]
      114 NAMECALL                         R7 R0 K10 ["getText"]
      116 CALL                             R7 3 1
      117 SETTABLEKS                       R7 R6 K3 ["Description"]
      119 LOADK                            R7 K32 ["https://create.roblox.com/docs/en-us/platform?utm_source=studioe&utm_content=start_page"]
      120 SETTABLEKS                       R7 R6 K4 ["Link"]
      122 DUPTABLE                         R7 K5 [{"ContentId", "ImageUrl", "Name", "Description", "Link"}]
      123 LOADK                            R8 K33 ["Momentum/CreatorHub"]
      124 SETTABLEKS                       R8 R7 K0 ["ContentId"]
      126 LOADK                            R8 K34 ["rbxasset://textures/StartPage/CreatorHub.png"]
      127 SETTABLEKS                       R8 R7 K1 ["ImageUrl"]
      129 LOADK                            R10 K8 ["DiscoverStudioPlaceholder"]
      130 LOADK                            R11 K35 ["CreatorHub.Title"]
      131 NAMECALL                         R8 R0 K10 ["getText"]
      133 CALL                             R8 3 1
      134 SETTABLEKS                       R8 R7 K2 ["Name"]
      136 LOADK                            R10 K8 ["DiscoverStudioPlaceholder"]
      137 LOADK                            R11 K36 ["CreatorHub.Desc"]
      138 NAMECALL                         R8 R0 K10 ["getText"]
      140 CALL                             R8 3 1
      141 SETTABLEKS                       R8 R7 K3 ["Description"]
      143 LOADK                            R8 K37 ["https://create.roblox.com/?utm_source=studio&utm_content=start_page"]
      144 SETTABLEKS                       R8 R7 K4 ["Link"]
      146 SETLIST                          R1 R2 6 [1]
      148 GETUPVAL                         R2 0
      149 NAMECALL                         R2 R2 K38 ["isTutorialBannerClosed"]
      151 CALL                             R2 1 1
      152 JUMPIFNOT                        R2 ; [+30]
      153 DUPTABLE                         R4 K40 [{"ContentId", "ImageUrl", "Name", "Description", "LaunchTutorialOnClick"}]
      154 LOADK                            R5 K41 ["Momentum/Tour"]
      155 SETTABLEKS                       R5 R4 K0 ["ContentId"]
      157 LOADK                            R5 K42 ["rbxasset://textures/StartPage/StudioTour.png"]
      158 SETTABLEKS                       R5 R4 K1 ["ImageUrl"]
      160 LOADK                            R7 K8 ["DiscoverStudioPlaceholder"]
      161 LOADK                            R8 K43 ["StudioTour.Title"]
      162 NAMECALL                         R5 R0 K10 ["getText"]
      164 CALL                             R5 3 1
      165 SETTABLEKS                       R5 R4 K2 ["Name"]
      167 LOADK                            R7 K8 ["DiscoverStudioPlaceholder"]
      168 LOADK                            R8 K44 ["StudioTour.Desc"]
      169 NAMECALL                         R5 R0 K10 ["getText"]
      171 CALL                             R5 3 1
      172 SETTABLEKS                       R5 R4 K3 ["Description"]
      174 LOADB                            R5 1
      175 SETTABLEKS                       R5 R4 K39 ["LaunchTutorialOnClick"]
      177 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      179 MOVE                             R3 R1
      180 GETIMPORT                        R2 K47 [table.insert]
      182 CALL                             R2 2 0
      183 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["StartPageManager"]
       25 NEWTABLE                         R4 1 0
       27 DUPCLOSURE                       R5 K11 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K12 ["get"]
       31 RETURN                           R4 1
