PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["number"] ; [+3]
        7 LOADK                            R1 K3 ["0"]
        8 RETURN                           R1 1
        9 LOADK                            R1 K4 [1000000]
       10 JUMPIFNOTLE                      R1 R0 ; [+7]
       12 GETIMPORT                        R1 K7 [string.format]
       14 LOADK                            R2 K8 ["%.1fM"]
       15 DIVK                             R3 R0 K4 [1000000]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
       18 LOADN                            R1 232
       19 JUMPIFNOTLE                      R1 R0 ; [+7]
       21 GETIMPORT                        R1 K7 [string.format]
       23 LOADK                            R2 K9 ["%.1fK"]
       24 DIVK                             R3 R0 K10 [1000]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K12 [tostring]
       31 CALL                             R1 1 1
       32 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Instances"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADK                            R1 K1 [""]
        4 RETURN                           R1 1
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R2 R0 K0 ["Instances"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 FASTCALL1                        TYPE R6 ; [+3]
       13 MOVE                             R9 R6
       14 GETIMPORT                        R8 K3 [type]
       16 CALL                             R8 1 1
       17 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+4]
       19 GETTABLEKS                       R7 R6 K5 ["Path"]
       21 JUMP                             ; [+1]
       22 MOVE                             R7 R6
       23 JUMPIFNOT                        R7 ; [+8]
       24 MOVE                             R9 R1
       25 GETUPVAL                         R10 0
       26 MOVE                             R11 R7
       27 CALL                             R10 1 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R8 K7 [table.insert]
       31 CALL                             R8 -1 0
       32 FORGLOOP                         R2 2 ; [-21]
       34 GETIMPORT                        R2 K9 [table.concat]
       36 MOVE                             R3 R1
       37 LOADK                            R4 K10 [", "]
       38 CALL                             R2 2 -1
       39 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Sizes"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 DUPTABLE                         R2 K3 [{"triangles", "drawcallCount"}]
        6 GETTABLEKS                       R3 R1 K4 ["Triangles"]
        8 JUMPIF                           R3 ; [+10]
        9 GETTABLEKS                       R3 R1 K1 ["triangles"]
       11 JUMPIF                           R3 ; [+7]
       12 GETTABLEKS                       R3 R0 K4 ["Triangles"]
       14 JUMPIF                           R3 ; [+4]
       15 GETTABLEKS                       R3 R0 K5 ["Size"]
       17 JUMPIF                           R3 ; [+1]
       18 LOADN                            R3 0
       19 SETTABLEKS                       R3 R2 K1 ["triangles"]
       21 GETTABLEKS                       R3 R0 K6 ["DrawcallCount"]
       23 JUMPIF                           R3 ; [+7]
       24 GETTABLEKS                       R3 R1 K7 ["Drawcalls"]
       26 JUMPIF                           R3 ; [+4]
       27 GETTABLEKS                       R3 R1 K8 ["drawcalls"]
       29 JUMPIF                           R3 ; [+1]
       30 LOADN                            R3 0
       31 SETTABLEKS                       R3 R2 K2 ["drawcallCount"]
       33 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["Name"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K1 ["node"]
        3 GETTABLEKS                       R3 R3 K2 ["Size"]
        5 ORK                              R2 R3 K0 [0]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["node"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R2 R2 K1 ["triangles"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["Instances"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 LENGTH                           R2 R1
        6 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
        8 LOADK                            R2 K3 [""]
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 LENGTH                           R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["AssetId"]
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["node"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["filterOptions"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["id"]
       10 GETTABLEKS                       R7 R5 K2 ["default"]
       12 SETTABLE                         R7 R0 R6
       13 FORGLOOP                         R1 2 ; [-6]
       15 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 1
        8 SETTABLE                         R1 R3 R0
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["get"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLE                         R7 R1 R5
       13 JUMPIF                           R7 ; [+8]
       14 MOVE                             R7 R6
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 FORGPREP                         R7
       18 LOADB                            R12 1
       19 SETTABLE                         R12 R0 R10
       20 FORGLOOP                         R7 1 ; [-3]
       22 FORGLOOP                         R2 2 ; [-11]
       24 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["Children"]
        2 JUMPIF                           R2 ; [+20]
        3 GETTABLEKS                       R2 R0 K1 ["Size"]
        5 JUMPIFNOT                        R2 ; [+16]
        6 GETTABLEKS                       R2 R0 K1 ["Size"]
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+12]
       11 GETUPVAL                         R3 0
       12 DUPTABLE                         R4 K4 [{"node", "depth"}]
       13 SETTABLEKS                       R0 R4 K2 ["node"]
       15 SETTABLEKS                       R1 R4 K3 ["depth"]
       17 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       19 GETIMPORT                        R2 K7 [table.insert]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R2 R0 K0 ["Children"]
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETUPVAL                         R7 1
       29 MOVE                             R8 R6
       30 ADDK                             R9 R1 K8 [1]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 ; [-5]
       34 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 GETTABLEKS                       R3 R0 K0 ["Children"]
        7 JUMPIFNOT                        R3 ; [+11]
        8 GETTABLEKS                       R3 R0 K0 ["Children"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 MOVE                             R8 R2
       14 MOVE                             R9 R7
       15 LOADN                            R10 1
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-5]
       19 RETURN                           R1 1

PROTO_20:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 JUMPIFNOTEQKS                    R4 K0 ["triangles"] ; [+12]
        5 GETTABLEKS                       R4 R0 K2 ["node"]
        7 GETTABLEKS                       R4 R4 K3 ["Size"]
        9 ORK                              R2 R4 K1 [0]
       10 GETTABLEKS                       R4 R1 K2 ["node"]
       12 GETTABLEKS                       R4 R4 K3 ["Size"]
       14 ORK                              R3 R4 K1 [0]
       15 JUMP                             ; [+102]
       16 GETUPVAL                         R4 0
       17 JUMPIFNOTEQKS                    R4 K4 ["meshTriangles"] ; [+14]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R5 R0 K2 ["node"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R2 R4 K0 ["triangles"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R5 R1 K2 ["node"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R3 R4 K0 ["triangles"]
       31 JUMP                             ; [+86]
       32 GETUPVAL                         R4 0
       33 JUMPIFNOTEQKS                    R4 K5 ["instanceCount"] ; [+18]
       35 GETTABLEKS                       R4 R0 K2 ["node"]
       37 GETTABLEKS                       R4 R4 K6 ["Instances"]
       39 GETTABLEKS                       R5 R1 K2 ["node"]
       41 GETTABLEKS                       R5 R5 K6 ["Instances"]
       43 JUMPIFNOT                        R4 ; [+2]
       44 LENGTH                           R2 R4
       45 JUMP                             ; [+1]
       46 LOADN                            R2 0
       47 JUMPIFNOT                        R5 ; [+2]
       48 LENGTH                           R3 R5
       49 JUMP                             ; [+68]
       50 LOADN                            R3 0
       51 JUMP                             ; [+66]
       52 GETUPVAL                         R4 0
       53 JUMPIFNOTEQKS                    R4 K7 ["name"] ; [+20]
       55 GETTABLEKS                       R5 R0 K2 ["node"]
       57 GETTABLEKS                       R5 R5 K9 ["Name"]
       59 ORK                              R4 R5 K8 [""]
       60 NAMECALL                         R4 R4 K10 ["lower"]
       62 CALL                             R4 1 1
       63 MOVE                             R2 R4
       64 GETTABLEKS                       R5 R1 K2 ["node"]
       66 GETTABLEKS                       R5 R5 K9 ["Name"]
       68 ORK                              R4 R5 K8 [""]
       69 NAMECALL                         R4 R4 K10 ["lower"]
       71 CALL                             R4 1 1
       72 MOVE                             R3 R4
       73 JUMP                             ; [+44]
       74 GETUPVAL                         R4 0
       75 JUMPIFNOTEQKS                    R4 K11 ["assetId"] ; [+20]
       77 GETTABLEKS                       R5 R0 K2 ["node"]
       79 GETTABLEKS                       R5 R5 K12 ["AssetId"]
       81 ORK                              R4 R5 K8 [""]
       82 NAMECALL                         R4 R4 K10 ["lower"]
       84 CALL                             R4 1 1
       85 MOVE                             R2 R4
       86 GETTABLEKS                       R5 R1 K2 ["node"]
       88 GETTABLEKS                       R5 R5 K12 ["AssetId"]
       90 ORK                              R4 R5 K8 [""]
       91 NAMECALL                         R4 R4 K10 ["lower"]
       93 CALL                             R4 1 1
       94 MOVE                             R3 R4
       95 JUMP                             ; [+22]
       96 GETUPVAL                         R4 0
       97 JUMPIFNOTEQKS                    R4 K13 ["instances"] ; [+18]
       99 GETUPVAL                         R4 2
      100 GETTABLEKS                       R5 R0 K2 ["node"]
      102 CALL                             R4 1 1
      103 NAMECALL                         R4 R4 K10 ["lower"]
      105 CALL                             R4 1 1
      106 MOVE                             R2 R4
      107 GETUPVAL                         R4 2
      108 GETTABLEKS                       R5 R1 K2 ["node"]
      110 CALL                             R4 1 1
      111 NAMECALL                         R4 R4 K10 ["lower"]
      113 CALL                             R4 1 1
      114 MOVE                             R3 R4
      115 JUMP                             ; [+2]
      116 LOADB                            R4 0
      117 RETURN                           R4 1
      118 JUMPIFNOTEQ                      R2 R3 ; [+3]
      120 LOADB                            R4 0
      121 RETURN                           R4 1
      122 GETUPVAL                         R4 3
      123 GETUPVAL                         R5 4
      124 GETTABLEKS                       R5 R5 K14 ["Direction"]
      126 GETTABLEKS                       R5 R5 K15 ["asc"]
      128 JUMPIFNOTEQ                      R4 R5 ; [+6]
      130 JUMPIFLT                         R2 R3 ; [+2]
      132 LOADB                            R4 0 +1
      133 LOADB                            R4 1
      134 RETURN                           R4 1
      135 JUMPIFLT                         R3 R2 ; [+2]
      137 LOADB                            R4 0 +1
      138 LOADB                            R4 1
      139 RETURN                           R4 1

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["column"]
        2 GETTABLEKS                       R3 R1 K1 ["direction"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Column"]
        7 GETTABLEKS                       R4 R4 K3 ["none"]
        9 JUMPIFNOTEQ                      R2 R4 ; [+15]
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R0
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R9 K4 ["node"]
       19 GETTABLEKS                       R10 R10 K5 ["Id"]
       21 SETTABLE                         R10 R4 R8
       22 FORGLOOP                         R5 2 ; [-6]
       24 RETURN                           R4 1
       25 GETIMPORT                        R4 K8 [table.clone]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [table.sort]
       31 MOVE                             R6 R4
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U0
       38 CALL                             R5 2 0
       39 NEWTABLE                         R5 0 0
       41 MOVE                             R6 R4
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 GETTABLEKS                       R11 R10 K4 ["node"]
       47 GETTABLEKS                       R11 R11 K5 ["Id"]
       49 SETTABLE                         R11 R5 R9
       50 FORGLOOP                         R6 2 ; [-6]
       52 RETURN                           R5 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Direction"]
        7 GETTABLEKS                       R2 R2 K2 ["desc"]
        9 GETTABLEKS                       R3 R1 K3 ["column"]
       11 JUMPIFNOTEQ                      R3 R0 ; [+21]
       13 GETTABLEKS                       R3 R1 K4 ["direction"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K1 ["Direction"]
       18 GETTABLEKS                       R4 R4 K5 ["asc"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+7]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K1 ["Direction"]
       25 GETTABLEKS                       R2 R3 K2 ["desc"]
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["Direction"]
       31 GETTABLEKS                       R2 R3 K5 ["asc"]
       33 GETUPVAL                         R3 2
       34 DUPTABLE                         R4 K6 [{"column", "direction"}]
       35 SETTABLEKS                       R0 R4 K3 ["column"]
       37 SETTABLEKS                       R2 R4 K4 ["direction"]
       39 CALL                             R3 1 1
       40 GETUPVAL                         R4 3
       41 MOVE                             R5 R3
       42 CALL                             R4 1 0
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K0 ["get"]
       46 CALL                             R4 0 1
       47 GETUPVAL                         R5 5
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 6
       51 MOVE                             R7 R5
       52 MOVE                             R8 R3
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 7
       55 MOVE                             R8 R6
       56 CALL                             R7 1 0
       57 GETUPVAL                         R7 8
       58 LENGTH                           R8 R6
       59 CALL                             R7 1 0
       60 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 NEWTABLE                         R1 0 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADN                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 4
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K0 ["nodeById"]
       15 GETUPVAL                         R0 4
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K1 ["parentById"]
       20 GETUPVAL                         R0 4
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K2 ["instanceOrder"]
       25 GETUPVAL                         R0 4
       26 NEWTABLE                         R1 0 0
       28 SETTABLEKS                       R1 R0 K3 ["debugIdToNodeIds"]
       30 GETUPVAL                         R0 4
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K4 ["pathToNodeIds"]
       35 RETURN                           R0 0

PROTO_24:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+3]
        7 LOADK                            R1 K3 ["0"]
        8 JUMP                             ; [+23]
        9 LOADK                            R2 K4 [1000000]
       10 JUMPIFNOTLE                      R2 R0 ; [+7]
       12 GETIMPORT                        R1 K7 [string.format]
       14 LOADK                            R2 K8 ["%.1fM"]
       15 DIVK                             R3 R0 K4 [1000000]
       16 CALL                             R1 2 1
       17 JUMP                             ; [+14]
       18 LOADN                            R2 232
       19 JUMPIFNOTLE                      R2 R0 ; [+7]
       21 GETIMPORT                        R1 K7 [string.format]
       23 LOADK                            R2 K9 ["%.1fK"]
       24 DIVK                             R3 R0 K10 [1000]
       25 CALL                             R1 2 1
       26 JUMP                             ; [+5]
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K12 [tostring]
       31 CALL                             R1 1 1
       32 GETUPVAL                         R2 0
       33 JUMPIFNOT                        R2 ; [+10]
       34 GETUPVAL                         R2 0
       35 LOADK                            R4 K13 ["Tooltip"]
       36 LOADK                            R5 K14 ["TrianglesLabel"]
       37 DUPTABLE                         R6 K16 [{"value"}]
       38 SETTABLEKS                       R1 R6 K15 ["value"]
       40 NAMECALL                         R2 R2 K17 ["getText"]
       42 CALL                             R2 4 -1
       43 RETURN                           R2 -1
       44 LOADK                            R3 K18 ["Triangles: "]
       45 MOVE                             R4 R1
       46 CONCAT                           R2 R3 R4
       47 RETURN                           R2 1

PROTO_25:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETUPVAL                         R2 0
        8 LOADK                            R4 K2 ["Tooltip"]
        9 LOADK                            R5 K3 ["DrawcallsLabel"]
       10 DUPTABLE                         R6 K5 [{"value"}]
       11 SETTABLEKS                       R1 R6 K4 ["value"]
       13 NAMECALL                         R2 R2 K6 ["getText"]
       15 CALL                             R2 4 -1
       16 RETURN                           R2 -1
       17 LOADK                            R3 K7 ["Drawcalls: "]
       18 MOVE                             R4 R1
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1

PROTO_26:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+3]
        7 LOADK                            R1 K3 ["0"]
        8 JUMP                             ; [+23]
        9 LOADK                            R2 K4 [1000000]
       10 JUMPIFNOTLE                      R2 R0 ; [+7]
       12 GETIMPORT                        R1 K7 [string.format]
       14 LOADK                            R2 K8 ["%.1fM"]
       15 DIVK                             R3 R0 K4 [1000000]
       16 CALL                             R1 2 1
       17 JUMP                             ; [+14]
       18 LOADN                            R2 232
       19 JUMPIFNOTLE                      R2 R0 ; [+7]
       21 GETIMPORT                        R1 K7 [string.format]
       23 LOADK                            R2 K9 ["%.1fK"]
       24 DIVK                             R3 R0 K10 [1000]
       25 CALL                             R1 2 1
       26 JUMP                             ; [+5]
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K12 [tostring]
       31 CALL                             R1 1 1
       32 GETUPVAL                         R2 0
       33 JUMPIFNOT                        R2 ; [+10]
       34 GETUPVAL                         R2 0
       35 LOADK                            R4 K13 ["Tooltip"]
       36 LOADK                            R5 K14 ["MeshTrianglesLabel"]
       37 DUPTABLE                         R6 K16 [{"value"}]
       38 SETTABLEKS                       R1 R6 K15 ["value"]
       40 NAMECALL                         R2 R2 K17 ["getText"]
       42 CALL                             R2 4 -1
       43 RETURN                           R2 -1
       44 LOADK                            R3 K18 ["Mesh Tri: "]
       45 MOVE                             R4 R1
       46 CONCAT                           R2 R3 R4
       47 RETURN                           R2 1

PROTO_27:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["Sizes"]
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETTABLEKS                       R4 R3 K1 ["Triangles"]
        7 JUMPIF                           R4 ; [+5]
        8 GETTABLEKS                       R4 R3 K2 ["triangles"]
       10 JUMPIF                           R4 ; [+2]
       11 GETTABLEKS                       R4 R0 K1 ["Triangles"]
       13 GETTABLEKS                       R5 R0 K3 ["DrawcallCount"]
       15 JUMPIF                           R5 ; [+11]
       16 GETTABLEKS                       R5 R0 K4 ["Boxes"]
       18 JUMPIF                           R5 ; [+8]
       19 JUMPIFNOT                        R3 ; [+6]
       20 GETTABLEKS                       R5 R3 K5 ["Drawcalls"]
       22 JUMPIF                           R5 ; [+4]
       23 GETTABLEKS                       R5 R3 K6 ["drawcalls"]
       25 JUMPIF                           R5 ; [+1]
       26 LOADN                            R5 1
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R1
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R1
       31 NEWCLOSURE                       R8 P2
       32 CAPTURE                          VAL R1
       33 JUMPIFNOT                        R4 ; [+31]
       34 LOADN                            R9 1
       35 JUMPIFNOTLT                      R9 R5 ; [+29]
       37 MOVE                             R10 R2
       38 MOVE                             R11 R6
       39 GETTABLEKS                       R12 R0 K7 ["Size"]
       41 JUMPIF                           R12 ; [+1]
       42 MUL                              R12 R4 R5
       43 CALL                             R11 1 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R9 K10 [table.insert]
       47 CALL                             R9 -1 0
       48 MOVE                             R10 R2
       49 MOVE                             R11 R7
       50 MOVE                             R12 R5
       51 CALL                             R11 1 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R9 K10 [table.insert]
       55 CALL                             R9 -1 0
       56 MOVE                             R10 R2
       57 MOVE                             R11 R8
       58 MOVE                             R12 R4
       59 CALL                             R11 1 -1
       60 FASTCALL                         TABLE_INSERT ; [+2]
       61 GETIMPORT                        R9 K10 [table.insert]
       63 CALL                             R9 -1 0
       64 JUMP                             ; [+22]
       65 JUMPIFNOT                        R4 ; [+9]
       66 MOVE                             R10 R2
       67 MOVE                             R11 R6
       68 MOVE                             R12 R4
       69 CALL                             R11 1 -1
       70 FASTCALL                         TABLE_INSERT ; [+2]
       71 GETIMPORT                        R9 K10 [table.insert]
       73 CALL                             R9 -1 0
       74 JUMP                             ; [+12]
       75 GETTABLEKS                       R9 R0 K7 ["Size"]
       77 JUMPIFNOT                        R9 ; [+9]
       78 MOVE                             R10 R2
       79 MOVE                             R11 R6
       80 GETTABLEKS                       R12 R0 K7 ["Size"]
       82 CALL                             R11 1 -1
       83 FASTCALL                         TABLE_INSERT ; [+2]
       84 GETIMPORT                        R9 K10 [table.insert]
       86 CALL                             R9 -1 0
       87 GETTABLEKS                       R9 R0 K11 ["Instances"]
       89 JUMPIFNOT                        R9 ; [+33]
       90 LENGTH                           R10 R9
       91 LOADN                            R11 1
       92 JUMPIFNOTLT                      R11 R10 ; [+30]
       94 LENGTH                           R11 R9
       95 FASTCALL1                        TOSTRING R11 ; [+2]
       96 GETIMPORT                        R10 K13 [tostring]
       98 CALL                             R10 1 1
       99 JUMPIFNOT                        R1 ; [+14]
      100 MOVE                             R12 R2
      101 LOADK                            R15 K14 ["Tooltip"]
      102 LOADK                            R16 K15 ["InstancesLabel"]
      103 DUPTABLE                         R17 K17 [{"value"}]
      104 SETTABLEKS                       R10 R17 K16 ["value"]
      106 NAMECALL                         R13 R1 K18 ["getText"]
      108 CALL                             R13 4 -1
      109 FASTCALL                         TABLE_INSERT ; [+2]
      110 GETIMPORT                        R11 K10 [table.insert]
      112 CALL                             R11 -1 0
      113 RETURN                           R2 1
      114 LOADK                            R14 K19 ["Instances: "]
      115 MOVE                             R15 R10
      116 CONCAT                           R13 R14 R15
      117 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
      119 MOVE                             R12 R2
      120 GETIMPORT                        R11 K10 [table.insert]
      122 CALL                             R11 2 0
      123 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 JUMPIFNOTEQ                      R6 R0 ; [+2]
       10 RETURN                           R5 1
       11 FORGLOOP                         R2 2 ; [-4]
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_30:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+11]
        3 MOVE                             R3 R1
        4 LOADK                            R6 K0 ["Messages"]
        5 LOADK                            R7 K1 ["QualityLevelWarning"]
        6 NAMECALL                         R4 R0 K2 ["getText"]
        8 CALL                             R4 3 -1
        9 FASTCALL                         TABLE_INSERT ; [+2]
       10 GETIMPORT                        R2 K5 [table.insert]
       12 CALL                             R2 -1 0
       13 JUMP                             ; [+7]
       14 FASTCALL2K                       TABLE_INSERT R1 K6 ; [+5]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K6 ["Quality level and player devices will affect triangle counts. Values are indicative of current studio conditions only."]
       18 GETIMPORT                        R2 K5 [table.insert]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["get"]
       24 CALL                             R2 0 1
       25 GETTABLEKS                       R3 R2 K8 ["shadows"]
       27 JUMPIFNOT                        R3 ; [+36]
       28 JUMPIFNOT                        R0 ; [+21]
       29 MOVE                             R4 R1
       30 LOADK                            R7 K0 ["Messages"]
       31 LOADK                            R8 K9 ["ShadowsAvailabilityWarning"]
       32 NAMECALL                         R5 R0 K2 ["getText"]
       34 CALL                             R5 3 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R3 K5 [table.insert]
       38 CALL                             R3 -1 0
       39 MOVE                             R4 R1
       40 LOADK                            R7 K0 ["Messages"]
       41 LOADK                            R8 K10 ["ShadowsEditModeWarning"]
       42 NAMECALL                         R5 R0 K2 ["getText"]
       44 CALL                             R5 3 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R3 K5 [table.insert]
       48 CALL                             R3 -1 0
       49 RETURN                           R1 1
       50 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
       52 MOVE                             R4 R1
       53 LOADK                            R5 K11 ["Shadows are not available at all quality and lighting levels."]
       54 GETIMPORT                        R3 K5 [table.insert]
       56 CALL                             R3 2 0
       57 FASTCALL2K                       TABLE_INSERT R1 K12 ; [+5]
       59 MOVE                             R4 R1
       60 LOADK                            R5 K12 ["Shadows do not update every frame in edit mode."]
       61 GETIMPORT                        R3 K5 [table.insert]
       63 CALL                             R3 2 0
       64 RETURN                           R1 1

PROTO_31:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 0
        7 GETTABLEKS                       R8 R6 K0 ["DebugId"]
        9 JUMPIFNOT                        R8 ; [+21]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K1 ["debugIdToNodeIds"]
       13 GETTABLEKS                       R10 R6 K0 ["DebugId"]
       15 GETTABLE                         R8 R9 R10
       16 JUMPIFNOT                        R8 ; [+14]
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R11 R11 K1 ["debugIdToNodeIds"]
       20 GETTABLEKS                       R12 R6 K0 ["DebugId"]
       22 GETTABLE                         R8 R11 R12
       23 LOADNIL                          R9
       24 LOADNIL                          R10
       25 FORGPREP                         R8
       26 LOADB                            R13 1
       27 SETTABLE                         R13 R1 R12
       28 LOADB                            R7 1
       29 FORGLOOP                         R8 2 ; [-4]
       31 JUMPIF                           R7 ; [+24]
       32 GETTABLEKS                       R8 R6 K2 ["Path"]
       34 JUMPIFNOT                        R8 ; [+21]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K3 ["pathToNodeIds"]
       38 GETTABLEKS                       R10 R6 K2 ["Path"]
       40 GETTABLE                         R8 R9 R10
       41 JUMPIFNOT                        R8 ; [+14]
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K3 ["pathToNodeIds"]
       45 GETTABLEKS                       R12 R6 K2 ["Path"]
       47 GETTABLE                         R8 R11 R12
       48 LOADNIL                          R9
       49 LOADNIL                          R10
       50 FORGPREP                         R8
       51 LOADB                            R13 1
       52 SETTABLE                         R13 R1 R12
       53 LOADB                            R7 1
       54 FORGLOOP                         R8 2 ; [-4]
       56 JUMPIF                           R7 ; [+33]
       57 GETTABLEKS                       R8 R6 K2 ["Path"]
       59 JUMPIFNOT                        R8 ; [+30]
       60 GETTABLEKS                       R9 R6 K2 ["Path"]
       62 LOADK                            R10 K4 ["."]
       63 CONCAT                           R8 R9 R10
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K3 ["pathToNodeIds"]
       67 LOADNIL                          R10
       68 LOADNIL                          R11
       69 FORGPREP                         R9
       70 LOADN                            R16 1
       71 LENGTH                           R17 R8
       72 FASTCALL3                        STRING_SUB R12 R16 R17
       74 MOVE                             R15 R12
       75 GETIMPORT                        R14 K7 [string.sub]
       77 CALL                             R14 3 1
       78 JUMPIFNOTEQ                      R14 R8 ; [+9]
       80 MOVE                             R14 R13
       81 LOADNIL                          R15
       82 LOADNIL                          R16
       83 FORGPREP                         R14
       84 LOADB                            R19 1
       85 SETTABLE                         R19 R1 R18
       86 FORGLOOP                         R14 2 ; [-3]
       88 FORGLOOP                         R9 2 ; [-19]
       90 FORGLOOP                         R2 2 ; [-85]
       92 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNodeById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R2 R1 K1 ["Instances"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEKS                       R3 R1 K1 ["Instances"]
       11 LENGTH                           R2 R3
       12 JUMPIFNOTEQKN                    R2 K2 [0] ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K3 ["SelectInstancesByPaths"]
       17 GETTABLEKS                       R5 R1 K1 ["Instances"]
       19 NAMECALL                         R2 R2 K4 ["CallAssetPluginAsync"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_33:
        0 LOADN                            R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["parentById"]
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+6]
        6 ADDK                             R1 R1 K1 [1]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["parentById"]
       10 GETTABLE                         R2 R3 R2
       11 JUMPBACK                         ; [-7]
       12 RETURN                           R1 1

PROTO_34:
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

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIF                           R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["Id"]
        6 GETUPVAL                         R3 0
        7 ADDK                             R2 R3 K1 [1]
        8 SETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R0 K0 ["Id"]
       11 JUMPIFNOT                        R2 ; [+13]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["nodeById"]
       15 GETTABLEKS                       R3 R0 K0 ["Id"]
       17 SETTABLE                         R0 R2 R3
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["parentById"]
       22 GETTABLEKS                       R3 R0 K0 ["Id"]
       24 SETTABLE                         R1 R2 R3
       25 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R1 0 0
        6 GETTABLEKS                       R2 R0 K0 ["Children"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R9 R6 K1 ["Name"]
       14 GETTABLE                         R7 R8 R9
       15 JUMPIF                           R7 ; [+10]
       16 GETUPVAL                         R7 1
       17 MOVE                             R8 R6
       18 CALL                             R7 1 0
       19 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 GETIMPORT                        R7 K4 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 ; [-16]
       28 SETTABLEKS                       R1 R0 K0 ["Children"]
       30 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R3 R0 K0 ["Id"]
        2 JUMPIF                           R3 ; [+6]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R0 K0 ["Id"]
        6 GETUPVAL                         R4 0
        7 ADDK                             R3 R4 K1 [1]
        8 SETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R0 K0 ["Id"]
       11 JUMPIFNOT                        R3 ; [+13]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["nodeById"]
       15 GETTABLEKS                       R4 R0 K0 ["Id"]
       17 SETTABLE                         R0 R3 R4
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["parentById"]
       22 GETTABLEKS                       R4 R0 K0 ["Id"]
       24 SETTABLE                         R1 R3 R4
       25 GETTABLEKS                       R3 R0 K4 ["Children"]
       27 JUMPIFNOT                        R3 ; [+36]
       28 GETTABLEKS                       R3 R0 K5 ["Name"]
       30 JUMPIFNOT                        R3 ; [+18]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K6 ["PassRamps"]
       34 GETTABLEKS                       R5 R0 K5 ["Name"]
       36 GETTABLE                         R3 R4 R5
       37 JUMPIFNOT                        R3 ; [+11]
       38 GETTABLEKS                       R3 R0 K7 ["colorRamp"]
       40 JUMPIF                           R3 ; [+8]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K6 ["PassRamps"]
       44 GETTABLEKS                       R5 R0 K5 ["Name"]
       46 GETTABLE                         R3 R4 R5
       47 SETTABLEKS                       R3 R0 K7 ["colorRamp"]
       49 GETTABLEKS                       R3 R0 K4 ["Children"]
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 FORGPREP                         R3
       54 GETUPVAL                         R8 3
       55 MOVE                             R9 R7
       56 GETTABLEKS                       R10 R0 K0 ["Id"]
       58 GETTABLEKS                       R11 R0 K5 ["Name"]
       60 CALL                             R8 3 0
       61 FORGLOOP                         R3 2 ; [-8]
       63 RETURN                           R0 0
       64 GETTABLEKS                       R3 R0 K5 ["Name"]
       66 JUMPIFNOT                        R3 ; [+21]
       67 GETIMPORT                        R3 K10 [string.find]
       69 GETTABLEKS                       R4 R0 K5 ["Name"]
       71 LOADK                            R5 K11 ["%."]
       72 CALL                             R3 2 1
       73 JUMPIFNOT                        R3 ; [+14]
       74 GETIMPORT                        R3 K13 [string.split]
       76 GETTABLEKS                       R4 R0 K5 ["Name"]
       78 LOADK                            R5 K14 ["."]
       79 CALL                             R3 2 1
       80 LENGTH                           R4 R3
       81 LOADN                            R5 0
       82 JUMPIFNOTLT                      R5 R4 ; [+5]
       84 LENGTH                           R5 R3
       85 GETTABLE                         R4 R3 R5
       86 SETTABLEKS                       R4 R0 K5 ["Name"]
       88 GETTABLEKS                       R3 R0 K15 ["Instances"]
       90 JUMPIFNOT                        R3 ; [+7]
       91 LENGTH                           R4 R3
       92 LOADN                            R5 1
       93 JUMPIFNOTLT                      R5 R4 ; [+4]
       95 LENGTH                           R4 R3
       96 SETTABLEKS                       R4 R0 K16 ["Boxes"]
       98 JUMPIFNOT                        R3 ; [+75]
       99 MOVE                             R4 R3
      100 LOADNIL                          R5
      101 LOADNIL                          R6
      102 FORGPREP                         R4
      103 FASTCALL1                        TYPE R8 ; [+3]
      104 MOVE                             R10 R8
      105 GETIMPORT                        R9 K18 [type]
      107 CALL                             R9 1 1
      108 JUMPIFNOTEQKS                    R9 K19 ["table"] ; [+63]
      110 GETTABLEKS                       R9 R8 K20 ["DebugId"]
      112 JUMPIFNOT                        R9 ; [+28]
      113 GETUPVAL                         R10 1
      114 GETTABLEKS                       R10 R10 K21 ["debugIdToNodeIds"]
      116 GETTABLEKS                       R11 R8 K20 ["DebugId"]
      118 GETTABLE                         R9 R10 R11
      119 JUMPIF                           R9 ; [+8]
      120 GETUPVAL                         R9 1
      121 GETTABLEKS                       R9 R9 K21 ["debugIdToNodeIds"]
      123 GETTABLEKS                       R10 R8 K20 ["DebugId"]
      125 NEWTABLE                         R11 0 0
      127 SETTABLE                         R11 R9 R10
      128 GETUPVAL                         R11 1
      129 GETTABLEKS                       R11 R11 K21 ["debugIdToNodeIds"]
      131 GETTABLEKS                       R12 R8 K20 ["DebugId"]
      133 GETTABLE                         R10 R11 R12
      134 GETTABLEKS                       R11 R0 K0 ["Id"]
      136 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      138 GETIMPORT                        R9 K23 [table.insert]
      140 CALL                             R9 2 0
      141 GETTABLEKS                       R9 R8 K24 ["Path"]
      143 JUMPIFNOT                        R9 ; [+28]
      144 GETUPVAL                         R10 1
      145 GETTABLEKS                       R10 R10 K25 ["pathToNodeIds"]
      147 GETTABLEKS                       R11 R8 K24 ["Path"]
      149 GETTABLE                         R9 R10 R11
      150 JUMPIF                           R9 ; [+8]
      151 GETUPVAL                         R9 1
      152 GETTABLEKS                       R9 R9 K25 ["pathToNodeIds"]
      154 GETTABLEKS                       R10 R8 K24 ["Path"]
      156 NEWTABLE                         R11 0 0
      158 SETTABLE                         R11 R9 R10
      159 GETUPVAL                         R11 1
      160 GETTABLEKS                       R11 R11 K25 ["pathToNodeIds"]
      162 GETTABLEKS                       R12 R8 K24 ["Path"]
      164 GETTABLE                         R10 R11 R12
      165 GETTABLEKS                       R11 R0 K0 ["Id"]
      167 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      169 GETIMPORT                        R9 K23 [table.insert]
      171 CALL                             R9 2 0
      172 FORGLOOP                         R4 2 ; [-70]
      174 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchSceneGeometry"]
        2 NEWTABLE                         R4 0 0
        4 NAMECALL                         R1 R1 K1 ["CallAssetPluginAsync"]
        6 CALL                             R1 3 1
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["reset"]
       11 CALL                             R2 0 0
       12 GETUPVAL                         R2 2
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 1
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["nodeById"]
       19 GETUPVAL                         R2 1
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K4 ["parentById"]
       24 GETUPVAL                         R2 1
       25 NEWTABLE                         R3 0 0
       27 SETTABLEKS                       R3 R2 K5 ["debugIdToNodeIds"]
       29 GETUPVAL                         R2 1
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K6 ["pathToNodeIds"]
       34 LOADN                            R2 1
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          REF R2
       37 CAPTURE                          UPVAL U1
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K7 ["getSkipSet"]
       41 CALL                             R4 0 1
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 NEWCLOSURE                       R6 P2
       46 CAPTURE                          REF R2
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R6
       50 MOVE                             R7 R5
       51 MOVE                             R8 R1
       52 CALL                             R7 1 0
       53 GETTABLEKS                       R7 R1 K8 ["Id"]
       55 JUMPIF                           R7 ; [+3]
       56 SETTABLEKS                       R2 R1 K8 ["Id"]
       58 ADDK                             R2 R2 K9 [1]
       59 GETTABLEKS                       R7 R1 K8 ["Id"]
       61 JUMPIFNOT                        R7 ; [+6]
       62 GETUPVAL                         R7 1
       63 GETTABLEKS                       R7 R7 K3 ["nodeById"]
       65 GETTABLEKS                       R8 R1 K8 ["Id"]
       67 SETTABLE                         R1 R7 R8
       68 GETTABLEKS                       R7 R1 K10 ["Children"]
       70 JUMPIFNOT                        R7 ; [+30]
       71 GETTABLEKS                       R7 R1 K10 ["Children"]
       73 LOADNIL                          R8
       74 LOADNIL                          R9
       75 FORGPREP                         R7
       76 GETTABLEKS                       R12 R11 K11 ["Name"]
       78 JUMPIFNOT                        R12 ; [+15]
       79 GETUPVAL                         R13 3
       80 GETTABLEKS                       R13 R13 K12 ["PassRamps"]
       82 GETTABLEKS                       R14 R11 K11 ["Name"]
       84 GETTABLE                         R12 R13 R14
       85 JUMPIFNOT                        R12 ; [+8]
       86 GETUPVAL                         R13 3
       87 GETTABLEKS                       R13 R13 K12 ["PassRamps"]
       89 GETTABLEKS                       R14 R11 K11 ["Name"]
       91 GETTABLE                         R12 R13 R14
       92 SETTABLEKS                       R12 R11 K13 ["colorRamp"]
       94 MOVE                             R12 R6
       95 MOVE                             R13 R11
       96 GETTABLEKS                       R14 R1 K8 ["Id"]
       98 CALL                             R12 2 0
       99 FORGLOOP                         R7 2 ; [-24]
      101 GETUPVAL                         R7 4
      102 MOVE                             R8 R1
      103 CALL                             R7 1 1
      104 GETUPVAL                         R8 5
      105 GETTABLEKS                       R8 R8 K14 ["get"]
      107 CALL                             R8 0 1
      108 GETUPVAL                         R9 6
      109 MOVE                             R10 R7
      110 MOVE                             R11 R8
      111 CALL                             R9 2 1
      112 GETUPVAL                         R10 7
      113 MOVE                             R11 R1
      114 CALL                             R10 1 0
      115 GETUPVAL                         R10 8
      116 MOVE                             R11 R1
      117 CALL                             R10 1 0
      118 GETUPVAL                         R10 9
      119 MOVE                             R11 R9
      120 CALL                             R10 1 0
      121 GETUPVAL                         R10 10
      122 LENGTH                           R11 R9
      123 CALL                             R10 1 0
      124 CLOSEUPVALS                      R2
      125 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 DUPTABLE                         R5 K2 [{"column", "direction"}]
        3 SETTABLEKS                       R1 R5 K0 ["column"]
        5 SETTABLEKS                       R2 R5 K1 ["direction"]
        7 CALL                             R3 2 1
        8 RETURN                           R3 1

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
       22 GETTABLEKS                       R4 R4 K9 ["Resources"]
       24 GETTABLEKS                       R4 R4 K10 ["ColorRamps"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K7 ["Util"]
       33 GETTABLEKS                       R5 R5 K11 ["Observable"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R1 K6 ["Src"]
       40 GETTABLEKS                       R6 R6 K7 ["Util"]
       42 GETTABLEKS                       R6 R6 K12 ["deepFreeze"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R1 K6 ["Src"]
       49 GETTABLEKS                       R7 R7 K7 ["Util"]
       51 GETTABLEKS                       R7 R7 K13 ["measureHeaderText"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R1 K6 ["Src"]
       58 GETTABLEKS                       R8 R8 K7 ["Util"]
       60 GETTABLEKS                       R8 R8 K14 ["abridgePath"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R1 K6 ["Src"]
       67 GETTABLEKS                       R9 R9 K15 ["Components"]
       69 GETTABLEKS                       R9 R9 K16 ["AbridgedPathCell"]
       71 CALL                             R8 1 1
       72 DUPCLOSURE                       R9 K17 [PROTO_0]
       73 DUPCLOSURE                       R10 K18 [PROTO_1]
       74 CAPTURE                          VAL R7
       75 DUPCLOSURE                       R11 K19 [PROTO_2]
       76 NEWTABLE                         R12 0 6
       78 DUPTABLE                         R13 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       79 LOADK                            R14 K30 ["name"]
       80 SETTABLEKS                       R14 R13 K20 ["id"]
       82 LOADK                            R14 K31 ["Name"]
       83 SETTABLEKS                       R14 R13 K21 ["headerText"]
       85 LOADK                            R14 K31 ["Name"]
       86 SETTABLEKS                       R14 R13 K22 ["headerKey"]
       88 LOADK                            R14 K30 ["name"]
       89 SETTABLEKS                       R14 R13 K23 ["sortKey"]
       91 LOADK                            R14 K32 [0.3]
       92 SETTABLEKS                       R14 R13 K24 ["width"]
       94 LOADN                            R14 180
       95 SETTABLEKS                       R14 R13 K25 ["idealWidth"]
       97 LOADN                            R14 1
       98 SETTABLEKS                       R14 R13 K26 ["priority"]
      100 LOADN                            R14 1
      101 SETTABLEKS                       R14 R13 K27 ["order"]
      103 DUPCLOSURE                       R14 K33 [PROTO_3]
      104 SETTABLEKS                       R14 R13 K28 ["cell"]
      106 DUPTABLE                         R14 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      107 LOADK                            R15 K34 ["triangles"]
      108 SETTABLEKS                       R15 R14 K20 ["id"]
      110 LOADK                            R15 K35 ["Triangles"]
      111 SETTABLEKS                       R15 R14 K21 ["headerText"]
      113 LOADK                            R15 K35 ["Triangles"]
      114 SETTABLEKS                       R15 R14 K22 ["headerKey"]
      116 LOADK                            R15 K34 ["triangles"]
      117 SETTABLEKS                       R15 R14 K23 ["sortKey"]
      119 LOADK                            R15 K36 [0.12]
      120 SETTABLEKS                       R15 R14 K24 ["width"]
      122 LOADN                            R15 80
      123 SETTABLEKS                       R15 R14 K25 ["idealWidth"]
      125 LOADN                            R15 2
      126 SETTABLEKS                       R15 R14 K26 ["priority"]
      128 LOADN                            R15 2
      129 SETTABLEKS                       R15 R14 K27 ["order"]
      131 DUPCLOSURE                       R15 K37 [PROTO_4]
      132 CAPTURE                          VAL R9
      133 SETTABLEKS                       R15 R14 K28 ["cell"]
      135 DUPTABLE                         R15 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      136 LOADK                            R16 K38 ["meshTriangles"]
      137 SETTABLEKS                       R16 R15 K20 ["id"]
      139 LOADK                            R16 K39 ["Mesh Tri"]
      140 SETTABLEKS                       R16 R15 K21 ["headerText"]
      142 LOADK                            R16 K40 ["MeshTriangles"]
      143 SETTABLEKS                       R16 R15 K22 ["headerKey"]
      145 LOADK                            R16 K38 ["meshTriangles"]
      146 SETTABLEKS                       R16 R15 K23 ["sortKey"]
      148 LOADK                            R16 K41 [0.1]
      149 SETTABLEKS                       R16 R15 K24 ["width"]
      151 LOADN                            R16 75
      152 SETTABLEKS                       R16 R15 K25 ["idealWidth"]
      154 LOADN                            R16 5
      155 SETTABLEKS                       R16 R15 K26 ["priority"]
      157 LOADN                            R16 3
      158 SETTABLEKS                       R16 R15 K27 ["order"]
      160 DUPCLOSURE                       R16 K42 [PROTO_5]
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R11
      163 SETTABLEKS                       R16 R15 K28 ["cell"]
      165 DUPTABLE                         R16 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      166 LOADK                            R17 K43 ["instanceCount"]
      167 SETTABLEKS                       R17 R16 K20 ["id"]
      169 LOADK                            R17 K44 ["Instances"]
      170 SETTABLEKS                       R17 R16 K21 ["headerText"]
      172 LOADK                            R17 K44 ["Instances"]
      173 SETTABLEKS                       R17 R16 K22 ["headerKey"]
      175 LOADK                            R17 K43 ["instanceCount"]
      176 SETTABLEKS                       R17 R16 K23 ["sortKey"]
      178 LOADK                            R17 K41 [0.1]
      179 SETTABLEKS                       R17 R16 K24 ["width"]
      181 LOADN                            R17 80
      182 SETTABLEKS                       R17 R16 K25 ["idealWidth"]
      184 LOADN                            R17 3
      185 SETTABLEKS                       R17 R16 K26 ["priority"]
      187 LOADN                            R17 4
      188 SETTABLEKS                       R17 R16 K27 ["order"]
      190 DUPCLOSURE                       R17 K45 [PROTO_6]
      191 CAPTURE                          VAL R9
      192 SETTABLEKS                       R17 R16 K28 ["cell"]
      194 DUPTABLE                         R17 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      195 LOADK                            R18 K46 ["assetId"]
      196 SETTABLEKS                       R18 R17 K20 ["id"]
      198 LOADK                            R18 K47 ["Asset Id"]
      199 SETTABLEKS                       R18 R17 K21 ["headerText"]
      201 LOADK                            R18 K48 ["AssetId"]
      202 SETTABLEKS                       R18 R17 K22 ["headerKey"]
      204 LOADK                            R18 K46 ["assetId"]
      205 SETTABLEKS                       R18 R17 K23 ["sortKey"]
      207 LOADK                            R18 K49 [0.15]
      208 SETTABLEKS                       R18 R17 K24 ["width"]
      210 LOADN                            R18 120
      211 SETTABLEKS                       R18 R17 K25 ["idealWidth"]
      213 LOADN                            R18 5
      214 SETTABLEKS                       R18 R17 K26 ["priority"]
      216 LOADN                            R18 5
      217 SETTABLEKS                       R18 R17 K27 ["order"]
      219 DUPCLOSURE                       R18 K50 [PROTO_7]
      220 SETTABLEKS                       R18 R17 K28 ["cell"]
      222 DUPTABLE                         R18 K52 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "renderCell", "cell"}]
      223 LOADK                            R19 K53 ["instances"]
      224 SETTABLEKS                       R19 R18 K20 ["id"]
      226 LOADK                            R19 K54 ["Instance Paths"]
      227 SETTABLEKS                       R19 R18 K21 ["headerText"]
      229 LOADK                            R19 K55 ["InstancePaths"]
      230 SETTABLEKS                       R19 R18 K22 ["headerKey"]
      232 LOADK                            R19 K53 ["instances"]
      233 SETTABLEKS                       R19 R18 K23 ["sortKey"]
      235 LOADK                            R19 K56 [0.23]
      236 SETTABLEKS                       R19 R18 K24 ["width"]
      238 LOADN                            R19 250
      239 SETTABLEKS                       R19 R18 K25 ["idealWidth"]
      241 LOADN                            R19 7
      242 SETTABLEKS                       R19 R18 K26 ["priority"]
      244 LOADN                            R19 6
      245 SETTABLEKS                       R19 R18 K27 ["order"]
      247 SETTABLEKS                       R8 R18 K51 ["renderCell"]
      249 DUPCLOSURE                       R19 K57 [PROTO_8]
      250 CAPTURE                          VAL R10
      251 SETTABLEKS                       R19 R18 K28 ["cell"]
      253 SETLIST                          R12 R13 6 [1]
      255 MOVE                             R13 R12
      256 LOADNIL                          R14
      257 LOADNIL                          R15
      258 FORGPREP                         R13
      259 MOVE                             R18 R6
      260 GETTABLEKS                       R19 R17 K21 ["headerText"]
      262 CALL                             R18 1 1
      263 SETTABLEKS                       R18 R17 K58 ["minWidth"]
      265 FORGLOOP                         R13 2 ; [-7]
      267 LOADB                            R13 1
      268 SETTABLEKS                       R13 R0 K59 ["syncWithExplorer"]
      270 NEWTABLE                         R13 0 0
      272 SETTABLEKS                       R13 R0 K60 ["instanceOrder"]
      274 NEWTABLE                         R13 0 0
      276 SETTABLEKS                       R13 R0 K61 ["nodeById"]
      278 NEWTABLE                         R13 0 0
      280 SETTABLEKS                       R13 R0 K62 ["parentById"]
      282 NEWTABLE                         R13 0 0
      284 SETTABLEKS                       R13 R0 K63 ["debugIdToNodeIds"]
      286 NEWTABLE                         R13 0 0
      288 SETTABLEKS                       R13 R0 K64 ["pathToNodeIds"]
      290 NEWTABLE                         R13 0 3
      292 DUPTABLE                         R14 K67 [{"id", "text", "default"}]
      293 LOADK                            R15 K68 ["scene"]
      294 SETTABLEKS                       R15 R14 K20 ["id"]
      296 LOADK                            R15 K69 ["Scene"]
      297 SETTABLEKS                       R15 R14 K65 ["text"]
      299 LOADB                            R15 1
      300 SETTABLEKS                       R15 R14 K66 ["default"]
      302 DUPTABLE                         R15 K67 [{"id", "text", "default"}]
      303 LOADK                            R16 K70 ["shadows"]
      304 SETTABLEKS                       R16 R15 K20 ["id"]
      306 LOADK                            R16 K71 ["Shadows"]
      307 SETTABLEKS                       R16 R15 K65 ["text"]
      309 LOADB                            R16 0
      310 SETTABLEKS                       R16 R15 K66 ["default"]
      312 DUPTABLE                         R16 K67 [{"id", "text", "default"}]
      313 LOADK                            R17 K72 ["terrain"]
      314 SETTABLEKS                       R17 R16 K20 ["id"]
      316 LOADK                            R17 K73 ["Terrain"]
      317 SETTABLEKS                       R17 R16 K65 ["text"]
      319 LOADB                            R17 1
      320 SETTABLEKS                       R17 R16 K66 ["default"]
      322 SETLIST                          R13 R14 3 [1]
      324 SETTABLEKS                       R13 R0 K74 ["filterOptions"]
      326 DUPTABLE                         R13 K75 [{"scene", "shadows", "terrain"}]
      327 DUPTABLE                         R14 K77 [{"Default"}]
      328 LOADB                            R15 1
      329 SETTABLEKS                       R15 R14 K76 ["Default"]
      331 SETTABLEKS                       R14 R13 K68 ["scene"]
      333 DUPTABLE                         R14 K80 [{"CastShadows", "CastShadowsPancaked"}]
      334 LOADB                            R15 1
      335 SETTABLEKS                       R15 R14 K78 ["CastShadows"]
      337 LOADB                            R15 1
      338 SETTABLEKS                       R15 R14 K79 ["CastShadowsPancaked"]
      340 SETTABLEKS                       R14 R13 K70 ["shadows"]
      342 DUPTABLE                         R14 K82 [{"Terrain", "Grass"}]
      343 LOADB                            R15 1
      344 SETTABLEKS                       R15 R14 K73 ["Terrain"]
      346 LOADB                            R15 1
      347 SETTABLEKS                       R15 R14 K81 ["Grass"]
      349 SETTABLEKS                       R14 R13 K72 ["terrain"]
      351 DUPTABLE                         R14 K86 [{"Depth", "StudioSelection", "StudioSelectionHover"}]
      352 LOADB                            R15 1
      353 SETTABLEKS                       R15 R14 K83 ["Depth"]
      355 LOADB                            R15 1
      356 SETTABLEKS                       R15 R14 K84 ["StudioSelection"]
      358 LOADB                            R15 1
      359 SETTABLEKS                       R15 R14 K85 ["StudioSelectionHover"]
      361 DUPCLOSURE                       R15 K87 [PROTO_9]
      362 CAPTURE                          VAL R0
      363 GETTABLEKS                       R16 R4 K88 ["create"]
      365 NEWTABLE                         R18 0 0
      367 GETTABLEKS                       R19 R0 K74 ["filterOptions"]
      369 LOADNIL                          R20
      370 LOADNIL                          R21
      371 FORGPREP                         R19
      372 GETTABLEKS                       R24 R23 K20 ["id"]
      374 GETTABLEKS                       R25 R23 K66 ["default"]
      376 SETTABLE                         R25 R18 R24
      377 FORGLOOP                         R19 2 ; [-6]
      379 MOVE                             R17 R18
      380 CALL                             R16 1 2
      381 DUPCLOSURE                       R18 K89 [PROTO_10]
      382 CAPTURE                          VAL R16
      383 SETTABLEKS                       R18 R0 K90 ["getFilterStateObservable"]
      385 DUPCLOSURE                       R18 K91 [PROTO_11]
      386 CAPTURE                          VAL R16
      387 CAPTURE                          VAL R17
      388 SETTABLEKS                       R18 R0 K92 ["setFilter"]
      390 DUPCLOSURE                       R18 K93 [PROTO_12]
      391 CAPTURE                          VAL R14
      392 CAPTURE                          VAL R16
      393 CAPTURE                          VAL R13
      394 SETTABLEKS                       R18 R0 K94 ["getSkipSet"]
      396 GETIMPORT                        R18 K97 [table.freeze]
      398 DUPTABLE                         R19 K100 [{"Column", "Direction"}]
      399 GETIMPORT                        R20 K97 [table.freeze]
      401 DUPTABLE                         R21 K102 [{"none", "name", "triangles", "meshTriangles", "instanceCount", "assetId", "instances"}]
      402 LOADK                            R22 K101 ["none"]
      403 SETTABLEKS                       R22 R21 K101 ["none"]
      405 LOADK                            R22 K30 ["name"]
      406 SETTABLEKS                       R22 R21 K30 ["name"]
      408 LOADK                            R22 K34 ["triangles"]
      409 SETTABLEKS                       R22 R21 K34 ["triangles"]
      411 LOADK                            R22 K38 ["meshTriangles"]
      412 SETTABLEKS                       R22 R21 K38 ["meshTriangles"]
      414 LOADK                            R22 K43 ["instanceCount"]
      415 SETTABLEKS                       R22 R21 K43 ["instanceCount"]
      417 LOADK                            R22 K46 ["assetId"]
      418 SETTABLEKS                       R22 R21 K46 ["assetId"]
      420 LOADK                            R22 K53 ["instances"]
      421 SETTABLEKS                       R22 R21 K53 ["instances"]
      423 CALL                             R20 1 1
      424 SETTABLEKS                       R20 R19 K98 ["Column"]
      426 GETIMPORT                        R20 K97 [table.freeze]
      428 DUPTABLE                         R21 K105 [{"asc", "desc"}]
      429 LOADK                            R22 K103 ["asc"]
      430 SETTABLEKS                       R22 R21 K103 ["asc"]
      432 LOADK                            R22 K104 ["desc"]
      433 SETTABLEKS                       R22 R21 K104 ["desc"]
      435 CALL                             R20 1 1
      436 SETTABLEKS                       R20 R19 K99 ["Direction"]
      438 CALL                             R18 1 1
      439 MOVE                             R19 R5
      440 DUPTABLE                         R20 K108 [{"Name", "Size", "Children"}]
      441 LOADK                            R21 K109 ["Root"]
      442 SETTABLEKS                       R21 R20 K31 ["Name"]
      444 LOADN                            R21 0
      445 SETTABLEKS                       R21 R20 K106 ["Size"]
      447 NEWTABLE                         R21 0 0
      449 SETTABLEKS                       R21 R20 K107 ["Children"]
      451 CALL                             R19 1 1
      452 GETTABLEKS                       R20 R4 K88 ["create"]
      454 MOVE                             R21 R19
      455 CALL                             R20 1 2
      456 GETTABLEKS                       R22 R4 K88 ["create"]
      458 NEWTABLE                         R23 0 0
      460 CALL                             R22 1 2
      461 GETTABLEKS                       R24 R4 K88 ["create"]
      463 MOVE                             R25 R5
      464 DUPTABLE                         R26 K112 [{"column", "direction"}]
      465 GETTABLEKS                       R27 R18 K98 ["Column"]
      467 GETTABLEKS                       R27 R27 K34 ["triangles"]
      469 SETTABLEKS                       R27 R26 K110 ["column"]
      471 GETTABLEKS                       R27 R18 K99 ["Direction"]
      473 GETTABLEKS                       R27 R27 K104 ["desc"]
      475 SETTABLEKS                       R27 R26 K111 ["direction"]
      477 CALL                             R25 1 -1
      478 CALL                             R24 -1 2
      479 GETTABLEKS                       R26 R4 K88 ["create"]
      481 LOADN                            R27 0
      482 CALL                             R26 1 2
      483 DUPCLOSURE                       R28 K113 [PROTO_13]
      484 CAPTURE                          VAL R20
      485 SETTABLEKS                       R28 R0 K114 ["getNodesObservable"]
      487 DUPCLOSURE                       R28 K115 [PROTO_14]
      488 CAPTURE                          VAL R22
      489 SETTABLEKS                       R28 R0 K116 ["getOrderObservable"]
      491 DUPCLOSURE                       R28 K117 [PROTO_15]
      492 CAPTURE                          VAL R24
      493 SETTABLEKS                       R28 R0 K118 ["getSortStateObservable"]
      495 DUPCLOSURE                       R28 K119 [PROTO_16]
      496 CAPTURE                          VAL R26
      497 SETTABLEKS                       R28 R0 K120 ["getTotalCountObservable"]
      499 DUPCLOSURE                       R28 K121 [PROTO_17]
      500 CAPTURE                          VAL R12
      501 SETTABLEKS                       R28 R0 K122 ["getColumns"]
      503 DUPCLOSURE                       R28 K123 [PROTO_19]
      504 DUPCLOSURE                       R29 K124 [PROTO_21]
      505 CAPTURE                          VAL R18
      506 CAPTURE                          VAL R11
      507 CAPTURE                          VAL R10
      508 DUPCLOSURE                       R30 K125 [PROTO_22]
      509 CAPTURE                          VAL R24
      510 CAPTURE                          VAL R18
      511 CAPTURE                          VAL R5
      512 CAPTURE                          VAL R25
      513 CAPTURE                          VAL R20
      514 CAPTURE                          VAL R28
      515 CAPTURE                          VAL R29
      516 CAPTURE                          VAL R23
      517 CAPTURE                          VAL R27
      518 SETTABLEKS                       R30 R0 K126 ["setSort"]
      520 DUPCLOSURE                       R30 K127 [PROTO_23]
      521 CAPTURE                          VAL R21
      522 CAPTURE                          VAL R19
      523 CAPTURE                          VAL R23
      524 CAPTURE                          VAL R27
      525 CAPTURE                          VAL R0
      526 SETTABLEKS                       R30 R0 K128 ["reset"]
      528 DUPCLOSURE                       R30 K129 [PROTO_27]
      529 SETTABLEKS                       R30 R0 K130 ["tooltipLabels"]
      531 DUPCLOSURE                       R30 K131 [PROTO_28]
      532 CAPTURE                          VAL R22
      533 SETTABLEKS                       R30 R0 K132 ["getIndexForId"]
      535 DUPCLOSURE                       R30 K133 [PROTO_29]
      536 CAPTURE                          VAL R0
      537 SETTABLEKS                       R30 R0 K134 ["getNodeById"]
      539 DUPCLOSURE                       R30 K135 [PROTO_30]
      540 CAPTURE                          VAL R16
      541 SETTABLEKS                       R30 R0 K136 ["getWarnings"]
      543 DUPCLOSURE                       R30 K137 [PROTO_31]
      544 CAPTURE                          VAL R0
      545 SETTABLEKS                       R30 R0 K138 ["getNodeIdsForInstances"]
      547 DUPCLOSURE                       R30 K139 [PROTO_32]
      548 CAPTURE                          VAL R0
      549 CAPTURE                          VAL R2
      550 SETTABLEKS                       R30 R0 K140 ["onRightClick"]
      552 DUPCLOSURE                       R30 K141 [PROTO_33]
      553 CAPTURE                          VAL R0
      554 SETTABLEKS                       R30 R0 K142 ["getDepth"]
      556 DUPCLOSURE                       R30 K143 [PROTO_34]
      557 CAPTURE                          VAL R22
      558 CAPTURE                          VAL R0
      559 SETTABLEKS                       R30 R0 K144 ["getNodeAtIndex"]
      561 DUPCLOSURE                       R30 K145 [PROTO_38]
      562 CAPTURE                          VAL R2
      563 CAPTURE                          VAL R0
      564 CAPTURE                          VAL R19
      565 CAPTURE                          VAL R3
      566 CAPTURE                          VAL R28
      567 CAPTURE                          VAL R24
      568 CAPTURE                          VAL R29
      569 CAPTURE                          VAL R5
      570 CAPTURE                          VAL R21
      571 CAPTURE                          VAL R23
      572 CAPTURE                          VAL R27
      573 SETTABLEKS                       R30 R0 K146 ["RunQueryAsync"]
      575 DUPCLOSURE                       R30 K147 [PROTO_39]
      576 CAPTURE                          VAL R29
      577 SETTABLEKS                       R30 R0 K148 ["sortedIds"]
      579 RETURN                           R0 1
