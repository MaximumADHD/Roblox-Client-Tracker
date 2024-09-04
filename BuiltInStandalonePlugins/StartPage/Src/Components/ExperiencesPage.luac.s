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
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+22]
  GETTABLEKS R1 R0 K1 ["Id"]
  JUMPIFNOT R1 [+19]
  GETTABLEKS R1 R0 K2 ["RootPlaceId"]
  JUMPIFNOT R1 [+16]
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
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K12 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R5 R0 K1 ["BaseQuery"]
  SETTABLEKS R5 R4 K1 ["BaseQuery"]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["IsPrivacyVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["IsDateModifiedVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["IsDropdownMenuVisible"]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["IsCreatorNameVisible"]
  NEWTABLE R5 0 5
  LOADK R6 K13 ["ConfigureExperience"]
  LOADK R7 K14 ["ConfigurePlace"]
  LOADK R8 K15 ["OpenPlace"]
  LOADK R9 K16 ["PublicPrivateToggle"]
  LOADK R10 K17 ["Archive"]
  SETLIST R5 R6 5 [1]
  SETTABLEKS R5 R4 K6 ["KebabMenu"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K7 ["CellSize"]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K8 ["FetchItems"]
  DUPTABLE R5 K20 [{"creatorType", "creatorTargetId"}]
  LOADK R6 K21 ["User"]
  SETTABLEKS R6 R5 K18 ["creatorType"]
  GETUPVAL R6 6
  NAMECALL R6 R6 K22 ["GetUserId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["creatorTargetId"]
  SETTABLEKS R5 R4 K9 ["NetworkQuery"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K10 ["OnClick"]
  SETTABLEKS R0 R4 K11 ["NetworkViewProps"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+22]
  GETTABLEKS R1 R0 K1 ["Id"]
  JUMPIFNOT R1 [+19]
  GETTABLEKS R1 R0 K2 ["RootPlaceId"]
  JUMPIFNOT R1 [+16]
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
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["BaseQuery"]
  JUMPIFNOT R3 [+59]
  GETTABLEKS R4 R0 K1 ["BaseQuery"]
  GETTABLEKS R3 R4 K2 ["creatorTargetId"]
  JUMPIFNOT R3 [+54]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K14 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R6 R0 K1 ["BaseQuery"]
  SETTABLEKS R6 R5 K1 ["BaseQuery"]
  LOADB R6 1
  SETTABLEKS R6 R5 K4 ["IsPrivacyVisible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["IsDateModifiedVisible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["IsDropdownMenuVisible"]
  LOADB R6 0
  SETTABLEKS R6 R5 K7 ["IsCreatorNameVisible"]
  NEWTABLE R6 0 5
  LOADK R7 K15 ["ConfigureExperience"]
  LOADK R8 K16 ["ConfigurePlace"]
  LOADK R9 K17 ["OpenPlace"]
  LOADK R10 K18 ["PublicPrivateToggle"]
  LOADK R11 K19 ["Archive"]
  SETLIST R6 R7 5 [1]
  SETTABLEKS R6 R5 K8 ["KebabMenu"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K9 ["CellSize"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K10 ["FetchItems"]
  DUPTABLE R6 K21 [{"creatorType"}]
  LOADK R7 K22 ["Group"]
  SETTABLEKS R7 R6 K20 ["creatorType"]
  SETTABLEKS R6 R5 K11 ["NetworkQuery"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K12 ["OnClick"]
  SETTABLEKS R0 R5 K13 ["NetworkViewProps"]
  CALL R3 2 -1
  RETURN R3 -1
  GETTABLEKS R3 R0 K23 ["InitialContentHasLoaded"]
  LOADN R4 0
  CALL R3 1 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 9
  GETUPVAL R5 10
  MOVE R6 R0
  DUPTABLE R7 K25 [{"Title"}]
  LOADK R10 K26 ["Plugin"]
  LOADK R11 K27 ["NoGroupsToDisplay"]
  NAMECALL R8 R1 K28 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K24 ["Title"]
  CALL R5 2 -1
  CALL R3 -1 -1
  RETURN R3 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+22]
  GETTABLEKS R1 R0 K1 ["Id"]
  JUMPIFNOT R1 [+19]
  GETTABLEKS R1 R0 K2 ["RootPlaceId"]
  JUMPIFNOT R1 [+16]
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
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K12 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R5 R0 K1 ["BaseQuery"]
  SETTABLEKS R5 R4 K1 ["BaseQuery"]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["IsPrivacyVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["IsDateModifiedVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["IsDropdownMenuVisible"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["IsCreatorNameVisible"]
  NEWTABLE R5 0 2
  LOADK R6 K13 ["OpenPlace"]
  LOADK R7 K14 ["RemoveShared"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K6 ["KebabMenu"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K7 ["CellSize"]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K8 ["FetchItems"]
  DUPTABLE R5 K18 [{"searchKey", "creatorType", "creatorTargetId"}]
  LOADK R6 K19 ["Experiences"]
  SETTABLEKS R6 R5 K15 ["searchKey"]
  LOADK R6 K20 ["Team"]
  SETTABLEKS R6 R5 K16 ["creatorType"]
  GETUPVAL R6 6
  NAMECALL R6 R6 K21 ["GetUserId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["creatorTargetId"]
  SETTABLEKS R5 R4 K9 ["NetworkQuery"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K10 ["OnClick"]
  SETTABLEKS R0 R4 K11 ["NetworkViewProps"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+10]
  GETTABLEKS R1 R0 K1 ["FilePath"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K1 ["FilePath"]
  LOADB R4 0
  NAMECALL R1 R1 K2 ["openLocalFile"]
  CALL R1 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K12 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R4 R0 K1 ["BaseQuery"]
  SETTABLEKS R4 R3 K1 ["BaseQuery"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["IsPrivacyVisible"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["IsDateModifiedVisible"]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["IsDropdownMenuVisible"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["IsCreatorNameVisible"]
  NEWTABLE R4 0 1
  LOADK R5 K13 ["RemoveRecent"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K6 ["KebabMenu"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K7 ["CellSize"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K8 ["FetchItems"]
  DUPTABLE R4 K17 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R5 K18 ["Local"]
  SETTABLEKS R5 R4 K14 ["searchKey"]
  LOADB R5 1
  SETTABLEKS R5 R4 K15 ["getRecentLocalFiles"]
  LOADB R5 0
  SETTABLEKS R5 R4 K16 ["getRecentAPIGames"]
  SETTABLEKS R4 R3 K9 ["NetworkQuery"]
  DUPCLOSURE R4 K19 [PROTO_11]
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K10 ["OnClick"]
  SETTABLEKS R0 R3 K11 ["NetworkViewProps"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  CALL R2 1 2
  GETUPVAL R4 2
  CALL R4 0 1
  GETUPVAL R5 3
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  NEWTABLE R7 0 0
  CALL R5 2 0
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 6
  DUPTABLE R7 K8 [{"Size", "PageName", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
  GETTABLEKS R8 R0 K2 ["Size"]
  SETTABLEKS R8 R7 K2 ["Size"]
  LOADK R8 K9 ["Experiences"]
  SETTABLEKS R8 R7 K3 ["PageName"]
  NEWTABLE R8 0 4
  DUPTABLE R9 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R12 K16 ["Plugin"]
  LOADK R13 K17 ["ExperiencesPage.Owned"]
  NAMECALL R10 R1 K18 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K10 ["Title"]
  LOADK R12 K16 ["Plugin"]
  LOADK R13 K19 ["NoExperiencesToDisplay"]
  NAMECALL R10 R1 K18 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["FailedTitle"]
  LOADK R10 K20 ["Owned"]
  SETTABLEKS R10 R9 K12 ["Key"]
  GETUPVAL R10 7
  SETTABLEKS R10 R9 K13 ["PageComponent"]
  DUPTABLE R10 K23 [{"SortDropdown", "DefaultSortIndex"}]
  SETTABLEKS R4 R10 K21 ["SortDropdown"]
  LOADN R11 4
  SETTABLEKS R11 R10 K22 ["DefaultSortIndex"]
  SETTABLEKS R10 R9 K14 ["Dropdowns"]
  DUPTABLE R10 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R13 K16 ["Plugin"]
  LOADK R14 K24 ["ExperiencesPage.Group"]
  NAMECALL R11 R1 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K10 ["Title"]
  LOADK R13 K16 ["Plugin"]
  LOADK R14 K25 ["NoGroupExperiencesToDisplay"]
  NAMECALL R11 R1 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K11 ["FailedTitle"]
  LOADK R11 K26 ["Group"]
  SETTABLEKS R11 R10 K12 ["Key"]
  GETUPVAL R11 8
  SETTABLEKS R11 R10 K13 ["PageComponent"]
  DUPTABLE R11 K28 [{"SortDropdown", "DefaultSortIndex", "GroupDropdown"}]
  SETTABLEKS R4 R11 K21 ["SortDropdown"]
  LOADN R12 4
  SETTABLEKS R12 R11 K22 ["DefaultSortIndex"]
  LENGTH R13 R2
  LOADN R14 0
  JUMPIFNOTLT R14 R13 [+3]
  MOVE R12 R2
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K27 ["GroupDropdown"]
  SETTABLEKS R11 R10 K14 ["Dropdowns"]
  DUPTABLE R11 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R14 K16 ["Plugin"]
  LOADK R15 K29 ["ExperiencesPage.Shared"]
  NAMECALL R12 R1 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["Title"]
  LOADK R14 K16 ["Plugin"]
  LOADK R15 K30 ["NoSharedExperiencesToDisplay"]
  NAMECALL R12 R1 K18 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["FailedTitle"]
  LOADK R12 K31 ["Shared"]
  SETTABLEKS R12 R11 K12 ["Key"]
  GETUPVAL R12 9
  SETTABLEKS R12 R11 K13 ["PageComponent"]
  DUPTABLE R12 K23 [{"SortDropdown", "DefaultSortIndex"}]
  SETTABLEKS R4 R12 K21 ["SortDropdown"]
  LOADN R13 4
  SETTABLEKS R13 R12 K22 ["DefaultSortIndex"]
  SETTABLEKS R12 R11 K14 ["Dropdowns"]
  DUPTABLE R12 K15 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R15 K16 ["Plugin"]
  LOADK R16 K32 ["ExperiencesPage.Local"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K10 ["Title"]
  LOADK R15 K16 ["Plugin"]
  LOADK R16 K33 ["NoLocalFilesToDisplay"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K11 ["FailedTitle"]
  LOADK R13 K34 ["Local"]
  SETTABLEKS R13 R12 K12 ["Key"]
  GETUPVAL R13 10
  SETTABLEKS R13 R12 K13 ["PageComponent"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K14 ["Dropdowns"]
  SETLIST R8 R9 4 [1]
  SETTABLEKS R8 R7 K4 ["Tabs"]
  LOADB R8 1
  SETTABLEKS R8 R7 K5 ["CanSwapBetweenViews"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["IsDefaultGridView"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["HasSearchBar"]
  CALL R5 2 -1
  RETURN R5 -1

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
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K12 ["ContextServices"]
  GETTABLEKS R6 R7 K13 ["Localization"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["TypedDash"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K17 ["join"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K18 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K19 ["Components"]
  GETTABLEKS R11 R12 K20 ["InfoTile"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K14 ["Src"]
  GETTABLEKS R13 R14 K19 ["Components"]
  GETTABLEKS R12 R13 K21 ["NetworkView"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K14 ["Src"]
  GETTABLEKS R14 R15 K19 ["Components"]
  GETTABLEKS R13 R14 K22 ["GamePage"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K14 ["Src"]
  GETTABLEKS R15 R16 K23 ["Network"]
  GETTABLEKS R14 R15 K24 ["DiscoverGroups"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K14 ["Src"]
  GETTABLEKS R16 R17 K23 ["Network"]
  GETTABLEKS R15 R16 K25 ["DiscoverExperiences"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K14 ["Src"]
  GETTABLEKS R17 R18 K23 ["Network"]
  GETTABLEKS R16 R17 K26 ["DiscoverRecents"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K14 ["Src"]
  GETTABLEKS R18 R19 K19 ["Components"]
  GETTABLEKS R17 R18 K27 ["NoResultsFoundPage"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K14 ["Src"]
  GETTABLEKS R19 R20 K23 ["Network"]
  GETTABLEKS R18 R19 K28 ["DiscoverCreatorEligibilityAndOpenPlace"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K14 ["Src"]
  GETTABLEKS R20 R21 K15 ["Util"]
  GETTABLEKS R19 R20 K29 ["Dialogs"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K14 ["Src"]
  GETTABLEKS R21 R22 K15 ["Util"]
  GETTABLEKS R20 R21 K30 ["SortingOptions"]
  CALL R19 1 1
  GETIMPORT R20 K32 [game]
  LOADK R22 K33 ["StudioService"]
  NAMECALL R20 R20 K34 ["GetService"]
  CALL R20 2 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K14 ["Src"]
  GETTABLEKS R23 R24 K15 ["Util"]
  GETTABLEKS R22 R23 K35 ["Services"]
  CALL R21 1 1
  GETTABLEKS R22 R21 K36 ["StartPageManager"]
  GETIMPORT R23 K39 [UDim2.new]
  LOADN R24 0
  LOADN R25 200
  LOADN R26 0
  LOADN R27 200
  CALL R23 4 1
  GETIMPORT R24 K39 [UDim2.new]
  LOADN R25 0
  LOADN R26 225
  LOADN R27 0
  LOADN R28 39
  CALL R24 4 1
  GETIMPORT R25 K39 [UDim2.new]
  LOADN R26 0
  LOADN R27 225
  LOADN R28 0
  LOADN R29 62
  CALL R25 4 1
  DUPCLOSURE R26 K40 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R19
  DUPTABLE R27 K45 [{"searchKey", "isArchived", "isTemplates", "pageSize"}]
  LOADK R28 K46 ["Experiences"]
  SETTABLEKS R28 R27 K41 ["searchKey"]
  LOADB R28 0
  SETTABLEKS R28 R27 K42 ["isArchived"]
  LOADB R28 0
  SETTABLEKS R28 R27 K43 ["isTemplates"]
  LOADN R28 30
  SETTABLEKS R28 R27 K44 ["pageSize"]
  DUPCLOSURE R28 K47 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R27
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R23
  DUPCLOSURE R29 K48 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R28
  CAPTURE VAL R24
  CAPTURE VAL R14
  CAPTURE VAL R20
  CAPTURE VAL R17
  DUPCLOSURE R30 K49 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R28
  CAPTURE VAL R24
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R8
  DUPCLOSURE R31 K50 [PROTO_10]
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R28
  CAPTURE VAL R25
  CAPTURE VAL R14
  CAPTURE VAL R20
  CAPTURE VAL R17
  DUPCLOSURE R32 K51 [PROTO_12]
  CAPTURE VAL R1
  CAPTURE VAL R28
  CAPTURE VAL R24
  CAPTURE VAL R15
  CAPTURE VAL R22
  DUPCLOSURE R33 K52 [PROTO_14]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R26
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R32
  RETURN R33 1
