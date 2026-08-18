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
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETTABLEKS                       R3 R1 K0 ["UseAssetPosition"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 LOADNIL                          R2
        5 JUMP                             ; [+2]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R6 1
       11 NAMECALL                         R6 R6 K1 ["Get"]
       13 CALL                             R6 1 1
       14 LENGTH                           R5 R6
       15 LOADN                            R6 0
       16 JUMPIFNOTLT                      R6 R5 ; [+7]
       18 GETUPVAL                         R5 1
       19 NAMECALL                         R5 R5 K1 ["Get"]
       21 CALL                             R5 1 1
       22 GETTABLEN                        R4 R5 1
       23 JUMP                             ; [+4]
       24 GETIMPORT                        R4 K3 [game]
       26 GETTABLEKS                       R4 R4 K4 ["Workspace"]
       28 MOVE                             R5 R0
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R12 R9 K5 ["AssetType"]
       35 GETTABLE                         R10 R11 R12
       36 MOVE                             R11 R9
       37 DUPTABLE                         R12 K8 [{"Flags", "InsertPosition"}]
       38 SETTABLEKS                       R1 R12 K6 ["Flags"]
       40 SETTABLEKS                       R2 R12 K7 ["InsertPosition"]
       42 CALL                             R10 2 1
       43 GETTABLEN                        R11 R10 1
       44 JUMPIFNOT                        R11 ; [+53]
       45 GETTABLEKS                       R12 R11 K9 ["SourceAssetId"]
       47 JUMPIFNOT                        R12 ; [+18]
       48 GETTABLEKS                       R12 R9 K10 ["AssetId"]
       50 SETTABLEKS                       R12 R11 K9 ["SourceAssetId"]
       52 GETTABLEKS                       R12 R9 K5 ["AssetType"]
       54 GETUPVAL                         R13 3
       55 GETTABLEKS                       R13 R13 K5 ["AssetType"]
       57 GETTABLEKS                       R13 R13 K11 ["Model"]
       59 JUMPIFNOTEQ                      R12 R13 ; [+6]
       61 GETUPVAL                         R12 4
       62 MOVE                             R13 R11
       63 GETTABLEKS                       R14 R9 K10 ["AssetId"]
       65 CALL                             R12 2 0
       66 GETUPVAL                         R12 5
       67 CALL                             R12 0 1
       68 JUMPIFNOT                        R12 ; [+9]
       69 GETTABLEKS                       R12 R9 K5 ["AssetType"]
       71 GETUPVAL                         R13 3
       72 GETTABLEKS                       R13 R13 K5 ["AssetType"]
       74 GETTABLEKS                       R13 R13 K12 ["Audio"]
       76 JUMPIFEQ                         R12 R13 ; [+3]
       78 SETTABLEKS                       R4 R11 K13 ["Parent"]
       80 GETTABLEKS                       R12 R9 K14 ["DisplayName"]
       82 SETTABLEKS                       R12 R11 K15 ["Name"]
       84 MOVE                             R12 R10
       85 LOADNIL                          R13
       86 LOADNIL                          R14
       87 FORGPREP                         R12
       88 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
       90 MOVE                             R18 R3
       91 MOVE                             R19 R16
       92 GETIMPORT                        R17 K18 [table.insert]
       94 CALL                             R17 2 0
       95 FORGLOOP                         R12 2 ; [-8]
       97 JUMP                             ; [+8]
       98 GETUPVAL                         R12 6
       99 CALL                             R12 0 1
      100 JUMPIFNOT                        R12 ; [+5]
      101 GETIMPORT                        R12 K20 [warn]
      103 LOADK                            R13 K21 ["Asset failed to load!"]
      104 CALL                             R12 1 0
      105 JUMP                             ; [0]
      106 FORGLOOP                         R5 2 ; [-75]
      108 LENGTH                           R5 R3
      109 JUMPIFEQKN                       R5 K22 [0] ; [+22]
      111 GETUPVAL                         R5 1
      112 MOVE                             R7 R3
      113 NAMECALL                         R5 R5 K23 ["Set"]
      115 CALL                             R5 2 0
      116 GETUPVAL                         R5 7
      117 LOADK                            R7 K24 ["Insert assets"]
      118 NAMECALL                         R5 R5 K25 ["SetWaypoint"]
      120 CALL                             R5 2 0
      121 GETIMPORT                        R5 K3 [game]
      123 GETTABLEKS                       R5 R5 K4 ["Workspace"]
      125 GETTABLEKS                       R5 R5 K26 ["CurrentCamera"]
      127 JUMPIFNOT                        R5 ; [+4]
      128 GETUPVAL                         R6 8
      129 MOVE                             R7 R5
      130 MOVE                             R8 R3
      131 CALL                             R6 2 0
      132 GETUPVAL                         R5 9
      133 CALL                             R5 0 1
      134 JUMPIFNOT                        R5 ; [+9]
      135 GETUPVAL                         R5 10
      136 GETTABLEKS                       R5 R5 K27 ["eventEnd"]
      138 GETUPVAL                         R6 11
      139 GETTABLEKS                       R6 R6 K28 ["BenchmarkingEvent"]
      141 GETTABLEKS                       R6 R6 K29 ["Insert"]
      143 CALL                             R5 1 0
      144 RETURN                           R0 0

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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["JSONDecode"]
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
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["DependencyGrantProgressReceived"]
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
       73 GETUPVAL                         R11 8
       74 GETTABLEKS                       R11 R11 K15 ["AssetType"]
       76 GETTABLEKS                       R11 R11 K16 ["Model"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Error"]
        3 JUMPIFNOT                        R1 ; [+45]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Error"]
        7 GETTABLEKS                       R1 R1 K1 ["isKind"]
        9 JUMPIFNOT                        R1 ; [+39]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["Error"]
       13 GETTABLEKS                       R1 R1 K1 ["isKind"]
       15 MOVE                             R2 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["Error"]
       19 GETTABLEKS                       R3 R3 K2 ["Kind"]
       21 GETTABLEKS                       R3 R3 K3 ["TimedOut"]
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
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+9]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["eventStart"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K4 ["BenchmarkingEvent"]
       17 GETTABLEKS                       R4 R4 K5 ["Insert"]
       19 CALL                             R3 1 0
       20 LOADK                            R6 K7 ["GameId"]
       21 NAMECALL                         R4 R0 K8 ["GetItem"]
       23 CALL                             R4 2 1
       24 ORK                              R3 R4 K6 [0]
       25 LOADK                            R6 K9 ["AssetAccessController"]
       26 NAMECALL                         R4 R0 K10 ["GetPluginComponent"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+2]
       30 JUMPIFNOTEQKN                    R3 K6 [0] ; [+18]
       32 GETUPVAL                         R5 4
       33 GETUPVAL                         R6 5
       34 MOVE                             R8 R1
       35 NAMECALL                         R6 R6 K11 ["JSONDecode"]
       37 CALL                             R6 2 1
       38 JUMPIFEQKNIL                     R2 ; [+7]
       40 GETUPVAL                         R7 5
       41 MOVE                             R9 R2
       42 NAMECALL                         R7 R7 K11 ["JSONDecode"]
       44 CALL                             R7 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R7
       47 CALL                             R5 2 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R5 6
       50 MOVE                             R6 R1
       51 CALL                             R5 1 2
       52 LENGTH                           R7 R5
       53 JUMPIFNOTEQKN                    R7 K6 [0] ; [+2]
       55 RETURN                           R0 0
       56 JUMPIFEQKNIL                     R2 ; [+7]
       58 GETUPVAL                         R7 5
       59 MOVE                             R9 R2
       60 NAMECALL                         R7 R7 K11 ["JSONDecode"]
       62 CALL                             R7 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R7
       65 LENGTH                           R8 R5
       66 NEWTABLE                         R9 0 0
       68 GETUPVAL                         R10 7
       69 CALL                             R10 0 1
       70 NEWCLOSURE                       R11 P0
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R9
       73 CAPTURE                          REF R8
       74 LOADNIL                          R12
       75 NEWCLOSURE                       R13 P1
       76 CAPTURE                          REF R12
       77 GETUPVAL                         R14 8
       78 GETTABLEKS                       R14 R14 K12 ["new"]
       80 NEWCLOSURE                       R15 P2
       81 CAPTURE                          VAL R13
       82 CAPTURE                          REF R12
       83 CAPTURE                          VAL R4
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R9
       87 CAPTURE                          REF R8
       88 CAPTURE                          VAL R5
       89 CAPTURE                          UPVAL U9
       90 CALL                             R14 1 1
       91 MOVE                             R17 R10
       92 NAMECALL                         R15 R14 K13 ["timeout"]
       94 CALL                             R15 2 1
       95 NEWCLOSURE                       R17 P3
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R9
      100 NAMECALL                         R15 R15 K14 ["catch"]
      102 CALL                             R15 2 1
      103 NEWCLOSURE                       R17 P4
      104 CAPTURE                          REF R12
      105 CAPTURE                          VAL R9
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R7
      108 NAMECALL                         R15 R15 K15 ["finally"]
      110 CALL                             R15 2 0
      111 CLOSEUPVALS                      R8
      112 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       20 GETTABLEKS                       R3 R3 K7 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Asset"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["getAssetInstances"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Asset"]
       40 GETTABLEKS                       R5 R5 K10 ["Util"]
       42 GETTABLEKS                       R5 R5 K12 ["cameraZoomToExtents"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K9 ["Asset"]
       51 GETTABLEKS                       R6 R6 K10 ["Util"]
       53 GETTABLEKS                       R6 R6 K13 ["getInsertPosition"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K14 ["Packages"]
       60 GETTABLEKS                       R7 R7 K15 ["Promise"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K8 ["Analytics"]
       69 GETTABLEKS                       R8 R8 K16 ["Benchmarking"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K18 [game]
       74 LOADK                            R10 K19 ["ChangeHistoryService"]
       75 NAMECALL                         R8 R8 K20 ["GetService"]
       77 CALL                             R8 2 1
       78 GETIMPORT                        R9 K18 [game]
       80 LOADK                            R11 K21 ["HttpService"]
       81 NAMECALL                         R9 R9 K20 ["GetService"]
       83 CALL                             R9 2 1
       84 GETIMPORT                        R10 K18 [game]
       86 LOADK                            R12 K22 ["Selection"]
       87 NAMECALL                         R10 R10 K20 ["GetService"]
       89 CALL                             R10 2 1
       90 GETIMPORT                        R11 K5 [require]
       92 GETTABLEKS                       R12 R0 K6 ["Src"]
       94 GETTABLEKS                       R12 R12 K23 ["Flags"]
       96 GETTABLEKS                       R12 R12 K24 ["getFFlagDebugAmrOutput"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K5 [require]
      101 GETTABLEKS                       R13 R0 K6 ["Src"]
      103 GETTABLEKS                       R13 R13 K23 ["Flags"]
      105 GETTABLEKS                       R13 R13 K25 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K5 [require]
      110 GETTABLEKS                       R14 R0 K6 ["Src"]
      112 GETTABLEKS                       R14 R14 K23 ["Flags"]
      114 GETTABLEKS                       R14 R14 K26 ["getFFlagAmrUseAssetAccessController"]
      116 CALL                             R13 1 1
      117 GETIMPORT                        R14 K5 [require]
      119 GETTABLEKS                       R15 R0 K6 ["Src"]
      121 GETTABLEKS                       R15 R15 K23 ["Flags"]
      123 GETTABLEKS                       R15 R15 K27 ["getFIntAmrAssetDependencyGrantEventTimeout"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K5 [require]
      128 GETTABLEKS                       R16 R0 K6 ["Src"]
      130 GETTABLEKS                       R16 R16 K23 ["Flags"]
      132 GETTABLEKS                       R16 R16 K28 ["getFFlagAmrEnableBenchmarking"]
      134 CALL                             R15 1 1
      135 DUPCLOSURE                       R16 K29 [PROTO_0]
      136 DUPCLOSURE                       R17 K30 [PROTO_1]
      137 CAPTURE                          VAL R9
      138 DUPCLOSURE                       R18 K31 [PROTO_2]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R2
      151 DUPCLOSURE                       R19 K32 [PROTO_10]
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R1
      162 RETURN                           R19 1
