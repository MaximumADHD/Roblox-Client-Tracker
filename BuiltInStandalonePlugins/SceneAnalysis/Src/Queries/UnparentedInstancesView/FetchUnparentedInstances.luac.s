PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["node"]
        7 GETTABLEKS                       R1 R2 K2 ["className"]
        9 JUMPIF                           R1 ; [+1]
       10 LOADK                            R1 K3 [""]
       11 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["node"]
        5 GETTABLEKS                       R1 R2 K1 ["Size"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADK                            R1 K2 [""]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R3 R0 K0 ["node"]
       12 GETTABLEKS                       R2 R3 K1 ["Size"]
       14 FASTCALL1                        TOSTRING R2 ; [+2]
       15 GETIMPORT                        R1 K4 [tostring]
       17 CALL                             R1 1 1
       18 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R3 K2 ["parentName"]
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Direction"]
        3 GETTABLEKS                       R2 R3 K1 ["desc"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+7]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["Direction"]
       10 GETTABLEKS                       R1 R2 K2 ["asc"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["Direction"]
       16 GETTABLEKS                       R1 R2 K1 ["desc"]
       18 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["column"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+22]
        5 GETTABLEKS                       R2 R0 K1 ["direction"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["Direction"]
       10 GETTABLEKS                       R3 R4 K3 ["desc"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+7]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K2 ["Direction"]
       17 GETTABLEKS                       R1 R3 K4 ["asc"]
       19 JUMP                             ; [+11]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K2 ["Direction"]
       23 GETTABLEKS                       R1 R3 K3 ["desc"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K2 ["Direction"]
       29 GETTABLEKS                       R1 R2 K3 ["desc"]
       31 DUPTABLE                         R2 K5 [{"column", "direction"}]
       32 GETUPVAL                         R3 0
       33 SETTABLEKS                       R3 R2 K0 ["column"]
       35 SETTABLEKS                       R1 R2 K1 ["direction"]
       37 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["parentById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["k"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQKS                    R2 K1 ["className"] ; [+4]
        5 GETTABLEKS                       R2 R1 K1 ["className"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 JUMPIFNOTEQKS                    R2 K2 ["count"] ; [+4]
       11 GETTABLEKS                       R2 R1 K3 ["size"]
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 0
       15 JUMPIFNOTEQKS                    R2 K4 ["parentName"] ; [+4]
       17 GETTABLEKS                       R2 R1 K4 ["parentName"]
       19 RETURN                           R2 1
       20 LOADNIL                          R2
       21 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["k"]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOTEQKS                    R5 K1 ["className"] ; [+4]
        5 GETTABLEKS                       R2 R4 K1 ["className"]
        7 JUMP                             ; [+13]
        8 GETUPVAL                         R5 0
        9 JUMPIFNOTEQKS                    R5 K2 ["count"] ; [+4]
       11 GETTABLEKS                       R2 R4 K3 ["size"]
       13 JUMP                             ; [+7]
       14 GETUPVAL                         R5 0
       15 JUMPIFNOTEQKS                    R5 K4 ["parentName"] ; [+4]
       17 GETTABLEKS                       R2 R4 K4 ["parentName"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 GETTABLEKS                       R4 R1 K0 ["k"]
       23 GETUPVAL                         R5 0
       24 JUMPIFNOTEQKS                    R5 K1 ["className"] ; [+4]
       26 GETTABLEKS                       R3 R4 K1 ["className"]
       28 JUMP                             ; [+13]
       29 GETUPVAL                         R5 0
       30 JUMPIFNOTEQKS                    R5 K2 ["count"] ; [+4]
       32 GETTABLEKS                       R3 R4 K3 ["size"]
       34 JUMP                             ; [+7]
       35 GETUPVAL                         R5 0
       36 JUMPIFNOTEQKS                    R5 K4 ["parentName"] ; [+4]
       38 GETTABLEKS                       R3 R4 K4 ["parentName"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R3
       42 JUMPIFEQ                         R2 R3 ; [+13]
       44 GETUPVAL                         R4 1
       45 JUMPIFNOT                        R4 ; [+5]
       46 JUMPIFLT                         R2 R3 ; [+2]
       48 LOADB                            R4 0 +1
       49 LOADB                            R4 1
       50 RETURN                           R4 1
       51 JUMPIFLT                         R3 R2 ; [+2]
       53 LOADB                            R4 0 +1
       54 LOADB                            R4 1
       55 RETURN                           R4 1
       56 GETTABLEKS                       R4 R0 K0 ["k"]
       58 GETTABLEKS                       R5 R1 K0 ["k"]
       60 GETTABLEKS                       R6 R4 K1 ["className"]
       62 GETTABLEKS                       R7 R5 K1 ["className"]
       64 JUMPIFEQ                         R6 R7 ; [+10]
       66 GETTABLEKS                       R7 R4 K1 ["className"]
       68 GETTABLEKS                       R8 R5 K1 ["className"]
       70 JUMPIFLT                         R7 R8 ; [+2]
       72 LOADB                            R6 0 +1
       73 LOADB                            R6 1
       74 RETURN                           R6 1
       75 GETTABLEKS                       R6 R4 K3 ["size"]
       77 GETTABLEKS                       R7 R5 K3 ["size"]
       79 JUMPIFEQ                         R6 R7 ; [+10]
       81 GETTABLEKS                       R7 R4 K3 ["size"]
       83 GETTABLEKS                       R8 R5 K3 ["size"]
       85 JUMPIFLT                         R8 R7 ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 RETURN                           R6 1
       90 GETTABLEKS                       R6 R4 K4 ["parentName"]
       92 GETTABLEKS                       R7 R5 K4 ["parentName"]
       94 JUMPIFEQ                         R6 R7 ; [+10]
       96 GETTABLEKS                       R7 R4 K4 ["parentName"]
       98 GETTABLEKS                       R8 R5 K4 ["parentName"]
      100 JUMPIFLT                         R7 R8 ; [+2]
      102 LOADB                            R6 0 +1
      103 LOADB                            R6 1
      104 RETURN                           R6 1
      105 GETTABLEKS                       R7 R0 K5 ["id"]
      107 GETTABLEKS                       R8 R1 K5 ["id"]
      109 JUMPIFLT                         R7 R8 ; [+2]
      111 LOADB                            R6 0 +1
      112 LOADB                            R6 1
      113 RETURN                           R6 1

PROTO_15:
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
       16 DUPTABLE                         R11 K7 [{"id", "k"}]
       17 SETTABLEKS                       R9 R11 K5 ["id"]
       19 DUPTABLE                         R12 K11 [{"className", "size", "parentName"}]
       20 JUMPIFNOT                        R10 ; [+6]
       21 GETTABLEKS                       R13 R10 K12 ["Name"]
       23 JUMPIF                           R13 ; [+4]
       24 GETTABLEKS                       R13 R10 K8 ["className"]
       26 JUMPIF                           R13 ; [+1]
       27 LOADK                            R13 K13 [""]
       28 SETTABLEKS                       R13 R12 K8 ["className"]
       30 JUMPIFNOT                        R10 ; [+7]
       31 GETTABLEKS                       R14 R10 K14 ["Size"]
       33 FASTCALL1                        TONUMBER R14 ; [+2]
       34 GETIMPORT                        R13 K16 [tonumber]
       36 CALL                             R13 1 1
       37 JUMPIF                           R13 ; [+1]
       38 LOADN                            R13 0
       39 SETTABLEKS                       R13 R12 K9 ["size"]
       41 JUMPIFNOT                        R10 ; [+3]
       42 GETTABLEKS                       R13 R10 K10 ["parentName"]
       44 JUMPIF                           R13 ; [+1]
       45 LOADK                            R13 K13 [""]
       46 SETTABLEKS                       R13 R12 K10 ["parentName"]
       48 SETTABLEKS                       R12 R11 K6 ["k"]
       50 SETTABLE                         R11 R4 R8
       51 FORGLOOP                         R5 2 ; [-40]
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          VAL R1
       55 JUMPIFEQKS                       R1 K17 ["none"] ; [+25]
       57 LENGTH                           R6 R4
       58 JUMPIFEQKN                       R6 K18 [0] ; [+22]
       60 GETTABLEN                        R7 R4 1
       61 GETTABLEKS                       R8 R7 K6 ["k"]
       63 JUMPIFNOTEQKS                    R1 K8 ["className"] ; [+4]
       65 GETTABLEKS                       R6 R8 K8 ["className"]
       67 JUMP                             ; [+11]
       68 JUMPIFNOTEQKS                    R1 K19 ["count"] ; [+4]
       70 GETTABLEKS                       R6 R8 K9 ["size"]
       72 JUMP                             ; [+6]
       73 JUMPIFNOTEQKS                    R1 K10 ["parentName"] ; [+4]
       75 GETTABLEKS                       R6 R8 K10 ["parentName"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R6
       79 JUMPIFNOTEQKNIL                  R6 ; [+15]
       81 GETIMPORT                        R6 K3 [table.create]
       83 LENGTH                           R7 R4
       84 CALL                             R6 1 1
       85 LOADN                            R9 1
       86 LENGTH                           R7 R4
       87 LOADN                            R8 1
       88 FORNPREP                         R7
       89 GETTABLE                         R11 R4 R9
       90 GETTABLEKS                       R10 R11 K5 ["id"]
       92 SETTABLE                         R10 R6 R9
       93 FORNLOOP                         R7
       94 RETURN                           R6 1
       95 NEWCLOSURE                       R6 P1
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R3
       98 GETIMPORT                        R7 K21 [table.sort]
      100 MOVE                             R8 R4
      101 MOVE                             R9 R6
      102 CALL                             R7 2 0
      103 GETIMPORT                        R7 K3 [table.create]
      105 LENGTH                           R8 R4
      106 CALL                             R7 1 1
      107 LOADN                            R10 1
      108 LENGTH                           R8 R4
      109 LOADN                            R9 1
      110 FORNPREP                         R8
      111 GETTABLE                         R12 R4 R10
      112 GETTABLEKS                       R11 R12 K5 ["id"]
      114 SETTABLE                         R11 R7 R10
      115 FORNLOOP                         R8
      116 RETURN                           R7 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["instanceOrder"]
        7 GETTABLEKS                       R2 R0 K2 ["column"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["Column"]
       12 GETTABLEKS                       R3 R4 K4 ["none"]
       14 JUMPIFEQ                         R2 R3 ; [+4]
       16 LENGTH                           R2 R1
       17 JUMPIFNOTEQKN                    R2 K5 [0] ; [+8]
       19 GETUPVAL                         R2 3
       20 GETIMPORT                        R3 K8 [table.clone]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 -1
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K9 ["sortedIds"]
       29 MOVE                             R3 R1
       30 GETTABLEKS                       R4 R0 K2 ["column"]
       32 GETTABLEKS                       R5 R0 K10 ["direction"]
       34 CALL                             R2 3 1
       35 GETUPVAL                         R3 3
       36 MOVE                             R4 R2
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchUnparentedInstances"]
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
       19 GETIMPORT                        R5 K6 [ipairs]
       21 MOVE                             R6 R2
       22 CALL                             R5 1 3
       23 FORGPREP_INEXT                   R5
       24 GETTABLE                         R10 R3 R9
       25 GETTABLE                         R11 R4 R9
       26 LOADK                            R12 K7 [""]
       27 JUMPIFNOT                        R11 ; [+10]
       28 GETTABLE                         R13 R3 R11
       29 JUMPIFNOT                        R13 ; [+8]
       30 GETTABLEKS                       R14 R13 K8 ["Name"]
       32 JUMPIF                           R14 ; [+4]
       33 GETTABLEKS                       R14 R13 K9 ["name"]
       35 JUMPIF                           R14 ; [+1]
       36 LOADK                            R14 K10 ["Unknown"]
       37 MOVE                             R12 R14
       38 SETTABLEKS                       R12 R10 K11 ["parentName"]
       40 FORGLOOP                         R5 2 [inext] ; [-17]
       42 GETUPVAL                         R5 1
       43 SETTABLEKS                       R2 R5 K12 ["instanceOrder"]
       45 GETUPVAL                         R5 1
       46 SETTABLEKS                       R3 R5 K13 ["nodeById"]
       48 GETUPVAL                         R5 1
       49 SETTABLEKS                       R4 R5 K14 ["parentById"]
       51 GETUPVAL                         R5 3
       52 LENGTH                           R6 R2
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 4
       55 MOVE                             R6 R1
       56 CALL                             R5 1 0
       57 GETUPVAL                         R5 5
       58 CALL                             R5 0 0
       59 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_21:
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
       13 SETTABLEKS                       R1 R0 K0 ["instanceOrder"]
       15 GETUPVAL                         R0 4
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K1 ["nodeById"]
       20 GETUPVAL                         R0 4
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K2 ["parentById"]
       25 RETURN                           R0 0

PROTO_22:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETTABLEKS                       R1 R0 K0 ["parentName"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETTABLEKS                       R1 R0 K0 ["parentName"]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+8]
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K2 ["SelectInstanceByPath"]
       10 GETTABLEKS                       R4 R0 K0 ["parentName"]
       12 NAMECALL                         R1 R1 K3 ["CallAssetPluginAsync"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_23:
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
       24 GETTABLEKS                       R4 R5 K9 ["Observable"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R1 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Util"]
       33 GETTABLEKS                       R5 R6 K10 ["deepFreeze"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R1 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K7 ["Util"]
       42 GETTABLEKS                       R6 R7 K11 ["ListViewUtils"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R1 K6 ["Src"]
       49 GETTABLEKS                       R8 R9 K7 ["Util"]
       51 GETTABLEKS                       R7 R8 K12 ["measureHeaderText"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 0 3
       56 DUPTABLE                         R8 K22 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       57 LOADK                            R9 K23 ["className"]
       58 SETTABLEKS                       R9 R8 K13 ["id"]
       60 LOADK                            R9 K24 ["Class"]
       61 SETTABLEKS                       R9 R8 K14 ["headerText"]
       63 LOADK                            R9 K24 ["Class"]
       64 SETTABLEKS                       R9 R8 K15 ["headerKey"]
       66 LOADK                            R9 K23 ["className"]
       67 SETTABLEKS                       R9 R8 K16 ["sortKey"]
       69 LOADK                            R9 K25 [0.25]
       70 SETTABLEKS                       R9 R8 K17 ["width"]
       72 LOADN                            R9 200
       73 SETTABLEKS                       R9 R8 K18 ["idealWidth"]
       75 LOADN                            R9 2
       76 SETTABLEKS                       R9 R8 K19 ["priority"]
       78 LOADN                            R9 1
       79 SETTABLEKS                       R9 R8 K20 ["order"]
       81 DUPCLOSURE                       R9 K26 [PROTO_0]
       82 SETTABLEKS                       R9 R8 K21 ["cell"]
       84 DUPTABLE                         R9 K22 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       85 LOADK                            R10 K27 ["count"]
       86 SETTABLEKS                       R10 R9 K13 ["id"]
       88 LOADK                            R10 K28 ["Instance Count"]
       89 SETTABLEKS                       R10 R9 K14 ["headerText"]
       91 LOADK                            R10 K29 ["InstanceCount"]
       92 SETTABLEKS                       R10 R9 K15 ["headerKey"]
       94 LOADK                            R10 K27 ["count"]
       95 SETTABLEKS                       R10 R9 K16 ["sortKey"]
       97 LOADK                            R10 K30 [0.15]
       98 SETTABLEKS                       R10 R9 K17 ["width"]
      100 LOADN                            R10 90
      101 SETTABLEKS                       R10 R9 K18 ["idealWidth"]
      103 LOADN                            R10 3
      104 SETTABLEKS                       R10 R9 K19 ["priority"]
      106 LOADN                            R10 2
      107 SETTABLEKS                       R10 R9 K20 ["order"]
      109 DUPCLOSURE                       R10 K31 [PROTO_1]
      110 SETTABLEKS                       R10 R9 K21 ["cell"]
      112 DUPTABLE                         R10 K22 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      113 LOADK                            R11 K32 ["parentName"]
      114 SETTABLEKS                       R11 R10 K13 ["id"]
      116 LOADK                            R11 K33 ["Parent Name"]
      117 SETTABLEKS                       R11 R10 K14 ["headerText"]
      119 LOADK                            R11 K34 ["ParentName"]
      120 SETTABLEKS                       R11 R10 K15 ["headerKey"]
      122 LOADK                            R11 K32 ["parentName"]
      123 SETTABLEKS                       R11 R10 K16 ["sortKey"]
      125 LOADK                            R11 K35 [0.6]
      126 SETTABLEKS                       R11 R10 K17 ["width"]
      128 LOADN                            R11 244
      129 SETTABLEKS                       R11 R10 K18 ["idealWidth"]
      131 LOADN                            R11 1
      132 SETTABLEKS                       R11 R10 K19 ["priority"]
      134 LOADN                            R11 3
      135 SETTABLEKS                       R11 R10 K20 ["order"]
      137 DUPCLOSURE                       R11 K36 [PROTO_2]
      138 SETTABLEKS                       R11 R10 K21 ["cell"]
      140 SETLIST                          R7 R8 3 [1]
      142 MOVE                             R8 R7
      143 LOADNIL                          R9
      144 LOADNIL                          R10
      145 FORGPREP                         R8
      146 MOVE                             R13 R6
      147 GETTABLEKS                       R14 R12 K14 ["headerText"]
      149 CALL                             R13 1 1
      150 SETTABLEKS                       R13 R12 K37 ["minWidth"]
      152 FORGLOOP                         R8 2 ; [-7]
      154 NEWTABLE                         R8 0 0
      156 SETTABLEKS                       R8 R0 K38 ["instanceOrder"]
      158 NEWTABLE                         R8 0 0
      160 SETTABLEKS                       R8 R0 K39 ["nodeById"]
      162 NEWTABLE                         R8 0 0
      164 SETTABLEKS                       R8 R0 K40 ["parentById"]
      166 GETIMPORT                        R8 K43 [table.freeze]
      168 DUPTABLE                         R9 K46 [{"Column", "Direction"}]
      169 GETIMPORT                        R10 K43 [table.freeze]
      171 DUPTABLE                         R11 K48 [{"none", "className", "count", "parentName"}]
      172 LOADK                            R12 K47 ["none"]
      173 SETTABLEKS                       R12 R11 K47 ["none"]
      175 LOADK                            R12 K23 ["className"]
      176 SETTABLEKS                       R12 R11 K23 ["className"]
      178 LOADK                            R12 K27 ["count"]
      179 SETTABLEKS                       R12 R11 K27 ["count"]
      181 LOADK                            R12 K32 ["parentName"]
      182 SETTABLEKS                       R12 R11 K32 ["parentName"]
      184 CALL                             R10 1 1
      185 SETTABLEKS                       R10 R9 K44 ["Column"]
      187 GETIMPORT                        R10 K43 [table.freeze]
      189 DUPTABLE                         R11 K51 [{"asc", "desc"}]
      190 LOADK                            R12 K49 ["asc"]
      191 SETTABLEKS                       R12 R11 K49 ["asc"]
      193 LOADK                            R12 K50 ["desc"]
      194 SETTABLEKS                       R12 R11 K50 ["desc"]
      196 CALL                             R10 1 1
      197 SETTABLEKS                       R10 R9 K45 ["Direction"]
      199 CALL                             R8 1 1
      200 MOVE                             R9 R4
      201 DUPTABLE                         R10 K55 [{"Name", "Size", "Children"}]
      202 LOADK                            R11 K56 ["Root"]
      203 SETTABLEKS                       R11 R10 K52 ["Name"]
      205 LOADN                            R11 0
      206 SETTABLEKS                       R11 R10 K53 ["Size"]
      208 NEWTABLE                         R11 0 0
      210 SETTABLEKS                       R11 R10 K54 ["Children"]
      212 CALL                             R9 1 1
      213 GETTABLEKS                       R10 R3 K57 ["create"]
      215 MOVE                             R11 R9
      216 CALL                             R10 1 2
      217 GETTABLEKS                       R12 R3 K57 ["create"]
      219 NEWTABLE                         R13 0 0
      221 CALL                             R12 1 2
      222 GETTABLEKS                       R14 R3 K57 ["create"]
      224 DUPTABLE                         R15 K60 [{"column", "direction"}]
      225 GETTABLEKS                       R17 R8 K44 ["Column"]
      227 GETTABLEKS                       R16 R17 K47 ["none"]
      229 SETTABLEKS                       R16 R15 K58 ["column"]
      231 GETTABLEKS                       R17 R8 K45 ["Direction"]
      233 GETTABLEKS                       R16 R17 K50 ["desc"]
      235 SETTABLEKS                       R16 R15 K59 ["direction"]
      237 CALL                             R14 1 2
      238 GETTABLEKS                       R16 R3 K57 ["create"]
      240 LOADN                            R17 0
      241 CALL                             R16 1 2
      242 DUPCLOSURE                       R18 K61 [PROTO_3]
      243 CAPTURE                          VAL R8
      244 DUPCLOSURE                       R19 K62 [PROTO_5]
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R8
      247 DUPCLOSURE                       R20 K63 [PROTO_6]
      248 CAPTURE                          VAL R10
      249 SETTABLEKS                       R20 R0 K64 ["getNodesObservable"]
      251 DUPCLOSURE                       R20 K65 [PROTO_7]
      252 CAPTURE                          VAL R12
      253 SETTABLEKS                       R20 R0 K66 ["getOrderObservable"]
      255 DUPCLOSURE                       R20 K67 [PROTO_8]
      256 CAPTURE                          VAL R14
      257 SETTABLEKS                       R20 R0 K68 ["getSortStateObservable"]
      259 DUPCLOSURE                       R20 K69 [PROTO_9]
      260 CAPTURE                          VAL R16
      261 SETTABLEKS                       R20 R0 K70 ["getTotalCountObservable"]
      263 DUPCLOSURE                       R20 K71 [PROTO_10]
      264 CAPTURE                          VAL R19
      265 SETTABLEKS                       R20 R0 K72 ["setSort"]
      267 DUPCLOSURE                       R20 K73 [PROTO_11]
      268 CAPTURE                          VAL R0
      269 SETTABLEKS                       R20 R0 K74 ["getNodeById"]
      271 DUPCLOSURE                       R20 K75 [PROTO_12]
      272 CAPTURE                          VAL R0
      273 SETTABLEKS                       R20 R0 K76 ["getParentById"]
      275 DUPCLOSURE                       R20 K77 [PROTO_15]
      276 CAPTURE                          VAL R0
      277 SETTABLEKS                       R20 R0 K78 ["sortedIds"]
      279 DUPCLOSURE                       R20 K79 [PROTO_16]
      280 CAPTURE                          VAL R14
      281 CAPTURE                          VAL R0
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R13
      284 GETTABLEKS                       R21 R14 K80 ["changedSignal"]
      286 MOVE                             R23 R20
      287 NAMECALL                         R21 R21 K81 ["Connect"]
      289 CALL                             R21 2 0
      290 DUPCLOSURE                       R21 K82 [PROTO_17]
      291 CAPTURE                          VAL R12
      292 CAPTURE                          VAL R0
      293 SETTABLEKS                       R21 R0 K83 ["getNodeAtIndex"]
      295 DUPCLOSURE                       R21 K84 [PROTO_18]
      296 CAPTURE                          VAL R12
      297 SETTABLEKS                       R21 R0 K85 ["getIndexForId"]
      299 DUPCLOSURE                       R21 K86 [PROTO_19]
      300 CAPTURE                          VAL R2
      301 CAPTURE                          VAL R0
      302 CAPTURE                          VAL R5
      303 CAPTURE                          VAL R17
      304 CAPTURE                          VAL R11
      305 CAPTURE                          VAL R20
      306 SETTABLEKS                       R21 R0 K87 ["RunQueryAsync"]
      308 DUPCLOSURE                       R21 K88 [PROTO_20]
      309 CAPTURE                          VAL R7
      310 SETTABLEKS                       R21 R0 K89 ["getColumns"]
      312 DUPCLOSURE                       R21 K90 [PROTO_21]
      313 CAPTURE                          VAL R11
      314 CAPTURE                          VAL R9
      315 CAPTURE                          VAL R13
      316 CAPTURE                          VAL R17
      317 CAPTURE                          VAL R0
      318 SETTABLEKS                       R21 R0 K91 ["reset"]
      320 DUPCLOSURE                       R21 K92 [PROTO_22]
      321 CAPTURE                          VAL R2
      322 SETTABLEKS                       R21 R0 K93 ["selectInstances"]
      324 DUPCLOSURE                       R21 K94 [PROTO_23]
      325 CAPTURE                          VAL R0
      326 SETTABLEKS                       R21 R0 K95 ["onRightClick"]
      328 RETURN                           R0 1
