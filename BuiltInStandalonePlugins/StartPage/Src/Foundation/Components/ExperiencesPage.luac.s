PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  NEWTABLE R1 0 4
  DUPTABLE R2 K4 [{"DropdownLabel", "Key", "Query"}]
  LOADK R5 K5 ["Plugin"]
  LOADK R6 K6 ["SortOptions.Alphabetical"]
  NAMECALL R3 R0 K7 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["DropdownLabel"]
  LOADK R3 K8 ["GameName"]
  SETTABLEKS R3 R2 K2 ["Key"]
  DUPTABLE R3 K11 [{"sortParam", "sortOrder"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["GameName"]
  SETTABLEKS R4 R3 K9 ["sortParam"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K12 ["Asc"]
  SETTABLEKS R4 R3 K10 ["sortOrder"]
  SETTABLEKS R3 R2 K3 ["Query"]
  DUPTABLE R3 K4 [{"DropdownLabel", "Key", "Query"}]
  LOADK R6 K5 ["Plugin"]
  LOADK R7 K13 ["SortOptions.Created"]
  NAMECALL R4 R0 K7 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["DropdownLabel"]
  LOADK R4 K14 ["GameCreatedAsc"]
  SETTABLEKS R4 R3 K2 ["Key"]
  DUPTABLE R4 K11 [{"sortParam", "sortOrder"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["GameCreated"]
  SETTABLEKS R5 R4 K9 ["sortParam"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K12 ["Asc"]
  SETTABLEKS R5 R4 K10 ["sortOrder"]
  SETTABLEKS R4 R3 K3 ["Query"]
  DUPTABLE R4 K4 [{"DropdownLabel", "Key", "Query"}]
  LOADK R7 K5 ["Plugin"]
  LOADK R8 K16 ["SortOptions.CreatedDescending"]
  NAMECALL R5 R0 K7 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["DropdownLabel"]
  LOADK R5 K17 ["GameCreatedDesc"]
  SETTABLEKS R5 R4 K2 ["Key"]
  DUPTABLE R5 K11 [{"sortParam", "sortOrder"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["GameCreated"]
  SETTABLEKS R6 R5 K9 ["sortParam"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K18 ["Desc"]
  SETTABLEKS R6 R5 K10 ["sortOrder"]
  SETTABLEKS R5 R4 K3 ["Query"]
  DUPTABLE R5 K4 [{"DropdownLabel", "Key", "Query"}]
  LOADK R8 K5 ["Plugin"]
  LOADK R9 K19 ["SortOptions.Modified"]
  NAMECALL R6 R0 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K1 ["DropdownLabel"]
  LOADK R6 K20 ["LastUpdated"]
  SETTABLEKS R6 R5 K2 ["Key"]
  DUPTABLE R6 K11 [{"sortParam", "sortOrder"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K20 ["LastUpdated"]
  SETTABLEKS R7 R6 K9 ["sortParam"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K18 ["Desc"]
  SETTABLEKS R7 R6 K10 ["sortOrder"]
  SETTABLEKS R6 R5 K3 ["Query"]
  SETLIST R1 R2 4 [1]
  RETURN R1 1

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
  CALL R2 -1 1
  GETUPVAL R4 6
  JUMPIFNOT R4 [+14]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K10 ["Provider"]
  DUPTABLE R5 K12 [{"value"}]
  GETTABLEKS R6 R0 K13 ["KebabMenu"]
  SETTABLEKS R6 R5 K11 ["value"]
  MOVE R6 R2
  CALL R3 3 1
  RETURN R3 1
  MOVE R3 R2
  RETURN R3 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+39]
  GETTABLEKS R1 R0 K1 ["Id"]
  JUMPIFNOT R1 [+36]
  GETTABLEKS R1 R0 K2 ["RootPlaceId"]
  JUMPIFNOT R1 [+33]
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
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 4
  GETUPVAL R3 5
  DUPTABLE R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K10 ["interaction"]
  SETTABLEKS R5 R4 K6 ["telemetryType"]
  LOADK R5 K11 ["place_open"]
  SETTABLEKS R5 R4 K7 ["telemetrySubtype"]
  LOADK R5 K12 ["experiences_owned_tab"]
  SETTABLEKS R5 R4 K8 ["action"]
  NAMECALL R1 R1 K13 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
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
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["IsCreatorNameVisible"]
  NEWTABLE R6 0 5
  LOADK R7 K14 ["ConfigureExperience"]
  LOADK R8 K15 ["ConfigurePlace"]
  LOADK R9 K16 ["OpenPlace"]
  LOADK R10 K17 ["PublicPrivateToggle"]
  LOADK R11 K18 ["Archive"]
  SETLIST R6 R7 5 [1]
  SETTABLEKS R6 R5 K7 ["KebabMenu"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K8 ["CellSize"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K9 ["FetchItems"]
  DUPTABLE R6 K21 [{"creatorType", "creatorTargetId"}]
  LOADK R7 K22 ["User"]
  SETTABLEKS R7 R6 K19 ["creatorType"]
  GETUPVAL R8 7
  NAMECALL R8 R8 K23 ["GetUserId"]
  CALL R8 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K25 [tostring]
  CALL R7 -1 1
  SETTABLEKS R7 R6 K20 ["creatorTargetId"]
  SETTABLEKS R6 R5 K10 ["NetworkQuery"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  SETTABLEKS R6 R5 K11 ["OnClick"]
  SETTABLEKS R0 R5 K12 ["NetworkViewProps"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+39]
  GETTABLEKS R1 R0 K1 ["Id"]
  JUMPIFNOT R1 [+36]
  GETTABLEKS R1 R0 K2 ["RootPlaceId"]
  JUMPIFNOT R1 [+33]
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
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 4
  GETUPVAL R3 5
  DUPTABLE R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K10 ["interaction"]
  SETTABLEKS R5 R4 K6 ["telemetryType"]
  LOADK R5 K11 ["place_open"]
  SETTABLEKS R5 R4 K7 ["telemetrySubtype"]
  LOADK R5 K12 ["experiences_group_tab"]
  SETTABLEKS R5 R4 K8 ["action"]
  NAMECALL R1 R1 K13 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R3 1 1
  GETTABLEKS R4 R0 K1 ["BaseQuery"]
  JUMPIFNOT R4 [+62]
  GETTABLEKS R5 R0 K1 ["BaseQuery"]
  GETTABLEKS R4 R5 K2 ["creatorTargetId"]
  JUMPIFNOT R4 [+57]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K14 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R7 R0 K1 ["BaseQuery"]
  SETTABLEKS R7 R6 K1 ["BaseQuery"]
  LOADB R7 1
  SETTABLEKS R7 R6 K4 ["IsPrivacyVisible"]
  LOADB R7 1
  SETTABLEKS R7 R6 K5 ["IsDateModifiedVisible"]
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["IsDropdownMenuVisible"]
  LOADB R7 0
  SETTABLEKS R7 R6 K7 ["IsCreatorNameVisible"]
  NEWTABLE R7 0 5
  LOADK R8 K15 ["ConfigureExperience"]
  LOADK R9 K16 ["ConfigurePlace"]
  LOADK R10 K17 ["OpenPlace"]
  LOADK R11 K18 ["PublicPrivateToggle"]
  LOADK R12 K19 ["Archive"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K8 ["KebabMenu"]
  GETUPVAL R7 6
  SETTABLEKS R7 R6 K9 ["CellSize"]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K10 ["FetchItems"]
  DUPTABLE R7 K21 [{"creatorType"}]
  LOADK R8 K22 ["Group"]
  SETTABLEKS R8 R7 K20 ["creatorType"]
  SETTABLEKS R7 R6 K11 ["NetworkQuery"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R3
  CAPTURE UPVAL U10
  CAPTURE VAL R1
  CAPTURE UPVAL U11
  SETTABLEKS R7 R6 K12 ["OnClick"]
  SETTABLEKS R0 R6 K13 ["NetworkViewProps"]
  CALL R4 2 -1
  RETURN R4 -1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 12
  GETUPVAL R6 13
  MOVE R7 R0
  DUPTABLE R8 K24 [{"title"}]
  LOADK R11 K25 ["Plugin"]
  LOADK R12 K26 ["NoGroupsToDisplay"]
  NAMECALL R9 R2 K27 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K23 ["title"]
  CALL R6 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+39]
  GETTABLEKS R1 R0 K1 ["Id"]
  JUMPIFNOT R1 [+36]
  GETTABLEKS R1 R0 K2 ["RootPlaceId"]
  JUMPIFNOT R1 [+33]
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
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 4
  GETUPVAL R3 5
  DUPTABLE R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K10 ["interaction"]
  SETTABLEKS R5 R4 K6 ["telemetryType"]
  LOADK R5 K11 ["place_open"]
  SETTABLEKS R5 R4 K7 ["telemetrySubtype"]
  LOADK R5 K12 ["experiences_shared_tab"]
  SETTABLEKS R5 R4 K8 ["action"]
  NAMECALL R1 R1 K13 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
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
  NEWTABLE R6 0 2
  LOADK R7 K14 ["OpenPlace"]
  LOADK R8 K15 ["RemoveShared"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K7 ["KebabMenu"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K8 ["CellSize"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K9 ["FetchItems"]
  DUPTABLE R6 K19 [{"searchKey", "creatorType", "creatorTargetId"}]
  LOADK R7 K20 ["Experiences"]
  SETTABLEKS R7 R6 K16 ["searchKey"]
  LOADK R7 K21 ["Team"]
  SETTABLEKS R7 R6 K17 ["creatorType"]
  GETUPVAL R8 7
  NAMECALL R8 R8 K22 ["GetUserId"]
  CALL R8 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R7 K24 [tostring]
  CALL R7 -1 1
  SETTABLEKS R7 R6 K18 ["creatorTargetId"]
  SETTABLEKS R6 R5 K10 ["NetworkQuery"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  SETTABLEKS R6 R5 K11 ["OnClick"]
  SETTABLEKS R0 R5 K12 ["NetworkViewProps"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_11:
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

PROTO_12:
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
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["IsDropdownMenuVisible"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["IsCreatorNameVisible"]
  NEWTABLE R5 0 1
  LOADK R6 K14 ["RemoveRecent"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K7 ["KebabMenu"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K8 ["CellSize"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K9 ["FetchItems"]
  DUPTABLE R5 K18 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R6 K19 ["Local"]
  SETTABLEKS R6 R5 K15 ["searchKey"]
  LOADB R6 1
  SETTABLEKS R6 R5 K16 ["getRecentLocalFiles"]
  LOADB R6 0
  SETTABLEKS R6 R5 K17 ["getRecentAPIGames"]
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

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R4 3
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  NEWTABLE R6 0 0
  CALL R4 2 0
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 6
  DUPTABLE R6 K8 [{"PageName", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar", "IsAlertVisible"}]
  LOADK R7 K9 ["Experiences"]
  SETTABLEKS R7 R6 K2 ["PageName"]
  NEWTABLE R7 0 4
  DUPTABLE R8 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R11 K16 ["Plugin"]
  LOADK R12 K17 ["ExperiencesPage.Owned"]
  NAMECALL R9 R0 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["Title"]
  LOADK R11 K16 ["Plugin"]
  LOADK R12 K19 ["NoExperiencesToDisplay"]
  NAMECALL R9 R0 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K11 ["FailedTitle"]
  LOADK R9 K20 ["Owned"]
  SETTABLEKS R9 R8 K12 ["Key"]
  GETUPVAL R9 7
  SETTABLEKS R9 R8 K13 ["PageComponent"]
  DUPTABLE R9 K23 [{"SortDropdown", "DefaultSortIndex"}]
  SETTABLEKS R3 R9 K21 ["SortDropdown"]
  LOADN R10 4
  SETTABLEKS R10 R9 K22 ["DefaultSortIndex"]
  SETTABLEKS R9 R8 K14 ["Dropdowns"]
  DUPTABLE R9 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R12 K16 ["Plugin"]
  LOADK R13 K24 ["ExperiencesPage.Group"]
  NAMECALL R10 R0 K18 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K10 ["Title"]
  LOADK R12 K16 ["Plugin"]
  LOADK R13 K25 ["NoGroupExperiencesToDisplay"]
  NAMECALL R10 R0 K18 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["FailedTitle"]
  LOADK R10 K26 ["Group"]
  SETTABLEKS R10 R9 K12 ["Key"]
  GETUPVAL R10 8
  SETTABLEKS R10 R9 K13 ["PageComponent"]
  DUPTABLE R10 K28 [{"SortDropdown", "DefaultSortIndex", "GroupDropdown"}]
  SETTABLEKS R3 R10 K21 ["SortDropdown"]
  LOADN R11 4
  SETTABLEKS R11 R10 K22 ["DefaultSortIndex"]
  LENGTH R12 R1
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+3]
  MOVE R11 R1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K27 ["GroupDropdown"]
  SETTABLEKS R10 R9 K14 ["Dropdowns"]
  DUPTABLE R10 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R13 K16 ["Plugin"]
  LOADK R14 K29 ["ExperiencesPage.Shared"]
  NAMECALL R11 R0 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K10 ["Title"]
  LOADK R13 K16 ["Plugin"]
  LOADK R14 K30 ["NoSharedExperiencesToDisplay"]
  NAMECALL R11 R0 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K11 ["FailedTitle"]
  LOADK R11 K31 ["Shared"]
  SETTABLEKS R11 R10 K12 ["Key"]
  GETUPVAL R11 9
  SETTABLEKS R11 R10 K13 ["PageComponent"]
  DUPTABLE R11 K23 [{"SortDropdown", "DefaultSortIndex"}]
  SETTABLEKS R3 R11 K21 ["SortDropdown"]
  LOADN R12 4
  SETTABLEKS R12 R11 K22 ["DefaultSortIndex"]
  SETTABLEKS R11 R10 K14 ["Dropdowns"]
  DUPTABLE R11 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R14 K16 ["Plugin"]
  LOADK R15 K32 ["ExperiencesPage.Local"]
  NAMECALL R12 R0 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["Title"]
  LOADK R14 K16 ["Plugin"]
  LOADK R15 K33 ["NoLocalFilesToDisplay"]
  NAMECALL R12 R0 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["FailedTitle"]
  LOADK R12 K34 ["Local"]
  SETTABLEKS R12 R11 K12 ["Key"]
  GETUPVAL R12 10
  SETTABLEKS R12 R11 K13 ["PageComponent"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K14 ["Dropdowns"]
  SETLIST R7 R8 4 [1]
  SETTABLEKS R7 R6 K3 ["Tabs"]
  LOADB R7 1
  SETTABLEKS R7 R6 K4 ["CanSwapBetweenViews"]
  LOADB R7 1
  SETTABLEKS R7 R6 K5 ["IsDefaultGridView"]
  LOADB R7 1
  SETTABLEKS R7 R6 K6 ["HasSearchBar"]
  GETUPVAL R8 11
  ANDK R7 R8 K35 [True]
  SETTABLEKS R7 R6 K7 ["IsAlertVisible"]
  CALL R4 2 -1
  RETURN R4 -1

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
  GETTABLEKS R2 R1 K8 ["useState"]
  GETTABLEKS R3 R1 K9 ["useEffect"]
  GETTABLEKS R4 R1 K10 ["useContext"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["SharedFlags"]
  GETTABLEKS R7 R8 K14 ["getFFlagLuaStartPageAlertForUsersTextChat"]
  CALL R6 1 1
  CALL R6 0 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K15 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K16 ["ContextServices"]
  GETTABLEKS R8 R9 K17 ["Localization"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Packages"]
  GETTABLEKS R10 R11 K18 ["Dash"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K19 ["join"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K20 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K21 ["Components"]
  GETTABLEKS R13 R14 K22 ["InfoTile"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K11 ["Src"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETTABLEKS R14 R15 K23 ["NetworkView"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K11 ["Src"]
  GETTABLEKS R17 R18 K24 ["Foundation"]
  GETTABLEKS R16 R17 K21 ["Components"]
  GETTABLEKS R15 R16 K25 ["GamePage"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K11 ["Src"]
  GETTABLEKS R18 R19 K24 ["Foundation"]
  GETTABLEKS R17 R18 K21 ["Components"]
  GETTABLEKS R16 R17 K26 ["NoResultsFound"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K11 ["Src"]
  GETTABLEKS R18 R19 K27 ["Network"]
  GETTABLEKS R17 R18 K28 ["DiscoverGroups"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K11 ["Src"]
  GETTABLEKS R19 R20 K27 ["Network"]
  GETTABLEKS R18 R19 K29 ["DiscoverExperiences"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K11 ["Src"]
  GETTABLEKS R20 R21 K27 ["Network"]
  GETTABLEKS R19 R20 K30 ["DiscoverRecents"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K11 ["Src"]
  GETTABLEKS R21 R22 K27 ["Network"]
  GETTABLEKS R20 R21 K31 ["DiscoverCreatorEligibilityAndOpenPlace"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K11 ["Src"]
  GETTABLEKS R22 R23 K12 ["SharedFlags"]
  GETTABLEKS R21 R22 K32 ["getFFlagLuaStartPageTableContextMenu"]
  CALL R20 1 1
  CALL R20 0 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K11 ["Src"]
  GETTABLEKS R23 R24 K33 ["Contexts"]
  GETTABLEKS R22 R23 K34 ["ContextMenuActions"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K11 ["Src"]
  GETTABLEKS R24 R25 K35 ["Util"]
  GETTABLEKS R23 R24 K36 ["Dialogs"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K11 ["Src"]
  GETTABLEKS R25 R26 K35 ["Util"]
  GETTABLEKS R24 R25 K37 ["SortingOptions"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K11 ["Src"]
  GETTABLEKS R26 R27 K35 ["Util"]
  GETTABLEKS R25 R26 K38 ["Services"]
  CALL R24 1 1
  GETTABLEKS R25 R24 K39 ["StartPageManager"]
  GETTABLEKS R26 R24 K40 ["StudioService"]
  GETIMPORT R27 K5 [require]
  GETTABLEKS R31 R0 K11 ["Src"]
  GETTABLEKS R30 R31 K35 ["Util"]
  GETTABLEKS R29 R30 K41 ["Telemetry"]
  GETTABLEKS R28 R29 K42 ["TelemetryContext"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R32 R0 K11 ["Src"]
  GETTABLEKS R31 R32 K35 ["Util"]
  GETTABLEKS R30 R31 K41 ["Telemetry"]
  GETTABLEKS R29 R30 K43 ["StartPageTelemetryEvent"]
  CALL R28 1 1
  GETIMPORT R29 K46 [UDim2.new]
  LOADN R30 0
  LOADN R31 200
  LOADN R32 0
  LOADN R33 200
  CALL R29 4 1
  GETIMPORT R30 K46 [UDim2.new]
  LOADN R31 0
  LOADN R32 225
  LOADN R33 0
  LOADN R34 69
  CALL R30 4 1
  GETIMPORT R31 K46 [UDim2.new]
  LOADN R32 0
  LOADN R33 225
  LOADN R34 0
  LOADN R35 92
  CALL R31 4 1
  DUPCLOSURE R32 K47 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R23
  DUPTABLE R33 K52 [{"searchKey", "isArchived", "isTemplates", "pageSize"}]
  LOADK R34 K53 ["Experiences"]
  SETTABLEKS R34 R33 K48 ["searchKey"]
  LOADB R34 0
  SETTABLEKS R34 R33 K49 ["isArchived"]
  LOADB R34 0
  SETTABLEKS R34 R33 K50 ["isTemplates"]
  LOADN R34 30
  SETTABLEKS R34 R33 K51 ["pageSize"]
  DUPCLOSURE R34 K54 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R33
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R29
  CAPTURE VAL R20
  CAPTURE VAL R21
  DUPCLOSURE R35 K55 [PROTO_6]
  CAPTURE VAL R27
  CAPTURE VAL R4
  CAPTURE VAL R22
  CAPTURE VAL R1
  CAPTURE VAL R34
  CAPTURE VAL R30
  CAPTURE VAL R17
  CAPTURE VAL R26
  CAPTURE VAL R19
  CAPTURE VAL R5
  CAPTURE VAL R28
  DUPCLOSURE R36 K56 [PROTO_8]
  CAPTURE VAL R27
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R22
  CAPTURE VAL R1
  CAPTURE VAL R34
  CAPTURE VAL R30
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R26
  CAPTURE VAL R5
  CAPTURE VAL R28
  CAPTURE VAL R15
  CAPTURE VAL R10
  DUPCLOSURE R37 K57 [PROTO_10]
  CAPTURE VAL R27
  CAPTURE VAL R4
  CAPTURE VAL R22
  CAPTURE VAL R1
  CAPTURE VAL R34
  CAPTURE VAL R31
  CAPTURE VAL R17
  CAPTURE VAL R26
  CAPTURE VAL R19
  CAPTURE VAL R5
  CAPTURE VAL R28
  DUPCLOSURE R38 K58 [PROTO_12]
  CAPTURE VAL R27
  CAPTURE VAL R1
  CAPTURE VAL R34
  CAPTURE VAL R30
  CAPTURE VAL R18
  CAPTURE VAL R25
  CAPTURE VAL R5
  CAPTURE VAL R28
  DUPCLOSURE R39 K59 [PROTO_14]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R32
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R35
  CAPTURE VAL R36
  CAPTURE VAL R37
  CAPTURE VAL R38
  CAPTURE VAL R6
  RETURN R39 1
