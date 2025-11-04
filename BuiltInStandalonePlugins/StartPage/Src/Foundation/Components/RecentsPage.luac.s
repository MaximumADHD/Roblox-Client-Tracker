PROTO_0:
  DUPTABLE R0 K9 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R1 K10 ["Recents"]
  SETTABLEKS R1 R0 K0 ["searchKey"]
  LOADK R1 K11 [""]
  SETTABLEKS R1 R0 K1 ["search"]
  LOADK R1 K12 ["User"]
  SETTABLEKS R1 R0 K2 ["creatorType"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K13 ["GetUserId"]
  CALL R2 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R1 K15 [tostring]
  CALL R1 -1 1
  SETTABLEKS R1 R0 K3 ["creatorTargetId"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["isArchived"]
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["isTemplates"]
  LOADN R1 10
  SETTABLEKS R1 R0 K6 ["pageSize"]
  LOADB R1 1
  SETTABLEKS R1 R0 K7 ["getRecentLocalFiles"]
  LOADB R1 1
  SETTABLEKS R1 R0 K8 ["getRecentAPIGames"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnClick"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
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

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R2 K9 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R3 K10 ["Recents"]
  SETTABLEKS R3 R2 K0 ["searchKey"]
  LOADK R3 K11 [""]
  SETTABLEKS R3 R2 K1 ["search"]
  LOADK R3 K12 ["User"]
  SETTABLEKS R3 R2 K2 ["creatorType"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K13 ["GetUserId"]
  CALL R4 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R3 K15 [tostring]
  CALL R3 -1 1
  SETTABLEKS R3 R2 K3 ["creatorTargetId"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["isArchived"]
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["isTemplates"]
  LOADN R3 10
  SETTABLEKS R3 R2 K6 ["pageSize"]
  LOADB R3 1
  SETTABLEKS R3 R2 K7 ["getRecentLocalFiles"]
  LOADB R3 1
  SETTABLEKS R3 R2 K8 ["getRecentAPIGames"]
  GETTABLEKS R3 R0 K16 ["BaseQuery"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K17 ["createElement"]
  GETUPVAL R3 3
  GETUPVAL R4 0
  DUPTABLE R5 K23 [{"Query", "CellSize", "CellComponent", "FetchItems", "AdjustQuery"}]
  GETUPVAL R6 0
  MOVE R7 R1
  GETTABLEKS R8 R0 K24 ["NetworkQuery"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["Query"]
  GETTABLEKS R6 R0 K19 ["CellSize"]
  SETTABLEKS R6 R5 K19 ["CellSize"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K20 ["CellComponent"]
  GETTABLEKS R6 R0 K21 ["FetchItems"]
  SETTABLEKS R6 R5 K21 ["FetchItems"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K22 ["AdjustQuery"]
  GETTABLEKS R6 R0 K25 ["NetworkViewProps"]
  CALL R4 2 -1
  CALL R2 -1 1
  GETUPVAL R4 6
  JUMPIFNOT R4 [+14]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K17 ["createElement"]
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K26 ["Provider"]
  DUPTABLE R5 K28 [{"value"}]
  GETTABLEKS R6 R0 K29 ["KebabMenu"]
  SETTABLEKS R6 R5 K27 ["value"]
  MOVE R6 R2
  CALL R3 3 1
  RETURN R3 1
  MOVE R3 R2
  RETURN R3 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+40]
  GETTABLEKS R1 R0 K1 ["Id"]
  JUMPIFNOT R1 [+37]
  GETTABLEKS R1 R0 K2 ["RootPlaceId"]
  JUMPIFNOT R1 [+34]
  GETUPVAL R1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["GetUserId"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["Id"]
  GETTABLEKS R4 R0 K2 ["RootPlaceId"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["showVerifyAge"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["showAgeRestricted"]
  CALL R1 5 0
  GETUPVAL R1 3
  JUMPIFNOT R1 [+46]
  GETUPVAL R1 4
  GETUPVAL R3 5
  DUPTABLE R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K10 ["interaction"]
  SETTABLEKS R5 R4 K6 ["telemetryType"]
  LOADK R5 K11 ["place_open"]
  SETTABLEKS R5 R4 K7 ["telemetrySubtype"]
  LOADK R5 K12 ["recents_cloud"]
  SETTABLEKS R5 R4 K8 ["action"]
  NAMECALL R1 R1 K13 ["log"]
  CALL R1 3 0
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+27]
  GETTABLEKS R1 R0 K14 ["FilePath"]
  JUMPIFNOT R1 [+24]
  GETUPVAL R1 6
  GETTABLEKS R3 R0 K14 ["FilePath"]
  LOADB R4 0
  NAMECALL R1 R1 K15 ["openLocalFile"]
  CALL R1 3 0
  GETUPVAL R1 3
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 4
  GETUPVAL R3 5
  DUPTABLE R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K10 ["interaction"]
  SETTABLEKS R5 R4 K6 ["telemetryType"]
  LOADK R5 K11 ["place_open"]
  SETTABLEKS R5 R4 K7 ["telemetrySubtype"]
  LOADK R5 K16 ["recents_local"]
  SETTABLEKS R5 R4 K8 ["action"]
  NAMECALL R1 R1 K13 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K13 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R6 R0 K2 ["BaseQuery"]
  SETTABLEKS R6 R5 K2 ["BaseQuery"]
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["IsPrivacyVisible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K4 ["IsDateModifiedVisible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["IsDropdownMenuVisible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["IsCreatorNameVisible"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K7 ["KebabMenu"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K8 ["CellSize"]
  GETUPVAL R6 7
  SETTABLEKS R6 R5 K9 ["FetchItems"]
  DUPTABLE R6 K17 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R7 K18 ["Recents"]
  SETTABLEKS R7 R6 K14 ["searchKey"]
  LOADB R7 1
  SETTABLEKS R7 R6 K15 ["getRecentLocalFiles"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["getRecentAPIGames"]
  SETTABLEKS R6 R5 K10 ["NetworkQuery"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  CAPTURE VAL R2
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  SETTABLEKS R6 R5 K11 ["OnClick"]
  SETTABLEKS R0 R5 K12 ["NetworkViewProps"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K9 [{"PageName", "HideTabs", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar", "IsAlertVisible"}]
  LOADK R4 K10 ["Recents"]
  SETTABLEKS R4 R3 K2 ["PageName"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["HideTabs"]
  NEWTABLE R4 0 1
  DUPTABLE R5 K16 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R8 K17 ["Plugin"]
  LOADK R9 K18 ["RecentsPage.Title"]
  NAMECALL R6 R0 K19 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["Title"]
  LOADK R8 K17 ["Plugin"]
  LOADK R9 K20 ["NoExperiencesToDisplay"]
  NAMECALL R6 R0 K19 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K12 ["FailedTitle"]
  LOADK R6 K10 ["Recents"]
  SETTABLEKS R6 R5 K13 ["Key"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K14 ["PageComponent"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K15 ["Dropdowns"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K4 ["Tabs"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["CanSwapBetweenViews"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["IsDefaultGridView"]
  LOADB R4 1
  SETTABLEKS R4 R3 K7 ["HasSearchBar"]
  GETUPVAL R5 4
  ANDK R4 R5 K21 [True]
  SETTABLEKS R4 R3 K8 ["IsAlertVisible"]
  CALL R1 2 -1
  RETURN R1 -1

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
  GETTABLEKS R2 R1 K8 ["useContext"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagLuaStartPageAlertForUsersTextChat"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K13 ["Foundation"]
  GETTABLEKS R7 R8 K14 ["Components"]
  GETTABLEKS R6 R7 K15 ["GamePage"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K14 ["Components"]
  GETTABLEKS R7 R8 K16 ["InfoTile"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K17 ["NetworkView"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Packages"]
  GETTABLEKS R9 R10 K18 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K19 ["ContextServices"]
  GETTABLEKS R9 R10 K20 ["Localization"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K21 ["Util"]
  GETTABLEKS R11 R12 K22 ["Services"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K23 ["StartPageManager"]
  GETTABLEKS R12 R10 K24 ["StudioService"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K25 ["Network"]
  GETTABLEKS R14 R15 K26 ["DiscoverRecents"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K25 ["Network"]
  GETTABLEKS R15 R16 K27 ["DiscoverCreatorEligibilityAndOpenPlace"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K9 ["Src"]
  GETTABLEKS R18 R19 K21 ["Util"]
  GETTABLEKS R17 R18 K28 ["Telemetry"]
  GETTABLEKS R16 R17 K29 ["TelemetryContext"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K9 ["Src"]
  GETTABLEKS R19 R20 K21 ["Util"]
  GETTABLEKS R18 R19 K28 ["Telemetry"]
  GETTABLEKS R17 R18 K30 ["StartPageTelemetryEvent"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K9 ["Src"]
  GETTABLEKS R19 R20 K10 ["SharedFlags"]
  GETTABLEKS R18 R19 K31 ["getFFlagLuaStartPageTableContextMenu"]
  CALL R17 1 1
  CALL R17 0 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K9 ["Src"]
  GETTABLEKS R20 R21 K32 ["Contexts"]
  GETTABLEKS R19 R20 K33 ["ContextMenuActions"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K9 ["Src"]
  GETTABLEKS R21 R22 K21 ["Util"]
  GETTABLEKS R20 R21 K34 ["Dialogs"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R0 K6 ["Packages"]
  GETTABLEKS R21 R22 K35 ["Dash"]
  CALL R20 1 1
  GETTABLEKS R21 R20 K36 ["join"]
  GETIMPORT R22 K39 [UDim2.new]
  LOADN R23 0
  LOADN R24 200
  LOADN R25 0
  LOADN R26 200
  CALL R22 4 1
  GETIMPORT R23 K39 [UDim2.new]
  LOADN R24 0
  LOADN R25 225
  LOADN R26 0
  LOADN R27 92
  CALL R23 4 1
  DUPCLOSURE R24 K40 [PROTO_0]
  CAPTURE VAL R12
  GETIMPORT R25 K5 [require]
  GETTABLEKS R27 R0 K9 ["Src"]
  GETTABLEKS R26 R27 K41 ["Types"]
  CALL R25 1 1
  NEWTABLE R26 0 6
  LOADK R27 K42 ["ConfigureExperience"]
  LOADK R28 K43 ["ConfigurePlace"]
  LOADK R29 K44 ["OpenPlace"]
  LOADK R30 K45 ["PublicPrivateToggle"]
  LOADK R31 K46 ["Archive"]
  LOADK R32 K47 ["RemoveRecent"]
  SETLIST R26 R27 6 [1]
  DUPCLOSURE R27 K48 [PROTO_4]
  CAPTURE VAL R21
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R22
  CAPTURE VAL R17
  CAPTURE VAL R18
  DUPCLOSURE R28 K49 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R19
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R27
  CAPTURE VAL R26
  CAPTURE VAL R23
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R11
  DUPCLOSURE R29 K50 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R28
  CAPTURE VAL R4
  RETURN R29 1
