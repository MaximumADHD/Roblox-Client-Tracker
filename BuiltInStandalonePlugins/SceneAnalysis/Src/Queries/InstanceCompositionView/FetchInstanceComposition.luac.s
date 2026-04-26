PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R3 K2 ["childCount"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["instanceOrder"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["sortedIds"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
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
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K0 ["get"]
       36 CALL                             R3 0 1
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K8 ["instanceOrder"]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R5 R6 K9 ["sortedIds"]
       43 MOVE                             R6 R4
       44 GETTABLEKS                       R7 R3 K2 ["column"]
       46 GETTABLEKS                       R8 R3 K3 ["direction"]
       48 CALL                             R5 3 1
       49 GETUPVAL                         R6 3
       50 MOVE                             R7 R5
       51 CALL                             R6 1 0
       52 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLE                         R2 R1 R0
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["getNodeById"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["parentById"]
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
       20 GETTABLEKS                       R5 R0 K0 ["n"]
       22 GETTABLEKS                       R4 R5 K4 ["Name"]
       24 ORK                              R2 R4 K3 [""]
       25 GETTABLEKS                       R5 R1 K0 ["n"]
       27 GETTABLEKS                       R4 R5 K4 ["Name"]
       29 ORK                              R3 R4 K3 [""]
       30 JUMP                             ; [+37]
       31 GETUPVAL                         R4 0
       32 JUMPIFNOTEQKS                    R4 K5 ["count"] ; [+12]
       34 GETTABLEKS                       R5 R0 K0 ["n"]
       36 GETTABLEKS                       R4 R5 K7 ["childCount"]
       38 ORK                              R2 R4 K6 [0]
       39 GETTABLEKS                       R5 R1 K0 ["n"]
       41 GETTABLEKS                       R4 R5 K7 ["childCount"]
       43 ORK                              R3 R4 K6 [0]
       44 JUMP                             ; [+23]
       45 GETUPVAL                         R4 0
       46 JUMPIFNOTEQKS                    R4 K8 ["size"] ; [+12]
       48 GETTABLEKS                       R5 R0 K0 ["n"]
       50 GETTABLEKS                       R4 R5 K9 ["Size"]
       52 ORK                              R2 R4 K6 [0]
       53 GETTABLEKS                       R5 R1 K0 ["n"]
       55 GETTABLEKS                       R4 R5 K9 ["Size"]
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
       12 GETUPVAL                         R12 0
       13 GETTABLEKS                       R11 R12 K4 ["nodeById"]
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
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["reset"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K3 ["buildNodeMaps"]
       14 MOVE                             R3 R1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K4 ["isLeafNode"]
       18 CALL                             R2 2 3
       19 GETUPVAL                         R5 1
       20 SETTABLEKS                       R2 R5 K5 ["instanceOrder"]
       22 GETUPVAL                         R5 1
       23 SETTABLEKS                       R3 R5 K6 ["nodeById"]
       25 GETUPVAL                         R5 1
       26 SETTABLEKS                       R4 R5 K7 ["parentById"]
       28 LENGTH                           R5 R2
       29 GETUPVAL                         R6 3
       30 MOVE                             R7 R5
       31 CALL                             R6 1 0
       32 GETUPVAL                         R5 4
       33 MOVE                             R6 R1
       34 CALL                             R5 1 0
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R5 R6 K8 ["get"]
       38 CALL                             R5 0 1
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K5 ["instanceOrder"]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R7 R8 K9 ["sortedIds"]
       45 MOVE                             R8 R6
       46 GETTABLEKS                       R9 R5 K10 ["column"]
       48 GETTABLEKS                       R10 R5 K11 ["direction"]
       50 CALL                             R7 3 1
       51 GETUPVAL                         R8 6
       52 MOVE                             R9 R7
       53 CALL                             R8 1 0
       54 RETURN                           R1 1

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

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 MOVE                             R3 R2
        6 MOVE                             R4 R0
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 0
        9 LOADK                            R6 K0 ["SelectInstances"]
       10 MOVE                             R7 R1
       11 NAMECALL                         R4 R3 K1 ["CallAssetPluginAsync"]
       13 CALL                             R4 3 0
       14 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getNodeById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["selectInstances"]
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
       11 GETTABLEKS                       R5 R1 K6 ["Src"]
       13 GETTABLEKS                       R4 R5 K7 ["Util"]
       15 GETTABLEKS                       R3 R4 K8 ["AssetDMBridge"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R1 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Util"]
       24 GETTABLEKS                       R4 R5 K9 ["measureHeaderText"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R1 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Util"]
       33 GETTABLEKS                       R5 R6 K10 ["ListViewUtils"]
       35 CALL                             R4 1 1
       36 NEWTABLE                         R5 0 2
       38 DUPTABLE                         R6 K20 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       39 LOADK                            R7 K21 ["name"]
       40 SETTABLEKS                       R7 R6 K11 ["id"]
       42 LOADK                            R7 K22 ["Class Name"]
       43 SETTABLEKS                       R7 R6 K12 ["headerText"]
       45 LOADK                            R7 K23 ["ClassName"]
       46 SETTABLEKS                       R7 R6 K13 ["headerKey"]
       48 LOADK                            R7 K21 ["name"]
       49 SETTABLEKS                       R7 R6 K14 ["sortKey"]
       51 LOADK                            R7 K24 [0.4]
       52 SETTABLEKS                       R7 R6 K15 ["width"]
       54 LOADN                            R7 200
       55 SETTABLEKS                       R7 R6 K16 ["idealWidth"]
       57 LOADN                            R7 1
       58 SETTABLEKS                       R7 R6 K17 ["priority"]
       60 LOADN                            R7 1
       61 SETTABLEKS                       R7 R6 K18 ["order"]
       63 DUPCLOSURE                       R7 K25 [PROTO_0]
       64 SETTABLEKS                       R7 R6 K19 ["cell"]
       66 DUPTABLE                         R7 K20 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       67 LOADK                            R8 K26 ["count"]
       68 SETTABLEKS                       R8 R7 K11 ["id"]
       70 LOADK                            R8 K27 ["Instance Count"]
       71 SETTABLEKS                       R8 R7 K12 ["headerText"]
       73 LOADK                            R8 K28 ["InstanceCount"]
       74 SETTABLEKS                       R8 R7 K13 ["headerKey"]
       76 LOADK                            R8 K26 ["count"]
       77 SETTABLEKS                       R8 R7 K14 ["sortKey"]
       79 LOADK                            R8 K29 [0.2]
       80 SETTABLEKS                       R8 R7 K15 ["width"]
       82 LOADN                            R8 100
       83 SETTABLEKS                       R8 R7 K16 ["idealWidth"]
       85 LOADN                            R8 2
       86 SETTABLEKS                       R8 R7 K17 ["priority"]
       88 LOADN                            R8 2
       89 SETTABLEKS                       R8 R7 K18 ["order"]
       91 DUPCLOSURE                       R8 K30 [PROTO_1]
       92 SETTABLEKS                       R8 R7 K19 ["cell"]
       94 SETLIST                          R5 R6 2 [1]
       96 MOVE                             R6 R5
       97 LOADNIL                          R7
       98 LOADNIL                          R8
       99 FORGPREP                         R6
      100 MOVE                             R11 R3
      101 GETTABLEKS                       R12 R10 K12 ["headerText"]
      103 CALL                             R11 1 1
      104 SETTABLEKS                       R11 R10 K31 ["minWidth"]
      106 FORGLOOP                         R6 2 ; [-7]
      108 NEWTABLE                         R6 0 0
      110 SETTABLEKS                       R6 R0 K32 ["instanceOrder"]
      112 NEWTABLE                         R6 0 0
      114 SETTABLEKS                       R6 R0 K33 ["nodeById"]
      116 NEWTABLE                         R6 0 0
      118 SETTABLEKS                       R6 R0 K34 ["parentById"]
      120 GETIMPORT                        R6 K5 [require]
      122 GETTABLEKS                       R9 R1 K6 ["Src"]
      124 GETTABLEKS                       R8 R9 K7 ["Util"]
      126 GETTABLEKS                       R7 R8 K35 ["Observable"]
      128 CALL                             R6 1 1
      129 GETTABLEKS                       R7 R6 K36 ["create"]
      131 NEWTABLE                         R8 0 0
      133 CALL                             R7 1 2
      134 GETTABLEKS                       R9 R6 K36 ["create"]
      136 NEWTABLE                         R10 0 0
      138 CALL                             R9 1 2
      139 GETTABLEKS                       R11 R6 K36 ["create"]
      141 DUPTABLE                         R12 K39 [{"column", "direction"}]
      142 LOADK                            R13 K26 ["count"]
      143 SETTABLEKS                       R13 R12 K37 ["column"]
      145 LOADK                            R13 K40 ["desc"]
      146 SETTABLEKS                       R13 R12 K38 ["direction"]
      148 CALL                             R11 1 2
      149 GETTABLEKS                       R13 R6 K36 ["create"]
      151 LOADN                            R14 0
      152 CALL                             R13 1 2
      153 DUPCLOSURE                       R15 K41 [PROTO_2]
      154 CAPTURE                          VAL R8
      155 DUPCLOSURE                       R16 K42 [PROTO_3]
      156 CAPTURE                          VAL R10
      157 DUPCLOSURE                       R17 K43 [PROTO_4]
      158 CAPTURE                          VAL R14
      159 DUPCLOSURE                       R18 K44 [PROTO_5]
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R10
      163 DUPCLOSURE                       R19 K45 [PROTO_6]
      164 CAPTURE                          VAL R5
      165 SETTABLEKS                       R19 R0 K46 ["getColumns"]
      167 DUPCLOSURE                       R19 K47 [PROTO_7]
      168 CAPTURE                          VAL R7
      169 SETTABLEKS                       R19 R0 K48 ["getNodesObservable"]
      171 DUPCLOSURE                       R19 K49 [PROTO_8]
      172 CAPTURE                          VAL R9
      173 SETTABLEKS                       R19 R0 K50 ["getOrderObservable"]
      175 DUPCLOSURE                       R19 K51 [PROTO_9]
      176 CAPTURE                          VAL R11
      177 SETTABLEKS                       R19 R0 K52 ["getSortStateObservable"]
      179 DUPCLOSURE                       R19 K53 [PROTO_10]
      180 CAPTURE                          VAL R13
      181 SETTABLEKS                       R19 R0 K54 ["getTotalCountObservable"]
      183 DUPCLOSURE                       R19 K55 [PROTO_11]
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R10
      188 SETTABLEKS                       R19 R0 K56 ["setSort"]
      190 DUPCLOSURE                       R19 K57 [PROTO_12]
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R0
      193 SETTABLEKS                       R19 R0 K58 ["getNodeAtIndex"]
      195 DUPCLOSURE                       R19 K59 [PROTO_13]
      196 CAPTURE                          VAL R9
      197 SETTABLEKS                       R19 R0 K60 ["getIndexForId"]
      199 DUPCLOSURE                       R19 K61 [PROTO_14]
      200 CAPTURE                          VAL R0
      201 SETTABLEKS                       R19 R0 K62 ["getNodeById"]
      203 DUPCLOSURE                       R19 K63 [PROTO_15]
      204 CAPTURE                          VAL R0
      205 SETTABLEKS                       R19 R0 K64 ["getParentById"]
      207 DUPCLOSURE                       R19 K65 [PROTO_17]
      208 CAPTURE                          VAL R0
      209 SETTABLEKS                       R19 R0 K66 ["sortedIds"]
      211 DUPCLOSURE                       R19 K67 [PROTO_18]
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R0
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R10
      219 SETTABLEKS                       R19 R0 K68 ["RunQueryAsync"]
      221 DUPCLOSURE                       R19 K69 [PROTO_19]
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R0
      226 SETTABLEKS                       R19 R0 K70 ["reset"]
      228 DUPCLOSURE                       R19 K71 [PROTO_21]
      229 CAPTURE                          VAL R2
      230 SETTABLEKS                       R19 R0 K72 ["selectInstances"]
      232 DUPCLOSURE                       R19 K73 [PROTO_22]
      233 CAPTURE                          VAL R0
      234 SETTABLEKS                       R19 R0 K74 ["onRightClick"]
      236 RETURN                           R0 1
