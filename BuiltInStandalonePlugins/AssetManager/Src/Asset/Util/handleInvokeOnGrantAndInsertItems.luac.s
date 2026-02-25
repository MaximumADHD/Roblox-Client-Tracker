PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 1
        3 MOVE                             R3 R2
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["Model"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+2]
       12 SETTABLEKS                       R1 R7 K3 ["SourceAssetId"]
       14 FORGLOOP                         R3 2 ; [-8]
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K1 ["AssetId"]
       15 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       17 MOVE                             R11 R2
       18 MOVE                             R12 R9
       19 GETIMPORT                        R10 K4 [table.insert]
       21 CALL                             R10 2 0
       22 SETTABLE                         R8 R3 R9
       23 FORGLOOP                         R4 2 ; [-11]
       25 RETURN                           R2 2

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+2]
        1 LOADNIL                          R2
        2 JUMP                             ; [+2]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R6 1
        8 NAMECALL                         R6 R6 K0 ["Get"]
       10 CALL                             R6 1 1
       11 LENGTH                           R5 R6
       12 LOADN                            R6 0
       13 JUMPIFNOTLT                      R6 R5 ; [+7]
       15 GETUPVAL                         R5 1
       16 NAMECALL                         R5 R5 K0 ["Get"]
       18 CALL                             R5 1 1
       19 GETTABLEN                        R4 R5 1
       20 JUMP                             ; [+4]
       21 GETIMPORT                        R5 K2 [game]
       23 GETTABLEKS                       R4 R5 K3 ["Workspace"]
       25 MOVE                             R5 R0
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 FORGPREP                         R5
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R12 R9 K4 ["AssetType"]
       32 GETTABLE                         R10 R11 R12
       33 MOVE                             R11 R9
       34 MOVE                             R12 R2
       35 CALL                             R10 2 1
       36 GETTABLEN                        R11 R10 1
       37 JUMPIFNOT                        R11 ; [+53]
       38 GETTABLEKS                       R12 R11 K5 ["SourceAssetId"]
       40 JUMPIFNOT                        R12 ; [+18]
       41 GETTABLEKS                       R12 R9 K6 ["AssetId"]
       43 SETTABLEKS                       R12 R11 K5 ["SourceAssetId"]
       45 GETTABLEKS                       R12 R9 K4 ["AssetType"]
       47 GETUPVAL                         R15 3
       48 GETTABLEKS                       R14 R15 K4 ["AssetType"]
       50 GETTABLEKS                       R13 R14 K7 ["Model"]
       52 JUMPIFNOTEQ                      R12 R13 ; [+6]
       54 GETUPVAL                         R12 4
       55 MOVE                             R13 R11
       56 GETTABLEKS                       R14 R9 K6 ["AssetId"]
       58 CALL                             R12 2 0
       59 GETUPVAL                         R12 5
       60 CALL                             R12 0 1
       61 JUMPIFNOT                        R12 ; [+9]
       62 GETTABLEKS                       R12 R9 K4 ["AssetType"]
       64 GETUPVAL                         R15 3
       65 GETTABLEKS                       R14 R15 K4 ["AssetType"]
       67 GETTABLEKS                       R13 R14 K8 ["Audio"]
       69 JUMPIFEQ                         R12 R13 ; [+3]
       71 SETTABLEKS                       R4 R11 K9 ["Parent"]
       73 GETTABLEKS                       R12 R9 K10 ["DisplayName"]
       75 SETTABLEKS                       R12 R11 K11 ["Name"]
       77 MOVE                             R12 R10
       78 LOADNIL                          R13
       79 LOADNIL                          R14
       80 FORGPREP                         R12
       81 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
       83 MOVE                             R18 R3
       84 MOVE                             R19 R16
       85 GETIMPORT                        R17 K14 [table.insert]
       87 CALL                             R17 2 0
       88 FORGLOOP                         R12 2 ; [-8]
       90 JUMP                             ; [+8]
       91 GETUPVAL                         R12 6
       92 CALL                             R12 0 1
       93 JUMPIFNOT                        R12 ; [+5]
       94 GETIMPORT                        R12 K16 [warn]
       96 LOADK                            R13 K17 ["Asset failed to load!"]
       97 CALL                             R12 1 0
       98 JUMP                             ; [0]
       99 FORGLOOP                         R5 2 ; [-71]
      101 LENGTH                           R5 R3
      102 JUMPIFEQKN                       R5 K18 [0] ; [+22]
      104 GETUPVAL                         R5 1
      105 MOVE                             R7 R3
      106 NAMECALL                         R5 R5 K19 ["Set"]
      108 CALL                             R5 2 0
      109 GETUPVAL                         R5 7
      110 LOADK                            R7 K20 ["Insert assets"]
      111 NAMECALL                         R5 R5 K21 ["SetWaypoint"]
      113 CALL                             R5 2 0
      114 GETIMPORT                        R7 K2 [game]
      116 GETTABLEKS                       R6 R7 K3 ["Workspace"]
      118 GETTABLEKS                       R5 R6 K22 ["CurrentCamera"]
      120 JUMPIFNOT                        R5 ; [+4]
      121 GETUPVAL                         R6 8
      122 MOVE                             R7 R5
      123 MOVE                             R8 R3
      124 CALL                             R6 2 0
      125 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R4 1
        6 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
        8 MOVE                             R5 R2
        9 GETIMPORT                        R3 K2 [table.insert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 LOADNIL                          R4
       14 SETTABLE                         R4 R3 R0
       15 GETUPVAL                         R3 2
       16 SUBK                             R3 R3 K3 [1]
       17 SETUPVAL                         R3 2
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["JSONDecode"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 JUMPIFNOT                        R1 ; [+11]
        9 FASTCALL1                        TYPE R2 ; [+3]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K4 [type]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+5]
       16 GETTABLEKS                       R3 R2 K6 ["IsComplete"]
       18 JUMPIFEQKB                       R3 TRUE ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R3 R2 K7 ["AssetId"]
       23 FASTCALL1                        TYPEOF R3 ; [+3]
       24 MOVE                             R5 R3
       25 GETIMPORT                        R4 K9 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFEQKS                       R4 K10 ["number"] ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R5 1
       32 GETTABLE                         R4 R5 R3
       33 JUMPIF                           R4 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R6 1
       36 GETTABLE                         R5 R6 R3
       37 JUMPIF                           R5 ; [+1]
       38 JUMP                             ; [+13]
       39 GETUPVAL                         R7 2
       40 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       42 MOVE                             R8 R5
       43 GETIMPORT                        R6 K12 [table.insert]
       45 CALL                             R6 2 0
       46 GETUPVAL                         R6 1
       47 LOADNIL                          R7
       48 SETTABLE                         R7 R6 R3
       49 GETUPVAL                         R6 3
       50 SUBK                             R6 R6 K13 [1]
       51 SETUPVAL                         R6 3
       52 GETUPVAL                         R5 3
       53 JUMPIFNOTEQKN                    R5 K14 [0] ; [+4]
       55 GETUPVAL                         R5 4
       56 CALL                             R5 0 0
       57 RETURN                           R0 0
       58 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ShareAccessToAssetsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 MOVE                             R3 R2
        1 GETUPVAL                         R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["DependencyGrantProgressReceived"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          VAL R0
       12 NAMECALL                         R3 R3 K1 ["Connect"]
       14 CALL                             R3 2 1
       15 SETUPVAL                         R3 1
       16 GETIMPORT                        R3 K3 [pcall]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U7
       21 CALL                             R3 1 2
       22 JUMPIF                           R3 ; [+11]
       23 GETUPVAL                         R5 1
       24 JUMPIFNOT                        R5 ; [+6]
       25 GETUPVAL                         R5 1
       26 NAMECALL                         R5 R5 K4 ["Disconnect"]
       28 CALL                             R5 1 0
       29 LOADNIL                          R5
       30 SETUPVAL                         R5 1
       31 MOVE                             R5 R0
       32 CALL                             R5 0 0
       33 RETURN                           R0 0
       34 LENGTH                           R5 R4
       35 JUMPIFEQKN                       R5 K5 [0] ; [+30]
       37 GETIMPORT                        R5 K7 [warn]
       39 LOADK                            R7 K8 ["Failed to grant universe access to assetIds: %*"]
       40 GETIMPORT                        R9 K11 [table.concat]
       42 MOVE                             R10 R4
       43 LOADK                            R11 K12 [", "]
       44 CALL                             R9 2 1
       45 NAMECALL                         R7 R7 K13 ["format"]
       47 CALL                             R7 2 1
       48 MOVE                             R6 R7
       49 CALL                             R5 1 0
       50 MOVE                             R5 R4
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 GETUPVAL                         R11 4
       55 GETTABLE                         R10 R11 R9
       56 JUMPIF                           R10 ; [+1]
       57 JUMP                             ; [+6]
       58 GETUPVAL                         R11 4
       59 LOADNIL                          R12
       60 SETTABLE                         R12 R11 R9
       61 GETUPVAL                         R11 6
       62 SUBK                             R11 R11 K14 [1]
       63 SETUPVAL                         R11 6
       64 FORGLOOP                         R5 2 ; [-11]
       66 GETUPVAL                         R5 4
       67 LOADNIL                          R6
       68 LOADNIL                          R7
       69 FORGPREP                         R5
       70 JUMPIFNOT                        R9 ; [+26]
       71 GETTABLEKS                       R10 R9 K15 ["AssetType"]
       73 GETUPVAL                         R13 8
       74 GETTABLEKS                       R12 R13 K15 ["AssetType"]
       76 GETTABLEKS                       R11 R12 K16 ["Model"]
       78 JUMPIFEQ                         R10 R11 ; [+18]
       80 GETUPVAL                         R11 4
       81 GETTABLE                         R10 R11 R8
       82 JUMPIF                           R10 ; [+1]
       83 JUMP                             ; [+13]
       84 GETUPVAL                         R12 5
       85 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       87 MOVE                             R13 R10
       88 GETIMPORT                        R11 K18 [table.insert]
       90 CALL                             R11 2 0
       91 GETUPVAL                         R11 4
       92 LOADNIL                          R12
       93 SETTABLE                         R12 R11 R8
       94 GETUPVAL                         R11 6
       95 SUBK                             R11 R11 K14 [1]
       96 SETUPVAL                         R11 6
       97 FORGLOOP                         R5 2 ; [-28]
       99 GETUPVAL                         R5 6
      100 JUMPIFNOTEQKN                    R5 K5 [0] ; [+11]
      102 GETUPVAL                         R5 1
      103 JUMPIFNOT                        R5 ; [+6]
      104 GETUPVAL                         R5 1
      105 NAMECALL                         R5 R5 K4 ["Disconnect"]
      107 CALL                             R5 1 0
      108 LOADNIL                          R5
      109 SETUPVAL                         R5 1
      110 MOVE                             R5 R0
      111 CALL                             R5 0 0
      112 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Error"]
        3 JUMPIFNOT                        R1 ; [+45]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["Error"]
        7 GETTABLEKS                       R1 R2 K1 ["isKind"]
        9 JUMPIFNOT                        R1 ; [+39]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["Error"]
       13 GETTABLEKS                       R1 R2 K1 ["isKind"]
       15 MOVE                             R2 R0
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["Error"]
       19 GETTABLEKS                       R4 R5 K2 ["Kind"]
       21 GETTABLEKS                       R3 R4 K3 ["TimedOut"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+24]
       25 GETUPVAL                         R1 1
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 FORGPREP                         R1
       29 JUMPIFNOT                        R5 ; [+16]
       30 GETIMPORT                        R6 K5 [warn]
       32 LOADK                            R8 K6 ["Dependency grants timed out after %* seconds; continuing with insertion."]
       33 GETUPVAL                         R10 2
       34 NAMECALL                         R8 R8 K7 ["format"]
       36 CALL                             R8 2 1
       37 MOVE                             R7 R8
       38 CALL                             R6 1 0
       39 GETUPVAL                         R7 3
       40 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       42 MOVE                             R8 R5
       43 GETIMPORT                        R6 K10 [table.insert]
       45 CALL                             R6 2 0
       46 FORGLOOP                         R1 2 ; [-18]
       48 RETURN                           R0 0
       49 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 LENGTH                           R0 R1
       10 LOADN                            R1 0
       11 JUMPIFNOTLT                      R1 R0 ; [+5]
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R2 3
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["FFlag::AmrUseAssetAccessController is not enabled"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 LOADK                            R6 K4 ["GameId"]
        9 NAMECALL                         R4 R0 K5 ["GetItem"]
       11 CALL                             R4 2 1
       12 ORK                              R3 R4 K3 [0]
       13 LOADK                            R6 K6 ["AssetAccessController"]
       14 NAMECALL                         R4 R0 K7 ["GetPluginComponent"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+2]
       18 JUMPIFNOTEQKN                    R3 K3 [0] ; [+10]
       20 GETUPVAL                         R5 1
       21 GETUPVAL                         R6 2
       22 MOVE                             R8 R1
       23 NAMECALL                         R6 R6 K8 ["JSONDecode"]
       25 CALL                             R6 2 1
       26 MOVE                             R7 R2
       27 CALL                             R5 2 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R5 3
       30 MOVE                             R6 R1
       31 CALL                             R5 1 2
       32 LENGTH                           R7 R5
       33 JUMPIFNOTEQKN                    R7 K3 [0] ; [+2]
       35 RETURN                           R0 0
       36 LENGTH                           R7 R5
       37 NEWTABLE                         R8 0 0
       39 GETUPVAL                         R9 4
       40 CALL                             R9 0 1
       41 NEWCLOSURE                       R10 P0
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R8
       44 CAPTURE                          REF R7
       45 LOADNIL                          R11
       46 NEWCLOSURE                       R12 P1
       47 CAPTURE                          REF R11
       48 GETUPVAL                         R14 5
       49 GETTABLEKS                       R13 R14 K9 ["new"]
       51 NEWCLOSURE                       R14 P2
       52 CAPTURE                          VAL R12
       53 CAPTURE                          REF R11
       54 CAPTURE                          VAL R4
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          REF R7
       59 CAPTURE                          VAL R5
       60 CAPTURE                          UPVAL U6
       61 CALL                             R13 1 1
       62 MOVE                             R16 R9
       63 NAMECALL                         R14 R13 K10 ["timeout"]
       65 CALL                             R14 2 1
       66 NEWCLOSURE                       R16 P3
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 NAMECALL                         R14 R14 K11 ["catch"]
       73 CALL                             R14 2 1
       74 NEWCLOSURE                       R16 P4
       75 CAPTURE                          REF R11
       76 CAPTURE                          VAL R8
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          VAL R2
       79 NAMECALL                         R14 R14 K12 ["finally"]
       81 CALL                             R14 2 0
       82 CLOSEUPVALS                      R7
       83 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K6 ["Src"]
       18 GETTABLEKS                       R5 R6 K8 ["Asset"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["getAssetInstances"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Src"]
       29 GETTABLEKS                       R6 R7 K8 ["Asset"]
       31 GETTABLEKS                       R5 R6 K9 ["Util"]
       33 GETTABLEKS                       R4 R5 K11 ["cameraZoomToExtents"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R8 R0 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K8 ["Asset"]
       42 GETTABLEKS                       R6 R7 K9 ["Util"]
       44 GETTABLEKS                       R5 R6 K12 ["getInsertPosition"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R7 R0 K13 ["Packages"]
       51 GETTABLEKS                       R6 R7 K14 ["Promise"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K16 [game]
       56 LOADK                            R8 K17 ["ChangeHistoryService"]
       57 NAMECALL                         R6 R6 K18 ["GetService"]
       59 CALL                             R6 2 1
       60 GETIMPORT                        R7 K16 [game]
       62 LOADK                            R9 K19 ["HttpService"]
       63 NAMECALL                         R7 R7 K18 ["GetService"]
       65 CALL                             R7 2 1
       66 GETIMPORT                        R8 K16 [game]
       68 LOADK                            R10 K20 ["Selection"]
       69 NAMECALL                         R8 R8 K18 ["GetService"]
       71 CALL                             R8 2 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R12 R0 K6 ["Src"]
       76 GETTABLEKS                       R11 R12 K21 ["Flags"]
       78 GETTABLEKS                       R10 R11 K22 ["getFFlagDebugAmrOutput"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K5 [require]
       83 GETTABLEKS                       R13 R0 K6 ["Src"]
       85 GETTABLEKS                       R12 R13 K21 ["Flags"]
       87 GETTABLEKS                       R11 R12 K23 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K5 [require]
       92 GETTABLEKS                       R14 R0 K6 ["Src"]
       94 GETTABLEKS                       R13 R14 K21 ["Flags"]
       96 GETTABLEKS                       R12 R13 K24 ["getFFlagAmrUseAssetAccessController"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K5 [require]
      101 GETTABLEKS                       R15 R0 K6 ["Src"]
      103 GETTABLEKS                       R14 R15 K21 ["Flags"]
      105 GETTABLEKS                       R13 R14 K25 ["getFIntAmrAssetDependencyGrantEventTimeout"]
      107 CALL                             R12 1 1
      108 DUPCLOSURE                       R13 K26 [PROTO_0]
      109 DUPCLOSURE                       R14 K27 [PROTO_1]
      110 CAPTURE                          VAL R7
      111 DUPCLOSURE                       R15 K28 [PROTO_2]
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R3
      121 DUPCLOSURE                       R16 K29 [PROTO_10]
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R1
      129 RETURN                           R16 1
