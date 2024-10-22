PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnClick"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K8 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K1 ["ImageSize"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  SETTABLEKS R6 R5 K2 ["OnClick"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["IsPrivacyVisible"]
  SETTABLEKS R6 R5 K3 ["IsPrivacyVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["IsDateModifiedVisible"]
  SETTABLEKS R6 R5 K4 ["IsDateModifiedVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K5 ["IsDropdownMenuVisible"]
  SETTABLEKS R6 R5 K5 ["IsDropdownMenuVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["IsCreatorNameVisible"]
  SETTABLEKS R6 R5 K6 ["IsCreatorNameVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K7 ["KebabMenu"]
  SETTABLEKS R6 R5 K7 ["KebabMenu"]
  CALL R3 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K0 ["BaseQuery"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 3
  GETUPVAL R4 0
  DUPTABLE R5 K7 [{"Query", "CellSize", "CellComponent", "FetchItems", "AdjustQuery"}]
  GETUPVAL R6 0
  MOVE R7 R1
  GETTABLEKS R8 R0 K8 ["NetworkQuery"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K2 ["Query"]
  GETTABLEKS R6 R0 K3 ["CellSize"]
  SETTABLEKS R6 R5 K3 ["CellSize"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K4 ["CellComponent"]
  GETTABLEKS R6 R0 K5 ["FetchItems"]
  SETTABLEKS R6 R5 K5 ["FetchItems"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K6 ["AdjustQuery"]
  GETTABLEKS R6 R0 K9 ["NetworkViewProps"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+27]
  GETTABLEKS R1 R0 K1 ["FilePath"]
  JUMPIFNOT R1 [+24]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K1 ["FilePath"]
  LOADB R4 0
  NAMECALL R1 R1 K2 ["openLocalFile"]
  CALL R1 3 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 2
  GETUPVAL R3 3
  DUPTABLE R4 K6 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K7 ["interaction"]
  SETTABLEKS R5 R4 K3 ["telemetryType"]
  LOADK R5 K8 ["place_open"]
  SETTABLEKS R5 R4 K4 ["telemetrySubtype"]
  LOADK R5 K9 ["experiences_local_tab"]
  SETTABLEKS R5 R4 K5 ["action"]
  NAMECALL R1 R1 K10 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K13 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R5 R0 K2 ["BaseQuery"]
  SETTABLEKS R5 R4 K2 ["BaseQuery"]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["IsPrivacyVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["IsDateModifiedVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["IsDropdownMenuVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["IsCreatorNameVisible"]
  NEWTABLE R5 0 6
  LOADK R6 K14 ["ConfigureExperience"]
  LOADK R7 K15 ["ConfigurePlace"]
  LOADK R8 K16 ["OpenPlace"]
  LOADK R9 K17 ["PublicPrivateToggle"]
  LOADK R10 K18 ["Archive"]
  LOADK R11 K19 ["RemoveRecent"]
  SETLIST R5 R6 6 [1]
  SETTABLEKS R5 R4 K7 ["KebabMenu"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K8 ["CellSize"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K9 ["FetchItems"]
  DUPTABLE R5 K23 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R6 K24 ["Recents"]
  SETTABLEKS R6 R5 K20 ["searchKey"]
  LOADB R6 1
  SETTABLEKS R6 R5 K21 ["getRecentLocalFiles"]
  LOADB R6 1
  SETTABLEKS R6 R5 K22 ["getRecentAPIGames"]
  SETTABLEKS R5 R4 K10 ["NetworkQuery"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  SETTABLEKS R5 R4 K11 ["OnClick"]
  SETTABLEKS R0 R4 K12 ["NetworkViewProps"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K9 [{"Size", "PageName", "HideTabs", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
  GETUPVAL R6 3
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+2]
  GETTABLEKS R5 R0 K2 ["Size"]
  SETTABLEKS R5 R4 K2 ["Size"]
  LOADK R5 K10 ["Recents"]
  SETTABLEKS R5 R4 K3 ["PageName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["HideTabs"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K16 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K18 ["RecentsPage.Title"]
  NAMECALL R7 R1 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Title"]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K20 ["NoExperiencesToDisplay"]
  NAMECALL R7 R1 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["FailedTitle"]
  LOADK R7 K10 ["Recents"]
  SETTABLEKS R7 R6 K13 ["Key"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K14 ["PageComponent"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K15 ["Dropdowns"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["Tabs"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["CanSwapBetweenViews"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["IsDefaultGridView"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["HasSearchBar"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["SharedFlags"]
  GETTABLEKS R3 R4 K10 ["getFFlagLuaStartPageNetworkCache"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagLuaStartPageQuickLoad"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["GamePage"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K15 ["InfoTile"]
  CALL R6 1 1
  JUMPIFNOT R2 [+10]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K16 ["NetworkView"]
  CALL R7 1 1
  JUMP [+9]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K17 ["DEPRECATED_NetworkView"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Packages"]
  GETTABLEKS R9 R10 K18 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K19 ["ContextServices"]
  GETTABLEKS R9 R10 K20 ["Localization"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K21 ["Util"]
  GETTABLEKS R11 R12 K22 ["Services"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K23 ["StartPageManager"]
  GETTABLEKS R12 R10 K24 ["StudioService"]
  JUMPIFNOT R2 [+10]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K25 ["Network"]
  GETTABLEKS R14 R15 K26 ["DiscoverRecents"]
  CALL R13 1 1
  JUMP [+9]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K27 ["DEPRECATED_Network"]
  GETTABLEKS R14 R15 K26 ["DiscoverRecents"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K8 ["Src"]
  GETTABLEKS R17 R18 K21 ["Util"]
  GETTABLEKS R16 R17 K28 ["Telemetry"]
  GETTABLEKS R15 R16 K29 ["TelemetryContext"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K8 ["Src"]
  GETTABLEKS R18 R19 K21 ["Util"]
  GETTABLEKS R17 R18 K28 ["Telemetry"]
  GETTABLEKS R16 R17 K30 ["StartPageTelemetryEvent"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K6 ["Packages"]
  GETTABLEKS R17 R18 K31 ["Dash"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K32 ["join"]
  GETIMPORT R18 K35 [UDim2.new]
  LOADN R19 0
  LOADN R20 200
  LOADN R21 0
  LOADN R22 200
  CALL R18 4 1
  GETIMPORT R19 K35 [UDim2.new]
  LOADN R20 0
  LOADN R21 225
  LOADN R22 0
  LOADN R23 92
  CALL R19 4 1
  DUPTABLE R20 K45 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R21 K46 ["Recents"]
  SETTABLEKS R21 R20 K36 ["searchKey"]
  LOADK R21 K47 [""]
  SETTABLEKS R21 R20 K37 ["search"]
  LOADK R21 K48 ["User"]
  SETTABLEKS R21 R20 K38 ["creatorType"]
  NAMECALL R22 R12 K49 ["GetUserId"]
  CALL R22 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R21 K51 [tostring]
  CALL R21 -1 1
  SETTABLEKS R21 R20 K39 ["creatorTargetId"]
  LOADB R21 0
  SETTABLEKS R21 R20 K40 ["isArchived"]
  LOADB R21 0
  SETTABLEKS R21 R20 K41 ["isTemplates"]
  LOADN R21 10
  SETTABLEKS R21 R20 K42 ["pageSize"]
  LOADB R21 1
  SETTABLEKS R21 R20 K43 ["getRecentLocalFiles"]
  LOADB R21 1
  SETTABLEKS R21 R20 K44 ["getRecentAPIGames"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R23 R0 K8 ["Src"]
  GETTABLEKS R22 R23 K52 ["Types"]
  CALL R21 1 1
  DUPCLOSURE R22 K53 [PROTO_3]
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R18
  DUPCLOSURE R23 K54 [PROTO_5]
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R22
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R15
  DUPCLOSURE R24 K55 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R23
  RETURN R24 1
