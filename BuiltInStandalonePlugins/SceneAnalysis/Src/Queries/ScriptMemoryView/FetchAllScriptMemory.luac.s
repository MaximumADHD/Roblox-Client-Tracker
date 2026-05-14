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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNodeById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K1 ["path"]
        9 JUMPIFNOT                        R2 ; [+23]
       10 GETTABLEKS                       R3 R1 K1 ["path"]
       12 FASTCALL1                        TYPE R3 ; [+2]
       13 GETIMPORT                        R2 K3 [type]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+16]
       18 GETTABLEKS                       R2 R1 K1 ["path"]
       20 JUMPIFEQKS                       R2 K5 [""] ; [+12]
       22 GETUPVAL                         R2 1
       23 LOADK                            R4 K6 ["SelectInstancesByPaths"]
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R1 K1 ["path"]
       28 SETLIST                          R5 R6 1 [1]
       30 NAMECALL                         R2 R2 K7 ["CallAssetPluginAsync"]
       32 CALL                             R2 3 0
       33 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parentById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchScriptMemoryUsage"]
        2 NAMECALL                         R1 R1 K1 ["CallAssetPluginAsync"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["reset"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 3
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["baselineByPath"]
       17 MOVE                             R6 R2
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 GETTABLE                         R11 R3 R10
       22 JUMPIFNOT                        R11 ; [+45]
       23 GETTABLEKS                       R12 R11 K4 ["path"]
       25 JUMPIFNOT                        R12 ; [+42]
       26 GETTABLEKS                       R13 R11 K4 ["path"]
       28 GETTABLE                         R12 R5 R13
       29 JUMPIFNOTEQKNIL                  R12 ; [+11]
       31 GETTABLEKS                       R13 R11 K4 ["path"]
       33 GETTABLEKS                       R15 R11 K6 ["Size"]
       35 ORK                              R14 R15 K5 [0]
       36 SETTABLE                         R14 R5 R13
       37 LOADN                            R13 0
       38 SETTABLEKS                       R13 R11 K7 ["change"]
       40 JUMP                             ; [+6]
       41 GETTABLEKS                       R15 R11 K6 ["Size"]
       43 ORK                              R14 R15 K5 [0]
       44 SUB                              R13 R14 R12
       45 SETTABLEKS                       R13 R11 K7 ["change"]
       47 GETTABLEKS                       R13 R11 K7 ["change"]
       49 LOADN                            R14 0
       50 JUMPIFNOTLT                      R14 R13 ; [+7]
       52 GETUPVAL                         R13 3
       53 GETTABLEKS                       R13 R13 K8 ["IceBlueWarm"]
       55 SETTABLEKS                       R13 R11 K9 ["colorRamp"]
       57 JUMP                             ; [+10]
       58 GETTABLEKS                       R13 R11 K7 ["change"]
       60 LOADN                            R14 0
       61 JUMPIFNOTLT                      R13 R14 ; [+6]
       63 GETUPVAL                         R13 3
       64 GETTABLEKS                       R13 R13 K10 ["IceBlueCool"]
       66 SETTABLEKS                       R13 R11 K9 ["colorRamp"]
       68 FORGLOOP                         R6 2 ; [-48]
       70 GETUPVAL                         R6 1
       71 SETTABLEKS                       R2 R6 K11 ["scriptOrder"]
       73 GETUPVAL                         R6 1
       74 SETTABLEKS                       R3 R6 K12 ["nodeById"]
       76 GETUPVAL                         R6 1
       77 SETTABLEKS                       R4 R6 K13 ["parentById"]
       79 GETUPVAL                         R6 4
       80 LENGTH                           R7 R2
       81 CALL                             R6 1 0
       82 GETUPVAL                         R6 5
       83 MOVE                             R7 R1
       84 CALL                             R6 1 0
       85 GETUPVAL                         R6 6
       86 CALL                             R6 0 0
       87 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["baselineByPath"]
        5 RETURN                           R0 0

PROTO_27:
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
       72 NEWTABLE                         R9 0 0
       74 SETTABLEKS                       R9 R0 K17 ["options"]
       76 GETTABLEKS                       R9 R0 K17 ["options"]
       78 LOADB                            R10 1
       79 SETTABLEKS                       R10 R9 K18 ["skipRobloxFiles"]
       81 NEWTABLE                         R9 0 0
       83 SETTABLEKS                       R9 R0 K19 ["baselineByPath"]
       85 NEWTABLE                         R9 0 4
       87 DUPTABLE                         R10 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       88 LOADK                            R11 K30 ["name"]
       89 SETTABLEKS                       R11 R10 K20 ["id"]
       91 LOADK                            R11 K31 ["Name"]
       92 SETTABLEKS                       R11 R10 K21 ["headerText"]
       94 LOADK                            R11 K31 ["Name"]
       95 SETTABLEKS                       R11 R10 K22 ["headerKey"]
       97 LOADK                            R11 K30 ["name"]
       98 SETTABLEKS                       R11 R10 K23 ["sortKey"]
      100 LOADK                            R11 K32 [0.4]
      101 SETTABLEKS                       R11 R10 K24 ["width"]
      103 LOADN                            R11 200
      104 SETTABLEKS                       R11 R10 K25 ["idealWidth"]
      106 LOADN                            R11 1
      107 SETTABLEKS                       R11 R10 K26 ["priority"]
      109 LOADN                            R11 1
      110 SETTABLEKS                       R11 R10 K27 ["order"]
      112 DUPCLOSURE                       R11 K33 [PROTO_0]
      113 SETTABLEKS                       R11 R10 K28 ["cell"]
      115 DUPTABLE                         R11 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      116 LOADK                            R12 K34 ["memory"]
      117 SETTABLEKS                       R12 R11 K20 ["id"]
      119 LOADK                            R12 K35 ["Memory"]
      120 SETTABLEKS                       R12 R11 K21 ["headerText"]
      122 LOADK                            R12 K35 ["Memory"]
      123 SETTABLEKS                       R12 R11 K22 ["headerKey"]
      125 LOADK                            R12 K34 ["memory"]
      126 SETTABLEKS                       R12 R11 K23 ["sortKey"]
      128 LOADK                            R12 K36 [0.15]
      129 SETTABLEKS                       R12 R11 K24 ["width"]
      131 LOADN                            R12 90
      132 SETTABLEKS                       R12 R11 K25 ["idealWidth"]
      134 LOADN                            R12 2
      135 SETTABLEKS                       R12 R11 K26 ["priority"]
      137 LOADN                            R12 2
      138 SETTABLEKS                       R12 R11 K27 ["order"]
      140 DUPCLOSURE                       R12 K37 [PROTO_1]
      141 SETTABLEKS                       R12 R11 K28 ["cell"]
      143 DUPTABLE                         R12 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      144 LOADK                            R13 K38 ["change"]
      145 SETTABLEKS                       R13 R12 K20 ["id"]
      147 LOADK                            R13 K39 ["Change"]
      148 SETTABLEKS                       R13 R12 K21 ["headerText"]
      150 LOADK                            R13 K39 ["Change"]
      151 SETTABLEKS                       R13 R12 K22 ["headerKey"]
      153 LOADK                            R13 K38 ["change"]
      154 SETTABLEKS                       R13 R12 K23 ["sortKey"]
      156 LOADK                            R13 K40 [0.1]
      157 SETTABLEKS                       R13 R12 K24 ["width"]
      159 LOADN                            R13 60
      160 SETTABLEKS                       R13 R12 K25 ["idealWidth"]
      162 LOADN                            R13 4
      163 SETTABLEKS                       R13 R12 K26 ["priority"]
      165 LOADN                            R13 3
      166 SETTABLEKS                       R13 R12 K27 ["order"]
      168 DUPCLOSURE                       R13 K41 [PROTO_2]
      169 CAPTURE                          VAL R6
      170 SETTABLEKS                       R13 R12 K28 ["cell"]
      172 DUPTABLE                         R13 K43 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "renderCell", "cell"}]
      173 LOADK                            R14 K44 ["path"]
      174 SETTABLEKS                       R14 R13 K20 ["id"]
      176 LOADK                            R14 K45 ["Path"]
      177 SETTABLEKS                       R14 R13 K21 ["headerText"]
      179 LOADK                            R14 K45 ["Path"]
      180 SETTABLEKS                       R14 R13 K22 ["headerKey"]
      182 LOADK                            R14 K44 ["path"]
      183 SETTABLEKS                       R14 R13 K23 ["sortKey"]
      185 LOADK                            R14 K46 [0.3]
      186 SETTABLEKS                       R14 R13 K24 ["width"]
      188 LOADN                            R14 44
      189 SETTABLEKS                       R14 R13 K25 ["idealWidth"]
      191 LOADN                            R14 3
      192 SETTABLEKS                       R14 R13 K26 ["priority"]
      194 LOADN                            R14 4
      195 SETTABLEKS                       R14 R13 K27 ["order"]
      197 SETTABLEKS                       R2 R13 K42 ["renderCell"]
      199 DUPCLOSURE                       R14 K47 [PROTO_3]
      200 SETTABLEKS                       R14 R13 K28 ["cell"]
      202 SETLIST                          R9 R10 4 [1]
      204 MOVE                             R10 R9
      205 LOADNIL                          R11
      206 LOADNIL                          R12
      207 FORGPREP                         R10
      208 MOVE                             R15 R7
      209 GETTABLEKS                       R16 R14 K21 ["headerText"]
      211 CALL                             R15 1 1
      212 SETTABLEKS                       R15 R14 K48 ["minWidth"]
      214 FORGLOOP                         R10 2 ; [-7]
      216 NEWTABLE                         R10 0 0
      218 SETTABLEKS                       R10 R0 K49 ["scriptOrder"]
      220 NEWTABLE                         R10 0 0
      222 SETTABLEKS                       R10 R0 K50 ["nodeById"]
      224 NEWTABLE                         R10 0 0
      226 SETTABLEKS                       R10 R0 K51 ["parentById"]
      228 GETIMPORT                        R10 K54 [table.freeze]
      230 DUPTABLE                         R11 K57 [{"Column", "Direction"}]
      231 GETIMPORT                        R12 K54 [table.freeze]
      233 NEWTABLE                         R13 8 0
      235 LOADK                            R14 K58 ["none"]
      236 SETTABLEKS                       R14 R13 K58 ["none"]
      238 LOADK                            R14 K30 ["name"]
      239 SETTABLEKS                       R14 R13 K30 ["name"]
      241 LOADK                            R14 K59 ["type"]
      242 SETTABLEKS                       R14 R13 K59 ["type"]
      244 LOADK                            R14 K60 ["referenceCount"]
      245 SETTABLEKS                       R14 R13 K60 ["referenceCount"]
      247 LOADK                            R14 K61 ["instanceUsageCount"]
      248 SETTABLEKS                       R14 R13 K61 ["instanceUsageCount"]
      250 LOADK                            R14 K34 ["memory"]
      251 SETTABLEKS                       R14 R13 K34 ["memory"]
      253 LOADK                            R14 K62 ["size"]
      254 SETTABLEKS                       R14 R13 K62 ["size"]
      256 CALL                             R12 1 1
      257 SETTABLEKS                       R12 R11 K55 ["Column"]
      259 GETIMPORT                        R12 K54 [table.freeze]
      261 DUPTABLE                         R13 K65 [{"asc", "desc"}]
      262 LOADK                            R14 K63 ["asc"]
      263 SETTABLEKS                       R14 R13 K63 ["asc"]
      265 LOADK                            R14 K64 ["desc"]
      266 SETTABLEKS                       R14 R13 K64 ["desc"]
      268 CALL                             R12 1 1
      269 SETTABLEKS                       R12 R11 K56 ["Direction"]
      271 CALL                             R10 1 1
      272 MOVE                             R11 R5
      273 DUPTABLE                         R12 K68 [{"Name", "Size", "Children"}]
      274 LOADK                            R13 K69 ["Root"]
      275 SETTABLEKS                       R13 R12 K31 ["Name"]
      277 LOADN                            R13 0
      278 SETTABLEKS                       R13 R12 K66 ["Size"]
      280 NEWTABLE                         R13 0 0
      282 SETTABLEKS                       R13 R12 K67 ["Children"]
      284 CALL                             R11 1 1
      285 GETTABLEKS                       R12 R4 K70 ["create"]
      287 MOVE                             R13 R11
      288 CALL                             R12 1 2
      289 GETTABLEKS                       R14 R4 K70 ["create"]
      291 NEWTABLE                         R15 0 0
      293 CALL                             R14 1 2
      294 GETTABLEKS                       R16 R4 K70 ["create"]
      296 DUPTABLE                         R17 K73 [{"column", "direction"}]
      297 GETTABLEKS                       R18 R10 K55 ["Column"]
      299 GETTABLEKS                       R18 R18 K58 ["none"]
      301 SETTABLEKS                       R18 R17 K71 ["column"]
      303 GETTABLEKS                       R18 R10 K56 ["Direction"]
      305 GETTABLEKS                       R18 R18 K64 ["desc"]
      307 SETTABLEKS                       R18 R17 K72 ["direction"]
      309 CALL                             R16 1 2
      310 GETTABLEKS                       R18 R4 K70 ["create"]
      312 LOADN                            R19 0
      313 CALL                             R18 1 2
      314 DUPCLOSURE                       R20 K74 [PROTO_4]
      315 CAPTURE                          VAL R10
      316 DUPCLOSURE                       R21 K75 [PROTO_6]
      317 CAPTURE                          VAL R17
      318 CAPTURE                          VAL R10
      319 DUPCLOSURE                       R22 K76 [PROTO_7]
      320 CAPTURE                          VAL R12
      321 SETTABLEKS                       R22 R0 K77 ["getNodesObservable"]
      323 DUPCLOSURE                       R22 K78 [PROTO_8]
      324 CAPTURE                          VAL R14
      325 SETTABLEKS                       R22 R0 K79 ["getOrderObservable"]
      327 DUPCLOSURE                       R22 K80 [PROTO_9]
      328 CAPTURE                          VAL R16
      329 SETTABLEKS                       R22 R0 K81 ["getSortStateObservable"]
      331 DUPCLOSURE                       R22 K82 [PROTO_10]
      332 CAPTURE                          VAL R18
      333 SETTABLEKS                       R22 R0 K83 ["getTotalCountObservable"]
      335 DUPCLOSURE                       R22 K84 [PROTO_11]
      336 CAPTURE                          VAL R21
      337 SETTABLEKS                       R22 R0 K85 ["setSort"]
      339 DUPCLOSURE                       R22 K86 [PROTO_12]
      340 CAPTURE                          VAL R0
      341 SETTABLEKS                       R22 R0 K87 ["getNodeById"]
      343 DUPCLOSURE                       R22 K88 [PROTO_13]
      344 CAPTURE                          VAL R0
      345 CAPTURE                          VAL R3
      346 SETTABLEKS                       R22 R0 K89 ["onRightClick"]
      348 DUPCLOSURE                       R22 K90 [PROTO_14]
      349 CAPTURE                          VAL R0
      350 SETTABLEKS                       R22 R0 K91 ["getParentById"]
      352 DUPCLOSURE                       R22 K92 [PROTO_17]
      353 CAPTURE                          VAL R0
      354 SETTABLEKS                       R22 R0 K93 ["sortedIds"]
      356 DUPCLOSURE                       R22 K94 [PROTO_18]
      357 CAPTURE                          VAL R16
      358 CAPTURE                          VAL R0
      359 CAPTURE                          VAL R10
      360 CAPTURE                          VAL R15
      361 GETTABLEKS                       R23 R16 K95 ["changedSignal"]
      363 MOVE                             R25 R22
      364 NAMECALL                         R23 R23 K96 ["Connect"]
      366 CALL                             R23 2 0
      367 DUPCLOSURE                       R23 K97 [PROTO_19]
      368 CAPTURE                          VAL R14
      369 CAPTURE                          VAL R0
      370 SETTABLEKS                       R23 R0 K98 ["getNodeAtIndex"]
      372 DUPCLOSURE                       R23 K99 [PROTO_20]
      373 CAPTURE                          VAL R14
      374 SETTABLEKS                       R23 R0 K100 ["getIndexForId"]
      376 DUPCLOSURE                       R23 K101 [PROTO_22]
      377 DUPCLOSURE                       R24 K102 [PROTO_23]
      378 CAPTURE                          VAL R3
      379 CAPTURE                          VAL R0
      380 CAPTURE                          VAL R23
      381 CAPTURE                          VAL R8
      382 CAPTURE                          VAL R19
      383 CAPTURE                          VAL R13
      384 CAPTURE                          VAL R22
      385 SETTABLEKS                       R24 R0 K103 ["RunQueryAsync"]
      387 DUPCLOSURE                       R24 K104 [PROTO_24]
      388 CAPTURE                          VAL R9
      389 SETTABLEKS                       R24 R0 K105 ["getColumns"]
      391 DUPCLOSURE                       R24 K106 [PROTO_25]
      392 CAPTURE                          VAL R6
      393 SETTABLEKS                       R24 R0 K107 ["tooltipLabels"]
      395 DUPCLOSURE                       R24 K108 [PROTO_26]
      396 CAPTURE                          VAL R0
      397 SETTABLEKS                       R24 R0 K109 ["clearBaselines"]
      399 DUPCLOSURE                       R24 K110 [PROTO_27]
      400 CAPTURE                          VAL R13
      401 CAPTURE                          VAL R11
      402 CAPTURE                          VAL R15
      403 CAPTURE                          VAL R19
      404 CAPTURE                          VAL R0
      405 SETTABLEKS                       R24 R0 K111 ["reset"]
      407 DUPTABLE                         R24 K113 [{"buildNodeMaps"}]
      408 SETTABLEKS                       R23 R24 K112 ["buildNodeMaps"]
      410 SETTABLEKS                       R24 R0 K114 ["_testOnly"]
      412 RETURN                           R0 1
