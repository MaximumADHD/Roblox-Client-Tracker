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
       16 DUPTABLE                         R4 K6 [{"node", "depth", "hasChildren", "id"}]
       17 SETTABLEKS                       R3 R4 K2 ["node"]
       19 LOADN                            R5 0
       20 SETTABLEKS                       R5 R4 K3 ["depth"]
       22 LOADB                            R5 0
       23 SETTABLEKS                       R5 R4 K4 ["hasChildren"]
       25 SETTABLEKS                       R2 R4 K5 ["id"]
       27 RETURN                           R4 1

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
       47 DUPTABLE                         R7 K23 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       48 LOADK                            R8 K24 ["name"]
       49 SETTABLEKS                       R8 R7 K14 ["id"]
       51 LOADK                            R8 K25 ["Class Name"]
       52 SETTABLEKS                       R8 R7 K15 ["headerText"]
       54 LOADK                            R8 K26 ["ClassName"]
       55 SETTABLEKS                       R8 R7 K16 ["headerKey"]
       57 LOADK                            R8 K24 ["name"]
       58 SETTABLEKS                       R8 R7 K17 ["sortKey"]
       60 LOADK                            R8 K27 [0.4]
       61 SETTABLEKS                       R8 R7 K18 ["width"]
       63 LOADN                            R8 200
       64 SETTABLEKS                       R8 R7 K19 ["idealWidth"]
       66 LOADN                            R8 1
       67 SETTABLEKS                       R8 R7 K20 ["priority"]
       69 LOADN                            R8 1
       70 SETTABLEKS                       R8 R7 K21 ["order"]
       72 DUPCLOSURE                       R8 K28 [PROTO_0]
       73 SETTABLEKS                       R8 R7 K22 ["cell"]
       75 DUPTABLE                         R8 K23 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       76 LOADK                            R9 K29 ["count"]
       77 SETTABLEKS                       R9 R8 K14 ["id"]
       79 LOADK                            R9 K30 ["Instance Count"]
       80 SETTABLEKS                       R9 R8 K15 ["headerText"]
       82 LOADK                            R9 K31 ["InstanceCount"]
       83 SETTABLEKS                       R9 R8 K16 ["headerKey"]
       85 LOADK                            R9 K29 ["count"]
       86 SETTABLEKS                       R9 R8 K17 ["sortKey"]
       88 LOADK                            R9 K32 [0.2]
       89 SETTABLEKS                       R9 R8 K18 ["width"]
       91 LOADN                            R9 100
       92 SETTABLEKS                       R9 R8 K19 ["idealWidth"]
       94 LOADN                            R9 2
       95 SETTABLEKS                       R9 R8 K20 ["priority"]
       97 LOADN                            R9 2
       98 SETTABLEKS                       R9 R8 K21 ["order"]
      100 DUPCLOSURE                       R9 K33 [PROTO_1]
      101 SETTABLEKS                       R9 R8 K22 ["cell"]
      103 SETLIST                          R6 R7 2 [1]
      105 MOVE                             R7 R6
      106 LOADNIL                          R8
      107 LOADNIL                          R9
      108 FORGPREP                         R7
      109 MOVE                             R12 R3
      110 GETTABLEKS                       R13 R11 K15 ["headerText"]
      112 CALL                             R12 1 1
      113 SETTABLEKS                       R12 R11 K34 ["minWidth"]
      115 FORGLOOP                         R7 2 ; [-7]
      117 NEWTABLE                         R7 0 0
      119 SETTABLEKS                       R7 R0 K35 ["instanceOrder"]
      121 NEWTABLE                         R7 0 0
      123 SETTABLEKS                       R7 R0 K36 ["nodeById"]
      125 NEWTABLE                         R7 0 0
      127 SETTABLEKS                       R7 R0 K37 ["parentById"]
      129 GETIMPORT                        R7 K5 [require]
      131 GETTABLEKS                       R8 R1 K6 ["Src"]
      133 GETTABLEKS                       R8 R8 K7 ["Util"]
      135 GETTABLEKS                       R8 R8 K38 ["Observable"]
      137 CALL                             R7 1 1
      138 GETTABLEKS                       R8 R7 K39 ["create"]
      140 NEWTABLE                         R9 0 0
      142 CALL                             R8 1 2
      143 GETTABLEKS                       R10 R7 K39 ["create"]
      145 NEWTABLE                         R11 0 0
      147 CALL                             R10 1 2
      148 GETTABLEKS                       R12 R7 K39 ["create"]
      150 DUPTABLE                         R13 K42 [{"column", "direction"}]
      151 LOADK                            R14 K29 ["count"]
      152 SETTABLEKS                       R14 R13 K40 ["column"]
      154 LOADK                            R14 K43 ["desc"]
      155 SETTABLEKS                       R14 R13 K41 ["direction"]
      157 CALL                             R12 1 2
      158 GETTABLEKS                       R14 R7 K39 ["create"]
      160 LOADN                            R15 0
      161 CALL                             R14 1 2
      162 DUPCLOSURE                       R16 K44 [PROTO_2]
      163 CAPTURE                          VAL R9
      164 DUPCLOSURE                       R17 K45 [PROTO_3]
      165 CAPTURE                          VAL R11
      166 DUPCLOSURE                       R18 K46 [PROTO_4]
      167 CAPTURE                          VAL R15
      168 DUPCLOSURE                       R19 K47 [PROTO_5]
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R0
      171 CAPTURE                          VAL R11
      172 DUPCLOSURE                       R20 K48 [PROTO_6]
      173 CAPTURE                          VAL R6
      174 SETTABLEKS                       R20 R0 K49 ["getColumns"]
      176 DUPCLOSURE                       R20 K50 [PROTO_7]
      177 CAPTURE                          VAL R8
      178 SETTABLEKS                       R20 R0 K51 ["getNodesObservable"]
      180 DUPCLOSURE                       R20 K52 [PROTO_8]
      181 CAPTURE                          VAL R10
      182 SETTABLEKS                       R20 R0 K53 ["getOrderObservable"]
      184 DUPCLOSURE                       R20 K54 [PROTO_9]
      185 CAPTURE                          VAL R12
      186 SETTABLEKS                       R20 R0 K55 ["getSortStateObservable"]
      188 DUPCLOSURE                       R20 K56 [PROTO_10]
      189 CAPTURE                          VAL R14
      190 SETTABLEKS                       R20 R0 K57 ["getTotalCountObservable"]
      192 DUPCLOSURE                       R20 K58 [PROTO_11]
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R0
      196 CAPTURE                          VAL R11
      197 SETTABLEKS                       R20 R0 K59 ["setSort"]
      199 DUPCLOSURE                       R20 K60 [PROTO_12]
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R20 R0 K61 ["getNodeAtIndex"]
      204 DUPCLOSURE                       R20 K62 [PROTO_13]
      205 CAPTURE                          VAL R10
      206 SETTABLEKS                       R20 R0 K63 ["getIndexForId"]
      208 DUPCLOSURE                       R20 K64 [PROTO_14]
      209 CAPTURE                          VAL R0
      210 SETTABLEKS                       R20 R0 K65 ["getNodeById"]
      212 DUPCLOSURE                       R20 K66 [PROTO_15]
      213 CAPTURE                          VAL R0
      214 SETTABLEKS                       R20 R0 K67 ["getParentById"]
      216 DUPCLOSURE                       R20 K68 [PROTO_17]
      217 CAPTURE                          VAL R0
      218 SETTABLEKS                       R20 R0 K69 ["sortedIds"]
      220 DUPCLOSURE                       R20 K70 [PROTO_18]
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R5
      223 CAPTURE                          VAL R0
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R11
      229 SETTABLEKS                       R20 R0 K71 ["RunQueryAsync"]
      231 DUPCLOSURE                       R20 K72 [PROTO_19]
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R11
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R0
      236 SETTABLEKS                       R20 R0 K73 ["reset"]
      238 DUPCLOSURE                       R20 K74 [PROTO_22]
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R2
      241 SETTABLEKS                       R20 R0 K75 ["selectInstances"]
      243 DUPCLOSURE                       R20 K76 [PROTO_23]
      244 CAPTURE                          VAL R0
      245 SETTABLEKS                       R20 R0 K77 ["onRightClick"]
      247 RETURN                           R0 1
