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
        7 JUMPIF                           R1 ; [+13]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["reset"]
       18 CALL                             R2 0 0
       19 GETUPVAL                         R2 3
       20 RETURN                           R2 1
       21 GETUPVAL                         R2 2
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K4 ["nodeById"]
       26 GETUPVAL                         R2 2
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K5 ["parentById"]
       31 GETUPVAL                         R2 2
       32 NEWTABLE                         R3 0 0
       34 SETTABLEKS                       R3 R2 K6 ["debugIdToNodeIds"]
       36 GETUPVAL                         R2 2
       37 NEWTABLE                         R3 0 0
       39 SETTABLEKS                       R3 R2 K7 ["pathToNodeIds"]
       41 LOADN                            R2 1
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          REF R2
       44 CAPTURE                          UPVAL U2
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K8 ["getSkipSet"]
       48 CALL                             R4 0 1
       49 NEWCLOSURE                       R5 P1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 NEWCLOSURE                       R6 P2
       53 CAPTURE                          REF R2
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R6
       57 MOVE                             R7 R5
       58 MOVE                             R8 R1
       59 CALL                             R7 1 0
       60 GETTABLEKS                       R7 R1 K9 ["Id"]
       62 JUMPIF                           R7 ; [+3]
       63 SETTABLEKS                       R2 R1 K9 ["Id"]
       65 ADDK                             R2 R2 K10 [1]
       66 GETTABLEKS                       R7 R1 K9 ["Id"]
       68 JUMPIFNOT                        R7 ; [+6]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R7 R7 K4 ["nodeById"]
       72 GETTABLEKS                       R8 R1 K9 ["Id"]
       74 SETTABLE                         R1 R7 R8
       75 GETTABLEKS                       R7 R1 K11 ["Children"]
       77 JUMPIFNOT                        R7 ; [+30]
       78 GETTABLEKS                       R7 R1 K11 ["Children"]
       80 LOADNIL                          R8
       81 LOADNIL                          R9
       82 FORGPREP                         R7
       83 GETTABLEKS                       R12 R11 K12 ["Name"]
       85 JUMPIFNOT                        R12 ; [+15]
       86 GETUPVAL                         R13 4
       87 GETTABLEKS                       R13 R13 K13 ["PassRamps"]
       89 GETTABLEKS                       R14 R11 K12 ["Name"]
       91 GETTABLE                         R12 R13 R14
       92 JUMPIFNOT                        R12 ; [+8]
       93 GETUPVAL                         R13 4
       94 GETTABLEKS                       R13 R13 K13 ["PassRamps"]
       96 GETTABLEKS                       R14 R11 K12 ["Name"]
       98 GETTABLE                         R12 R13 R14
       99 SETTABLEKS                       R12 R11 K14 ["colorRamp"]
      101 MOVE                             R12 R6
      102 MOVE                             R13 R11
      103 GETTABLEKS                       R14 R1 K9 ["Id"]
      105 CALL                             R12 2 0
      106 FORGLOOP                         R7 2 ; [-24]
      108 GETUPVAL                         R7 5
      109 MOVE                             R8 R1
      110 CALL                             R7 1 1
      111 GETUPVAL                         R8 6
      112 GETTABLEKS                       R8 R8 K15 ["get"]
      114 CALL                             R8 0 1
      115 GETUPVAL                         R9 7
      116 MOVE                             R10 R7
      117 MOVE                             R11 R8
      118 CALL                             R9 2 1
      119 GETUPVAL                         R10 8
      120 MOVE                             R11 R1
      121 CALL                             R10 1 0
      122 GETUPVAL                         R10 9
      123 MOVE                             R11 R1
      124 CALL                             R10 1 0
      125 GETUPVAL                         R10 10
      126 MOVE                             R11 R9
      127 CALL                             R10 1 0
      128 GETUPVAL                         R10 11
      129 LENGTH                           R11 R9
      130 CALL                             R10 1 0
      131 CLOSEUPVALS                      R2
      132 RETURN                           R1 1

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
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R1 K17 ["Bin"]
       76 GETTABLEKS                       R10 R10 K18 ["Common"]
       78 GETTABLEKS                       R10 R10 K19 ["defineLuaFlags"]
       80 CALL                             R9 1 1
       81 DUPCLOSURE                       R10 K20 [PROTO_0]
       82 DUPCLOSURE                       R11 K21 [PROTO_1]
       83 CAPTURE                          VAL R7
       84 DUPCLOSURE                       R12 K22 [PROTO_2]
       85 NEWTABLE                         R13 0 6
       87 DUPTABLE                         R14 K32 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       88 LOADK                            R15 K33 ["name"]
       89 SETTABLEKS                       R15 R14 K23 ["id"]
       91 LOADK                            R15 K34 ["Name"]
       92 SETTABLEKS                       R15 R14 K24 ["headerText"]
       94 LOADK                            R15 K34 ["Name"]
       95 SETTABLEKS                       R15 R14 K25 ["headerKey"]
       97 LOADK                            R15 K33 ["name"]
       98 SETTABLEKS                       R15 R14 K26 ["sortKey"]
      100 LOADK                            R15 K35 [0.3]
      101 SETTABLEKS                       R15 R14 K27 ["width"]
      103 LOADN                            R15 180
      104 SETTABLEKS                       R15 R14 K28 ["idealWidth"]
      106 LOADN                            R15 1
      107 SETTABLEKS                       R15 R14 K29 ["priority"]
      109 LOADN                            R15 1
      110 SETTABLEKS                       R15 R14 K30 ["order"]
      112 DUPCLOSURE                       R15 K36 [PROTO_3]
      113 SETTABLEKS                       R15 R14 K31 ["cell"]
      115 DUPTABLE                         R15 K32 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      116 LOADK                            R16 K37 ["triangles"]
      117 SETTABLEKS                       R16 R15 K23 ["id"]
      119 LOADK                            R16 K38 ["Triangles"]
      120 SETTABLEKS                       R16 R15 K24 ["headerText"]
      122 LOADK                            R16 K38 ["Triangles"]
      123 SETTABLEKS                       R16 R15 K25 ["headerKey"]
      125 LOADK                            R16 K37 ["triangles"]
      126 SETTABLEKS                       R16 R15 K26 ["sortKey"]
      128 LOADK                            R16 K39 [0.12]
      129 SETTABLEKS                       R16 R15 K27 ["width"]
      131 LOADN                            R16 80
      132 SETTABLEKS                       R16 R15 K28 ["idealWidth"]
      134 LOADN                            R16 2
      135 SETTABLEKS                       R16 R15 K29 ["priority"]
      137 LOADN                            R16 2
      138 SETTABLEKS                       R16 R15 K30 ["order"]
      140 DUPCLOSURE                       R16 K40 [PROTO_4]
      141 CAPTURE                          VAL R10
      142 SETTABLEKS                       R16 R15 K31 ["cell"]
      144 DUPTABLE                         R16 K32 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      145 LOADK                            R17 K41 ["meshTriangles"]
      146 SETTABLEKS                       R17 R16 K23 ["id"]
      148 LOADK                            R17 K42 ["Mesh Tri"]
      149 SETTABLEKS                       R17 R16 K24 ["headerText"]
      151 LOADK                            R17 K43 ["MeshTriangles"]
      152 SETTABLEKS                       R17 R16 K25 ["headerKey"]
      154 LOADK                            R17 K41 ["meshTriangles"]
      155 SETTABLEKS                       R17 R16 K26 ["sortKey"]
      157 LOADK                            R17 K44 [0.1]
      158 SETTABLEKS                       R17 R16 K27 ["width"]
      160 LOADN                            R17 75
      161 SETTABLEKS                       R17 R16 K28 ["idealWidth"]
      163 LOADN                            R17 5
      164 SETTABLEKS                       R17 R16 K29 ["priority"]
      166 LOADN                            R17 3
      167 SETTABLEKS                       R17 R16 K30 ["order"]
      169 DUPCLOSURE                       R17 K45 [PROTO_5]
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R12
      172 SETTABLEKS                       R17 R16 K31 ["cell"]
      174 DUPTABLE                         R17 K32 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      175 LOADK                            R18 K46 ["instanceCount"]
      176 SETTABLEKS                       R18 R17 K23 ["id"]
      178 LOADK                            R18 K47 ["Instances"]
      179 SETTABLEKS                       R18 R17 K24 ["headerText"]
      181 LOADK                            R18 K47 ["Instances"]
      182 SETTABLEKS                       R18 R17 K25 ["headerKey"]
      184 LOADK                            R18 K46 ["instanceCount"]
      185 SETTABLEKS                       R18 R17 K26 ["sortKey"]
      187 LOADK                            R18 K44 [0.1]
      188 SETTABLEKS                       R18 R17 K27 ["width"]
      190 LOADN                            R18 80
      191 SETTABLEKS                       R18 R17 K28 ["idealWidth"]
      193 LOADN                            R18 3
      194 SETTABLEKS                       R18 R17 K29 ["priority"]
      196 LOADN                            R18 4
      197 SETTABLEKS                       R18 R17 K30 ["order"]
      199 DUPCLOSURE                       R18 K48 [PROTO_6]
      200 CAPTURE                          VAL R10
      201 SETTABLEKS                       R18 R17 K31 ["cell"]
      203 DUPTABLE                         R18 K32 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      204 LOADK                            R19 K49 ["assetId"]
      205 SETTABLEKS                       R19 R18 K23 ["id"]
      207 LOADK                            R19 K50 ["Asset Id"]
      208 SETTABLEKS                       R19 R18 K24 ["headerText"]
      210 LOADK                            R19 K51 ["AssetId"]
      211 SETTABLEKS                       R19 R18 K25 ["headerKey"]
      213 LOADK                            R19 K49 ["assetId"]
      214 SETTABLEKS                       R19 R18 K26 ["sortKey"]
      216 LOADK                            R19 K52 [0.15]
      217 SETTABLEKS                       R19 R18 K27 ["width"]
      219 LOADN                            R19 120
      220 SETTABLEKS                       R19 R18 K28 ["idealWidth"]
      222 LOADN                            R19 5
      223 SETTABLEKS                       R19 R18 K29 ["priority"]
      225 LOADN                            R19 5
      226 SETTABLEKS                       R19 R18 K30 ["order"]
      228 DUPCLOSURE                       R19 K53 [PROTO_7]
      229 SETTABLEKS                       R19 R18 K31 ["cell"]
      231 DUPTABLE                         R19 K55 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "renderCell", "cell"}]
      232 LOADK                            R20 K56 ["instances"]
      233 SETTABLEKS                       R20 R19 K23 ["id"]
      235 LOADK                            R20 K57 ["Instance Paths"]
      236 SETTABLEKS                       R20 R19 K24 ["headerText"]
      238 LOADK                            R20 K58 ["InstancePaths"]
      239 SETTABLEKS                       R20 R19 K25 ["headerKey"]
      241 LOADK                            R20 K56 ["instances"]
      242 SETTABLEKS                       R20 R19 K26 ["sortKey"]
      244 LOADK                            R20 K59 [0.23]
      245 SETTABLEKS                       R20 R19 K27 ["width"]
      247 LOADN                            R20 250
      248 SETTABLEKS                       R20 R19 K28 ["idealWidth"]
      250 LOADN                            R20 7
      251 SETTABLEKS                       R20 R19 K29 ["priority"]
      253 LOADN                            R20 6
      254 SETTABLEKS                       R20 R19 K30 ["order"]
      256 SETTABLEKS                       R8 R19 K54 ["renderCell"]
      258 DUPCLOSURE                       R20 K60 [PROTO_8]
      259 CAPTURE                          VAL R11
      260 SETTABLEKS                       R20 R19 K31 ["cell"]
      262 SETLIST                          R13 R14 6 [1]
      264 MOVE                             R14 R13
      265 LOADNIL                          R15
      266 LOADNIL                          R16
      267 FORGPREP                         R14
      268 MOVE                             R19 R6
      269 GETTABLEKS                       R20 R18 K24 ["headerText"]
      271 CALL                             R19 1 1
      272 SETTABLEKS                       R19 R18 K61 ["minWidth"]
      274 FORGLOOP                         R14 2 ; [-7]
      276 LOADB                            R14 1
      277 SETTABLEKS                       R14 R0 K62 ["syncWithExplorer"]
      279 NEWTABLE                         R14 0 0
      281 SETTABLEKS                       R14 R0 K63 ["instanceOrder"]
      283 NEWTABLE                         R14 0 0
      285 SETTABLEKS                       R14 R0 K64 ["nodeById"]
      287 NEWTABLE                         R14 0 0
      289 SETTABLEKS                       R14 R0 K65 ["parentById"]
      291 NEWTABLE                         R14 0 0
      293 SETTABLEKS                       R14 R0 K66 ["debugIdToNodeIds"]
      295 NEWTABLE                         R14 0 0
      297 SETTABLEKS                       R14 R0 K67 ["pathToNodeIds"]
      299 NEWTABLE                         R14 0 3
      301 DUPTABLE                         R15 K70 [{"id", "text", "default"}]
      302 LOADK                            R16 K71 ["scene"]
      303 SETTABLEKS                       R16 R15 K23 ["id"]
      305 LOADK                            R16 K72 ["Scene"]
      306 SETTABLEKS                       R16 R15 K68 ["text"]
      308 LOADB                            R16 1
      309 SETTABLEKS                       R16 R15 K69 ["default"]
      311 DUPTABLE                         R16 K70 [{"id", "text", "default"}]
      312 LOADK                            R17 K73 ["shadows"]
      313 SETTABLEKS                       R17 R16 K23 ["id"]
      315 LOADK                            R17 K74 ["Shadows"]
      316 SETTABLEKS                       R17 R16 K68 ["text"]
      318 LOADB                            R17 0
      319 SETTABLEKS                       R17 R16 K69 ["default"]
      321 DUPTABLE                         R17 K70 [{"id", "text", "default"}]
      322 LOADK                            R18 K75 ["terrain"]
      323 SETTABLEKS                       R18 R17 K23 ["id"]
      325 LOADK                            R18 K76 ["Terrain"]
      326 SETTABLEKS                       R18 R17 K68 ["text"]
      328 LOADB                            R18 1
      329 SETTABLEKS                       R18 R17 K69 ["default"]
      331 SETLIST                          R14 R15 3 [1]
      333 SETTABLEKS                       R14 R0 K77 ["filterOptions"]
      335 DUPTABLE                         R14 K78 [{"scene", "shadows", "terrain"}]
      336 DUPTABLE                         R15 K80 [{"Default"}]
      337 LOADB                            R16 1
      338 SETTABLEKS                       R16 R15 K79 ["Default"]
      340 SETTABLEKS                       R15 R14 K71 ["scene"]
      342 DUPTABLE                         R15 K83 [{"CastShadows", "CastShadowsPancaked"}]
      343 LOADB                            R16 1
      344 SETTABLEKS                       R16 R15 K81 ["CastShadows"]
      346 LOADB                            R16 1
      347 SETTABLEKS                       R16 R15 K82 ["CastShadowsPancaked"]
      349 SETTABLEKS                       R15 R14 K73 ["shadows"]
      351 DUPTABLE                         R15 K85 [{"Terrain", "Grass"}]
      352 LOADB                            R16 1
      353 SETTABLEKS                       R16 R15 K76 ["Terrain"]
      355 LOADB                            R16 1
      356 SETTABLEKS                       R16 R15 K84 ["Grass"]
      358 SETTABLEKS                       R15 R14 K75 ["terrain"]
      360 DUPTABLE                         R15 K89 [{"Depth", "StudioSelection", "StudioSelectionHover"}]
      361 LOADB                            R16 1
      362 SETTABLEKS                       R16 R15 K86 ["Depth"]
      364 LOADB                            R16 1
      365 SETTABLEKS                       R16 R15 K87 ["StudioSelection"]
      367 LOADB                            R16 1
      368 SETTABLEKS                       R16 R15 K88 ["StudioSelectionHover"]
      370 DUPCLOSURE                       R16 K90 [PROTO_9]
      371 CAPTURE                          VAL R0
      372 GETTABLEKS                       R17 R4 K91 ["create"]
      374 NEWTABLE                         R19 0 0
      376 GETTABLEKS                       R20 R0 K77 ["filterOptions"]
      378 LOADNIL                          R21
      379 LOADNIL                          R22
      380 FORGPREP                         R20
      381 GETTABLEKS                       R25 R24 K23 ["id"]
      383 GETTABLEKS                       R26 R24 K69 ["default"]
      385 SETTABLE                         R26 R19 R25
      386 FORGLOOP                         R20 2 ; [-6]
      388 MOVE                             R18 R19
      389 CALL                             R17 1 2
      390 DUPCLOSURE                       R19 K92 [PROTO_10]
      391 CAPTURE                          VAL R17
      392 SETTABLEKS                       R19 R0 K93 ["getFilterStateObservable"]
      394 DUPCLOSURE                       R19 K94 [PROTO_11]
      395 CAPTURE                          VAL R17
      396 CAPTURE                          VAL R18
      397 SETTABLEKS                       R19 R0 K95 ["setFilter"]
      399 DUPCLOSURE                       R19 K96 [PROTO_12]
      400 CAPTURE                          VAL R15
      401 CAPTURE                          VAL R17
      402 CAPTURE                          VAL R14
      403 SETTABLEKS                       R19 R0 K97 ["getSkipSet"]
      405 GETIMPORT                        R19 K100 [table.freeze]
      407 DUPTABLE                         R20 K103 [{"Column", "Direction"}]
      408 GETIMPORT                        R21 K100 [table.freeze]
      410 DUPTABLE                         R22 K105 [{"none", "name", "triangles", "meshTriangles", "instanceCount", "assetId", "instances"}]
      411 LOADK                            R23 K104 ["none"]
      412 SETTABLEKS                       R23 R22 K104 ["none"]
      414 LOADK                            R23 K33 ["name"]
      415 SETTABLEKS                       R23 R22 K33 ["name"]
      417 LOADK                            R23 K37 ["triangles"]
      418 SETTABLEKS                       R23 R22 K37 ["triangles"]
      420 LOADK                            R23 K41 ["meshTriangles"]
      421 SETTABLEKS                       R23 R22 K41 ["meshTriangles"]
      423 LOADK                            R23 K46 ["instanceCount"]
      424 SETTABLEKS                       R23 R22 K46 ["instanceCount"]
      426 LOADK                            R23 K49 ["assetId"]
      427 SETTABLEKS                       R23 R22 K49 ["assetId"]
      429 LOADK                            R23 K56 ["instances"]
      430 SETTABLEKS                       R23 R22 K56 ["instances"]
      432 CALL                             R21 1 1
      433 SETTABLEKS                       R21 R20 K101 ["Column"]
      435 GETIMPORT                        R21 K100 [table.freeze]
      437 DUPTABLE                         R22 K108 [{"asc", "desc"}]
      438 LOADK                            R23 K106 ["asc"]
      439 SETTABLEKS                       R23 R22 K106 ["asc"]
      441 LOADK                            R23 K107 ["desc"]
      442 SETTABLEKS                       R23 R22 K107 ["desc"]
      444 CALL                             R21 1 1
      445 SETTABLEKS                       R21 R20 K102 ["Direction"]
      447 CALL                             R19 1 1
      448 MOVE                             R20 R5
      449 DUPTABLE                         R21 K111 [{"Name", "Size", "Children"}]
      450 LOADK                            R22 K112 ["Root"]
      451 SETTABLEKS                       R22 R21 K34 ["Name"]
      453 LOADN                            R22 0
      454 SETTABLEKS                       R22 R21 K109 ["Size"]
      456 NEWTABLE                         R22 0 0
      458 SETTABLEKS                       R22 R21 K110 ["Children"]
      460 CALL                             R20 1 1
      461 GETTABLEKS                       R21 R4 K91 ["create"]
      463 MOVE                             R22 R20
      464 CALL                             R21 1 2
      465 GETTABLEKS                       R23 R4 K91 ["create"]
      467 NEWTABLE                         R24 0 0
      469 CALL                             R23 1 2
      470 GETTABLEKS                       R25 R4 K91 ["create"]
      472 MOVE                             R26 R5
      473 DUPTABLE                         R27 K115 [{"column", "direction"}]
      474 GETTABLEKS                       R28 R19 K101 ["Column"]
      476 GETTABLEKS                       R28 R28 K37 ["triangles"]
      478 SETTABLEKS                       R28 R27 K113 ["column"]
      480 GETTABLEKS                       R28 R19 K102 ["Direction"]
      482 GETTABLEKS                       R28 R28 K107 ["desc"]
      484 SETTABLEKS                       R28 R27 K114 ["direction"]
      486 CALL                             R26 1 -1
      487 CALL                             R25 -1 2
      488 GETTABLEKS                       R27 R4 K91 ["create"]
      490 LOADN                            R28 0
      491 CALL                             R27 1 2
      492 DUPCLOSURE                       R29 K116 [PROTO_13]
      493 CAPTURE                          VAL R21
      494 SETTABLEKS                       R29 R0 K117 ["getNodesObservable"]
      496 DUPCLOSURE                       R29 K118 [PROTO_14]
      497 CAPTURE                          VAL R23
      498 SETTABLEKS                       R29 R0 K119 ["getOrderObservable"]
      500 DUPCLOSURE                       R29 K120 [PROTO_15]
      501 CAPTURE                          VAL R25
      502 SETTABLEKS                       R29 R0 K121 ["getSortStateObservable"]
      504 DUPCLOSURE                       R29 K122 [PROTO_16]
      505 CAPTURE                          VAL R27
      506 SETTABLEKS                       R29 R0 K123 ["getTotalCountObservable"]
      508 DUPCLOSURE                       R29 K124 [PROTO_17]
      509 CAPTURE                          VAL R13
      510 SETTABLEKS                       R29 R0 K125 ["getColumns"]
      512 DUPCLOSURE                       R29 K126 [PROTO_19]
      513 DUPCLOSURE                       R30 K127 [PROTO_21]
      514 CAPTURE                          VAL R19
      515 CAPTURE                          VAL R12
      516 CAPTURE                          VAL R11
      517 DUPCLOSURE                       R31 K128 [PROTO_22]
      518 CAPTURE                          VAL R25
      519 CAPTURE                          VAL R19
      520 CAPTURE                          VAL R5
      521 CAPTURE                          VAL R26
      522 CAPTURE                          VAL R21
      523 CAPTURE                          VAL R29
      524 CAPTURE                          VAL R30
      525 CAPTURE                          VAL R24
      526 CAPTURE                          VAL R28
      527 SETTABLEKS                       R31 R0 K129 ["setSort"]
      529 DUPCLOSURE                       R31 K130 [PROTO_23]
      530 CAPTURE                          VAL R22
      531 CAPTURE                          VAL R20
      532 CAPTURE                          VAL R24
      533 CAPTURE                          VAL R28
      534 CAPTURE                          VAL R0
      535 SETTABLEKS                       R31 R0 K131 ["reset"]
      537 DUPCLOSURE                       R31 K132 [PROTO_27]
      538 SETTABLEKS                       R31 R0 K133 ["tooltipLabels"]
      540 DUPCLOSURE                       R31 K134 [PROTO_28]
      541 CAPTURE                          VAL R23
      542 SETTABLEKS                       R31 R0 K135 ["getIndexForId"]
      544 DUPCLOSURE                       R31 K136 [PROTO_29]
      545 CAPTURE                          VAL R0
      546 SETTABLEKS                       R31 R0 K137 ["getNodeById"]
      548 DUPCLOSURE                       R31 K138 [PROTO_30]
      549 CAPTURE                          VAL R17
      550 SETTABLEKS                       R31 R0 K139 ["getWarnings"]
      552 DUPCLOSURE                       R31 K140 [PROTO_31]
      553 CAPTURE                          VAL R0
      554 SETTABLEKS                       R31 R0 K141 ["getNodeIdsForInstances"]
      556 DUPCLOSURE                       R31 K142 [PROTO_32]
      557 CAPTURE                          VAL R0
      558 CAPTURE                          VAL R2
      559 SETTABLEKS                       R31 R0 K143 ["onRightClick"]
      561 DUPCLOSURE                       R31 K144 [PROTO_33]
      562 CAPTURE                          VAL R0
      563 SETTABLEKS                       R31 R0 K145 ["getDepth"]
      565 DUPCLOSURE                       R31 K146 [PROTO_34]
      566 CAPTURE                          VAL R23
      567 CAPTURE                          VAL R0
      568 SETTABLEKS                       R31 R0 K147 ["getNodeAtIndex"]
      570 DUPCLOSURE                       R31 K148 [PROTO_38]
      571 CAPTURE                          VAL R2
      572 CAPTURE                          VAL R9
      573 CAPTURE                          VAL R0
      574 CAPTURE                          VAL R20
      575 CAPTURE                          VAL R3
      576 CAPTURE                          VAL R29
      577 CAPTURE                          VAL R25
      578 CAPTURE                          VAL R30
      579 CAPTURE                          VAL R5
      580 CAPTURE                          VAL R22
      581 CAPTURE                          VAL R24
      582 CAPTURE                          VAL R28
      583 SETTABLEKS                       R31 R0 K149 ["RunQueryAsync"]
      585 DUPCLOSURE                       R31 K150 [PROTO_39]
      586 CAPTURE                          VAL R30
      587 SETTABLEKS                       R31 R0 K151 ["sortedIds"]
      589 RETURN                           R0 1
