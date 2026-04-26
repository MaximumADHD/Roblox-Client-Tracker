PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_requestTracker"]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
        7 ADDK                             R1 R1 K2 [1]
        8 SETTABLEKS                       R1 R0 K1 ["_fetchScopeId"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K1 ["_fetchScopeId"]
       13 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 [""]
        3 LOADB                            R3 1
        4 CALL                             R1 2 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["UserName"]
       10 LOADB                            R3 0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R2 R1 K1 ["FetchUsername"]
        8 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Mock fetchUniverseInfoAsync error for universe %*"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K14 [{"created", "creatorName", "creatorTargetId", "creatorType", "description", "id", "isActive", "isArchived", "name", "privacyType", "rootPlaceId", "updated"}]
       12 LOADK                            R3 K15 [""]
       13 SETTABLEKS                       R3 R2 K2 ["created"]
       15 LOADK                            R3 K16 ["TestUser"]
       16 SETTABLEKS                       R3 R2 K3 ["creatorName"]
       18 LOADN                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["creatorTargetId"]
       21 GETIMPORT                        R4 K20 [Enum.CreatorType.User]
       23 FASTCALL1                        TOSTRING R4 ; [+2]
       24 GETIMPORT                        R3 K22 [tostring]
       26 CALL                             R3 1 1
       27 SETTABLEKS                       R3 R2 K5 ["creatorType"]
       29 LOADK                            R3 K15 [""]
       30 SETTABLEKS                       R3 R2 K6 ["description"]
       32 LOADN                            R3 1
       33 SETTABLEKS                       R3 R2 K7 ["id"]
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K8 ["isActive"]
       38 LOADB                            R3 0
       39 SETTABLEKS                       R3 R2 K9 ["isArchived"]
       41 LOADK                            R3 K23 ["TestGame"]
       42 SETTABLEKS                       R3 R2 K10 ["name"]
       44 LOADK                            R3 K15 [""]
       45 SETTABLEKS                       R3 R2 K11 ["privacyType"]
       47 LOADN                            R3 1
       48 SETTABLEKS                       R3 R2 K12 ["rootPlaceId"]
       50 LOADK                            R3 K15 [""]
       51 SETTABLEKS                       R3 R2 K13 ["updated"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R4 R3 K1 ["FetchUniverseInfo"]
        9 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchGroupsAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["Groups"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K1 ["FetchGroups"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R3 R2 K1 ["FetchInventoryFolderReady"]
        7 RETURN                           R0 0

PROTO_10:
        0 DUPCLOSURE                       R1 K0 [PROTO_8]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["new"]
        4 DUPCLOSURE                       R3 K2 [PROTO_9]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_11:
        0 LOADNIL                          R6
        1 JUMPIFNOT                        R5 ; [+10]
        2 GETUPVAL                         R8 0
        3 GETTABLEKS                       R7 R8 K0 ["generate"]
        5 MOVE                             R8 R3
        6 JUMPIF                           R8 ; [+2]
        7 GETUPVAL                         R8 1
        8 CALL                             R8 0 1
        9 CALL                             R7 1 1
       10 MOVE                             R6 R7
       11 JUMP                             ; [+36]
       12 GETTABLEKS                       R8 R1 K1 ["ScopeInfo"]
       14 GETTABLEKS                       R7 R8 K2 ["Type"]
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K3 ["ScopeType"]
       19 GETTABLEKS                       R8 R9 K4 ["ProjectPlaces"]
       21 JUMPIFNOTEQ                      R7 R8 ; [+14]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K5 ["Places"]
       26 GETTABLEKS                       R10 R1 K1 ["ScopeInfo"]
       28 GETTABLEKS                       R9 R10 K6 ["Id"]
       30 GETTABLE                         R7 R8 R9
       31 JUMPIF                           R7 ; [+2]
       32 NEWTABLE                         R7 0 0
       34 MOVE                             R6 R7
       35 JUMP                             ; [+12]
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K7 ["Assets"]
       39 GETTABLEKS                       R10 R1 K1 ["ScopeInfo"]
       41 GETTABLEKS                       R9 R10 K6 ["Id"]
       43 GETTABLE                         R7 R8 R9
       44 JUMPIF                           R7 ; [+2]
       45 NEWTABLE                         R7 0 0
       47 MOVE                             R6 R7
       48 NEWTABLE                         R7 0 0
       50 MOVE                             R8 R6
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 FORGPREP                         R8
       54 GETTABLEKS                       R14 R12 K8 ["Creator"]
       56 GETTABLEKS                       R13 R14 K9 ["Name"]
       58 GETTABLEKS                       R14 R12 K8 ["Creator"]
       60 SETTABLE                         R14 R7 R13
       61 FORGLOOP                         R8 2 ; [-8]
       63 MOVE                             R8 R0
       64 MOVE                             R9 R6
       65 MOVE                             R10 R7
       66 GETTABLEKS                       R11 R1 K10 ["FetchSessionId"]
       68 LOADNIL                          R12
       69 MOVE                             R13 R4
       70 CALL                             R8 5 0
       71 MOVE                             R8 R2
       72 CALL                             R8 0 0
       73 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R4 0
        2 LOADK                            R5 K0 ["Test fetchAssetsAsync error"]
        3 CALL                             R4 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["_fetchAssetsAsyncImpl"]
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R6 3
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K2 ["Resolve"]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R3
       15 MOVE                             R10 R2
       16 CALL                             R4 6 0
       17 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchFoldersAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["Folders"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K2 ["ScopeInfo"]
       11 GETTABLEKS                       R3 R4 K3 ["Id"]
       13 GETTABLE                         R1 R2 R3
       14 JUMPIF                           R1 ; [+2]
       15 NEWTABLE                         R1 0 0
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R1
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R5 R6 K4 ["FetchSessionId"]
       24 LOADNIL                          R6
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K5 ["PageToken"]
       28 CALL                             R2 5 0
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K6 ["Resolve"]
       32 JUMPIFNOT                        R2 ; [+4]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R2 R3 K6 ["Resolve"]
       36 CALL                             R2 0 0
       37 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R4 R3 K1 ["FetchAssets"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R4 R3 K2 ["FetchFolders"]
       20 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test searchAssetsAsync error - folders"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["Resolve"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K2 ["Folders"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["ScopeInfo"]
       15 GETTABLEKS                       R3 R4 K4 ["Id"]
       17 GETTABLE                         R1 R2 R3
       18 JUMPIF                           R1 ; [+2]
       19 NEWTABLE                         R1 0 0
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R1
       23 NEWTABLE                         R4 0 0
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K5 ["FetchSessionId"]
       28 LOADNIL                          R6
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K6 ["PageToken"]
       32 CALL                             R2 5 0
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R2 R3 K1 ["Resolve"]
       36 JUMPIFNOT                        R2 ; [+4]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K1 ["Resolve"]
       40 CALL                             R2 0 0
       41 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R4 0
        2 LOADK                            R5 K0 ["Test searchAssetsAsync error"]
        3 CALL                             R4 1 0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["Resolve"]
        7 CALL                             R4 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K2 ["_fetchAssetsAsyncImpl"]
       12 GETUPVAL                         R5 3
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K1 ["Resolve"]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R3
       19 MOVE                             R10 R2
       20 CALL                             R4 6 0
       21 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["IncludeFolders"]
        2 JUMPIFNOT                        R3 ; [+11]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["ResumeAsync"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R4 R3 K2 ["SearchFolders"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K1 ["ResumeAsync"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R4 R3 K3 ["SearchAssets"]
       24 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Places"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["UserId"]
        6 GETTABLE                         R3 R4 R5
        7 NEWTABLE                         R4 0 0
        9 MOVE                             R5 R3
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R11 R9 K2 ["Creator"]
       15 GETTABLEKS                       R10 R11 K3 ["Name"]
       17 GETTABLEKS                       R11 R9 K2 ["Creator"]
       19 SETTABLE                         R11 R4 R10
       20 FORGLOOP                         R5 2 ; [-8]
       22 MOVE                             R5 R0
       23 MOVE                             R6 R3
       24 MOVE                             R7 R4
       25 GETTABLEKS                       R8 R1 K4 ["FetchSessionId"]
       27 LOADNIL                          R9
       28 MOVE                             R10 R2
       29 JUMPIF                           R10 ; [+3]
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R10 R11 K5 ["PageToken"]
       33 CALL                             R5 5 0
       34 GETTABLEKS                       R5 R1 K6 ["Resolve"]
       36 CALL                             R5 0 0
       37 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K0 ["Test fetchPlacesAsync error"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Resolve"]
        7 CALL                             R2 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K2 ["_fetchPlacesImplAsync"]
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R1
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
        2 GETTABLEKS                       R3 R4 K1 ["Type"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["ScopeType"]
        7 GETTABLEKS                       R4 R5 K3 ["Universe"]
        9 JUMPIFEQ                         R3 R4 ; [+16]
       11 GETTABLEKS                       R4 R0 K0 ["ScopeInfo"]
       13 GETTABLEKS                       R3 R4 K1 ["Type"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K2 ["ScopeType"]
       18 GETTABLEKS                       R4 R5 K4 ["ProjectPlaces"]
       20 JUMPIFEQ                         R3 R4 ; [+5]
       22 GETTABLEKS                       R3 R0 K5 ["Resolve"]
       24 CALL                             R3 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K6 ["ResumeAsync"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R4 R3 K7 ["FetchPlaces"]
       36 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R2 1
        1 NEWTABLE                         R3 0 0
        3 RETURN                           R2 2

PROTO_22:
        0 DUPTABLE                         R2 K3 [{"assetId", "errorCode", "code"}]
        1 SETTABLEKS                       R0 R2 K0 ["assetId"]
        3 LOADN                            R3 123
        4 SETTABLEKS                       R3 R2 K1 ["errorCode"]
        6 LOADK                            R3 K4 ["MockError"]
        7 SETTABLEKS                       R3 R2 K2 ["code"]
        9 RETURN                           R2 1

PROTO_23:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R2 0
        2 LOADB                            R3 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["map"]
        6 GETUPVAL                         R5 2
        7 DUPCLOSURE                       R6 K1 [PROTO_22]
        8 CALL                             R4 2 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 LOADB                            R3 1
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          VAL R5
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R7 R6 K1 ["GrantAssetsPermissions"]
        9 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R2 K2 [{"value", "error"}]
        1 DUPTABLE                         R3 K4 [{"status"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K5 ["ApiPermissionStatus"]
        5 GETTABLEKS                       R4 R5 K6 ["UnknownError"]
        7 SETTABLEKS                       R4 R3 K3 ["status"]
        9 SETTABLEKS                       R3 R2 K0 ["value"]
       11 DUPTABLE                         R3 K9 [{"code", "message"}]
       12 LOADN                            R4 123
       13 SETTABLEKS                       R4 R3 K7 ["code"]
       15 LOADK                            R4 K10 ["MockError"]
       16 SETTABLEKS                       R4 R3 K8 ["message"]
       18 SETTABLEKS                       R3 R2 K1 ["error"]
       20 RETURN                           R2 1

PROTO_26:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 LOADB                            R2 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["map"]
        6 GETUPVAL                         R4 2
        7 DUPCLOSURE                       R5 K1 [PROTO_25]
        8 CAPTURE                          UPVAL U3
        9 CALL                             R3 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 1
       14 NEWTABLE                         R3 0 0
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R4
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R6 R5 K1 ["CheckAssetsPermissions"]
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["AvailableImages"]
        6 GETTABLEKS                       R1 R2 K2 ["Placeholder"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_29:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["get"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["AvailableImages"]
        7 GETTABLEKS                       R4 R5 K2 ["Placeholder"]
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["AvailableImages"]
        6 GETTABLEKS                       R1 R2 K2 ["Placeholder"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_31:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 [""]
        3 GETIMPORT                        R3 K4 [Enum.AssetFetchStatus.Failure]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K0 [""]
        9 GETIMPORT                        R3 K6 [Enum.AssetFetchStatus.Success]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 SETTABLEKS                       R4 R3 K1 ["GetThumbnailForItem"]
        7 RETURN                           R0 0

PROTO_33:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Mock fetchAssetInfoAsync error for asset %*"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 DUPTABLE                         R1 K14 [{"Path", "AssetId", "AssetType", "DisplayName", "Description", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived"}]
       11 LOADK                            R3 K15 ["users/%*/creator-inventory-items/asset-%*"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K16 ["Id"]
       15 GETUPVAL                         R6 1
       16 NAMECALL                         R3 R3 K1 ["format"]
       18 CALL                             R3 3 1
       19 MOVE                             R2 R3
       20 SETTABLEKS                       R2 R1 K2 ["Path"]
       22 GETUPVAL                         R2 1
       23 SETTABLEKS                       R2 R1 K3 ["AssetId"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K4 ["AssetType"]
       28 GETTABLEKS                       R2 R3 K17 ["Model"]
       30 SETTABLEKS                       R2 R1 K4 ["AssetType"]
       32 LOADK                            R2 K18 ["Mock Individual Asset"]
       33 SETTABLEKS                       R2 R1 K5 ["DisplayName"]
       35 LOADK                            R2 K19 ["A mock asset fetched via fetching asset info directly"]
       36 SETTABLEKS                       R2 R1 K6 ["Description"]
       38 LOADN                            R2 1
       39 SETTABLEKS                       R2 R1 K7 ["VersionNumber"]
       41 LOADK                            R2 K20 ["2021-01-01T00:00:00Z"]
       42 SETTABLEKS                       R2 R1 K8 ["Created"]
       44 LOADK                            R2 K20 ["2021-01-01T00:00:00Z"]
       45 SETTABLEKS                       R2 R1 K9 ["Modified"]
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R3 R4 K10 ["ModerationStatus"]
       50 GETTABLEKS                       R2 R3 K21 ["Approved"]
       52 SETTABLEKS                       R2 R1 K10 ["ModerationStatus"]
       54 GETUPVAL                         R2 2
       55 SETTABLEKS                       R2 R1 K11 ["Creator"]
       57 GETUPVAL                         R4 3
       58 GETTABLEKS                       R3 R4 K22 ["AssetSource"]
       60 GETTABLEKS                       R2 R3 K23 ["Uploaded"]
       62 SETTABLEKS                       R2 R1 K12 ["Source"]
       64 LOADB                            R2 0
       65 SETTABLEKS                       R2 R1 K13 ["Archived"]
       67 DUPTABLE                         R2 K14 [{"Path", "AssetId", "AssetType", "DisplayName", "Description", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived"}]
       68 LOADK                            R4 K15 ["users/%*/creator-inventory-items/asset-%*"]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R6 R7 K16 ["Id"]
       72 GETUPVAL                         R8 1
       73 ADDK                             R7 R8 K24 [1]
       74 NAMECALL                         R4 R4 K1 ["format"]
       76 CALL                             R4 3 1
       77 MOVE                             R3 R4
       78 SETTABLEKS                       R3 R2 K2 ["Path"]
       80 GETUPVAL                         R4 1
       81 ADDK                             R3 R4 K24 [1]
       82 SETTABLEKS                       R3 R2 K3 ["AssetId"]
       84 GETUPVAL                         R5 3
       85 GETTABLEKS                       R4 R5 K4 ["AssetType"]
       87 GETTABLEKS                       R3 R4 K25 ["Mesh"]
       89 SETTABLEKS                       R3 R2 K4 ["AssetType"]
       91 LOADK                            R3 K26 ["Mock Dependency Asset"]
       92 SETTABLEKS                       R3 R2 K5 ["DisplayName"]
       94 LOADK                            R3 K27 ["A mock asset that another asset depends on"]
       95 SETTABLEKS                       R3 R2 K6 ["Description"]
       97 LOADN                            R3 1
       98 SETTABLEKS                       R3 R2 K7 ["VersionNumber"]
      100 LOADK                            R3 K20 ["2021-01-01T00:00:00Z"]
      101 SETTABLEKS                       R3 R2 K8 ["Created"]
      103 LOADK                            R3 K20 ["2021-01-01T00:00:00Z"]
      104 SETTABLEKS                       R3 R2 K9 ["Modified"]
      106 GETUPVAL                         R5 3
      107 GETTABLEKS                       R4 R5 K10 ["ModerationStatus"]
      109 GETTABLEKS                       R3 R4 K21 ["Approved"]
      111 SETTABLEKS                       R3 R2 K10 ["ModerationStatus"]
      113 GETUPVAL                         R3 2
      114 SETTABLEKS                       R3 R2 K11 ["Creator"]
      116 GETUPVAL                         R5 3
      117 GETTABLEKS                       R4 R5 K22 ["AssetSource"]
      119 GETTABLEKS                       R3 R4 K23 ["Uploaded"]
      121 SETTABLEKS                       R3 R2 K12 ["Source"]
      123 LOADB                            R3 0
      124 SETTABLEKS                       R3 R2 K13 ["Archived"]
      126 GETUPVAL                         R3 4
      127 MOVE                             R4 R1
      128 CALL                             R3 1 0
      129 GETUPVAL                         R3 5
      130 JUMPIFNOT                        R3 ; [+3]
      131 GETUPVAL                         R3 4
      132 MOVE                             R4 R2
      133 CALL                             R3 1 0
      134 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R4
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R2
       10 SETTABLEKS                       R6 R5 K1 ["FetchAssetInfo"]
       12 RETURN                           R0 0

PROTO_35:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Mock fetchPluginInfoAsync error for plugin %*"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K3 [{"versionId"}]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K2 ["versionId"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R4 R3 K1 ["FetchPluginInfo"]
        9 RETURN                           R0 0

PROTO_37:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test fetchFoldersAsync error"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["Folders"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["Scope"]
       13 GETTABLEKS                       R4 R5 K3 ["Id"]
       15 GETTABLE                         R2 R3 R4
       16 JUMPIF                           R2 ; [+2]
       17 NEWTABLE                         R2 0 0
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K2 ["Scope"]
       22 GETTABLEKS                       R3 R4 K4 ["Uid"]
       24 SETTABLE                         R2 R1 R3
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R1
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R4 R3 K1 ["FetchFolders"]
       10 RETURN                           R0 0

PROTO_39:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K0 ["Test createFolderAsync error"]
        3 CALL                             R2 1 0
        4 DUPTABLE                         R2 K12 [{"AssetId", "DisplayName", "AssetType", "Path", "Creator", "Created", "Modified", "VersionNumber", "ModerationStatus", "Source", "Archived"}]
        5 SETTABLEKS                       R0 R2 K1 ["AssetId"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K13 ["FolderName"]
       10 SETTABLEKS                       R3 R2 K2 ["DisplayName"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K14 ["ScopeType"]
       15 GETTABLEKS                       R3 R4 K15 ["Folder"]
       17 SETTABLEKS                       R3 R2 K3 ["AssetType"]
       19 LOADK                            R4 K16 ["folder-%*"]
       20 MOVE                             R6 R0
       21 NAMECALL                         R4 R4 K17 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 SETTABLEKS                       R3 R2 K4 ["Path"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K18 ["RootScope"]
       30 SETTABLEKS                       R3 R2 K5 ["Creator"]
       32 LOADK                            R3 K19 ["2021-01-01T00:00:00Z"]
       33 SETTABLEKS                       R3 R2 K6 ["Created"]
       35 LOADK                            R3 K19 ["2021-01-01T00:00:00Z"]
       36 SETTABLEKS                       R3 R2 K7 ["Modified"]
       38 LOADN                            R3 1
       39 SETTABLEKS                       R3 R2 K8 ["VersionNumber"]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K9 ["ModerationStatus"]
       44 GETTABLEKS                       R3 R4 K20 ["Approved"]
       46 SETTABLEKS                       R3 R2 K9 ["ModerationStatus"]
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R4 R5 K21 ["AssetSource"]
       51 GETTABLEKS                       R3 R4 K22 ["Uploaded"]
       53 SETTABLEKS                       R3 R2 K10 ["Source"]
       55 LOADB                            R3 0
       56 SETTABLEKS                       R3 R2 K11 ["Archived"]
       58 GETUPVAL                         R3 3
       59 MOVE                             R4 R2
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

PROTO_40:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R3 R2 K1 ["CreateFolder"]
       10 RETURN                           R0 0

PROTO_42:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["new"]
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_43:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test deleteFolderAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_44:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["DeleteFolder"]
        8 RETURN                           R0 0

PROTO_46:
        0 DUPCLOSURE                       R1 K0 [PROTO_44]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["new"]
        4 DUPCLOSURE                       R3 K2 [PROTO_45]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_47:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test updateFolderMetadataAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["FolderMetadata"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_48:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R3 R2 K1 ["UpdateFolderMetadata"]
        9 RETURN                           R0 0

PROTO_50:
        0 DUPCLOSURE                       R2 K0 [PROTO_48]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["new"]
        5 DUPCLOSURE                       R4 K2 [PROTO_49]
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U0
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

PROTO_51:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K0 ["Test moveItemsAsync error"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K2 [{"errors"}]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["errors"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_52:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

PROTO_53:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R3 R2 K1 ["MoveItems"]
        8 RETURN                           R0 0

PROTO_54:
        0 DUPCLOSURE                       R4 K0 [PROTO_52]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K1 ["new"]
        4 DUPCLOSURE                       R6 K2 [PROTO_53]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R5 1 -1
        7 RETURN                           R5 -1

PROTO_55:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
        9 GETTABLE                         R1 R2 R0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["ResumeAsync"]
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R0
       15 MOVE                             R2 R1
       16 GETVARARGS                       R3 -1
       17 CALL                             R2 -1 0
       18 LOADB                            R2 1
       19 RETURN                           R2 1
       20 LOADB                            R1 0
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Images"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R8 K1 [script]
       41 GETTABLEKS                       R7 R8 K13 ["Parent"]
       43 GETTABLEKS                       R6 R7 K14 ["MockData"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R8 R9 K15 ["Flags"]
       52 GETTABLEKS                       R7 R8 K16 ["getFIntDebugAmrMockCount"]
       54 CALL                             R6 1 1
       55 NEWTABLE                         R7 32 0
       57 NEWTABLE                         R8 0 0
       59 SETTABLEKS                       R8 R7 K17 ["ResumeAsync"]
       61 LOADN                            R8 0
       62 SETTABLEKS                       R8 R7 K18 ["_fetchScopeId"]
       64 DUPCLOSURE                       R8 K19 [PROTO_0]
       65 CAPTURE                          VAL R7
       66 SETTABLEKS                       R8 R7 K20 ["setupNewFetchSession"]
       68 DUPCLOSURE                       R8 K21 [PROTO_2]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 SETTABLEKS                       R8 R7 K22 ["fetchUsername"]
       73 DUPCLOSURE                       R8 K23 [PROTO_4]
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R8 R7 K24 ["fetchUniverseInfoAsync"]
       77 DUPCLOSURE                       R8 K25 [PROTO_6]
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R8 R7 K26 ["fetchGroupsAsync"]
       82 DUPCLOSURE                       R8 K27 [PROTO_10]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R8 R7 K28 ["fetchInventoryFolderReadyAsync"]
       87 DUPCLOSURE                       R8 K29 [PROTO_11]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R8 R7 K30 ["_fetchAssetsAsyncImpl"]
       93 DUPCLOSURE                       R8 K31 [PROTO_14]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R8 R7 K32 ["fetchAssetsAsync"]
       98 DUPCLOSURE                       R8 K33 [PROTO_17]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R8 R7 K34 ["searchAssetsAsync"]
      103 DUPCLOSURE                       R8 K35 [PROTO_18]
      104 CAPTURE                          VAL R5
      105 SETTABLEKS                       R8 R7 K36 ["_fetchPlacesImplAsync"]
      107 DUPCLOSURE                       R8 K37 [PROTO_20]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R8 R7 K38 ["fetchPlacesAsync"]
      112 DUPCLOSURE                       R8 K39 [PROTO_21]
      113 SETTABLEKS                       R8 R7 K40 ["grantUniverseUseAssetsPermissions"]
      115 DUPCLOSURE                       R8 K41 [PROTO_24]
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R8 R7 K42 ["grantAssetsPermissionsAsync"]
      120 DUPCLOSURE                       R8 K43 [PROTO_27]
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R2
      124 SETTABLEKS                       R8 R7 K44 ["checkAssetsPermissionsAsync"]
      126 DUPCLOSURE                       R8 K45 [PROTO_28]
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R8 R7 K46 ["getThumbnailUriForScope"]
      130 DUPCLOSURE                       R8 K47 [PROTO_29]
      131 CAPTURE                          VAL R1
      132 SETTABLEKS                       R8 R7 K48 ["getThumbnailForScopeAsync"]
      134 DUPCLOSURE                       R8 K49 [PROTO_30]
      135 CAPTURE                          VAL R1
      136 SETTABLEKS                       R8 R7 K50 ["getThumbnailForItem"]
      138 DUPCLOSURE                       R8 K51 [PROTO_32]
      139 CAPTURE                          VAL R7
      140 SETTABLEKS                       R8 R7 K52 ["getThumbnailForItemAsync"]
      142 DUPCLOSURE                       R8 K53 [PROTO_34]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R2
      145 SETTABLEKS                       R8 R7 K54 ["fetchAssetInfoAsync"]
      147 DUPCLOSURE                       R8 K55 [PROTO_36]
      148 CAPTURE                          VAL R7
      149 SETTABLEKS                       R8 R7 K56 ["fetchPluginInfoAsync"]
      151 DUPCLOSURE                       R8 K57 [PROTO_38]
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R5
      154 SETTABLEKS                       R8 R7 K58 ["fetchFoldersAsync"]
      156 DUPCLOSURE                       R8 K59 [PROTO_42]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R7
      160 SETTABLEKS                       R8 R7 K60 ["createFolderAsync"]
      162 DUPCLOSURE                       R8 K61 [PROTO_46]
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R7
      165 SETTABLEKS                       R8 R7 K62 ["deleteFolderAsync"]
      167 DUPCLOSURE                       R8 K63 [PROTO_50]
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R7
      171 SETTABLEKS                       R8 R7 K64 ["updateFolderMetadataAsync"]
      173 DUPCLOSURE                       R8 K65 [PROTO_54]
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R7
      176 SETTABLEKS                       R8 R7 K66 ["moveItemsAsync"]
      178 DUPCLOSURE                       R8 K67 [PROTO_55]
      179 CAPTURE                          VAL R7
      180 SETTABLEKS                       R8 R7 K68 ["resume"]
      182 RETURN                           R7 1
