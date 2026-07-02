PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["Name"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["childCount"]
        4 ORK                              R1 R2 K0 [0]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["instanceOrder"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["sortedIds"]
       10 MOVE                             R3 R1
       11 GETTABLEKS                       R4 R0 K3 ["column"]
       13 GETTABLEKS                       R5 R0 K4 ["direction"]
       15 CALL                             R2 3 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 LOADK                            R2 K1 ["asc"]
        5 GETTABLEKS                       R3 R1 K2 ["column"]
        7 JUMPIFNOTEQ                      R3 R0 ; [+7]
        9 GETTABLEKS                       R3 R1 K3 ["direction"]
       11 JUMPIFNOTEQKS                    R3 K1 ["asc"] ; [+3]
       13 LOADK                            R2 K4 ["desc"]
       14 JUMP                             ; [+11]
       15 GETTABLEKS                       R3 R1 K2 ["column"]
       17 JUMPIFEQ                         R3 R0 ; [+8]
       19 JUMPIFEQKS                       R0 K5 ["count"] ; [+3]
       21 JUMPIFNOTEQKS                    R0 K6 ["size"] ; [+3]
       23 LOADK                            R2 K4 ["desc"]
       24 JUMP                             ; [+1]
       25 LOADK                            R2 K1 ["asc"]
       26 GETUPVAL                         R3 1
       27 DUPTABLE                         R4 K7 [{"column", "direction"}]
       28 SETTABLEKS                       R0 R4 K2 ["column"]
       30 SETTABLEKS                       R2 R4 K3 ["direction"]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K0 ["get"]
       36 CALL                             R3 0 1
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K8 ["instanceOrder"]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K9 ["sortedIds"]
       43 MOVE                             R6 R4
       44 GETTABLEKS                       R7 R3 K2 ["column"]
       46 GETTABLEKS                       R8 R3 K3 ["direction"]
       48 CALL                             R5 3 1
       49 GETUPVAL                         R6 3
       50 MOVE                             R7 R5
       51 CALL                             R6 1 0
       52 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLE                         R2 R1 R0
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["getNodeById"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R4
       15 RETURN                           R4 1
       16 DUPTABLE                         R4 K8 [{["node"], ["depth"] = 0, ["hasChildren"] = False, ["id"]}]
       17 SETTABLEKS                       R3 R4 K2 ["node"]
       19 SETTABLEKS                       R2 R4 K7 ["id"]
       21 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K2 [ipairs]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 3
        8 FORGPREP_INEXT                   R2
        9 JUMPIFNOTEQ                      R6 R0 ; [+2]
       11 RETURN                           R5 1
       12 FORGLOOP                         R2 2 [inext] ; [-4]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parentById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["n"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R1 K0 ["n"]
        5 JUMPIF                           R2 ; [+9]
        6 GETTABLEKS                       R3 R0 K1 ["id"]
        8 GETTABLEKS                       R4 R1 K1 ["id"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 GETUPVAL                         R4 0
       18 JUMPIFNOTEQKS                    R4 K2 ["name"] ; [+12]
       20 GETTABLEKS                       R4 R0 K0 ["n"]
       22 GETTABLEKS                       R4 R4 K4 ["Name"]
       24 ORK                              R2 R4 K3 [""]
       25 GETTABLEKS                       R4 R1 K0 ["n"]
       27 GETTABLEKS                       R4 R4 K4 ["Name"]
       29 ORK                              R3 R4 K3 [""]
       30 JUMP                             ; [+37]
       31 GETUPVAL                         R4 0
       32 JUMPIFNOTEQKS                    R4 K5 ["count"] ; [+12]
       34 GETTABLEKS                       R4 R0 K0 ["n"]
       36 GETTABLEKS                       R4 R4 K7 ["childCount"]
       38 ORK                              R2 R4 K6 [0]
       39 GETTABLEKS                       R4 R1 K0 ["n"]
       41 GETTABLEKS                       R4 R4 K7 ["childCount"]
       43 ORK                              R3 R4 K6 [0]
       44 JUMP                             ; [+23]
       45 GETUPVAL                         R4 0
       46 JUMPIFNOTEQKS                    R4 K8 ["size"] ; [+12]
       48 GETTABLEKS                       R4 R0 K0 ["n"]
       50 GETTABLEKS                       R4 R4 K9 ["Size"]
       52 ORK                              R2 R4 K6 [0]
       53 GETTABLEKS                       R4 R1 K0 ["n"]
       55 GETTABLEKS                       R4 R4 K9 ["Size"]
       57 ORK                              R3 R4 K6 [0]
       58 JUMP                             ; [+9]
       59 GETTABLEKS                       R5 R0 K1 ["id"]
       61 GETTABLEKS                       R6 R1 K1 ["id"]
       63 JUMPIFLT                         R5 R6 ; [+2]
       65 LOADB                            R4 0 +1
       66 LOADB                            R4 1
       67 RETURN                           R4 1
       68 JUMPIFEQ                         R2 R3 ; [+13]
       70 GETUPVAL                         R4 1
       71 JUMPIFNOT                        R4 ; [+5]
       72 JUMPIFLT                         R2 R3 ; [+2]
       74 LOADB                            R4 0 +1
       75 LOADB                            R4 1
       76 RETURN                           R4 1
       77 JUMPIFLT                         R3 R2 ; [+2]
       79 LOADB                            R4 0 +1
       80 LOADB                            R4 1
       81 RETURN                           R4 1
       82 GETTABLEKS                       R5 R0 K1 ["id"]
       84 GETTABLEKS                       R6 R1 K1 ["id"]
       86 JUMPIFLT                         R5 R6 ; [+2]
       88 LOADB                            R4 0 +1
       89 LOADB                            R4 1
       90 RETURN                           R4 1

PROTO_17:
        0 JUMPIFEQKS                       R2 K0 ["asc"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 GETIMPORT                        R4 K3 [table.create]
        6 LENGTH                           R5 R0
        7 CALL                             R4 1 1
        8 MOVE                             R5 R0
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R11 R11 K4 ["nodeById"]
       15 GETTABLE                         R10 R11 R9
       16 DUPTABLE                         R11 K7 [{"id", "n"}]
       17 SETTABLEKS                       R9 R11 K5 ["id"]
       19 SETTABLEKS                       R10 R11 K6 ["n"]
       21 SETTABLE                         R11 R4 R8
       22 FORGLOOP                         R5 2 ; [-11]
       24 GETIMPORT                        R5 K9 [table.sort]
       26 MOVE                             R6 R4
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CALL                             R5 2 0
       31 GETIMPORT                        R5 K3 [table.create]
       33 LENGTH                           R6 R4
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K11 [ipairs]
       37 MOVE                             R7 R4
       38 CALL                             R6 1 3
       39 FORGPREP_INEXT                   R6
       40 GETTABLEKS                       R11 R10 K5 ["id"]
       42 SETTABLE                         R11 R5 R9
       43 FORGLOOP                         R6 2 [inext] ; [-4]
       45 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchInstanceComposition"]
        2 NAMECALL                         R1 R1 K1 ["CallAssetPluginAsync"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+12]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K3 ["reset"]
       16 CALL                             R2 0 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K4 ["buildNodeMaps"]
       21 MOVE                             R3 R1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K5 ["isLeafNode"]
       25 CALL                             R2 2 3
       26 GETUPVAL                         R5 2
       27 SETTABLEKS                       R2 R5 K6 ["instanceOrder"]
       29 GETUPVAL                         R5 2
       30 SETTABLEKS                       R3 R5 K7 ["nodeById"]
       32 GETUPVAL                         R5 2
       33 SETTABLEKS                       R4 R5 K8 ["parentById"]
       35 LENGTH                           R5 R2
       36 GETUPVAL                         R6 4
       37 MOVE                             R7 R5
       38 CALL                             R6 1 0
       39 GETUPVAL                         R5 5
       40 MOVE                             R6 R1
       41 CALL                             R5 1 0
       42 GETUPVAL                         R5 6
       43 GETTABLEKS                       R5 R5 K9 ["get"]
       45 CALL                             R5 0 1
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K6 ["instanceOrder"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K10 ["sortedIds"]
       52 MOVE                             R8 R6
       53 GETTABLEKS                       R9 R5 K11 ["column"]
       55 GETTABLEKS                       R10 R5 K12 ["direction"]
       57 CALL                             R7 3 1
       58 GETUPVAL                         R8 7
       59 MOVE                             R9 R7
       60 CALL                             R8 1 0
       61 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R0 2
       11 LOADN                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K0 ["instanceOrder"]
       18 GETUPVAL                         R0 3
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K1 ["nodeById"]
       23 GETUPVAL                         R0 3
       24 NEWTABLE                         R1 0 0
       26 SETTABLEKS                       R1 R0 K2 ["parentById"]
       28 RETURN                           R0 0

PROTO_20:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["Children"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K2 [next]
        7 GETTABLEKS                       R3 R0 K0 ["Children"]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+11]
       15 GETTABLEKS                       R2 R0 K0 ["Children"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETUPVAL                         R7 0
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 FORGLOOP                         R2 2 ; [-4]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R2 R0 K3 ["Name"]
       28 JUMPIFNOT                        R2 ; [+12]
       29 GETTABLEKS                       R2 R0 K3 ["Name"]
       31 JUMPIFEQKS                       R2 K4 [""] ; [+9]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R4 R0 K3 ["Name"]
       36 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       38 GETIMPORT                        R2 K7 [table.insert]
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

PROTO_21:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["className"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Class"] ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K2 ["Name"]
        9 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       11 GETIMPORT                        R1 K5 [table.insert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R1 R0 K6 ["Children"]
       16 JUMPIFNOT                        R1 ; [+11]
       17 GETIMPORT                        R1 K8 [pairs]
       19 GETTABLEKS                       R2 R0 K6 ["Children"]
       21 CALL                             R1 1 3
       22 FORGPREP_NEXT                    R1
       23 GETUPVAL                         R6 1
       24 MOVE                             R7 R5
       25 CALL                             R6 1 0
       26 FORGLOOP                         R1 2 ; [-4]
       28 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagSceneAnalysisBugfixesMay2026"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+21]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 MOVE                             R3 R2
       13 MOVE                             R4 R0
       14 CALL                             R3 1 0
       15 LENGTH                           R3 R1
       16 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 1
       20 LOADK                            R6 K2 ["SelectInstances"]
       21 MOVE                             R7 R1
       22 NAMECALL                         R4 R3 K3 ["CallAssetPluginAsync"]
       24 CALL                             R4 3 0
       25 RETURN                           R0 0
       26 NEWTABLE                         R1 0 0
       28 NEWCLOSURE                       R2 P1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 MOVE                             R3 R2
       32 MOVE                             R4 R0
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 1
       35 LOADK                            R6 K2 ["SelectInstances"]
       36 MOVE                             R7 R1
       37 NAMECALL                         R4 R3 K3 ["CallAssetPluginAsync"]
       39 CALL                             R4 3 0
       40 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNodeById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["selectInstances"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Src"]
       13 GETTABLEKS                       R3 R3 K7 ["Util"]
       15 GETTABLEKS                       R3 R3 K8 ["AssetDMBridge"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Src"]
       22 GETTABLEKS                       R4 R4 K7 ["Util"]
       24 GETTABLEKS                       R4 R4 K9 ["measureHeaderText"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K7 ["Util"]
       33 GETTABLEKS                       R5 R5 K10 ["ListViewUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R1 K11 ["Bin"]
       40 GETTABLEKS                       R6 R6 K12 ["Common"]
       42 GETTABLEKS                       R6 R6 K13 ["defineLuaFlags"]
       44 CALL                             R5 1 1
       45 NEWTABLE                         R6 0 2
       47 DUPTABLE                         R7 K29 [{["id"] = "name", ["headerText"] = "Class Name", ["headerKey"] = "ClassName", ["sortKey"] = "name", ["width"] = 0.4, ["idealWidth"] = 200, ["priority"] = 1, ["order"] = 1, ["cell"]}]
       48 DUPCLOSURE                       R8 K30 [PROTO_0]
       49 SETTABLEKS                       R8 R7 K28 ["cell"]
       51 DUPTABLE                         R8 K37 [{["id"] = "count", ["headerText"] = "Instance Count", ["headerKey"] = "InstanceCount", ["sortKey"] = "count", ["width"] = 0.2, ["idealWidth"] = 100, ["priority"] = 2, ["order"] = 2, ["cell"]}]
       52 DUPCLOSURE                       R9 K38 [PROTO_1]
       53 SETTABLEKS                       R9 R8 K28 ["cell"]
       55 SETLIST                          R6 R7 2 [1]
       57 MOVE                             R7 R6
       58 LOADNIL                          R8
       59 LOADNIL                          R9
       60 FORGPREP                         R7
       61 MOVE                             R12 R3
       62 GETTABLEKS                       R13 R11 K16 ["headerText"]
       64 CALL                             R12 1 1
       65 SETTABLEKS                       R12 R11 K39 ["minWidth"]
       67 FORGLOOP                         R7 2 ; [-7]
       69 NEWTABLE                         R7 0 0
       71 SETTABLEKS                       R7 R0 K40 ["instanceOrder"]
       73 NEWTABLE                         R7 0 0
       75 SETTABLEKS                       R7 R0 K41 ["nodeById"]
       77 NEWTABLE                         R7 0 0
       79 SETTABLEKS                       R7 R0 K42 ["parentById"]
       81 GETIMPORT                        R7 K5 [require]
       83 GETTABLEKS                       R8 R1 K6 ["Src"]
       85 GETTABLEKS                       R8 R8 K7 ["Util"]
       87 GETTABLEKS                       R8 R8 K43 ["Observable"]
       89 CALL                             R7 1 1
       90 GETTABLEKS                       R8 R7 K44 ["create"]
       92 NEWTABLE                         R9 0 0
       94 CALL                             R8 1 2
       95 GETTABLEKS                       R10 R7 K44 ["create"]
       97 NEWTABLE                         R11 0 0
       99 CALL                             R10 1 2
      100 GETTABLEKS                       R12 R7 K44 ["create"]
      102 DUPTABLE                         R13 K48 [{["column"] = "count", ["direction"] = "desc"}]
      103 CALL                             R12 1 2
      104 GETTABLEKS                       R14 R7 K44 ["create"]
      106 LOADN                            R15 0
      107 CALL                             R14 1 2
      108 DUPCLOSURE                       R16 K49 [PROTO_2]
      109 CAPTURE                          VAL R9
      110 DUPCLOSURE                       R17 K50 [PROTO_3]
      111 CAPTURE                          VAL R11
      112 DUPCLOSURE                       R18 K51 [PROTO_4]
      113 CAPTURE                          VAL R15
      114 DUPCLOSURE                       R19 K52 [PROTO_5]
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R11
      118 DUPCLOSURE                       R20 K53 [PROTO_6]
      119 CAPTURE                          VAL R6
      120 SETTABLEKS                       R20 R0 K54 ["getColumns"]
      122 DUPCLOSURE                       R20 K55 [PROTO_7]
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R20 R0 K56 ["getNodesObservable"]
      126 DUPCLOSURE                       R20 K57 [PROTO_8]
      127 CAPTURE                          VAL R10
      128 SETTABLEKS                       R20 R0 K58 ["getOrderObservable"]
      130 DUPCLOSURE                       R20 K59 [PROTO_9]
      131 CAPTURE                          VAL R12
      132 SETTABLEKS                       R20 R0 K60 ["getSortStateObservable"]
      134 DUPCLOSURE                       R20 K61 [PROTO_10]
      135 CAPTURE                          VAL R14
      136 SETTABLEKS                       R20 R0 K62 ["getTotalCountObservable"]
      138 DUPCLOSURE                       R20 K63 [PROTO_11]
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R11
      143 SETTABLEKS                       R20 R0 K64 ["setSort"]
      145 DUPCLOSURE                       R20 K65 [PROTO_12]
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R0
      148 SETTABLEKS                       R20 R0 K66 ["getNodeAtIndex"]
      150 DUPCLOSURE                       R20 K67 [PROTO_13]
      151 CAPTURE                          VAL R10
      152 SETTABLEKS                       R20 R0 K68 ["getIndexForId"]
      154 DUPCLOSURE                       R20 K69 [PROTO_14]
      155 CAPTURE                          VAL R0
      156 SETTABLEKS                       R20 R0 K70 ["getNodeById"]
      158 DUPCLOSURE                       R20 K71 [PROTO_15]
      159 CAPTURE                          VAL R0
      160 SETTABLEKS                       R20 R0 K72 ["getParentById"]
      162 DUPCLOSURE                       R20 K73 [PROTO_17]
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R20 R0 K74 ["sortedIds"]
      166 DUPCLOSURE                       R20 K75 [PROTO_18]
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R0
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R11
      175 SETTABLEKS                       R20 R0 K76 ["RunQueryAsync"]
      177 DUPCLOSURE                       R20 K77 [PROTO_19]
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R20 R0 K78 ["reset"]
      184 DUPCLOSURE                       R20 K79 [PROTO_22]
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R2
      187 SETTABLEKS                       R20 R0 K80 ["selectInstances"]
      189 DUPCLOSURE                       R20 K81 [PROTO_23]
      190 CAPTURE                          VAL R0
      191 SETTABLEKS                       R20 R0 K82 ["onRightClick"]
      193 RETURN                           R0 1
