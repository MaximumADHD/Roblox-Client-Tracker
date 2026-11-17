PROTO_0:
        0 LOADK                            R3 K0 ["PlaceSessionContextBridge"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NAMECALL                         R2 R1 K2 ["GetPlaceIsPersistedToCloudAsync"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 DUPTABLE                         R3 K5 [{["placeKind"] = "Cloud"}]
        9 RETURN                           R3 1
       10 GETUPVAL                         R3 0
       11 CALL                             R3 0 1
       12 JUMPIF                           R3 ; [+2]
       13 DUPTABLE                         R3 K7 [{["placeKind"] = "New"}]
       14 RETURN                           R3 1
       15 NAMECALL                         R3 R1 K8 ["GetPlaceFilePathAsync"]
       17 CALL                             R3 1 1
       18 JUMPIFNOT                        R3 ; [+6]
       19 JUMPIFEQKS                       R3 K9 [""] ; [+5]
       21 DUPTABLE                         R4 K12 [{["placeKind"] = "Local", ["placeFilePath"]}]
       22 SETTABLEKS                       R3 R4 K11 ["placeFilePath"]
       24 RETURN                           R4 1
       25 DUPTABLE                         R4 K7 [{["placeKind"] = "New"}]
       26 RETURN                           R4 1

PROTO_1:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R2 R1 K2 ["ActivateAsync"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["isCancelled"]
        3 JUMPIFEQKNIL                     R2 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["isCancelled"]
        7 CALL                             R1 0 1
        8 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R5 K0 ["PlaceSessionContextBridge"]
        1 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
        3 CALL                             R3 2 1
        4 NAMECALL                         R4 R3 K2 ["GetPlaceIsPersistedToCloudAsync"]
        6 CALL                             R4 1 1
        7 NAMECALL                         R5 R3 K3 ["GetPlaceIdAsync"]
        9 CALL                             R5 1 1
       10 NAMECALL                         R6 R3 K4 ["GetUniverseIdAsync"]
       12 CALL                             R6 1 1
       13 MOVE                             R8 R4
       14 JUMPIFNOT                        R8 ; [+3]
       15 MOVE                             R8 R5
       16 JUMPIFNOT                        R8 ; [+1]
       17 MOVE                             R8 R6
       18 FASTCALL2K                       ASSERT R8 K5 ; [+4]
       20 LOADK                            R9 K5 ["Current place is not persisted to cloud"]
       21 GETIMPORT                        R7 K7 [assert]
       23 CALL                             R7 2 0
       24 MOVE                             R7 R2
       25 JUMPIFNOT                        R7 ; [+14]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K8 ["RunService"]
       29 NAMECALL                         R7 R7 K9 ["IsEdit"]
       31 CALL                             R7 1 1
       32 JUMPIFNOT                        R7 ; [+7]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K8 ["RunService"]
       36 NAMECALL                         R8 R8 K10 ["IsServer"]
       38 CALL                             R8 1 1
       39 NOT                              R7 R8
       40 JUMPIFNOT                        R2 ; [+6]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K11 ["DataModel"]
       44 GETTABLEKS                       R8 R8 K12 ["JobId"]
       46 JUMP                             ; [+1]
       47 LOADK                            R8 K13 [""]
       48 JUMPIFNOT                        R2 ; [+5]
       49 LOADK                            R11 K14 ["PlaceOpener"]
       50 NAMECALL                         R9 R0 K1 ["GetPluginComponent"]
       52 CALL                             R9 2 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R9
       55 LOADK                            R12 K15 ["PublishMediator"]
       56 NAMECALL                         R10 R0 K1 ["GetPluginComponent"]
       58 CALL                             R10 2 1
       59 JUMPIFNOT                        R2 ; [+10]
       60 LOADB                            R11 0
       61 GETTABLEKS                       R12 R1 K16 ["isCancelled"]
       63 JUMPIFEQKNIL                     R12 ; [+4]
       65 GETTABLEKS                       R11 R1 K16 ["isCancelled"]
       67 CALL                             R11 0 1
       68 JUMPIFNOT                        R11 ; [+1]
       69 RETURN                           R0 0
       70 DUPTABLE                         R13 K22 [{["ForceSave"] = True, ["PersistToEdgeIfTeamCreate"], ["PublishType"], ["WaitUntilCanPublish"]}]
       71 JUMPIFNOT                        R2 ; [+2]
       72 LOADNIL                          R14
       73 JUMP                             ; [+1]
       74 LOADB                            R14 1
       75 SETTABLEKS                       R14 R13 K19 ["PersistToEdgeIfTeamCreate"]
       77 GETIMPORT                        R14 K26 [Enum.PlacePublishType.Save]
       79 SETTABLEKS                       R14 R13 K20 ["PublishType"]
       81 JUMPIFNOT                        R2 ; [+2]
       82 LOADNIL                          R14
       83 JUMP                             ; [+1]
       84 LOADB                            R14 1
       85 SETTABLEKS                       R14 R13 K21 ["WaitUntilCanPublish"]
       87 NAMECALL                         R11 R10 K27 ["SavePlaceAsync"]
       89 CALL                             R11 2 0
       90 JUMPIFNOT                        R2 ; [+53]
       91 NAMECALL                         R11 R3 K3 ["GetPlaceIdAsync"]
       93 CALL                             R11 1 1
       94 NAMECALL                         R12 R3 K4 ["GetUniverseIdAsync"]
       96 CALL                             R12 1 1
       97 NAMECALL                         R13 R3 K2 ["GetPlaceIsPersistedToCloudAsync"]
       99 CALL                             R13 1 1
      100 LOADB                            R14 0
      101 GETTABLEKS                       R15 R1 K16 ["isCancelled"]
      103 JUMPIFEQKNIL                     R15 ; [+4]
      105 GETTABLEKS                       R14 R1 K16 ["isCancelled"]
      107 CALL                             R14 0 1
      108 JUMPIF                           R14 ; [+12]
      109 JUMPIFNOT                        R13 ; [+11]
      110 JUMPIFNOTEQ                      R11 R5 ; [+10]
      112 JUMPIFNOTEQ                      R12 R6 ; [+8]
      114 GETUPVAL                         R14 0
      115 GETTABLEKS                       R14 R14 K11 ["DataModel"]
      117 GETTABLEKS                       R14 R14 K12 ["JobId"]
      119 JUMPIFEQ                         R14 R8 ; [+2]
      121 RETURN                           R0 0
      122 GETTABLEKS                       R15 R1 K28 ["getTargetBackend"]
      124 JUMPIFNOT                        R15 ; [+4]
      125 GETTABLEKS                       R14 R1 K28 ["getTargetBackend"]
      127 CALL                             R14 0 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R14
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K29 ["Workspace"]
      133 GETTABLEKS                       R15 R15 K30 ["Terrain"]
      135 JUMPIFEQKNIL                     R14 ; [+8]
      137 JUMPIFEQKNIL                     R15 ; [+6]
      139 GETTABLEKS                       R16 R15 K31 ["ExpandedTerrainResolved"]
      141 JUMPIFNOTEQ                      R16 R14 ; [+2]
      143 RETURN                           R0 0
      144 JUMPIFNOT                        R7 ; [+61]
      145 GETUPVAL                         R11 0
      146 GETTABLEKS                       R11 R11 K8 ["RunService"]
      148 NAMECALL                         R11 R11 K9 ["IsEdit"]
      150 CALL                             R11 1 1
      151 JUMPIFNOT                        R11 ; [+54]
      152 GETUPVAL                         R11 0
      153 GETTABLEKS                       R11 R11 K8 ["RunService"]
      155 NAMECALL                         R11 R11 K10 ["IsServer"]
      157 CALL                             R11 1 1
      158 JUMPIF                           R11 ; [+47]
      159 JUMPIFEQKS                       R8 K13 [""] ; [+46]
      161 GETUPVAL                         R11 1
      162 GETTABLEKS                       R11 R11 K32 ["new"]
      164 CALL                             R11 0 1
      165 GETUPVAL                         R12 1
      166 GETTABLEKS                       R12 R12 K33 ["composeUrl"]
      168 GETTABLEKS                       R13 R11 K34 ["DEVELOP_URL"]
      170 LOADK                            R14 K35 ["v2/places/shutdown"]
      171 DUPTABLE                         R15 K37 [{"placeId"}]
      172 FASTCALL1                        TOSTRING R5 ; [+3]
      173 MOVE                             R17 R5
      174 GETIMPORT                        R16 K39 [tostring]
      176 CALL                             R16 1 1
      177 SETTABLEKS                       R16 R15 K36 ["placeId"]
      179 CALL                             R12 3 1
      180 LOADK                            R14 K40 ["ExpandedTerrainShutdownJobId_"]
      181 FASTCALL1                        TOSTRING R5 ; [+3]
      182 MOVE                             R16 R5
      183 GETIMPORT                        R15 K39 [tostring]
      185 CALL                             R15 1 1
      186 CONCAT                           R13 R14 R15
      187 MOVE                             R16 R13
      188 NAMECALL                         R14 R0 K41 ["GetSetting"]
      190 CALL                             R14 2 1
      191 JUMPIFEQ                         R14 R8 ; [+14]
      193 MOVE                             R16 R13
      194 MOVE                             R17 R8
      195 NAMECALL                         R14 R0 K42 ["SetSetting"]
      197 CALL                             R14 3 0
      198 GETUPVAL                         R14 0
      199 GETTABLEKS                       R14 R14 K43 ["HttpRbxApiService"]
      201 MOVE                             R16 R12
      202 LOADK                            R17 K13 [""]
      203 NAMECALL                         R14 R14 K44 ["PostAsyncFullUrl"]
      205 CALL                             R14 3 0
      206 JUMPIFNOT                        R2 ; [+10]
      207 LOADB                            R11 0
      208 GETTABLEKS                       R12 R1 K16 ["isCancelled"]
      210 JUMPIFEQKNIL                     R12 ; [+4]
      212 GETTABLEKS                       R11 R1 K16 ["isCancelled"]
      214 CALL                             R11 0 1
      215 JUMPIFNOT                        R11 ; [+1]
      216 RETURN                           R0 0
      217 MOVE                             R11 R9
      218 JUMPIF                           R11 ; [+4]
      219 LOADK                            R13 K14 ["PlaceOpener"]
      220 NAMECALL                         R11 R0 K1 ["GetPluginComponent"]
      222 CALL                             R11 2 1
      223 MOVE                             R9 R11
      224 DUPTABLE                         R13 K46 [{"PlaceLaunchInfo"}]
      225 DUPTABLE                         R14 K49 [{"PlaceId", "UniverseId"}]
      226 SETTABLEKS                       R5 R14 K47 ["PlaceId"]
      228 SETTABLEKS                       R6 R14 K48 ["UniverseId"]
      230 SETTABLEKS                       R14 R13 K45 ["PlaceLaunchInfo"]
      232 NOT                              R14 R2
      233 NAMECALL                         R11 R9 K50 ["ReplacePlaceAsync"]
      235 CALL                             R11 3 0
      236 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["LocalFileSaveManager"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R3 R2 K2 ["SaveToFileAsync"]
        6 CALL                             R3 1 0
        7 LOADK                            R5 K3 ["PlaceOpener"]
        8 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
       10 CALL                             R3 2 1
       11 DUPTABLE                         R6 K5 [{"PlaceLaunchInfo"}]
       12 DUPTABLE                         R7 K7 [{"LocalFilePath"}]
       13 SETTABLEKS                       R1 R7 K6 ["LocalFilePath"]
       15 SETTABLEKS                       R7 R6 K4 ["PlaceLaunchInfo"]
       17 LOADB                            R7 1
       18 NAMECALL                         R4 R3 K8 ["ReplacePlaceAsync"]
       20 CALL                             R4 3 0
       21 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+10]
        7 LOADB                            R5 0
        8 GETTABLEKS                       R6 R3 K0 ["isCancelled"]
       10 JUMPIFEQKNIL                     R6 ; [+4]
       12 GETTABLEKS                       R5 R3 K0 ["isCancelled"]
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R5 R1 K1 ["placeKind"]
       19 JUMPIFNOTEQKS                    R5 K2 ["Cloud"] ; [+7]
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R0
       23 MOVE                             R7 R3
       24 MOVE                             R8 R4
       25 CALL                             R5 3 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R5 R1 K1 ["placeKind"]
       29 JUMPIFNOTEQKS                    R5 K3 ["Local"] ; [+19]
       31 GETTABLEKS                       R7 R1 K4 ["placeFilePath"]
       33 JUMPIFNOTEQKS                    R7 K5 [""] ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       39 LOADK                            R7 K6 ["Local place does not have a file path"]
       40 GETIMPORT                        R5 K8 [assert]
       42 CALL                             R5 2 0
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R0
       45 GETTABLEKS                       R7 R1 K4 ["placeFilePath"]
       47 CALL                             R5 2 0
       48 RETURN                           R0 0
       49 LOADK                            R7 K9 ["Actions"]
       50 NAMECALL                         R5 R0 K10 ["GetPluginComponent"]
       52 CALL                             R5 2 1
       53 GETUPVAL                         R8 3
       54 NAMECALL                         R6 R5 K11 ["ActivateAsync"]
       56 CALL                             R6 2 0
       57 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["ExpandedTerrainRestartServices"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 GETTABLEKS                       R5 R5 K13 ["getFFlagTerrainEditorExpandedTerrainShutdownTeamCreate"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getEngineFeatureStudioRestartLocalPlace"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K15 ["Util"]
       50 GETTABLEKS                       R6 R6 K16 ["StudioUri"]
       52 GETTABLEKS                       R6 R6 K17 ["fromAction"]
       54 LOADK                            R7 K18 ["PlaceManagement"]
       55 LOADK                            R8 K19 ["Close"]
       56 CALL                             R6 2 1
       57 GETTABLEKS                       R7 R1 K20 ["RobloxAPI"]
       59 GETTABLEKS                       R7 R7 K21 ["Url"]
       61 NEWTABLE                         R8 2 0
       63 DUPCLOSURE                       R9 K22 [PROTO_0]
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R9 R8 K23 ["getPlaceKindAsync"]
       67 DUPCLOSURE                       R9 K24 [PROTO_1]
       68 CAPTURE                          VAL R6
       69 DUPCLOSURE                       R10 K25 [PROTO_2]
       70 DUPCLOSURE                       R11 K26 [PROTO_3]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R7
       73 DUPCLOSURE                       R12 K27 [PROTO_4]
       74 DUPCLOSURE                       R13 K28 [PROTO_5]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R13 R8 K29 ["restartAsync"]
       81 RETURN                           R8 1
