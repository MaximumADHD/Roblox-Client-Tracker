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
       16 DUPTABLE                         R4 K8 [{["node"], ["depth"] = 0, ["hasChildren"] = False, ["id"]}]
       17 SETTABLEKS                       R3 R4 K2 ["node"]
       19 SETTABLEKS                       R2 R4 K7 ["id"]
       21 RETURN                           R4 1

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
       26 GETIMPORT                        R5 K7 [ipairs]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 3
       30 FORGPREP_INEXT                   R5
       31 GETTABLE                         R10 R3 R9
       32 GETTABLE                         R11 R4 R9
       33 LOADK                            R12 K8 [""]
       34 JUMPIFNOT                        R11 ; [+10]
       35 GETTABLE                         R13 R3 R11
       36 JUMPIFNOT                        R13 ; [+8]
       37 GETTABLEKS                       R14 R13 K9 ["Name"]
       39 JUMPIF                           R14 ; [+4]
       40 GETTABLEKS                       R14 R13 K10 ["name"]
       42 JUMPIF                           R14 ; [+1]
       43 LOADK                            R14 K11 ["Unknown"]
       44 MOVE                             R12 R14
       45 SETTABLEKS                       R12 R10 K12 ["parentName"]
       47 FORGLOOP                         R5 2 [inext] ; [-17]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K13 ["baselineByName"]
       52 MOVE                             R6 R2
       53 LOADNIL                          R7
       54 LOADNIL                          R8
       55 FORGPREP                         R6
       56 GETTABLE                         R11 R3 R10
       57 JUMPIFNOT                        R11 ; [+37]
       58 GETTABLEKS                       R12 R11 K9 ["Name"]
       60 JUMPIFNOT                        R12 ; [+34]
       61 GETTABLEKS                       R16 R11 K9 ["Name"]
       63 ORK                              R13 R16 K8 [""]
       64 LOADK                            R14 K14 ["|"]
       65 GETTABLEKS                       R16 R11 K12 ["parentName"]
       67 ORK                              R15 R16 K8 [""]
       68 CONCAT                           R12 R13 R15
       69 GETTABLE                         R13 R5 R12
       70 JUMPIFNOTEQKNIL                  R13 ; [+9]
       72 GETTABLEKS                       R15 R11 K16 ["Size"]
       74 ORK                              R14 R15 K15 [0]
       75 SETTABLE                         R14 R5 R12
       76 LOADN                            R14 0
       77 SETTABLEKS                       R14 R11 K17 ["change"]
       79 JUMP                             ; [+6]
       80 GETTABLEKS                       R16 R11 K16 ["Size"]
       82 ORK                              R15 R16 K15 [0]
       83 SUB                              R14 R15 R13
       84 SETTABLEKS                       R14 R11 K17 ["change"]
       86 GETTABLEKS                       R14 R11 K17 ["change"]
       88 JUMPIFEQKN                       R14 K15 [0] ; [+6]
       90 GETUPVAL                         R14 4
       91 GETTABLEKS                       R14 R14 K18 ["Red"]
       93 SETTABLEKS                       R14 R11 K19 ["colorRamp"]
       95 FORGLOOP                         R6 2 ; [-40]
       97 GETUPVAL                         R6 2
       98 SETTABLEKS                       R2 R6 K20 ["instanceOrder"]
      100 GETUPVAL                         R6 2
      101 SETTABLEKS                       R3 R6 K21 ["nodeById"]
      103 GETUPVAL                         R6 2
      104 SETTABLEKS                       R4 R6 K22 ["parentById"]
      106 GETUPVAL                         R6 5
      107 LENGTH                           R7 R2
      108 CALL                             R6 1 0
      109 GETUPVAL                         R6 6
      110 MOVE                             R7 R1
      111 CALL                             R6 1 0
      112 GETUPVAL                         R6 7
      113 CALL                             R6 0 0
      114 RETURN                           R1 1

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
        0 JUMPIFNOT                        R0 ; [+31]
        1 GETTABLEKS                       R1 R0 K0 ["parentName"]
        3 JUMPIFNOT                        R1 ; [+28]
        4 GETTABLEKS                       R1 R0 K0 ["parentName"]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+25]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+12]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K3 ["SelectInstancesByPaths"]
       15 NEWTABLE                         R4 0 1
       17 GETTABLEKS                       R5 R0 K0 ["parentName"]
       19 SETLIST                          R4 R5 1 [1]
       21 NAMECALL                         R1 R1 K4 ["CallAssetPluginAsync"]
       23 CALL                             R1 3 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K5 ["SelectInstanceByPath"]
       27 GETTABLEKS                       R4 R0 K0 ["parentName"]
       29 NAMECALL                         R1 R1 K4 ["CallAssetPluginAsync"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0

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
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R1 K15 ["Bin"]
       67 GETTABLEKS                       R9 R9 K16 ["Common"]
       69 GETTABLEKS                       R9 R9 K17 ["defineLuaFlags"]
       71 CALL                             R8 1 1
       72 NEWTABLE                         R9 0 0
       74 SETTABLEKS                       R9 R0 K18 ["baselineByName"]
       76 NEWTABLE                         R9 0 4
       78 DUPTABLE                         R10 K34 [{["id"] = "className", ["headerText"] = "Class", ["headerKey"] = "Class", ["sortKey"] = "className", ["width"] = 0.25, ["idealWidth"] = 200, ["priority"] = 2, ["order"] = 1, ["cell"]}]
       79 DUPCLOSURE                       R11 K35 [PROTO_0]
       80 SETTABLEKS                       R11 R10 K33 ["cell"]
       82 DUPTABLE                         R11 K42 [{["id"] = "count", ["headerText"] = "Instance Count", ["headerKey"] = "InstanceCount", ["sortKey"] = "count", ["width"] = 0.15, ["idealWidth"] = 90, ["priority"] = 3, ["order"] = 2, ["cell"]}]
       83 DUPCLOSURE                       R12 K43 [PROTO_1]
       84 SETTABLEKS                       R12 R11 K33 ["cell"]
       86 DUPTABLE                         R12 K49 [{["id"] = "change", ["headerText"] = "Change", ["headerKey"] = "Change", ["sortKey"] = "change", ["width"] = 0.1, ["idealWidth"] = 60, ["priority"] = 4, ["order"] = 3, ["cell"]}]
       87 DUPCLOSURE                       R13 K50 [PROTO_2]
       88 SETTABLEKS                       R13 R12 K33 ["cell"]
       90 DUPTABLE                         R13 K56 [{["id"] = "parentName", ["headerText"] = "Parent Name", ["headerKey"] = "ParentName", ["sortKey"] = "parentName", ["width"] = 0.5, ["idealWidth"] = 500, ["priority"] = 1, ["order"] = 4, ["cell"]}]
       91 DUPCLOSURE                       R14 K57 [PROTO_3]
       92 SETTABLEKS                       R14 R13 K33 ["cell"]
       94 SETLIST                          R9 R10 4 [1]
       96 MOVE                             R10 R9
       97 LOADNIL                          R11
       98 LOADNIL                          R12
       99 FORGPREP                         R10
      100 MOVE                             R15 R6
      101 GETTABLEKS                       R16 R14 K21 ["headerText"]
      103 CALL                             R15 1 1
      104 SETTABLEKS                       R15 R14 K58 ["minWidth"]
      106 FORGLOOP                         R10 2 ; [-7]
      108 NEWTABLE                         R10 0 0
      110 SETTABLEKS                       R10 R0 K59 ["instanceOrder"]
      112 NEWTABLE                         R10 0 0
      114 SETTABLEKS                       R10 R0 K60 ["nodeById"]
      116 NEWTABLE                         R10 0 0
      118 SETTABLEKS                       R10 R0 K61 ["parentById"]
      120 GETIMPORT                        R10 K64 [table.freeze]
      122 DUPTABLE                         R11 K67 [{"Column", "Direction"}]
      123 GETIMPORT                        R12 K64 [table.freeze]
      125 DUPTABLE                         R13 K69 [{["none"] = "none", ["className"] = "className", ["count"] = "count", ["parentName"] = "parentName"}]
      126 CALL                             R12 1 1
      127 SETTABLEKS                       R12 R11 K65 ["Column"]
      129 GETIMPORT                        R12 K64 [table.freeze]
      131 DUPTABLE                         R13 K72 [{["asc"] = "asc", ["desc"] = "desc"}]
      132 CALL                             R12 1 1
      133 SETTABLEKS                       R12 R11 K66 ["Direction"]
      135 CALL                             R10 1 1
      136 MOVE                             R11 R4
      137 DUPTABLE                         R12 K78 [{["Name"] = "Root", ["Size"] = 0, ["Children"]}]
      138 NEWTABLE                         R13 0 0
      140 SETTABLEKS                       R13 R12 K77 ["Children"]
      142 CALL                             R11 1 1
      143 GETTABLEKS                       R12 R3 K79 ["create"]
      145 MOVE                             R13 R11
      146 CALL                             R12 1 2
      147 GETTABLEKS                       R14 R3 K79 ["create"]
      149 NEWTABLE                         R15 0 0
      151 CALL                             R14 1 2
      152 GETTABLEKS                       R16 R3 K79 ["create"]
      154 DUPTABLE                         R17 K82 [{"column", "direction"}]
      155 GETTABLEKS                       R18 R10 K65 ["Column"]
      157 GETTABLEKS                       R18 R18 K68 ["none"]
      159 SETTABLEKS                       R18 R17 K80 ["column"]
      161 GETTABLEKS                       R18 R10 K66 ["Direction"]
      163 GETTABLEKS                       R18 R18 K71 ["desc"]
      165 SETTABLEKS                       R18 R17 K81 ["direction"]
      167 CALL                             R16 1 2
      168 GETTABLEKS                       R18 R3 K79 ["create"]
      170 LOADN                            R19 0
      171 CALL                             R18 1 2
      172 DUPCLOSURE                       R20 K83 [PROTO_4]
      173 CAPTURE                          VAL R10
      174 DUPCLOSURE                       R21 K84 [PROTO_6]
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R10
      177 DUPCLOSURE                       R22 K85 [PROTO_7]
      178 CAPTURE                          VAL R12
      179 SETTABLEKS                       R22 R0 K86 ["getNodesObservable"]
      181 DUPCLOSURE                       R22 K87 [PROTO_8]
      182 CAPTURE                          VAL R14
      183 SETTABLEKS                       R22 R0 K88 ["getOrderObservable"]
      185 DUPCLOSURE                       R22 K89 [PROTO_9]
      186 CAPTURE                          VAL R16
      187 SETTABLEKS                       R22 R0 K90 ["getSortStateObservable"]
      189 DUPCLOSURE                       R22 K91 [PROTO_10]
      190 CAPTURE                          VAL R18
      191 SETTABLEKS                       R22 R0 K92 ["getTotalCountObservable"]
      193 DUPCLOSURE                       R22 K93 [PROTO_11]
      194 CAPTURE                          VAL R21
      195 SETTABLEKS                       R22 R0 K94 ["setSort"]
      197 DUPCLOSURE                       R22 K95 [PROTO_12]
      198 CAPTURE                          VAL R0
      199 SETTABLEKS                       R22 R0 K96 ["getNodeById"]
      201 DUPCLOSURE                       R22 K97 [PROTO_13]
      202 CAPTURE                          VAL R0
      203 SETTABLEKS                       R22 R0 K98 ["getParentById"]
      205 DUPCLOSURE                       R22 K99 [PROTO_16]
      206 CAPTURE                          VAL R0
      207 SETTABLEKS                       R22 R0 K100 ["sortedIds"]
      209 DUPCLOSURE                       R22 K101 [PROTO_17]
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R15
      214 GETTABLEKS                       R23 R16 K102 ["changedSignal"]
      216 MOVE                             R25 R22
      217 NAMECALL                         R23 R23 K103 ["Connect"]
      219 CALL                             R23 2 0
      220 DUPCLOSURE                       R23 K104 [PROTO_18]
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R0
      223 SETTABLEKS                       R23 R0 K105 ["getNodeAtIndex"]
      225 DUPCLOSURE                       R23 K106 [PROTO_19]
      226 CAPTURE                          VAL R14
      227 SETTABLEKS                       R23 R0 K107 ["getIndexForId"]
      229 DUPCLOSURE                       R23 K108 [PROTO_20]
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R0
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R22
      238 SETTABLEKS                       R23 R0 K109 ["RunQueryAsync"]
      240 DUPCLOSURE                       R23 K110 [PROTO_21]
      241 CAPTURE                          VAL R9
      242 SETTABLEKS                       R23 R0 K111 ["getColumns"]
      244 DUPCLOSURE                       R23 K112 [PROTO_22]
      245 CAPTURE                          VAL R0
      246 SETTABLEKS                       R23 R0 K113 ["clearBaselines"]
      248 DUPCLOSURE                       R23 K114 [PROTO_23]
      249 CAPTURE                          VAL R13
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R15
      252 CAPTURE                          VAL R19
      253 CAPTURE                          VAL R0
      254 SETTABLEKS                       R23 R0 K115 ["reset"]
      256 DUPCLOSURE                       R23 K116 [PROTO_24]
      257 CAPTURE                          VAL R8
      258 CAPTURE                          VAL R2
      259 SETTABLEKS                       R23 R0 K117 ["selectInstances"]
      261 DUPCLOSURE                       R23 K118 [PROTO_25]
      262 CAPTURE                          VAL R0
      263 SETTABLEKS                       R23 R0 K119 ["onRightClick"]
      265 RETURN                           R0 1
