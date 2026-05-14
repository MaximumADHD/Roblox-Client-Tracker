PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["Name"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["node"]
        7 GETTABLEKS                       R1 R1 K2 ["className"]
        9 JUMPIF                           R1 ; [+1]
       10 LOADK                            R1 K3 [""]
       11 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["node"]
        5 GETTABLEKS                       R1 R1 K1 ["Size"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADK                            R1 K2 [""]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R2 R0 K0 ["node"]
       12 GETTABLEKS                       R2 R2 K1 ["Size"]
       14 FASTCALL1                        TOSTRING R2 ; [+2]
       15 GETIMPORT                        R1 K4 [tostring]
       17 CALL                             R1 1 1
       18 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["change"]
        4 ORK                              R1 R2 K0 [0]
        5 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        7 LOADK                            R2 K3 ["—"]
        8 RETURN                           R2 1
        9 LOADN                            R5 0
       10 JUMPIFNOTLT                      R5 R1 ; [+3]
       12 LOADK                            R3 K4 ["+"]
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K5 [""]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K7 [tostring]
       19 CALL                             R4 1 1
       20 CONCAT                           R2 R3 R4
       21 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["parentName"]
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Direction"]
        3 GETTABLEKS                       R2 R2 K1 ["desc"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Direction"]
       10 GETTABLEKS                       R1 R1 K2 ["asc"]
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["Direction"]
       16 GETTABLEKS                       R1 R1 K1 ["desc"]
       18 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["column"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+22]
        5 GETTABLEKS                       R2 R0 K1 ["direction"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["Direction"]
       10 GETTABLEKS                       R3 R3 K3 ["desc"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+7]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["Direction"]
       17 GETTABLEKS                       R1 R1 K4 ["asc"]
       19 JUMP                             ; [+11]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K2 ["Direction"]
       23 GETTABLEKS                       R1 R1 K3 ["desc"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K2 ["Direction"]
       29 GETTABLEKS                       R1 R1 K3 ["desc"]
       31 DUPTABLE                         R2 K5 [{"column", "direction"}]
       32 GETUPVAL                         R3 0
       33 SETTABLEKS                       R3 R2 K0 ["column"]
       35 SETTABLEKS                       R1 R2 K1 ["direction"]
       37 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parentById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_14:
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
       15 JUMPIFNOTEQKS                    R2 K4 ["change"] ; [+4]
       17 GETTABLEKS                       R2 R1 K4 ["change"]
       19 RETURN                           R2 1
       20 GETUPVAL                         R2 0
       21 JUMPIFNOTEQKS                    R2 K5 ["parentName"] ; [+4]
       23 GETTABLEKS                       R2 R1 K5 ["parentName"]
       25 RETURN                           R2 1
       26 LOADNIL                          R2
       27 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["k"]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOTEQKS                    R5 K1 ["className"] ; [+4]
        5 GETTABLEKS                       R2 R4 K1 ["className"]
        7 JUMP                             ; [+19]
        8 GETUPVAL                         R5 0
        9 JUMPIFNOTEQKS                    R5 K2 ["count"] ; [+4]
       11 GETTABLEKS                       R2 R4 K3 ["size"]
       13 JUMP                             ; [+13]
       14 GETUPVAL                         R5 0
       15 JUMPIFNOTEQKS                    R5 K4 ["change"] ; [+4]
       17 GETTABLEKS                       R2 R4 K4 ["change"]
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R5 0
       21 JUMPIFNOTEQKS                    R5 K5 ["parentName"] ; [+4]
       23 GETTABLEKS                       R2 R4 K5 ["parentName"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R2
       27 GETTABLEKS                       R4 R1 K0 ["k"]
       29 GETUPVAL                         R5 0
       30 JUMPIFNOTEQKS                    R5 K1 ["className"] ; [+4]
       32 GETTABLEKS                       R3 R4 K1 ["className"]
       34 JUMP                             ; [+19]
       35 GETUPVAL                         R5 0
       36 JUMPIFNOTEQKS                    R5 K2 ["count"] ; [+4]
       38 GETTABLEKS                       R3 R4 K3 ["size"]
       40 JUMP                             ; [+13]
       41 GETUPVAL                         R5 0
       42 JUMPIFNOTEQKS                    R5 K4 ["change"] ; [+4]
       44 GETTABLEKS                       R3 R4 K4 ["change"]
       46 JUMP                             ; [+7]
       47 GETUPVAL                         R5 0
       48 JUMPIFNOTEQKS                    R5 K5 ["parentName"] ; [+4]
       50 GETTABLEKS                       R3 R4 K5 ["parentName"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R3
       54 JUMPIFEQ                         R2 R3 ; [+13]
       56 GETUPVAL                         R4 1
       57 JUMPIFNOT                        R4 ; [+5]
       58 JUMPIFLT                         R2 R3 ; [+2]
       60 LOADB                            R4 0 +1
       61 LOADB                            R4 1
       62 RETURN                           R4 1
       63 JUMPIFLT                         R3 R2 ; [+2]
       65 LOADB                            R4 0 +1
       66 LOADB                            R4 1
       67 RETURN                           R4 1
       68 GETTABLEKS                       R4 R0 K0 ["k"]
       70 GETTABLEKS                       R5 R1 K0 ["k"]
       72 GETTABLEKS                       R6 R4 K1 ["className"]
       74 GETTABLEKS                       R7 R5 K1 ["className"]
       76 JUMPIFEQ                         R6 R7 ; [+10]
       78 GETTABLEKS                       R7 R4 K1 ["className"]
       80 GETTABLEKS                       R8 R5 K1 ["className"]
       82 JUMPIFLT                         R7 R8 ; [+2]
       84 LOADB                            R6 0 +1
       85 LOADB                            R6 1
       86 RETURN                           R6 1
       87 GETTABLEKS                       R6 R4 K3 ["size"]
       89 GETTABLEKS                       R7 R5 K3 ["size"]
       91 JUMPIFEQ                         R6 R7 ; [+10]
       93 GETTABLEKS                       R7 R4 K3 ["size"]
       95 GETTABLEKS                       R8 R5 K3 ["size"]
       97 JUMPIFLT                         R8 R7 ; [+2]
       99 LOADB                            R6 0 +1
      100 LOADB                            R6 1
      101 RETURN                           R6 1
      102 GETTABLEKS                       R6 R4 K5 ["parentName"]
      104 GETTABLEKS                       R7 R5 K5 ["parentName"]
      106 JUMPIFEQ                         R6 R7 ; [+10]
      108 GETTABLEKS                       R7 R4 K5 ["parentName"]
      110 GETTABLEKS                       R8 R5 K5 ["parentName"]
      112 JUMPIFLT                         R7 R8 ; [+2]
      114 LOADB                            R6 0 +1
      115 LOADB                            R6 1
      116 RETURN                           R6 1
      117 GETTABLEKS                       R7 R0 K6 ["id"]
      119 GETTABLEKS                       R8 R1 K6 ["id"]
      121 JUMPIFLT                         R7 R8 ; [+2]
      123 LOADB                            R6 0 +1
      124 LOADB                            R6 1
      125 RETURN                           R6 1

PROTO_16:
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
       16 DUPTABLE                         R11 K7 [{"id", "k"}]
       17 SETTABLEKS                       R9 R11 K5 ["id"]
       19 DUPTABLE                         R12 K12 [{"className", "size", "change", "parentName"}]
       20 JUMPIFNOT                        R10 ; [+6]
       21 GETTABLEKS                       R13 R10 K13 ["Name"]
       23 JUMPIF                           R13 ; [+4]
       24 GETTABLEKS                       R13 R10 K8 ["className"]
       26 JUMPIF                           R13 ; [+1]
       27 LOADK                            R13 K14 [""]
       28 SETTABLEKS                       R13 R12 K8 ["className"]
       30 JUMPIFNOT                        R10 ; [+7]
       31 GETTABLEKS                       R14 R10 K15 ["Size"]
       33 FASTCALL1                        TONUMBER R14 ; [+2]
       34 GETIMPORT                        R13 K17 [tonumber]
       36 CALL                             R13 1 1
       37 JUMPIF                           R13 ; [+1]
       38 LOADN                            R13 0
       39 SETTABLEKS                       R13 R12 K9 ["size"]
       41 JUMPIFNOT                        R10 ; [+7]
       42 GETTABLEKS                       R14 R10 K10 ["change"]
       44 FASTCALL1                        TONUMBER R14 ; [+2]
       45 GETIMPORT                        R13 K17 [tonumber]
       47 CALL                             R13 1 1
       48 JUMPIF                           R13 ; [+1]
       49 LOADN                            R13 0
       50 SETTABLEKS                       R13 R12 K10 ["change"]
       52 JUMPIFNOT                        R10 ; [+3]
       53 GETTABLEKS                       R13 R10 K11 ["parentName"]
       55 JUMPIF                           R13 ; [+1]
       56 LOADK                            R13 K14 [""]
       57 SETTABLEKS                       R13 R12 K11 ["parentName"]
       59 SETTABLEKS                       R12 R11 K6 ["k"]
       61 SETTABLE                         R11 R4 R8
       62 FORGLOOP                         R5 2 ; [-51]
       64 NEWCLOSURE                       R5 P0
       65 CAPTURE                          VAL R1
       66 JUMPIFEQKS                       R1 K18 ["none"] ; [+30]
       68 LENGTH                           R6 R4
       69 JUMPIFEQKN                       R6 K19 [0] ; [+27]
       71 GETTABLEN                        R7 R4 1
       72 GETTABLEKS                       R8 R7 K6 ["k"]
       74 JUMPIFNOTEQKS                    R1 K8 ["className"] ; [+4]
       76 GETTABLEKS                       R6 R8 K8 ["className"]
       78 JUMP                             ; [+16]
       79 JUMPIFNOTEQKS                    R1 K20 ["count"] ; [+4]
       81 GETTABLEKS                       R6 R8 K9 ["size"]
       83 JUMP                             ; [+11]
       84 JUMPIFNOTEQKS                    R1 K10 ["change"] ; [+4]
       86 GETTABLEKS                       R6 R8 K10 ["change"]
       88 JUMP                             ; [+6]
       89 JUMPIFNOTEQKS                    R1 K11 ["parentName"] ; [+4]
       91 GETTABLEKS                       R6 R8 K11 ["parentName"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R6
       95 JUMPIFNOTEQKNIL                  R6 ; [+15]
       97 GETIMPORT                        R6 K3 [table.create]
       99 LENGTH                           R7 R4
      100 CALL                             R6 1 1
      101 LOADN                            R9 1
      102 LENGTH                           R7 R4
      103 LOADN                            R8 1
      104 FORNPREP                         R7
      105 GETTABLE                         R10 R4 R9
      106 GETTABLEKS                       R10 R10 K5 ["id"]
      108 SETTABLE                         R10 R6 R9
      109 FORNLOOP                         R7
      110 RETURN                           R6 1
      111 NEWCLOSURE                       R6 P1
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R3
      114 GETIMPORT                        R7 K22 [table.sort]
      116 MOVE                             R8 R4
      117 MOVE                             R9 R6
      118 CALL                             R7 2 0
      119 GETIMPORT                        R7 K3 [table.create]
      121 LENGTH                           R8 R4
      122 CALL                             R7 1 1
      123 LOADN                            R10 1
      124 LENGTH                           R8 R4
      125 LOADN                            R9 1
      126 FORNPREP                         R8
      127 GETTABLE                         R11 R4 R10
      128 GETTABLEKS                       R11 R11 K5 ["id"]
      130 SETTABLE                         R11 R7 R10
      131 FORNLOOP                         R8
      132 RETURN                           R7 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["instanceOrder"]
        7 GETTABLEKS                       R2 R0 K2 ["column"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["Column"]
       12 GETTABLEKS                       R3 R3 K4 ["none"]
       14 JUMPIFEQ                         R2 R3 ; [+4]
       16 LENGTH                           R2 R1
       17 JUMPIFNOTEQKN                    R2 K5 [0] ; [+8]
       19 GETUPVAL                         R2 3
       20 GETIMPORT                        R3 K8 [table.clone]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 -1
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K9 ["sortedIds"]
       29 MOVE                             R3 R1
       30 GETTABLEKS                       R4 R0 K2 ["column"]
       32 GETTABLEKS                       R5 R0 K10 ["direction"]
       34 CALL                             R2 3 1
       35 GETUPVAL                         R3 3
       36 MOVE                             R4 R2
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchUnparentedInstances"]
        2 NAMECALL                         R1 R1 K1 ["CallAssetPluginAsync"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["reset"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["buildNodeMaps"]
       14 MOVE                             R3 R1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["isLeafNode"]
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
       43 GETTABLEKS                       R5 R5 K12 ["baselineByName"]
       45 MOVE                             R6 R2
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 GETTABLE                         R11 R3 R10
       50 JUMPIFNOT                        R11 ; [+37]
       51 GETTABLEKS                       R12 R11 K8 ["Name"]
       53 JUMPIFNOT                        R12 ; [+34]
       54 GETTABLEKS                       R16 R11 K8 ["Name"]
       56 ORK                              R13 R16 K7 [""]
       57 LOADK                            R14 K13 ["|"]
       58 GETTABLEKS                       R16 R11 K11 ["parentName"]
       60 ORK                              R15 R16 K7 [""]
       61 CONCAT                           R12 R13 R15
       62 GETTABLE                         R13 R5 R12
       63 JUMPIFNOTEQKNIL                  R13 ; [+9]
       65 GETTABLEKS                       R15 R11 K15 ["Size"]
       67 ORK                              R14 R15 K14 [0]
       68 SETTABLE                         R14 R5 R12
       69 LOADN                            R14 0
       70 SETTABLEKS                       R14 R11 K16 ["change"]
       72 JUMP                             ; [+6]
       73 GETTABLEKS                       R16 R11 K15 ["Size"]
       75 ORK                              R15 R16 K14 [0]
       76 SUB                              R14 R15 R13
       77 SETTABLEKS                       R14 R11 K16 ["change"]
       79 GETTABLEKS                       R14 R11 K16 ["change"]
       81 JUMPIFEQKN                       R14 K14 [0] ; [+6]
       83 GETUPVAL                         R14 3
       84 GETTABLEKS                       R14 R14 K17 ["Red"]
       86 SETTABLEKS                       R14 R11 K18 ["colorRamp"]
       88 FORGLOOP                         R6 2 ; [-40]
       90 GETUPVAL                         R6 1
       91 SETTABLEKS                       R2 R6 K19 ["instanceOrder"]
       93 GETUPVAL                         R6 1
       94 SETTABLEKS                       R3 R6 K20 ["nodeById"]
       96 GETUPVAL                         R6 1
       97 SETTABLEKS                       R4 R6 K21 ["parentById"]
       99 GETUPVAL                         R6 4
      100 LENGTH                           R7 R2
      101 CALL                             R6 1 0
      102 GETUPVAL                         R6 5
      103 MOVE                             R7 R1
      104 CALL                             R6 1 0
      105 GETUPVAL                         R6 6
      106 CALL                             R6 0 0
      107 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["baselineByName"]
        5 RETURN                           R0 0

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
       13 SETTABLEKS                       R1 R0 K0 ["instanceOrder"]
       15 GETUPVAL                         R0 4
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K1 ["nodeById"]
       20 GETUPVAL                         R0 4
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K2 ["parentById"]
       25 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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
       24 GETTABLEKS                       R4 R4 K9 ["Observable"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K7 ["Util"]
       33 GETTABLEKS                       R5 R5 K10 ["deepFreeze"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R1 K6 ["Src"]
       40 GETTABLEKS                       R6 R6 K7 ["Util"]
       42 GETTABLEKS                       R6 R6 K11 ["ListViewUtils"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R1 K6 ["Src"]
       49 GETTABLEKS                       R7 R7 K7 ["Util"]
       51 GETTABLEKS                       R7 R7 K12 ["measureHeaderText"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R1 K6 ["Src"]
       58 GETTABLEKS                       R8 R8 K13 ["Resources"]
       60 GETTABLEKS                       R8 R8 K14 ["ColorRamps"]
       62 CALL                             R7 1 1
       63 NEWTABLE                         R8 0 0
       65 SETTABLEKS                       R8 R0 K15 ["baselineByName"]
       67 NEWTABLE                         R8 0 4
       69 DUPTABLE                         R9 K25 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       70 LOADK                            R10 K26 ["className"]
       71 SETTABLEKS                       R10 R9 K16 ["id"]
       73 LOADK                            R10 K27 ["Class"]
       74 SETTABLEKS                       R10 R9 K17 ["headerText"]
       76 LOADK                            R10 K27 ["Class"]
       77 SETTABLEKS                       R10 R9 K18 ["headerKey"]
       79 LOADK                            R10 K26 ["className"]
       80 SETTABLEKS                       R10 R9 K19 ["sortKey"]
       82 LOADK                            R10 K28 [0.25]
       83 SETTABLEKS                       R10 R9 K20 ["width"]
       85 LOADN                            R10 200
       86 SETTABLEKS                       R10 R9 K21 ["idealWidth"]
       88 LOADN                            R10 2
       89 SETTABLEKS                       R10 R9 K22 ["priority"]
       91 LOADN                            R10 1
       92 SETTABLEKS                       R10 R9 K23 ["order"]
       94 DUPCLOSURE                       R10 K29 [PROTO_0]
       95 SETTABLEKS                       R10 R9 K24 ["cell"]
       97 DUPTABLE                         R10 K25 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       98 LOADK                            R11 K30 ["count"]
       99 SETTABLEKS                       R11 R10 K16 ["id"]
      101 LOADK                            R11 K31 ["Instance Count"]
      102 SETTABLEKS                       R11 R10 K17 ["headerText"]
      104 LOADK                            R11 K32 ["InstanceCount"]
      105 SETTABLEKS                       R11 R10 K18 ["headerKey"]
      107 LOADK                            R11 K30 ["count"]
      108 SETTABLEKS                       R11 R10 K19 ["sortKey"]
      110 LOADK                            R11 K33 [0.15]
      111 SETTABLEKS                       R11 R10 K20 ["width"]
      113 LOADN                            R11 90
      114 SETTABLEKS                       R11 R10 K21 ["idealWidth"]
      116 LOADN                            R11 3
      117 SETTABLEKS                       R11 R10 K22 ["priority"]
      119 LOADN                            R11 2
      120 SETTABLEKS                       R11 R10 K23 ["order"]
      122 DUPCLOSURE                       R11 K34 [PROTO_1]
      123 SETTABLEKS                       R11 R10 K24 ["cell"]
      125 DUPTABLE                         R11 K25 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      126 LOADK                            R12 K35 ["change"]
      127 SETTABLEKS                       R12 R11 K16 ["id"]
      129 LOADK                            R12 K36 ["Change"]
      130 SETTABLEKS                       R12 R11 K17 ["headerText"]
      132 LOADK                            R12 K36 ["Change"]
      133 SETTABLEKS                       R12 R11 K18 ["headerKey"]
      135 LOADK                            R12 K35 ["change"]
      136 SETTABLEKS                       R12 R11 K19 ["sortKey"]
      138 LOADK                            R12 K37 [0.1]
      139 SETTABLEKS                       R12 R11 K20 ["width"]
      141 LOADN                            R12 60
      142 SETTABLEKS                       R12 R11 K21 ["idealWidth"]
      144 LOADN                            R12 4
      145 SETTABLEKS                       R12 R11 K22 ["priority"]
      147 LOADN                            R12 3
      148 SETTABLEKS                       R12 R11 K23 ["order"]
      150 DUPCLOSURE                       R12 K38 [PROTO_2]
      151 SETTABLEKS                       R12 R11 K24 ["cell"]
      153 DUPTABLE                         R12 K25 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      154 LOADK                            R13 K39 ["parentName"]
      155 SETTABLEKS                       R13 R12 K16 ["id"]
      157 LOADK                            R13 K40 ["Parent Name"]
      158 SETTABLEKS                       R13 R12 K17 ["headerText"]
      160 LOADK                            R13 K41 ["ParentName"]
      161 SETTABLEKS                       R13 R12 K18 ["headerKey"]
      163 LOADK                            R13 K39 ["parentName"]
      164 SETTABLEKS                       R13 R12 K19 ["sortKey"]
      166 LOADK                            R13 K42 [0.5]
      167 SETTABLEKS                       R13 R12 K20 ["width"]
      169 LOADN                            R13 244
      170 SETTABLEKS                       R13 R12 K21 ["idealWidth"]
      172 LOADN                            R13 1
      173 SETTABLEKS                       R13 R12 K22 ["priority"]
      175 LOADN                            R13 4
      176 SETTABLEKS                       R13 R12 K23 ["order"]
      178 DUPCLOSURE                       R13 K43 [PROTO_3]
      179 SETTABLEKS                       R13 R12 K24 ["cell"]
      181 SETLIST                          R8 R9 4 [1]
      183 MOVE                             R9 R8
      184 LOADNIL                          R10
      185 LOADNIL                          R11
      186 FORGPREP                         R9
      187 MOVE                             R14 R6
      188 GETTABLEKS                       R15 R13 K17 ["headerText"]
      190 CALL                             R14 1 1
      191 SETTABLEKS                       R14 R13 K44 ["minWidth"]
      193 FORGLOOP                         R9 2 ; [-7]
      195 NEWTABLE                         R9 0 0
      197 SETTABLEKS                       R9 R0 K45 ["instanceOrder"]
      199 NEWTABLE                         R9 0 0
      201 SETTABLEKS                       R9 R0 K46 ["nodeById"]
      203 NEWTABLE                         R9 0 0
      205 SETTABLEKS                       R9 R0 K47 ["parentById"]
      207 GETIMPORT                        R9 K50 [table.freeze]
      209 DUPTABLE                         R10 K53 [{"Column", "Direction"}]
      210 GETIMPORT                        R11 K50 [table.freeze]
      212 DUPTABLE                         R12 K55 [{"none", "className", "count", "parentName"}]
      213 LOADK                            R13 K54 ["none"]
      214 SETTABLEKS                       R13 R12 K54 ["none"]
      216 LOADK                            R13 K26 ["className"]
      217 SETTABLEKS                       R13 R12 K26 ["className"]
      219 LOADK                            R13 K30 ["count"]
      220 SETTABLEKS                       R13 R12 K30 ["count"]
      222 LOADK                            R13 K39 ["parentName"]
      223 SETTABLEKS                       R13 R12 K39 ["parentName"]
      225 CALL                             R11 1 1
      226 SETTABLEKS                       R11 R10 K51 ["Column"]
      228 GETIMPORT                        R11 K50 [table.freeze]
      230 DUPTABLE                         R12 K58 [{"asc", "desc"}]
      231 LOADK                            R13 K56 ["asc"]
      232 SETTABLEKS                       R13 R12 K56 ["asc"]
      234 LOADK                            R13 K57 ["desc"]
      235 SETTABLEKS                       R13 R12 K57 ["desc"]
      237 CALL                             R11 1 1
      238 SETTABLEKS                       R11 R10 K52 ["Direction"]
      240 CALL                             R9 1 1
      241 MOVE                             R10 R4
      242 DUPTABLE                         R11 K62 [{"Name", "Size", "Children"}]
      243 LOADK                            R12 K63 ["Root"]
      244 SETTABLEKS                       R12 R11 K59 ["Name"]
      246 LOADN                            R12 0
      247 SETTABLEKS                       R12 R11 K60 ["Size"]
      249 NEWTABLE                         R12 0 0
      251 SETTABLEKS                       R12 R11 K61 ["Children"]
      253 CALL                             R10 1 1
      254 GETTABLEKS                       R11 R3 K64 ["create"]
      256 MOVE                             R12 R10
      257 CALL                             R11 1 2
      258 GETTABLEKS                       R13 R3 K64 ["create"]
      260 NEWTABLE                         R14 0 0
      262 CALL                             R13 1 2
      263 GETTABLEKS                       R15 R3 K64 ["create"]
      265 DUPTABLE                         R16 K67 [{"column", "direction"}]
      266 GETTABLEKS                       R17 R9 K51 ["Column"]
      268 GETTABLEKS                       R17 R17 K54 ["none"]
      270 SETTABLEKS                       R17 R16 K65 ["column"]
      272 GETTABLEKS                       R17 R9 K52 ["Direction"]
      274 GETTABLEKS                       R17 R17 K57 ["desc"]
      276 SETTABLEKS                       R17 R16 K66 ["direction"]
      278 CALL                             R15 1 2
      279 GETTABLEKS                       R17 R3 K64 ["create"]
      281 LOADN                            R18 0
      282 CALL                             R17 1 2
      283 DUPCLOSURE                       R19 K68 [PROTO_4]
      284 CAPTURE                          VAL R9
      285 DUPCLOSURE                       R20 K69 [PROTO_6]
      286 CAPTURE                          VAL R16
      287 CAPTURE                          VAL R9
      288 DUPCLOSURE                       R21 K70 [PROTO_7]
      289 CAPTURE                          VAL R11
      290 SETTABLEKS                       R21 R0 K71 ["getNodesObservable"]
      292 DUPCLOSURE                       R21 K72 [PROTO_8]
      293 CAPTURE                          VAL R13
      294 SETTABLEKS                       R21 R0 K73 ["getOrderObservable"]
      296 DUPCLOSURE                       R21 K74 [PROTO_9]
      297 CAPTURE                          VAL R15
      298 SETTABLEKS                       R21 R0 K75 ["getSortStateObservable"]
      300 DUPCLOSURE                       R21 K76 [PROTO_10]
      301 CAPTURE                          VAL R17
      302 SETTABLEKS                       R21 R0 K77 ["getTotalCountObservable"]
      304 DUPCLOSURE                       R21 K78 [PROTO_11]
      305 CAPTURE                          VAL R20
      306 SETTABLEKS                       R21 R0 K79 ["setSort"]
      308 DUPCLOSURE                       R21 K80 [PROTO_12]
      309 CAPTURE                          VAL R0
      310 SETTABLEKS                       R21 R0 K81 ["getNodeById"]
      312 DUPCLOSURE                       R21 K82 [PROTO_13]
      313 CAPTURE                          VAL R0
      314 SETTABLEKS                       R21 R0 K83 ["getParentById"]
      316 DUPCLOSURE                       R21 K84 [PROTO_16]
      317 CAPTURE                          VAL R0
      318 SETTABLEKS                       R21 R0 K85 ["sortedIds"]
      320 DUPCLOSURE                       R21 K86 [PROTO_17]
      321 CAPTURE                          VAL R15
      322 CAPTURE                          VAL R0
      323 CAPTURE                          VAL R9
      324 CAPTURE                          VAL R14
      325 GETTABLEKS                       R22 R15 K87 ["changedSignal"]
      327 MOVE                             R24 R21
      328 NAMECALL                         R22 R22 K88 ["Connect"]
      330 CALL                             R22 2 0
      331 DUPCLOSURE                       R22 K89 [PROTO_18]
      332 CAPTURE                          VAL R13
      333 CAPTURE                          VAL R0
      334 SETTABLEKS                       R22 R0 K90 ["getNodeAtIndex"]
      336 DUPCLOSURE                       R22 K91 [PROTO_19]
      337 CAPTURE                          VAL R13
      338 SETTABLEKS                       R22 R0 K92 ["getIndexForId"]
      340 DUPCLOSURE                       R22 K93 [PROTO_20]
      341 CAPTURE                          VAL R2
      342 CAPTURE                          VAL R0
      343 CAPTURE                          VAL R5
      344 CAPTURE                          VAL R7
      345 CAPTURE                          VAL R18
      346 CAPTURE                          VAL R12
      347 CAPTURE                          VAL R21
      348 SETTABLEKS                       R22 R0 K94 ["RunQueryAsync"]
      350 DUPCLOSURE                       R22 K95 [PROTO_21]
      351 CAPTURE                          VAL R8
      352 SETTABLEKS                       R22 R0 K96 ["getColumns"]
      354 DUPCLOSURE                       R22 K97 [PROTO_22]
      355 CAPTURE                          VAL R0
      356 SETTABLEKS                       R22 R0 K98 ["clearBaselines"]
      358 DUPCLOSURE                       R22 K99 [PROTO_23]
      359 CAPTURE                          VAL R12
      360 CAPTURE                          VAL R10
      361 CAPTURE                          VAL R14
      362 CAPTURE                          VAL R18
      363 CAPTURE                          VAL R0
      364 SETTABLEKS                       R22 R0 K100 ["reset"]
      366 DUPCLOSURE                       R22 K101 [PROTO_24]
      367 CAPTURE                          VAL R2
      368 SETTABLEKS                       R22 R0 K102 ["selectInstances"]
      370 DUPCLOSURE                       R22 K103 [PROTO_25]
      371 CAPTURE                          VAL R0
      372 SETTABLEKS                       R22 R0 K104 ["onRightClick"]
      374 RETURN                           R0 1
