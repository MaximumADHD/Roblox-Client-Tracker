PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["Name"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["sizeMB"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["change"]
        4 ORK                              R1 R2 K0 [0]
        5 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        7 LOADK                            R2 K3 ["—"]
        8 RETURN                           R2 1
        9 LOADN                            R3 0
       10 JUMPIFNOTLT                      R3 R1 ; [+3]
       12 LOADK                            R2 K4 ["+"]
       13 JUMP                             ; [+1]
       14 LOADK                            R2 K5 ["-"]
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 0
       17 FASTCALL1                        MATH_ABS R1 ; [+3]
       18 MOVE                             R7 R1
       19 GETIMPORT                        R6 K8 [math.abs]
       21 CALL                             R6 1 1
       22 CALL                             R5 1 1
       23 CONCAT                           R3 R4 R5
       24 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["path"]
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
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R1 K0 ["Children"]
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETIMPORT                        R3 K2 [next]
        7 GETTABLEKS                       R4 R1 K0 ["Children"]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 JUMPIFNOT                        R2 ; [+12]
       15 GETTABLEKS                       R3 R1 K0 ["Children"]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R0
       22 MOVE                             R10 R7
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-5]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R1 K3 ["path"]
       29 JUMPIFNOT                        R3 ; [+20]
       30 GETTABLEKS                       R4 R1 K3 ["path"]
       32 FASTCALL1                        TYPE R4 ; [+2]
       33 GETIMPORT                        R3 K5 [type]
       35 CALL                             R3 1 1
       36 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+13]
       38 GETTABLEKS                       R3 R1 K3 ["path"]
       40 JUMPIFEQKS                       R3 K7 [""] ; [+9]
       42 GETTABLEKS                       R5 R1 K3 ["path"]
       44 FASTCALL2                        TABLE_INSERT R0 R5 ; [+4]
       46 MOVE                             R4 R0
       47 GETIMPORT                        R3 K10 [table.insert]
       49 CALL                             R3 2 0
       50 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNodeById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["getFFlagSceneAnalysisBugfixesMay2026"]
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+17]
       12 NEWTABLE                         R2 0 0
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R2
       16 MOVE                             R5 R1
       17 CALL                             R3 2 0
       18 LENGTH                           R3 R2
       19 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 3
       23 LOADK                            R5 K3 ["SelectInstancesByPaths"]
       24 MOVE                             R6 R2
       25 NAMECALL                         R3 R3 K4 ["CallAssetPluginAsync"]
       27 CALL                             R3 3 0
       28 RETURN                           R0 0
       29 GETTABLEKS                       R2 R1 K5 ["path"]
       31 JUMPIFNOT                        R2 ; [+23]
       32 GETTABLEKS                       R3 R1 K5 ["path"]
       34 FASTCALL1                        TYPE R3 ; [+2]
       35 GETIMPORT                        R2 K7 [type]
       37 CALL                             R2 1 1
       38 JUMPIFNOTEQKS                    R2 K8 ["string"] ; [+16]
       40 GETTABLEKS                       R2 R1 K5 ["path"]
       42 JUMPIFEQKS                       R2 K9 [""] ; [+12]
       44 GETUPVAL                         R2 3
       45 LOADK                            R4 K3 ["SelectInstancesByPaths"]
       46 NEWTABLE                         R5 0 1
       48 GETTABLEKS                       R6 R1 K5 ["path"]
       50 SETLIST                          R5 R6 1 [1]
       52 NAMECALL                         R2 R2 K4 ["CallAssetPluginAsync"]
       54 CALL                             R2 3 0
       55 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parentById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["k"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQKS                    R2 K1 ["name"] ; [+4]
        5 GETTABLEKS                       R2 R1 K1 ["name"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 JUMPIFEQKS                       R2 K2 ["size"] ; [+4]
       11 GETUPVAL                         R2 0
       12 JUMPIFNOTEQKS                    R2 K3 ["memory"] ; [+4]
       14 GETTABLEKS                       R2 R1 K2 ["size"]
       16 RETURN                           R2 1
       17 GETUPVAL                         R2 0
       18 JUMPIFNOTEQKS                    R2 K4 ["change"] ; [+4]
       20 GETTABLEKS                       R2 R1 K4 ["change"]
       22 RETURN                           R2 1
       23 GETUPVAL                         R2 0
       24 JUMPIFNOTEQKS                    R2 K5 ["path"] ; [+4]
       26 GETTABLEKS                       R2 R1 K5 ["path"]
       28 RETURN                           R2 1
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R4 R0 K0 ["k"]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOTEQKS                    R5 K1 ["name"] ; [+4]
        5 GETTABLEKS                       R2 R4 K1 ["name"]
        7 JUMP                             ; [+22]
        8 GETUPVAL                         R5 0
        9 JUMPIFEQKS                       R5 K2 ["size"] ; [+4]
       11 GETUPVAL                         R5 0
       12 JUMPIFNOTEQKS                    R5 K3 ["memory"] ; [+4]
       14 GETTABLEKS                       R2 R4 K2 ["size"]
       16 JUMP                             ; [+13]
       17 GETUPVAL                         R5 0
       18 JUMPIFNOTEQKS                    R5 K4 ["change"] ; [+4]
       20 GETTABLEKS                       R2 R4 K4 ["change"]
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R5 0
       24 JUMPIFNOTEQKS                    R5 K5 ["path"] ; [+4]
       26 GETTABLEKS                       R2 R4 K5 ["path"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R2
       30 GETTABLEKS                       R4 R1 K0 ["k"]
       32 GETUPVAL                         R5 0
       33 JUMPIFNOTEQKS                    R5 K1 ["name"] ; [+4]
       35 GETTABLEKS                       R3 R4 K1 ["name"]
       37 JUMP                             ; [+22]
       38 GETUPVAL                         R5 0
       39 JUMPIFEQKS                       R5 K2 ["size"] ; [+4]
       41 GETUPVAL                         R5 0
       42 JUMPIFNOTEQKS                    R5 K3 ["memory"] ; [+4]
       44 GETTABLEKS                       R3 R4 K2 ["size"]
       46 JUMP                             ; [+13]
       47 GETUPVAL                         R5 0
       48 JUMPIFNOTEQKS                    R5 K4 ["change"] ; [+4]
       50 GETTABLEKS                       R3 R4 K4 ["change"]
       52 JUMP                             ; [+7]
       53 GETUPVAL                         R5 0
       54 JUMPIFNOTEQKS                    R5 K5 ["path"] ; [+4]
       56 GETTABLEKS                       R3 R4 K5 ["path"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R3
       60 JUMPIFEQ                         R2 R3 ; [+13]
       62 GETUPVAL                         R4 1
       63 JUMPIFNOT                        R4 ; [+5]
       64 JUMPIFLT                         R2 R3 ; [+2]
       66 LOADB                            R4 0 +1
       67 LOADB                            R4 1
       68 RETURN                           R4 1
       69 JUMPIFLT                         R3 R2 ; [+2]
       71 LOADB                            R4 0 +1
       72 LOADB                            R4 1
       73 RETURN                           R4 1
       74 GETTABLEKS                       R4 R0 K0 ["k"]
       76 GETTABLEKS                       R5 R1 K0 ["k"]
       78 GETTABLEKS                       R6 R4 K1 ["name"]
       80 GETTABLEKS                       R7 R5 K1 ["name"]
       82 JUMPIFEQ                         R6 R7 ; [+10]
       84 GETTABLEKS                       R7 R4 K1 ["name"]
       86 GETTABLEKS                       R8 R5 K1 ["name"]
       88 JUMPIFLT                         R7 R8 ; [+2]
       90 LOADB                            R6 0 +1
       91 LOADB                            R6 1
       92 RETURN                           R6 1
       93 GETTABLEKS                       R6 R4 K5 ["path"]
       95 GETTABLEKS                       R7 R5 K5 ["path"]
       97 JUMPIFEQ                         R6 R7 ; [+10]
       99 GETTABLEKS                       R7 R4 K5 ["path"]
      101 GETTABLEKS                       R8 R5 K5 ["path"]
      103 JUMPIFLT                         R7 R8 ; [+2]
      105 LOADB                            R6 0 +1
      106 LOADB                            R6 1
      107 RETURN                           R6 1
      108 GETTABLEKS                       R6 R4 K2 ["size"]
      110 GETTABLEKS                       R7 R5 K2 ["size"]
      112 JUMPIFEQ                         R6 R7 ; [+10]
      114 GETTABLEKS                       R7 R4 K2 ["size"]
      116 GETTABLEKS                       R8 R5 K2 ["size"]
      118 JUMPIFLT                         R8 R7 ; [+2]
      120 LOADB                            R6 0 +1
      121 LOADB                            R6 1
      122 RETURN                           R6 1
      123 GETTABLEKS                       R7 R0 K6 ["id"]
      125 GETTABLEKS                       R8 R1 K6 ["id"]
      127 JUMPIFLT                         R7 R8 ; [+2]
      129 LOADB                            R6 0 +1
      130 LOADB                            R6 1
      131 RETURN                           R6 1

PROTO_18:
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
       19 DUPTABLE                         R12 K12 [{"name", "size", "change", "path"}]
       20 JUMPIFNOT                        R10 ; [+3]
       21 GETTABLEKS                       R13 R10 K13 ["Name"]
       23 JUMPIF                           R13 ; [+1]
       24 LOADK                            R13 K14 [""]
       25 SETTABLEKS                       R13 R12 K8 ["name"]
       27 JUMPIFNOT                        R10 ; [+7]
       28 GETTABLEKS                       R14 R10 K15 ["Size"]
       30 FASTCALL1                        TONUMBER R14 ; [+2]
       31 GETIMPORT                        R13 K17 [tonumber]
       33 CALL                             R13 1 1
       34 JUMPIF                           R13 ; [+1]
       35 LOADN                            R13 0
       36 SETTABLEKS                       R13 R12 K9 ["size"]
       38 JUMPIFNOT                        R10 ; [+7]
       39 GETTABLEKS                       R14 R10 K10 ["change"]
       41 FASTCALL1                        TONUMBER R14 ; [+2]
       42 GETIMPORT                        R13 K17 [tonumber]
       44 CALL                             R13 1 1
       45 JUMPIF                           R13 ; [+1]
       46 LOADN                            R13 0
       47 SETTABLEKS                       R13 R12 K10 ["change"]
       49 JUMPIFNOT                        R10 ; [+3]
       50 GETTABLEKS                       R13 R10 K11 ["path"]
       52 JUMPIF                           R13 ; [+1]
       53 LOADK                            R13 K14 [""]
       54 SETTABLEKS                       R13 R12 K11 ["path"]
       56 SETTABLEKS                       R12 R11 K6 ["k"]
       58 SETTABLE                         R11 R4 R8
       59 FORGLOOP                         R5 2 ; [-48]
       61 NEWCLOSURE                       R5 P0
       62 CAPTURE                          VAL R1
       63 JUMPIFEQKS                       R1 K18 ["none"] ; [+32]
       65 LENGTH                           R6 R4
       66 JUMPIFEQKN                       R6 K19 [0] ; [+29]
       68 GETTABLEN                        R7 R4 1
       69 GETTABLEKS                       R8 R7 K6 ["k"]
       71 JUMPIFNOTEQKS                    R1 K8 ["name"] ; [+4]
       73 GETTABLEKS                       R6 R8 K8 ["name"]
       75 JUMP                             ; [+18]
       76 JUMPIFEQKS                       R1 K9 ["size"] ; [+3]
       78 JUMPIFNOTEQKS                    R1 K20 ["memory"] ; [+4]
       80 GETTABLEKS                       R6 R8 K9 ["size"]
       82 JUMP                             ; [+11]
       83 JUMPIFNOTEQKS                    R1 K10 ["change"] ; [+4]
       85 GETTABLEKS                       R6 R8 K10 ["change"]
       87 JUMP                             ; [+6]
       88 JUMPIFNOTEQKS                    R1 K11 ["path"] ; [+4]
       90 GETTABLEKS                       R6 R8 K11 ["path"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R6
       94 JUMPIFNOTEQKNIL                  R6 ; [+15]
       96 GETIMPORT                        R6 K3 [table.create]
       98 LENGTH                           R7 R4
       99 CALL                             R6 1 1
      100 LOADN                            R9 1
      101 LENGTH                           R7 R4
      102 LOADN                            R8 1
      103 FORNPREP                         R7
      104 GETTABLE                         R10 R4 R9
      105 GETTABLEKS                       R10 R10 K5 ["id"]
      107 SETTABLE                         R10 R6 R9
      108 FORNLOOP                         R7
      109 RETURN                           R6 1
      110 NEWCLOSURE                       R6 P1
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R3
      113 GETIMPORT                        R7 K22 [table.sort]
      115 MOVE                             R8 R4
      116 MOVE                             R9 R6
      117 CALL                             R7 2 0
      118 GETIMPORT                        R7 K3 [table.create]
      120 LENGTH                           R8 R4
      121 CALL                             R7 1 1
      122 LOADN                            R10 1
      123 LENGTH                           R8 R4
      124 LOADN                            R9 1
      125 FORNPREP                         R8
      126 GETTABLE                         R11 R4 R10
      127 GETTABLEKS                       R11 R11 K5 ["id"]
      129 SETTABLE                         R11 R7 R10
      130 FORNLOOP                         R8
      131 RETURN                           R7 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["scriptOrder"]
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R3 R0 K0 ["Id"]
        4 JUMPIF                           R3 ; [+6]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R0 K0 ["Id"]
        8 GETUPVAL                         R4 0
        9 ADDK                             R3 R4 K1 [1]
       10 SETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R0 K2 ["Name"]
       13 JUMPIFNOTEQKS                    R3 K3 ["Scripts"] ; [+2]
       15 LOADB                            R2 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R0 K4 ["AltColor"]
       20 GETTABLEKS                       R3 R0 K5 ["Children"]
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETIMPORT                        R3 K7 [next]
       25 GETTABLEKS                       R4 R0 K5 ["Children"]
       27 CALL                             R3 1 1
       28 JUMPIFNOTEQKNIL                  R3 ; [+36]
       30 GETTABLEKS                       R3 R0 K2 ["Name"]
       32 JUMPIFNOT                        R3 ; [+17]
       33 GETTABLEKS                       R3 R0 K2 ["Name"]
       35 SETTABLEKS                       R3 R0 K8 ["path"]
       37 GETIMPORT                        R4 K11 [string.split]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K12 ["."]
       41 CALL                             R4 2 1
       42 LENGTH                           R5 R4
       43 LOADN                            R6 0
       44 JUMPIFNOTLT                      R6 R5 ; [+5]
       46 LENGTH                           R6 R4
       47 GETTABLE                         R5 R4 R6
       48 SETTABLEKS                       R5 R0 K2 ["Name"]
       50 GETTABLEKS                       R3 R0 K0 ["Id"]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K0 ["Id"]
       55 JUMPIFEQ                         R3 R4 ; [+9]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R5 R0 K0 ["Id"]
       60 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       62 GETIMPORT                        R3 K15 [table.insert]
       64 CALL                             R3 2 0
       65 GETUPVAL                         R3 3
       66 GETTABLEKS                       R4 R0 K0 ["Id"]
       68 SETTABLE                         R0 R3 R4
       69 JUMPIFNOT                        R1 ; [+4]
       70 GETUPVAL                         R3 4
       71 GETTABLEKS                       R4 R0 K0 ["Id"]
       73 SETTABLE                         R1 R3 R4
       74 GETTABLEKS                       R3 R0 K5 ["Children"]
       76 JUMPIFNOT                        R3 ; [+20]
       77 GETIMPORT                        R3 K7 [next]
       79 GETTABLEKS                       R4 R0 K5 ["Children"]
       81 CALL                             R3 1 1
       82 JUMPIFEQKNIL                     R3 ; [+14]
       84 GETTABLEKS                       R3 R0 K5 ["Children"]
       86 LOADNIL                          R4
       87 LOADNIL                          R5
       88 FORGPREP                         R3
       89 GETUPVAL                         R8 5
       90 MOVE                             R9 R7
       91 GETTABLEKS                       R10 R0 K0 ["Id"]
       93 MOVE                             R11 R2
       94 CALL                             R8 3 0
       95 FORGLOOP                         R3 2 ; [-7]
       97 RETURN                           R0 0

PROTO_23:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          REF R4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R5
       14 MOVE                             R6 R5
       15 MOVE                             R7 R0
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 CALL                             R6 3 0
       19 CLOSEUPVALS                      R4
       20 RETURN                           R1 3

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchScriptMemoryUsage"]
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
       19 MOVE                             R3 R1
       20 CALL                             R2 1 3
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["baselineByPath"]
       24 MOVE                             R6 R2
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 GETTABLE                         R11 R3 R10
       29 JUMPIFNOT                        R11 ; [+59]
       30 GETTABLEKS                       R12 R11 K5 ["path"]
       32 JUMPIFNOT                        R12 ; [+56]
       33 GETTABLEKS                       R13 R11 K5 ["path"]
       35 GETTABLE                         R12 R5 R13
       36 JUMPIFNOTEQKNIL                  R12 ; [+11]
       38 GETTABLEKS                       R13 R11 K5 ["path"]
       40 GETTABLEKS                       R15 R11 K7 ["Size"]
       42 ORK                              R14 R15 K6 [0]
       43 SETTABLE                         R14 R5 R13
       44 LOADN                            R13 0
       45 SETTABLEKS                       R13 R11 K8 ["change"]
       47 JUMP                             ; [+6]
       48 GETTABLEKS                       R15 R11 K7 ["Size"]
       50 ORK                              R14 R15 K6 [0]
       51 SUB                              R13 R14 R12
       52 SETTABLEKS                       R13 R11 K8 ["change"]
       54 GETUPVAL                         R13 1
       55 GETTABLEKS                       R13 R13 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
       57 CALL                             R13 0 1
       58 GETTABLEKS                       R14 R11 K8 ["change"]
       60 LOADN                            R15 0
       61 JUMPIFNOTLT                      R15 R14 ; [+12]
       63 JUMPIFNOT                        R13 ; [+4]
       64 GETUPVAL                         R14 4
       65 GETTABLEKS                       R14 R14 K9 ["Red"]
       67 JUMP                             ; [+3]
       68 GETUPVAL                         R14 4
       69 GETTABLEKS                       R14 R14 K10 ["IceBlueWarm"]
       71 SETTABLEKS                       R14 R11 K11 ["colorRamp"]
       73 JUMP                             ; [+15]
       74 GETTABLEKS                       R14 R11 K8 ["change"]
       76 LOADN                            R15 0
       77 JUMPIFNOTLT                      R14 R15 ; [+11]
       79 JUMPIFNOT                        R13 ; [+4]
       80 GETUPVAL                         R14 4
       81 GETTABLEKS                       R14 R14 K12 ["Green"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R14 R14 K13 ["IceBlueCool"]
       87 SETTABLEKS                       R14 R11 K11 ["colorRamp"]
       89 FORGLOOP                         R6 2 ; [-62]
       91 GETUPVAL                         R6 2
       92 SETTABLEKS                       R2 R6 K14 ["scriptOrder"]
       94 GETUPVAL                         R6 2
       95 SETTABLEKS                       R3 R6 K15 ["nodeById"]
       97 GETUPVAL                         R6 2
       98 SETTABLEKS                       R4 R6 K16 ["parentById"]
      100 GETUPVAL                         R6 5
      101 LENGTH                           R7 R2
      102 CALL                             R6 1 0
      103 GETUPVAL                         R6 6
      104 MOVE                             R7 R1
      105 CALL                             R6 1 0
      106 GETUPVAL                         R6 7
      107 CALL                             R6 0 0
      108 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_26:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R5 R0 K1 ["Size"]
        5 ORK                              R4 R5 K0 [0]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R1 ; [+14]
        8 MOVE                             R5 R2
        9 LOADK                            R8 K2 ["Tooltip"]
       10 LOADK                            R9 K3 ["MemoryLabel"]
       11 DUPTABLE                         R10 K5 [{"value"}]
       12 SETTABLEKS                       R3 R10 K4 ["value"]
       14 NAMECALL                         R6 R1 K6 ["getText"]
       16 CALL                             R6 4 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R4 K9 [table.insert]
       20 CALL                             R4 -1 0
       21 JUMP                             ; [+9]
       22 LOADK                            R7 K10 ["Memory: "]
       23 MOVE                             R8 R3
       24 CONCAT                           R6 R7 R8
       25 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       27 MOVE                             R5 R2
       28 GETIMPORT                        R4 K9 [table.insert]
       30 CALL                             R4 2 0
       31 GETTABLEKS                       R5 R0 K11 ["change"]
       33 ORK                              R4 R5 K0 [0]
       34 JUMPIFEQKN                       R4 K0 [0] ; [+40]
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R4 ; [+3]
       39 LOADK                            R5 K12 ["+"]
       40 JUMP                             ; [+1]
       41 LOADK                            R5 K13 ["-"]
       42 MOVE                             R7 R5
       43 GETUPVAL                         R8 0
       44 FASTCALL1                        MATH_ABS R4 ; [+3]
       45 MOVE                             R10 R4
       46 GETIMPORT                        R9 K16 [math.abs]
       48 CALL                             R9 1 1
       49 CALL                             R8 1 1
       50 CONCAT                           R6 R7 R8
       51 JUMPIFNOT                        R1 ; [+14]
       52 MOVE                             R8 R2
       53 LOADK                            R11 K2 ["Tooltip"]
       54 LOADK                            R12 K17 ["ChangeLabel"]
       55 DUPTABLE                         R13 K5 [{"value"}]
       56 SETTABLEKS                       R6 R13 K4 ["value"]
       58 NAMECALL                         R9 R1 K6 ["getText"]
       60 CALL                             R9 4 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R7 K9 [table.insert]
       64 CALL                             R7 -1 0
       65 RETURN                           R2 1
       66 LOADK                            R10 K18 ["Change: "]
       67 MOVE                             R11 R6
       68 CONCAT                           R9 R10 R11
       69 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       71 MOVE                             R8 R2
       72 GETIMPORT                        R7 K9 [table.insert]
       74 CALL                             R7 2 0
       75 RETURN                           R2 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["baselineByPath"]
        5 RETURN                           R0 0

PROTO_28:
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
       13 SETTABLEKS                       R1 R0 K0 ["scriptOrder"]
       15 GETUPVAL                         R0 4
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K1 ["nodeById"]
       20 GETUPVAL                         R0 4
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K2 ["parentById"]
       25 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagSceneAnalysisBugfixesMay2026"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+3]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 NEWTABLE                         R1 0 0
       10 JUMPIFNOT                        R0 ; [+11]
       11 MOVE                             R3 R1
       12 LOADK                            R6 K1 ["Messages"]
       13 LOADK                            R7 K2 ["LocalMachineValuesWarning"]
       14 NAMECALL                         R4 R0 K3 ["getText"]
       16 CALL                             R4 3 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R2 K6 [table.insert]
       20 CALL                             R2 -1 0
       21 RETURN                           R1 1
       22 FASTCALL2K                       TABLE_INSERT R1 K7 ; [+5]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K7 ["Local machine values. Memory usage will vary on player's devices."]
       26 GETIMPORT                        R2 K6 [table.insert]
       28 CALL                             R2 2 0
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Src"]
       13 GETTABLEKS                       R3 R3 K7 ["Components"]
       15 GETTABLEKS                       R3 R3 K8 ["AbridgedPathCell"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Src"]
       22 GETTABLEKS                       R4 R4 K9 ["Util"]
       24 GETTABLEKS                       R4 R4 K10 ["AssetDMBridge"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K9 ["Util"]
       33 GETTABLEKS                       R5 R5 K11 ["Observable"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R1 K6 ["Src"]
       40 GETTABLEKS                       R6 R6 K9 ["Util"]
       42 GETTABLEKS                       R6 R6 K12 ["deepFreeze"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R1 K6 ["Src"]
       49 GETTABLEKS                       R7 R7 K9 ["Util"]
       51 GETTABLEKS                       R7 R7 K13 ["formatSize"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R1 K6 ["Src"]
       58 GETTABLEKS                       R8 R8 K9 ["Util"]
       60 GETTABLEKS                       R8 R8 K14 ["measureHeaderText"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R1 K6 ["Src"]
       67 GETTABLEKS                       R9 R9 K15 ["Resources"]
       69 GETTABLEKS                       R9 R9 K16 ["ColorRamps"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R1 K17 ["Bin"]
       76 GETTABLEKS                       R10 R10 K18 ["Common"]
       78 GETTABLEKS                       R10 R10 K19 ["defineLuaFlags"]
       80 CALL                             R9 1 1
       81 NEWTABLE                         R10 0 0
       83 SETTABLEKS                       R10 R0 K20 ["options"]
       85 GETTABLEKS                       R10 R0 K20 ["options"]
       87 LOADB                            R11 1
       88 SETTABLEKS                       R11 R10 K21 ["skipRobloxFiles"]
       90 NEWTABLE                         R10 0 0
       92 SETTABLEKS                       R10 R0 K22 ["baselineByPath"]
       94 NEWTABLE                         R10 0 4
       96 DUPTABLE                         R11 K37 [{["id"] = "name", ["headerText"] = "Name", ["headerKey"] = "Name", ["sortKey"] = "name", ["width"] = 0.4, ["idealWidth"] = 200, ["priority"] = 1, ["order"] = 1, ["cell"]}]
       97 DUPCLOSURE                       R12 K38 [PROTO_0]
       98 SETTABLEKS                       R12 R11 K36 ["cell"]
      100 DUPTABLE                         R12 K44 [{["id"] = "memory", ["headerText"] = "Memory", ["headerKey"] = "Memory", ["sortKey"] = "memory", ["width"] = 0.15, ["idealWidth"] = 90, ["priority"] = 2, ["order"] = 2, ["cell"]}]
      101 DUPCLOSURE                       R13 K45 [PROTO_1]
      102 SETTABLEKS                       R13 R12 K36 ["cell"]
      104 DUPTABLE                         R13 K52 [{["id"] = "change", ["headerText"] = "Change", ["headerKey"] = "Change", ["sortKey"] = "change", ["width"] = 0.1, ["idealWidth"] = 60, ["priority"] = 4, ["order"] = 3, ["cell"]}]
      105 DUPCLOSURE                       R14 K53 [PROTO_2]
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R14 R13 K36 ["cell"]
      109 DUPTABLE                         R14 K59 [{["id"] = "path", ["headerText"] = "Path", ["headerKey"] = "Path", ["sortKey"] = "path", ["width"] = 0.3, ["idealWidth"] = 300, ["priority"] = 3, ["order"] = 4, ["renderCell"], ["cell"]}]
      110 SETTABLEKS                       R2 R14 K58 ["renderCell"]
      112 DUPCLOSURE                       R15 K60 [PROTO_3]
      113 SETTABLEKS                       R15 R14 K36 ["cell"]
      115 SETLIST                          R10 R11 4 [1]
      117 MOVE                             R11 R10
      118 LOADNIL                          R12
      119 LOADNIL                          R13
      120 FORGPREP                         R11
      121 MOVE                             R16 R7
      122 GETTABLEKS                       R17 R15 K25 ["headerText"]
      124 CALL                             R16 1 1
      125 SETTABLEKS                       R16 R15 K61 ["minWidth"]
      127 FORGLOOP                         R11 2 ; [-7]
      129 NEWTABLE                         R11 0 0
      131 SETTABLEKS                       R11 R0 K62 ["scriptOrder"]
      133 NEWTABLE                         R11 0 0
      135 SETTABLEKS                       R11 R0 K63 ["nodeById"]
      137 NEWTABLE                         R11 0 0
      139 SETTABLEKS                       R11 R0 K64 ["parentById"]
      141 GETIMPORT                        R11 K67 [table.freeze]
      143 DUPTABLE                         R12 K70 [{"Column", "Direction"}]
      144 GETIMPORT                        R13 K67 [table.freeze]
      146 NEWTABLE                         R14 8 0
      148 LOADK                            R15 K71 ["none"]
      149 SETTABLEKS                       R15 R14 K71 ["none"]
      151 LOADK                            R15 K24 ["name"]
      152 SETTABLEKS                       R15 R14 K24 ["name"]
      154 LOADK                            R15 K72 ["type"]
      155 SETTABLEKS                       R15 R14 K72 ["type"]
      157 LOADK                            R15 K73 ["referenceCount"]
      158 SETTABLEKS                       R15 R14 K73 ["referenceCount"]
      160 LOADK                            R15 K74 ["instanceUsageCount"]
      161 SETTABLEKS                       R15 R14 K74 ["instanceUsageCount"]
      163 LOADK                            R15 K39 ["memory"]
      164 SETTABLEKS                       R15 R14 K39 ["memory"]
      166 LOADK                            R15 K75 ["size"]
      167 SETTABLEKS                       R15 R14 K75 ["size"]
      169 CALL                             R13 1 1
      170 SETTABLEKS                       R13 R12 K68 ["Column"]
      172 GETIMPORT                        R13 K67 [table.freeze]
      174 DUPTABLE                         R14 K78 [{["asc"] = "asc", ["desc"] = "desc"}]
      175 CALL                             R13 1 1
      176 SETTABLEKS                       R13 R12 K69 ["Direction"]
      178 CALL                             R11 1 1
      179 MOVE                             R12 R5
      180 DUPTABLE                         R13 K83 [{["Name"] = "Root", ["Size"] = 0, ["Children"]}]
      181 NEWTABLE                         R14 0 0
      183 SETTABLEKS                       R14 R13 K82 ["Children"]
      185 CALL                             R12 1 1
      186 GETTABLEKS                       R13 R4 K84 ["create"]
      188 MOVE                             R14 R12
      189 CALL                             R13 1 2
      190 GETTABLEKS                       R15 R4 K84 ["create"]
      192 NEWTABLE                         R16 0 0
      194 CALL                             R15 1 2
      195 GETTABLEKS                       R17 R4 K84 ["create"]
      197 DUPTABLE                         R18 K87 [{"column", "direction"}]
      198 GETTABLEKS                       R19 R11 K68 ["Column"]
      200 GETTABLEKS                       R19 R19 K71 ["none"]
      202 SETTABLEKS                       R19 R18 K85 ["column"]
      204 GETTABLEKS                       R19 R11 K69 ["Direction"]
      206 GETTABLEKS                       R19 R19 K77 ["desc"]
      208 SETTABLEKS                       R19 R18 K86 ["direction"]
      210 CALL                             R17 1 2
      211 GETTABLEKS                       R19 R4 K84 ["create"]
      213 LOADN                            R20 0
      214 CALL                             R19 1 2
      215 DUPCLOSURE                       R21 K88 [PROTO_4]
      216 CAPTURE                          VAL R11
      217 DUPCLOSURE                       R22 K89 [PROTO_6]
      218 CAPTURE                          VAL R18
      219 CAPTURE                          VAL R11
      220 DUPCLOSURE                       R23 K90 [PROTO_7]
      221 CAPTURE                          VAL R13
      222 SETTABLEKS                       R23 R0 K91 ["getNodesObservable"]
      224 DUPCLOSURE                       R23 K92 [PROTO_8]
      225 CAPTURE                          VAL R15
      226 SETTABLEKS                       R23 R0 K93 ["getOrderObservable"]
      228 DUPCLOSURE                       R23 K94 [PROTO_9]
      229 CAPTURE                          VAL R17
      230 SETTABLEKS                       R23 R0 K95 ["getSortStateObservable"]
      232 DUPCLOSURE                       R23 K96 [PROTO_10]
      233 CAPTURE                          VAL R19
      234 SETTABLEKS                       R23 R0 K97 ["getTotalCountObservable"]
      236 DUPCLOSURE                       R23 K98 [PROTO_11]
      237 CAPTURE                          VAL R22
      238 SETTABLEKS                       R23 R0 K99 ["setSort"]
      240 DUPCLOSURE                       R23 K100 [PROTO_12]
      241 CAPTURE                          VAL R0
      242 SETTABLEKS                       R23 R0 K101 ["getNodeById"]
      244 DUPCLOSURE                       R23 K102 [PROTO_13]
      245 CAPTURE                          VAL R23
      246 DUPCLOSURE                       R24 K103 [PROTO_14]
      247 CAPTURE                          VAL R0
      248 CAPTURE                          VAL R9
      249 CAPTURE                          VAL R23
      250 CAPTURE                          VAL R3
      251 SETTABLEKS                       R24 R0 K104 ["onRightClick"]
      253 DUPCLOSURE                       R24 K105 [PROTO_15]
      254 CAPTURE                          VAL R0
      255 SETTABLEKS                       R24 R0 K106 ["getParentById"]
      257 DUPCLOSURE                       R24 K107 [PROTO_18]
      258 CAPTURE                          VAL R0
      259 SETTABLEKS                       R24 R0 K108 ["sortedIds"]
      261 DUPCLOSURE                       R24 K109 [PROTO_19]
      262 CAPTURE                          VAL R17
      263 CAPTURE                          VAL R0
      264 CAPTURE                          VAL R11
      265 CAPTURE                          VAL R16
      266 GETTABLEKS                       R25 R17 K110 ["changedSignal"]
      268 MOVE                             R27 R24
      269 NAMECALL                         R25 R25 K111 ["Connect"]
      271 CALL                             R25 2 0
      272 DUPCLOSURE                       R25 K112 [PROTO_20]
      273 CAPTURE                          VAL R15
      274 CAPTURE                          VAL R0
      275 SETTABLEKS                       R25 R0 K113 ["getNodeAtIndex"]
      277 DUPCLOSURE                       R25 K114 [PROTO_21]
      278 CAPTURE                          VAL R15
      279 SETTABLEKS                       R25 R0 K115 ["getIndexForId"]
      281 DUPCLOSURE                       R25 K116 [PROTO_23]
      282 DUPCLOSURE                       R26 K117 [PROTO_24]
      283 CAPTURE                          VAL R3
      284 CAPTURE                          VAL R9
      285 CAPTURE                          VAL R0
      286 CAPTURE                          VAL R25
      287 CAPTURE                          VAL R8
      288 CAPTURE                          VAL R20
      289 CAPTURE                          VAL R14
      290 CAPTURE                          VAL R24
      291 SETTABLEKS                       R26 R0 K118 ["RunQueryAsync"]
      293 DUPCLOSURE                       R26 K119 [PROTO_25]
      294 CAPTURE                          VAL R10
      295 SETTABLEKS                       R26 R0 K120 ["getColumns"]
      297 DUPCLOSURE                       R26 K121 [PROTO_26]
      298 CAPTURE                          VAL R6
      299 SETTABLEKS                       R26 R0 K122 ["tooltipLabels"]
      301 DUPCLOSURE                       R26 K123 [PROTO_27]
      302 CAPTURE                          VAL R0
      303 SETTABLEKS                       R26 R0 K124 ["clearBaselines"]
      305 DUPCLOSURE                       R26 K125 [PROTO_28]
      306 CAPTURE                          VAL R14
      307 CAPTURE                          VAL R12
      308 CAPTURE                          VAL R16
      309 CAPTURE                          VAL R20
      310 CAPTURE                          VAL R0
      311 SETTABLEKS                       R26 R0 K126 ["reset"]
      313 DUPCLOSURE                       R26 K127 [PROTO_29]
      314 CAPTURE                          VAL R9
      315 SETTABLEKS                       R26 R0 K128 ["getWarnings"]
      317 DUPTABLE                         R26 K131 [{"buildNodeMaps", "gatherPaths"}]
      318 SETTABLEKS                       R25 R26 K129 ["buildNodeMaps"]
      320 SETTABLEKS                       R23 R26 K130 ["gatherPaths"]
      322 SETTABLEKS                       R26 R0 K132 ["_testOnly"]
      324 RETURN                           R0 1
