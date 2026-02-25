PROTO_0:
        0 DUPTABLE                         R0 K9 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
        1 LOADK                            R1 K10 ["Recents"]
        2 SETTABLEKS                       R1 R0 K0 ["searchKey"]
        4 LOADK                            R1 K11 [""]
        5 SETTABLEKS                       R1 R0 K1 ["search"]
        7 LOADK                            R1 K12 ["User"]
        8 SETTABLEKS                       R1 R0 K2 ["creatorType"]
       10 GETUPVAL                         R2 0
       11 NAMECALL                         R2 R2 K13 ["GetUserId"]
       13 CALL                             R2 1 -1
       14 FASTCALL                         TOSTRING ; [+2]
       15 GETIMPORT                        R1 K15 [tostring]
       17 CALL                             R1 -1 1
       18 SETTABLEKS                       R1 R0 K3 ["creatorTargetId"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K4 ["isArchived"]
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K5 ["isTemplates"]
       26 LOADN                            R1 10
       27 SETTABLEKS                       R1 R0 K6 ["pageSize"]
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K7 ["getRecentLocalFiles"]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K8 ["getRecentAPIGames"]
       35 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnClick"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K8 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
        7 GETUPVAL                         R6 3
        8 SETTABLEKS                       R6 R5 K1 ["ImageSize"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U4
       12 SETTABLEKS                       R6 R5 K2 ["OnClick"]
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R6 R7 K3 ["IsPrivacyVisible"]
       17 SETTABLEKS                       R6 R5 K3 ["IsPrivacyVisible"]
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R6 R7 K4 ["IsDateModifiedVisible"]
       22 SETTABLEKS                       R6 R5 K4 ["IsDateModifiedVisible"]
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R6 R7 K5 ["IsDropdownMenuVisible"]
       27 SETTABLEKS                       R6 R5 K5 ["IsDropdownMenuVisible"]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R6 R7 K6 ["IsCreatorNameVisible"]
       32 SETTABLEKS                       R6 R5 K6 ["IsCreatorNameVisible"]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R6 R7 K7 ["KebabMenu"]
       37 SETTABLEKS                       R6 R5 K7 ["KebabMenu"]
       39 CALL                             R3 2 -1
       40 CALL                             R1 -1 -1
       41 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K9 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
        2 LOADK                            R3 K10 ["Recents"]
        3 SETTABLEKS                       R3 R2 K0 ["searchKey"]
        5 LOADK                            R3 K11 [""]
        6 SETTABLEKS                       R3 R2 K1 ["search"]
        8 LOADK                            R3 K12 ["User"]
        9 SETTABLEKS                       R3 R2 K2 ["creatorType"]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K13 ["GetUserId"]
       14 CALL                             R4 1 -1
       15 FASTCALL                         TOSTRING ; [+2]
       16 GETIMPORT                        R3 K15 [tostring]
       18 CALL                             R3 -1 1
       19 SETTABLEKS                       R3 R2 K3 ["creatorTargetId"]
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R2 K4 ["isArchived"]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K5 ["isTemplates"]
       27 LOADN                            R3 10
       28 SETTABLEKS                       R3 R2 K6 ["pageSize"]
       30 LOADB                            R3 1
       31 SETTABLEKS                       R3 R2 K7 ["getRecentLocalFiles"]
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K8 ["getRecentAPIGames"]
       36 GETTABLEKS                       R3 R0 K16 ["BaseQuery"]
       38 JUMPIF                           R3 ; [+2]
       39 NEWTABLE                         R3 0 0
       41 CALL                             R1 2 1
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R2 R3 K17 ["createElement"]
       45 GETUPVAL                         R3 3
       46 GETUPVAL                         R4 0
       47 DUPTABLE                         R5 K23 [{"Query", "CellSize", "CellComponent", "FetchItems", "AdjustQuery"}]
       48 GETUPVAL                         R6 0
       49 MOVE                             R7 R1
       50 GETTABLEKS                       R8 R0 K24 ["NetworkQuery"]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K18 ["Query"]
       55 GETTABLEKS                       R6 R0 K19 ["CellSize"]
       57 SETTABLEKS                       R6 R5 K19 ["CellSize"]
       59 NEWCLOSURE                       R6 P0
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R6 R5 K20 ["CellComponent"]
       67 GETTABLEKS                       R6 R0 K21 ["FetchItems"]
       69 SETTABLEKS                       R6 R5 K21 ["FetchItems"]
       71 NEWCLOSURE                       R6 P1
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R6 R5 K22 ["AdjustQuery"]
       76 GETTABLEKS                       R6 R0 K25 ["NetworkViewProps"]
       78 CALL                             R4 2 -1
       79 CALL                             R2 -1 1
       80 GETUPVAL                         R4 6
       81 JUMPIFNOT                        R4 ; [+14]
       82 GETUPVAL                         R4 2
       83 GETTABLEKS                       R3 R4 K17 ["createElement"]
       85 GETUPVAL                         R5 7
       86 GETTABLEKS                       R4 R5 K26 ["Provider"]
       88 DUPTABLE                         R5 K28 [{"value"}]
       89 GETTABLEKS                       R6 R0 K29 ["KebabMenu"]
       91 SETTABLEKS                       R6 R5 K27 ["value"]
       93 MOVE                             R6 R2
       94 CALL                             R3 3 1
       95 RETURN                           R3 1
       96 MOVE                             R3 R2
       97 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
        2 JUMPIF                           R1 ; [+40]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 JUMPIFNOT                        R1 ; [+37]
        6 GETTABLEKS                       R1 R0 K2 ["RootPlaceId"]
        8 JUMPIFNOT                        R1 ; [+34]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K3 ["GetUserId"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K1 ["Id"]
       16 GETTABLEKS                       R4 R0 K2 ["RootPlaceId"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K4 ["showVerifyAge"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K5 ["showAgeRestricted"]
       24 CALL                             R1 5 0
       25 GETUPVAL                         R1 3
       26 JUMPIFNOT                        R1 ; [+46]
       27 GETUPVAL                         R1 4
       28 GETUPVAL                         R3 5
       29 DUPTABLE                         R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
       30 LOADK                            R5 K10 ["interaction"]
       31 SETTABLEKS                       R5 R4 K6 ["telemetryType"]
       33 LOADK                            R5 K11 ["place_open"]
       34 SETTABLEKS                       R5 R4 K7 ["telemetrySubtype"]
       36 LOADK                            R5 K12 ["recents_cloud"]
       37 SETTABLEKS                       R5 R4 K8 ["action"]
       39 NAMECALL                         R1 R1 K13 ["log"]
       41 CALL                             R1 3 0
       42 RETURN                           R0 0
       43 GETTABLEKS                       R1 R0 K0 ["IsPlaceholder"]
       45 JUMPIF                           R1 ; [+27]
       46 GETTABLEKS                       R1 R0 K14 ["FilePath"]
       48 JUMPIFNOT                        R1 ; [+24]
       49 GETUPVAL                         R1 6
       50 GETTABLEKS                       R3 R0 K14 ["FilePath"]
       52 LOADB                            R4 0
       53 NAMECALL                         R1 R1 K15 ["openLocalFile"]
       55 CALL                             R1 3 0
       56 GETUPVAL                         R1 3
       57 JUMPIFNOT                        R1 ; [+15]
       58 GETUPVAL                         R1 4
       59 GETUPVAL                         R3 5
       60 DUPTABLE                         R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
       61 LOADK                            R5 K10 ["interaction"]
       62 SETTABLEKS                       R5 R4 K6 ["telemetryType"]
       64 LOADK                            R5 K11 ["place_open"]
       65 SETTABLEKS                       R5 R4 K7 ["telemetrySubtype"]
       67 LOADK                            R5 K16 ["recents_local"]
       68 SETTABLEKS                       R5 R4 K8 ["action"]
       70 NAMECALL                         R1 R1 K13 ["log"]
       72 CALL                             R1 3 0
       73 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R2 R2 K0 ["use"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 GETUPVAL                         R4 4
       11 DUPTABLE                         R5 K13 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
       12 GETTABLEKS                       R6 R0 K2 ["BaseQuery"]
       14 SETTABLEKS                       R6 R5 K2 ["BaseQuery"]
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K3 ["IsPrivacyVisible"]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K4 ["IsDateModifiedVisible"]
       22 LOADB                            R6 1
       23 SETTABLEKS                       R6 R5 K5 ["IsDropdownMenuVisible"]
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K6 ["IsCreatorNameVisible"]
       28 GETUPVAL                         R6 5
       29 SETTABLEKS                       R6 R5 K7 ["KebabMenu"]
       31 GETUPVAL                         R6 6
       32 SETTABLEKS                       R6 R5 K8 ["CellSize"]
       34 GETUPVAL                         R6 7
       35 SETTABLEKS                       R6 R5 K9 ["FetchItems"]
       37 DUPTABLE                         R6 K17 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
       38 LOADK                            R7 K18 ["Recents"]
       39 SETTABLEKS                       R7 R6 K14 ["searchKey"]
       41 LOADB                            R7 1
       42 SETTABLEKS                       R7 R6 K15 ["getRecentLocalFiles"]
       44 LOADB                            R7 1
       45 SETTABLEKS                       R7 R6 K16 ["getRecentAPIGames"]
       47 SETTABLEKS                       R6 R5 K10 ["NetworkQuery"]
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          UPVAL U12
       57 SETTABLEKS                       R6 R5 K11 ["OnClick"]
       59 SETTABLEKS                       R0 R5 K12 ["NetworkViewProps"]
       61 CALL                             R3 2 -1
       62 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K8 [{"PageName", "HideTabs", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
        9 LOADK                            R4 K9 ["Recents"]
       10 SETTABLEKS                       R4 R3 K2 ["PageName"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K3 ["HideTabs"]
       15 NEWTABLE                         R4 0 1
       17 DUPTABLE                         R5 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
       18 LOADK                            R8 K16 ["Plugin"]
       19 LOADK                            R9 K17 ["RecentsPage.Title"]
       20 NAMECALL                         R6 R0 K18 ["getText"]
       22 CALL                             R6 3 1
       23 SETTABLEKS                       R6 R5 K10 ["Title"]
       25 LOADK                            R8 K16 ["Plugin"]
       26 LOADK                            R9 K19 ["NoExperiencesToDisplay"]
       27 NAMECALL                         R6 R0 K18 ["getText"]
       29 CALL                             R6 3 1
       30 SETTABLEKS                       R6 R5 K11 ["FailedTitle"]
       32 LOADK                            R6 K9 ["Recents"]
       33 SETTABLEKS                       R6 R5 K12 ["Key"]
       35 GETUPVAL                         R6 3
       36 SETTABLEKS                       R6 R5 K13 ["PageComponent"]
       38 NEWTABLE                         R6 0 0
       40 SETTABLEKS                       R6 R5 K14 ["Dropdowns"]
       42 SETLIST                          R4 R5 1 [1]
       44 SETTABLEKS                       R4 R3 K4 ["Tabs"]
       46 LOADB                            R4 1
       47 SETTABLEKS                       R4 R3 K5 ["CanSwapBetweenViews"]
       49 LOADB                            R4 1
       50 SETTABLEKS                       R4 R3 K6 ["IsDefaultGridView"]
       52 LOADB                            R4 1
       53 SETTABLEKS                       R4 R3 K7 ["HasSearchBar"]
       55 CALL                             R1 2 -1
       56 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useContext"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Src"]
       20 GETTABLEKS                       R5 R6 K10 ["SharedFlags"]
       22 GETTABLEKS                       R4 R5 K11 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
       24 CALL                             R3 1 1
       25 CALL                             R3 0 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Src"]
       30 GETTABLEKS                       R6 R7 K10 ["SharedFlags"]
       32 GETTABLEKS                       R5 R6 K12 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       34 CALL                             R4 1 1
       35 CALL                             R4 0 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R9 R0 K9 ["Src"]
       40 GETTABLEKS                       R8 R9 K13 ["Foundation"]
       42 GETTABLEKS                       R7 R8 K14 ["Components"]
       44 GETTABLEKS                       R6 R7 K15 ["GamePage"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Src"]
       51 GETTABLEKS                       R8 R9 K14 ["Components"]
       53 GETTABLEKS                       R7 R8 K16 ["InfoTile"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Src"]
       60 GETTABLEKS                       R9 R10 K14 ["Components"]
       62 GETTABLEKS                       R8 R9 K17 ["NetworkView"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Packages"]
       69 GETTABLEKS                       R9 R10 K18 ["Framework"]
       71 CALL                             R8 1 1
       72 GETTABLEKS                       R10 R8 K19 ["ContextServices"]
       74 GETTABLEKS                       R9 R10 K20 ["Localization"]
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R13 R0 K9 ["Src"]
       80 GETTABLEKS                       R12 R13 K21 ["Util"]
       82 GETTABLEKS                       R11 R12 K22 ["Services"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R10 K23 ["StartPageManager"]
       87 GETTABLEKS                       R12 R10 K24 ["StudioService"]
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R16 R0 K9 ["Src"]
       93 GETTABLEKS                       R15 R16 K25 ["Network"]
       95 GETTABLEKS                       R14 R15 K26 ["DiscoverRecents"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R17 R0 K9 ["Src"]
      102 GETTABLEKS                       R16 R17 K25 ["Network"]
      104 GETTABLEKS                       R15 R16 K27 ["DiscoverCreatorEligibilityAndOpenPlace"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R19 R0 K9 ["Src"]
      111 GETTABLEKS                       R18 R19 K21 ["Util"]
      113 GETTABLEKS                       R17 R18 K28 ["Telemetry"]
      115 GETTABLEKS                       R16 R17 K29 ["TelemetryContext"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R20 R0 K9 ["Src"]
      122 GETTABLEKS                       R19 R20 K21 ["Util"]
      124 GETTABLEKS                       R18 R19 K28 ["Telemetry"]
      126 GETTABLEKS                       R17 R18 K30 ["StartPageTelemetryEvent"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R20 R0 K9 ["Src"]
      133 GETTABLEKS                       R19 R20 K10 ["SharedFlags"]
      135 GETTABLEKS                       R18 R19 K31 ["getFFlagLuaStartPageTableContextMenu"]
      137 CALL                             R17 1 1
      138 CALL                             R17 0 1
      139 GETIMPORT                        R18 K5 [require]
      141 GETTABLEKS                       R21 R0 K9 ["Src"]
      143 GETTABLEKS                       R20 R21 K32 ["Contexts"]
      145 GETTABLEKS                       R19 R20 K33 ["ContextMenuActions"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R22 R0 K9 ["Src"]
      152 GETTABLEKS                       R21 R22 K21 ["Util"]
      154 GETTABLEKS                       R20 R21 K34 ["Dialogs"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K5 [require]
      159 GETTABLEKS                       R22 R0 K6 ["Packages"]
      161 GETTABLEKS                       R21 R22 K35 ["Dash"]
      163 CALL                             R20 1 1
      164 GETTABLEKS                       R21 R20 K36 ["join"]
      166 GETIMPORT                        R22 K39 [UDim2.new]
      168 LOADN                            R23 0
      169 LOADN                            R24 200
      170 LOADN                            R25 0
      171 LOADN                            R26 200
      172 CALL                             R22 4 1
      173 GETIMPORT                        R23 K39 [UDim2.new]
      175 LOADN                            R24 0
      176 LOADN                            R25 225
      177 LOADN                            R26 0
      178 LOADN                            R27 92
      179 CALL                             R23 4 1
      180 DUPCLOSURE                       R24 K40 [PROTO_0]
      181 CAPTURE                          VAL R12
      182 GETIMPORT                        R25 K5 [require]
      184 GETTABLEKS                       R27 R0 K9 ["Src"]
      186 GETTABLEKS                       R26 R27 K41 ["Types"]
      188 CALL                             R25 1 1
      189 NEWTABLE                         R26 0 6
      191 LOADK                            R27 K42 ["ConfigureExperience"]
      192 LOADK                            R28 K43 ["ConfigurePlace"]
      193 LOADK                            R29 K44 ["OpenPlace"]
      194 JUMPIF                           R4 ; [+2]
      195 LOADK                            R30 K45 ["PublicPrivateToggle"]
      196 JUMP                             ; [+1]
      197 LOADK                            R30 K46 [""]
      198 LOADK                            R31 K47 ["Archive"]
      199 LOADK                            R32 K48 ["RemoveRecent"]
      200 SETLIST                          R26 R27 6 [1]
      202 DUPCLOSURE                       R27 K49 [PROTO_4]
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R1
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R18
      211 DUPCLOSURE                       R28 K50 [PROTO_6]
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R27
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R3
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R11
      225 DUPCLOSURE                       R29 K51 [PROTO_7]
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R28
      230 RETURN                           R29 1
