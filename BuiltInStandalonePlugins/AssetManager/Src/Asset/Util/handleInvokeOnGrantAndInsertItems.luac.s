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
      133 GETTABLEKS                       R5 R5 K27 ["eventEnd"]
      135 GETUPVAL                         R6 10
      136 GETTABLEKS                       R6 R6 K28 ["BenchmarkingEvent"]
      138 GETTABLEKS                       R6 R6 K29 ["Insert"]
      140 CALL                             R5 1 0
      141 RETURN                           R0 0

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
       35 JUMPIFEQKN                       R5 K5 [0] ; [+29]
       37 GETIMPORT                        R5 K7 [warn]
       39 LOADK                            R6 K8 ["Failed to grant universe access to assetIds: %*"]
       40 GETIMPORT                        R8 K11 [table.concat]
       42 MOVE                             R9 R4
       43 LOADK                            R10 K12 [", "]
       44 CALL                             R8 2 1
       45 NAMECALL                         R6 R6 K13 ["format"]
       47 CALL                             R6 2 1
       48 CALL                             R5 1 0
       49 MOVE                             R5 R4
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 FORGPREP                         R5
       53 GETUPVAL                         R11 4
       54 GETTABLE                         R10 R11 R9
       55 JUMPIF                           R10 ; [+1]
       56 JUMP                             ; [+6]
       57 GETUPVAL                         R11 4
       58 LOADNIL                          R12
       59 SETTABLE                         R12 R11 R9
       60 GETUPVAL                         R11 6
       61 SUBK                             R11 R11 K14 [1]
       62 SETUPVAL                         R11 6
       63 FORGLOOP                         R5 2 ; [-11]
       65 GETUPVAL                         R5 4
       66 LOADNIL                          R6
       67 LOADNIL                          R7
       68 FORGPREP                         R5
       69 JUMPIFNOT                        R9 ; [+26]
       70 GETTABLEKS                       R10 R9 K15 ["AssetType"]
       72 GETUPVAL                         R11 8
       73 GETTABLEKS                       R11 R11 K15 ["AssetType"]
       75 GETTABLEKS                       R11 R11 K16 ["Model"]
       77 JUMPIFEQ                         R10 R11 ; [+18]
       79 GETUPVAL                         R11 4
       80 GETTABLE                         R10 R11 R8
       81 JUMPIF                           R10 ; [+1]
       82 JUMP                             ; [+13]
       83 GETUPVAL                         R12 5
       84 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       86 MOVE                             R13 R10
       87 GETIMPORT                        R11 K18 [table.insert]
       89 CALL                             R11 2 0
       90 GETUPVAL                         R11 4
       91 LOADNIL                          R12
       92 SETTABLE                         R12 R11 R8
       93 GETUPVAL                         R11 6
       94 SUBK                             R11 R11 K14 [1]
       95 SETUPVAL                         R11 6
       96 FORGLOOP                         R5 2 ; [-28]
       98 GETUPVAL                         R5 6
       99 JUMPIFNOTEQKN                    R5 K5 [0] ; [+11]
      101 GETUPVAL                         R5 1
      102 JUMPIFNOT                        R5 ; [+6]
      103 GETUPVAL                         R5 1
      104 NAMECALL                         R5 R5 K4 ["Disconnect"]
      106 CALL                             R5 1 0
      107 LOADNIL                          R5
      108 SETUPVAL                         R5 1
      109 MOVE                             R5 R0
      110 CALL                             R5 0 0
      111 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Error"]
        3 JUMPIFNOT                        R1 ; [+44]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Error"]
        7 GETTABLEKS                       R1 R1 K1 ["isKind"]
        9 JUMPIFNOT                        R1 ; [+38]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["Error"]
       13 GETTABLEKS                       R1 R1 K1 ["isKind"]
       15 MOVE                             R2 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["Error"]
       19 GETTABLEKS                       R3 R3 K2 ["Kind"]
       21 GETTABLEKS                       R3 R3 K3 ["TimedOut"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+23]
       25 GETUPVAL                         R1 1
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 FORGPREP                         R1
       29 JUMPIFNOT                        R5 ; [+15]
       30 GETIMPORT                        R6 K5 [warn]
       32 LOADK                            R7 K6 ["Dependency grants timed out after %* seconds; continuing with insertion."]
       33 GETUPVAL                         R9 2
       34 NAMECALL                         R7 R7 K7 ["format"]
       36 CALL                             R7 2 1
       37 CALL                             R6 1 0
       38 GETUPVAL                         R7 3
       39 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       41 MOVE                             R8 R5
       42 GETIMPORT                        R6 K10 [table.insert]
       44 CALL                             R6 2 0
       45 FORGLOOP                         R1 2 ; [-17]
       47 RETURN                           R0 0
       48 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 LOADK                            R1 K1 ["insert: grant settled, inserting %* asset(s)"]
       10 GETUPVAL                         R4 2
       11 LENGTH                           R3 R4
       12 NAMECALL                         R1 R1 K2 ["format"]
       14 CALL                             R1 2 1
       15 CALL                             R0 1 0
       16 GETUPVAL                         R1 2
       17 LENGTH                           R0 R1
       18 LOADN                            R1 0
       19 JUMPIFNOTLT                      R1 R0 ; [+5]
       21 GETUPVAL                         R0 3
       22 GETUPVAL                         R1 2
       23 GETUPVAL                         R2 4
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["FFlag::AmrUseAssetAccessController is not enabled"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["eventStart"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["BenchmarkingEvent"]
       14 GETTABLEKS                       R4 R4 K5 ["Insert"]
       16 CALL                             R3 1 0
       17 LOADK                            R6 K7 ["GameId"]
       18 NAMECALL                         R4 R0 K8 ["GetItem"]
       20 CALL                             R4 2 1
       21 ORK                              R3 R4 K6 [0]
       22 LOADK                            R6 K9 ["AssetAccessController"]
       23 NAMECALL                         R4 R0 K10 ["GetPluginComponent"]
       25 CALL                             R4 2 1
       26 JUMPIFNOT                        R4 ; [+2]
       27 JUMPIFNOTEQKN                    R3 K6 [0] ; [+18]
       29 GETUPVAL                         R5 3
       30 GETUPVAL                         R6 4
       31 MOVE                             R8 R1
       32 NAMECALL                         R6 R6 K11 ["JSONDecode"]
       34 CALL                             R6 2 1
       35 JUMPIFEQKNIL                     R2 ; [+7]
       37 GETUPVAL                         R7 4
       38 MOVE                             R9 R2
       39 NAMECALL                         R7 R7 K11 ["JSONDecode"]
       41 CALL                             R7 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 CALL                             R5 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R5 5
       47 MOVE                             R6 R1
       48 CALL                             R5 1 2
       49 LENGTH                           R7 R5
       50 JUMPIFNOTEQKN                    R7 K6 [0] ; [+2]
       52 RETURN                           R0 0
       53 JUMPIFEQKNIL                     R2 ; [+7]
       55 GETUPVAL                         R7 4
       56 MOVE                             R9 R2
       57 NAMECALL                         R7 R7 K11 ["JSONDecode"]
       59 CALL                             R7 2 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R7
       62 LENGTH                           R8 R5
       63 NEWTABLE                         R9 0 0
       65 GETUPVAL                         R10 6
       66 CALL                             R10 0 1
       67 NEWCLOSURE                       R11 P0
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          REF R8
       71 MOVE                             R12 R5
       72 GETUPVAL                         R13 7
       73 CALL                             R13 0 1
       74 JUMPIFNOT                        R13 ; [+75]
       75 NEWTABLE                         R13 0 0
       77 MOVE                             R14 R5
       78 LOADNIL                          R15
       79 LOADNIL                          R16
       80 FORGPREP                         R14
       81 GETTABLE                         R19 R6 R18
       82 JUMPIFNOT                        R19 ; [+6]
       83 GETTABLEKS                       R20 R19 K12 ["Creator"]
       85 JUMPIFNOT                        R20 ; [+3]
       86 GETTABLEKS                       R20 R19 K12 ["Creator"]
       88 SETTABLE                         R20 R13 R17
       89 FORGLOOP                         R14 2 ; [-9]
       91 GETUPVAL                         R14 8
       92 MOVE                             R15 R4
       93 MOVE                             R16 R5
       94 GETIMPORT                        R17 K14 [game]
       96 GETTABLEKS                       R17 R17 K15 ["CreatorType"]
       98 GETIMPORT                        R18 K14 [game]
      100 GETTABLEKS                       R18 R18 K16 ["CreatorId"]
      102 MOVE                             R19 R13
      103 CALL                             R14 5 1
      104 GETIMPORT                        R15 K18 [next]
      106 MOVE                             R16 R14
      107 CALL                             R15 1 1
      108 JUMPIFEQKNIL                     R15 ; [+25]
      110 NEWTABLE                         R12 0 0
      112 MOVE                             R15 R5
      113 LOADNIL                          R16
      114 LOADNIL                          R17
      115 FORGPREP                         R15
      116 GETTABLE                         R20 R14 R19
      117 JUMPIFNOT                        R20 ; [+7]
      118 GETTABLE                         R20 R6 R19
      119 JUMPIF                           R20 ; [+1]
      120 JUMP                             ; [+11]
      121 LOADNIL                          R21
      122 SETTABLE                         R21 R6 R19
      123 SUBK                             R8 R8 K19 [1]
      124 JUMP                             ; [+7]
      125 FASTCALL2                        TABLE_INSERT R12 R19 ; [+5]
      127 MOVE                             R21 R12
      128 MOVE                             R22 R19
      129 GETIMPORT                        R20 K22 [table.insert]
      131 CALL                             R20 2 0
      132 FORGLOOP                         R15 2 ; [-17]
      134 GETUPVAL                         R15 9
      135 LOADK                            R16 K23 ["insert: granting %* of %* asset(s) after the publish gate"]
      136 LENGTH                           R18 R12
      137 LENGTH                           R19 R5
      138 NAMECALL                         R16 R16 K24 ["format"]
      140 CALL                             R16 3 1
      141 CALL                             R15 1 0
      142 LENGTH                           R15 R12
      143 JUMPIFNOTEQKN                    R15 K6 [0] ; [+6]
      145 GETUPVAL                         R15 9
      146 LOADK                            R16 K25 ["insert: nothing left to grant or insert after the publish gate"]
      147 CALL                             R15 1 0
      148 CLOSEUPVALS                      R8
      149 RETURN                           R0 0
      150 LOADNIL                          R13
      151 NEWCLOSURE                       R14 P1
      152 CAPTURE                          REF R13
      153 GETUPVAL                         R15 10
      154 GETTABLEKS                       R15 R15 K26 ["new"]
      156 NEWCLOSURE                       R16 P2
      157 CAPTURE                          VAL R14
      158 CAPTURE                          REF R13
      159 CAPTURE                          VAL R4
      160 CAPTURE                          UPVAL U4
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R9
      163 CAPTURE                          REF R8
      164 CAPTURE                          REF R12
      165 CAPTURE                          UPVAL U11
      166 CALL                             R15 1 1
      167 MOVE                             R18 R10
      168 NAMECALL                         R16 R15 K27 ["timeout"]
      170 CALL                             R16 2 1
      171 NEWCLOSURE                       R18 P3
      172 CAPTURE                          UPVAL U10
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R9
      176 NAMECALL                         R16 R16 K28 ["catch"]
      178 CALL                             R16 2 1
      179 NEWCLOSURE                       R18 P4
      180 CAPTURE                          REF R13
      181 CAPTURE                          UPVAL U9
      182 CAPTURE                          VAL R9
      183 CAPTURE                          UPVAL U3
      184 CAPTURE                          VAL R7
      185 NAMECALL                         R16 R16 K29 ["finally"]
      187 CALL                             R16 2 0
      188 CLOSEUPVALS                      R8
      189 RETURN                           R0 0

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
       58 GETTABLEKS                       R7 R0 K6 ["Src"]
       60 GETTABLEKS                       R7 R7 K9 ["Asset"]
       62 GETTABLEKS                       R7 R7 K10 ["Util"]
       64 GETTABLEKS                       R7 R7 K14 ["publishDraftAssetsForInsert"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K6 ["Src"]
       71 GETTABLEKS                       R8 R8 K10 ["Util"]
       73 GETTABLEKS                       R8 R8 K15 ["logIfDebug"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K16 ["Packages"]
       80 GETTABLEKS                       R9 R9 K17 ["Promise"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R10 R0 K6 ["Src"]
       87 GETTABLEKS                       R10 R10 K8 ["Analytics"]
       89 GETTABLEKS                       R10 R10 K18 ["Benchmarking"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K20 [game]
       94 LOADK                            R12 K21 ["ChangeHistoryService"]
       95 NAMECALL                         R10 R10 K22 ["GetService"]
       97 CALL                             R10 2 1
       98 GETIMPORT                        R11 K20 [game]
      100 LOADK                            R13 K23 ["HttpService"]
      101 NAMECALL                         R11 R11 K22 ["GetService"]
      103 CALL                             R11 2 1
      104 GETIMPORT                        R12 K20 [game]
      106 LOADK                            R14 K24 ["Selection"]
      107 NAMECALL                         R12 R12 K22 ["GetService"]
      109 CALL                             R12 2 1
      110 GETIMPORT                        R13 K5 [require]
      112 GETTABLEKS                       R14 R0 K6 ["Src"]
      114 GETTABLEKS                       R14 R14 K25 ["Flags"]
      116 GETTABLEKS                       R14 R14 K26 ["getFFlagDebugAmrOutput"]
      118 CALL                             R13 1 1
      119 GETIMPORT                        R14 K5 [require]
      121 GETTABLEKS                       R15 R0 K6 ["Src"]
      123 GETTABLEKS                       R15 R15 K25 ["Flags"]
      125 GETTABLEKS                       R15 R15 K27 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
      127 CALL                             R14 1 1
      128 GETIMPORT                        R15 K5 [require]
      130 GETTABLEKS                       R16 R0 K6 ["Src"]
      132 GETTABLEKS                       R16 R16 K25 ["Flags"]
      134 GETTABLEKS                       R16 R16 K28 ["getFFlagAmrUseAssetAccessController"]
      136 CALL                             R15 1 1
      137 GETIMPORT                        R16 K5 [require]
      139 GETTABLEKS                       R17 R0 K6 ["Src"]
      141 GETTABLEKS                       R17 R17 K25 ["Flags"]
      143 GETTABLEKS                       R17 R17 K29 ["getFIntAmrAssetDependencyGrantEventTimeout"]
      145 CALL                             R16 1 1
      146 GETIMPORT                        R17 K5 [require]
      148 GETTABLEKS                       R18 R0 K6 ["Src"]
      150 GETTABLEKS                       R18 R18 K25 ["Flags"]
      152 GETTABLEKS                       R18 R18 K30 ["getFFlagAmrPublishDraftAssetsOnInsert"]
      154 CALL                             R17 1 1
      155 DUPCLOSURE                       R18 K31 [PROTO_0]
      156 DUPCLOSURE                       R19 K32 [PROTO_1]
      157 CAPTURE                          VAL R11
      158 DUPCLOSURE                       R20 K33 [PROTO_2]
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R2
      170 DUPCLOSURE                       R21 K34 [PROTO_10]
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R1
      183 RETURN                           R21 1
