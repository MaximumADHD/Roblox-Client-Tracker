PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["sizeMB"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R3 K2 ["path"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getNodeById"]
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

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["parentById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_14:
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
       18 JUMPIFNOTEQKS                    R2 K4 ["path"] ; [+4]
       20 GETTABLEKS                       R2 R1 K4 ["path"]
       22 RETURN                           R2 1
       23 LOADNIL                          R2
       24 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["k"]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOTEQKS                    R5 K1 ["name"] ; [+4]
        5 GETTABLEKS                       R2 R4 K1 ["name"]
        7 JUMP                             ; [+16]
        8 GETUPVAL                         R5 0
        9 JUMPIFEQKS                       R5 K2 ["size"] ; [+4]
       11 GETUPVAL                         R5 0
       12 JUMPIFNOTEQKS                    R5 K3 ["memory"] ; [+4]
       14 GETTABLEKS                       R2 R4 K2 ["size"]
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R5 0
       18 JUMPIFNOTEQKS                    R5 K4 ["path"] ; [+4]
       20 GETTABLEKS                       R2 R4 K4 ["path"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 GETTABLEKS                       R4 R1 K0 ["k"]
       26 GETUPVAL                         R5 0
       27 JUMPIFNOTEQKS                    R5 K1 ["name"] ; [+4]
       29 GETTABLEKS                       R3 R4 K1 ["name"]
       31 JUMP                             ; [+16]
       32 GETUPVAL                         R5 0
       33 JUMPIFEQKS                       R5 K2 ["size"] ; [+4]
       35 GETUPVAL                         R5 0
       36 JUMPIFNOTEQKS                    R5 K3 ["memory"] ; [+4]
       38 GETTABLEKS                       R3 R4 K2 ["size"]
       40 JUMP                             ; [+7]
       41 GETUPVAL                         R5 0
       42 JUMPIFNOTEQKS                    R5 K4 ["path"] ; [+4]
       44 GETTABLEKS                       R3 R4 K4 ["path"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R3
       48 JUMPIFEQ                         R2 R3 ; [+13]
       50 GETUPVAL                         R4 1
       51 JUMPIFNOT                        R4 ; [+5]
       52 JUMPIFLT                         R2 R3 ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 RETURN                           R4 1
       57 JUMPIFLT                         R3 R2 ; [+2]
       59 LOADB                            R4 0 +1
       60 LOADB                            R4 1
       61 RETURN                           R4 1
       62 GETTABLEKS                       R4 R0 K0 ["k"]
       64 GETTABLEKS                       R5 R1 K0 ["k"]
       66 GETTABLEKS                       R6 R4 K1 ["name"]
       68 GETTABLEKS                       R7 R5 K1 ["name"]
       70 JUMPIFEQ                         R6 R7 ; [+10]
       72 GETTABLEKS                       R7 R4 K1 ["name"]
       74 GETTABLEKS                       R8 R5 K1 ["name"]
       76 JUMPIFLT                         R7 R8 ; [+2]
       78 LOADB                            R6 0 +1
       79 LOADB                            R6 1
       80 RETURN                           R6 1
       81 GETTABLEKS                       R6 R4 K4 ["path"]
       83 GETTABLEKS                       R7 R5 K4 ["path"]
       85 JUMPIFEQ                         R6 R7 ; [+10]
       87 GETTABLEKS                       R7 R4 K4 ["path"]
       89 GETTABLEKS                       R8 R5 K4 ["path"]
       91 JUMPIFLT                         R7 R8 ; [+2]
       93 LOADB                            R6 0 +1
       94 LOADB                            R6 1
       95 RETURN                           R6 1
       96 GETTABLEKS                       R6 R4 K2 ["size"]
       98 GETTABLEKS                       R7 R5 K2 ["size"]
      100 JUMPIFEQ                         R6 R7 ; [+10]
      102 GETTABLEKS                       R7 R4 K2 ["size"]
      104 GETTABLEKS                       R8 R5 K2 ["size"]
      106 JUMPIFLT                         R8 R7 ; [+2]
      108 LOADB                            R6 0 +1
      109 LOADB                            R6 1
      110 RETURN                           R6 1
      111 GETTABLEKS                       R7 R0 K5 ["id"]
      113 GETTABLEKS                       R8 R1 K5 ["id"]
      115 JUMPIFLT                         R7 R8 ; [+2]
      117 LOADB                            R6 0 +1
      118 LOADB                            R6 1
      119 RETURN                           R6 1

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
       12 GETUPVAL                         R12 0
       13 GETTABLEKS                       R11 R12 K4 ["nodeById"]
       15 GETTABLE                         R10 R11 R9
       16 DUPTABLE                         R11 K7 [{"id", "k"}]
       17 SETTABLEKS                       R9 R11 K5 ["id"]
       19 DUPTABLE                         R12 K11 [{"name", "size", "path"}]
       20 JUMPIFNOT                        R10 ; [+3]
       21 GETTABLEKS                       R13 R10 K12 ["Name"]
       23 JUMPIF                           R13 ; [+1]
       24 LOADK                            R13 K13 [""]
       25 SETTABLEKS                       R13 R12 K8 ["name"]
       27 JUMPIFNOT                        R10 ; [+7]
       28 GETTABLEKS                       R14 R10 K14 ["Size"]
       30 FASTCALL1                        TONUMBER R14 ; [+2]
       31 GETIMPORT                        R13 K16 [tonumber]
       33 CALL                             R13 1 1
       34 JUMPIF                           R13 ; [+1]
       35 LOADN                            R13 0
       36 SETTABLEKS                       R13 R12 K9 ["size"]
       38 JUMPIFNOT                        R10 ; [+3]
       39 GETTABLEKS                       R13 R10 K10 ["path"]
       41 JUMPIF                           R13 ; [+1]
       42 LOADK                            R13 K13 [""]
       43 SETTABLEKS                       R13 R12 K10 ["path"]
       45 SETTABLEKS                       R12 R11 K6 ["k"]
       47 SETTABLE                         R11 R4 R8
       48 FORGLOOP                         R5 2 ; [-37]
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          VAL R1
       52 JUMPIFEQKS                       R1 K17 ["none"] ; [+27]
       54 LENGTH                           R6 R4
       55 JUMPIFEQKN                       R6 K18 [0] ; [+24]
       57 GETTABLEN                        R7 R4 1
       58 GETTABLEKS                       R8 R7 K6 ["k"]
       60 JUMPIFNOTEQKS                    R1 K8 ["name"] ; [+4]
       62 GETTABLEKS                       R6 R8 K8 ["name"]
       64 JUMP                             ; [+13]
       65 JUMPIFEQKS                       R1 K9 ["size"] ; [+3]
       67 JUMPIFNOTEQKS                    R1 K19 ["memory"] ; [+4]
       69 GETTABLEKS                       R6 R8 K9 ["size"]
       71 JUMP                             ; [+6]
       72 JUMPIFNOTEQKS                    R1 K10 ["path"] ; [+4]
       74 GETTABLEKS                       R6 R8 K10 ["path"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R6
       78 JUMPIFNOTEQKNIL                  R6 ; [+15]
       80 GETIMPORT                        R6 K3 [table.create]
       82 LENGTH                           R7 R4
       83 CALL                             R6 1 1
       84 LOADN                            R9 1
       85 LENGTH                           R7 R4
       86 LOADN                            R8 1
       87 FORNPREP                         R7
       88 GETTABLE                         R11 R4 R9
       89 GETTABLEKS                       R10 R11 K5 ["id"]
       91 SETTABLE                         R10 R6 R9
       92 FORNLOOP                         R7
       93 RETURN                           R6 1
       94 NEWCLOSURE                       R6 P1
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 GETIMPORT                        R7 K21 [table.sort]
       99 MOVE                             R8 R4
      100 MOVE                             R9 R6
      101 CALL                             R7 2 0
      102 GETIMPORT                        R7 K3 [table.create]
      104 LENGTH                           R8 R4
      105 CALL                             R7 1 1
      106 LOADN                            R10 1
      107 LENGTH                           R8 R4
      108 LOADN                            R9 1
      109 FORNPREP                         R8
      110 GETTABLE                         R12 R4 R10
      111 GETTABLEKS                       R11 R12 K5 ["id"]
      113 SETTABLE                         R11 R7 R10
      114 FORNLOOP                         R8
      115 RETURN                           R7 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["scriptOrder"]
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R4 R5 K0 ["Id"]
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchScriptMemoryUsage"]
        2 NAMECALL                         R1 R1 K1 ["CallAssetPluginAsync"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["reset"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 3
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R2 R5 K3 ["scriptOrder"]
       17 GETUPVAL                         R5 1
       18 SETTABLEKS                       R3 R5 K4 ["nodeById"]
       20 GETUPVAL                         R5 1
       21 SETTABLEKS                       R4 R5 K5 ["parentById"]
       23 GETUPVAL                         R5 3
       24 LENGTH                           R6 R2
       25 CALL                             R5 1 0
       26 GETUPVAL                         R5 4
       27 MOVE                             R6 R1
       28 CALL                             R5 1 0
       29 GETUPVAL                         R5 5
       30 CALL                             R5 0 0
       31 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_24:
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
       11 GETTABLEKS                       R5 R1 K6 ["Src"]
       13 GETTABLEKS                       R4 R5 K7 ["Components"]
       15 GETTABLEKS                       R3 R4 K8 ["AbridgedPathCell"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R1 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K9 ["Util"]
       24 GETTABLEKS                       R4 R5 K10 ["AssetDMBridge"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R1 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K9 ["Util"]
       33 GETTABLEKS                       R5 R6 K11 ["Observable"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R1 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K9 ["Util"]
       42 GETTABLEKS                       R6 R7 K12 ["deepFreeze"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R1 K6 ["Src"]
       49 GETTABLEKS                       R8 R9 K9 ["Util"]
       51 GETTABLEKS                       R7 R8 K13 ["measureHeaderText"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 0 0
       56 SETTABLEKS                       R7 R0 K14 ["options"]
       58 GETTABLEKS                       R7 R0 K14 ["options"]
       60 LOADB                            R8 1
       61 SETTABLEKS                       R8 R7 K15 ["skipRobloxFiles"]
       63 NEWTABLE                         R7 0 3
       65 DUPTABLE                         R8 K25 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       66 LOADK                            R9 K26 ["name"]
       67 SETTABLEKS                       R9 R8 K16 ["id"]
       69 LOADK                            R9 K27 ["Name"]
       70 SETTABLEKS                       R9 R8 K17 ["headerText"]
       72 LOADK                            R9 K27 ["Name"]
       73 SETTABLEKS                       R9 R8 K18 ["headerKey"]
       75 LOADK                            R9 K26 ["name"]
       76 SETTABLEKS                       R9 R8 K19 ["sortKey"]
       78 LOADK                            R9 K28 [0.4]
       79 SETTABLEKS                       R9 R8 K20 ["width"]
       81 LOADN                            R9 200
       82 SETTABLEKS                       R9 R8 K21 ["idealWidth"]
       84 LOADN                            R9 1
       85 SETTABLEKS                       R9 R8 K22 ["priority"]
       87 LOADN                            R9 1
       88 SETTABLEKS                       R9 R8 K23 ["order"]
       90 DUPCLOSURE                       R9 K29 [PROTO_0]
       91 SETTABLEKS                       R9 R8 K24 ["cell"]
       93 DUPTABLE                         R9 K25 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       94 LOADK                            R10 K30 ["memory"]
       95 SETTABLEKS                       R10 R9 K16 ["id"]
       97 LOADK                            R10 K31 ["Memory"]
       98 SETTABLEKS                       R10 R9 K17 ["headerText"]
      100 LOADK                            R10 K31 ["Memory"]
      101 SETTABLEKS                       R10 R9 K18 ["headerKey"]
      103 LOADK                            R10 K30 ["memory"]
      104 SETTABLEKS                       R10 R9 K19 ["sortKey"]
      106 LOADK                            R10 K32 [0.2]
      107 SETTABLEKS                       R10 R9 K20 ["width"]
      109 LOADN                            R10 90
      110 SETTABLEKS                       R10 R9 K21 ["idealWidth"]
      112 LOADN                            R10 2
      113 SETTABLEKS                       R10 R9 K22 ["priority"]
      115 LOADN                            R10 2
      116 SETTABLEKS                       R10 R9 K23 ["order"]
      118 DUPCLOSURE                       R10 K33 [PROTO_1]
      119 SETTABLEKS                       R10 R9 K24 ["cell"]
      121 DUPTABLE                         R10 K35 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "renderCell", "cell"}]
      122 LOADK                            R11 K36 ["path"]
      123 SETTABLEKS                       R11 R10 K16 ["id"]
      125 LOADK                            R11 K37 ["Path"]
      126 SETTABLEKS                       R11 R10 K17 ["headerText"]
      128 LOADK                            R11 K37 ["Path"]
      129 SETTABLEKS                       R11 R10 K18 ["headerKey"]
      131 LOADK                            R11 K36 ["path"]
      132 SETTABLEKS                       R11 R10 K19 ["sortKey"]
      134 LOADK                            R11 K28 [0.4]
      135 SETTABLEKS                       R11 R10 K20 ["width"]
      137 LOADN                            R11 44
      138 SETTABLEKS                       R11 R10 K21 ["idealWidth"]
      140 LOADN                            R11 3
      141 SETTABLEKS                       R11 R10 K22 ["priority"]
      143 LOADN                            R11 3
      144 SETTABLEKS                       R11 R10 K23 ["order"]
      146 SETTABLEKS                       R2 R10 K34 ["renderCell"]
      148 DUPCLOSURE                       R11 K38 [PROTO_2]
      149 SETTABLEKS                       R11 R10 K24 ["cell"]
      151 SETLIST                          R7 R8 3 [1]
      153 MOVE                             R8 R7
      154 LOADNIL                          R9
      155 LOADNIL                          R10
      156 FORGPREP                         R8
      157 MOVE                             R13 R6
      158 GETTABLEKS                       R14 R12 K17 ["headerText"]
      160 CALL                             R13 1 1
      161 SETTABLEKS                       R13 R12 K39 ["minWidth"]
      163 FORGLOOP                         R8 2 ; [-7]
      165 NEWTABLE                         R8 0 0
      167 SETTABLEKS                       R8 R0 K40 ["scriptOrder"]
      169 NEWTABLE                         R8 0 0
      171 SETTABLEKS                       R8 R0 K41 ["nodeById"]
      173 NEWTABLE                         R8 0 0
      175 SETTABLEKS                       R8 R0 K42 ["parentById"]
      177 GETIMPORT                        R8 K45 [table.freeze]
      179 DUPTABLE                         R9 K48 [{"Column", "Direction"}]
      180 GETIMPORT                        R10 K45 [table.freeze]
      182 NEWTABLE                         R11 8 0
      184 LOADK                            R12 K49 ["none"]
      185 SETTABLEKS                       R12 R11 K49 ["none"]
      187 LOADK                            R12 K26 ["name"]
      188 SETTABLEKS                       R12 R11 K26 ["name"]
      190 LOADK                            R12 K50 ["type"]
      191 SETTABLEKS                       R12 R11 K50 ["type"]
      193 LOADK                            R12 K51 ["referenceCount"]
      194 SETTABLEKS                       R12 R11 K51 ["referenceCount"]
      196 LOADK                            R12 K52 ["instanceUsageCount"]
      197 SETTABLEKS                       R12 R11 K52 ["instanceUsageCount"]
      199 LOADK                            R12 K30 ["memory"]
      200 SETTABLEKS                       R12 R11 K30 ["memory"]
      202 LOADK                            R12 K53 ["size"]
      203 SETTABLEKS                       R12 R11 K53 ["size"]
      205 CALL                             R10 1 1
      206 SETTABLEKS                       R10 R9 K46 ["Column"]
      208 GETIMPORT                        R10 K45 [table.freeze]
      210 DUPTABLE                         R11 K56 [{"asc", "desc"}]
      211 LOADK                            R12 K54 ["asc"]
      212 SETTABLEKS                       R12 R11 K54 ["asc"]
      214 LOADK                            R12 K55 ["desc"]
      215 SETTABLEKS                       R12 R11 K55 ["desc"]
      217 CALL                             R10 1 1
      218 SETTABLEKS                       R10 R9 K47 ["Direction"]
      220 CALL                             R8 1 1
      221 MOVE                             R9 R5
      222 DUPTABLE                         R10 K59 [{"Name", "Size", "Children"}]
      223 LOADK                            R11 K60 ["Root"]
      224 SETTABLEKS                       R11 R10 K27 ["Name"]
      226 LOADN                            R11 0
      227 SETTABLEKS                       R11 R10 K57 ["Size"]
      229 NEWTABLE                         R11 0 0
      231 SETTABLEKS                       R11 R10 K58 ["Children"]
      233 CALL                             R9 1 1
      234 GETTABLEKS                       R10 R4 K61 ["create"]
      236 MOVE                             R11 R9
      237 CALL                             R10 1 2
      238 GETTABLEKS                       R12 R4 K61 ["create"]
      240 NEWTABLE                         R13 0 0
      242 CALL                             R12 1 2
      243 GETTABLEKS                       R14 R4 K61 ["create"]
      245 DUPTABLE                         R15 K64 [{"column", "direction"}]
      246 GETTABLEKS                       R17 R8 K46 ["Column"]
      248 GETTABLEKS                       R16 R17 K49 ["none"]
      250 SETTABLEKS                       R16 R15 K62 ["column"]
      252 GETTABLEKS                       R17 R8 K47 ["Direction"]
      254 GETTABLEKS                       R16 R17 K55 ["desc"]
      256 SETTABLEKS                       R16 R15 K63 ["direction"]
      258 CALL                             R14 1 2
      259 GETTABLEKS                       R16 R4 K61 ["create"]
      261 LOADN                            R17 0
      262 CALL                             R16 1 2
      263 DUPCLOSURE                       R18 K65 [PROTO_3]
      264 CAPTURE                          VAL R8
      265 DUPCLOSURE                       R19 K66 [PROTO_5]
      266 CAPTURE                          VAL R15
      267 CAPTURE                          VAL R8
      268 DUPCLOSURE                       R20 K67 [PROTO_6]
      269 CAPTURE                          VAL R10
      270 SETTABLEKS                       R20 R0 K68 ["getNodesObservable"]
      272 DUPCLOSURE                       R20 K69 [PROTO_7]
      273 CAPTURE                          VAL R12
      274 SETTABLEKS                       R20 R0 K70 ["getOrderObservable"]
      276 DUPCLOSURE                       R20 K71 [PROTO_8]
      277 CAPTURE                          VAL R14
      278 SETTABLEKS                       R20 R0 K72 ["getSortStateObservable"]
      280 DUPCLOSURE                       R20 K73 [PROTO_9]
      281 CAPTURE                          VAL R16
      282 SETTABLEKS                       R20 R0 K74 ["getTotalCountObservable"]
      284 DUPCLOSURE                       R20 K75 [PROTO_10]
      285 CAPTURE                          VAL R19
      286 SETTABLEKS                       R20 R0 K76 ["setSort"]
      288 DUPCLOSURE                       R20 K77 [PROTO_11]
      289 CAPTURE                          VAL R0
      290 SETTABLEKS                       R20 R0 K78 ["getNodeById"]
      292 DUPCLOSURE                       R20 K79 [PROTO_12]
      293 CAPTURE                          VAL R0
      294 CAPTURE                          VAL R3
      295 SETTABLEKS                       R20 R0 K80 ["onRightClick"]
      297 DUPCLOSURE                       R20 K81 [PROTO_13]
      298 CAPTURE                          VAL R0
      299 SETTABLEKS                       R20 R0 K82 ["getParentById"]
      301 DUPCLOSURE                       R20 K83 [PROTO_16]
      302 CAPTURE                          VAL R0
      303 SETTABLEKS                       R20 R0 K84 ["sortedIds"]
      305 DUPCLOSURE                       R20 K85 [PROTO_17]
      306 CAPTURE                          VAL R14
      307 CAPTURE                          VAL R0
      308 CAPTURE                          VAL R8
      309 CAPTURE                          VAL R13
      310 GETTABLEKS                       R21 R14 K86 ["changedSignal"]
      312 MOVE                             R23 R20
      313 NAMECALL                         R21 R21 K87 ["Connect"]
      315 CALL                             R21 2 0
      316 DUPCLOSURE                       R21 K88 [PROTO_18]
      317 CAPTURE                          VAL R12
      318 CAPTURE                          VAL R0
      319 SETTABLEKS                       R21 R0 K89 ["getNodeAtIndex"]
      321 DUPCLOSURE                       R21 K90 [PROTO_19]
      322 CAPTURE                          VAL R12
      323 SETTABLEKS                       R21 R0 K91 ["getIndexForId"]
      325 DUPCLOSURE                       R21 K92 [PROTO_21]
      326 DUPCLOSURE                       R22 K93 [PROTO_22]
      327 CAPTURE                          VAL R3
      328 CAPTURE                          VAL R0
      329 CAPTURE                          VAL R21
      330 CAPTURE                          VAL R17
      331 CAPTURE                          VAL R11
      332 CAPTURE                          VAL R20
      333 SETTABLEKS                       R22 R0 K94 ["RunQueryAsync"]
      335 DUPCLOSURE                       R22 K95 [PROTO_23]
      336 CAPTURE                          VAL R7
      337 SETTABLEKS                       R22 R0 K96 ["getColumns"]
      339 DUPCLOSURE                       R22 K97 [PROTO_24]
      340 CAPTURE                          VAL R11
      341 CAPTURE                          VAL R9
      342 CAPTURE                          VAL R13
      343 CAPTURE                          VAL R17
      344 CAPTURE                          VAL R0
      345 SETTABLEKS                       R22 R0 K98 ["reset"]
      347 DUPTABLE                         R22 K100 [{"buildNodeMaps"}]
      348 SETTABLEKS                       R21 R22 K99 ["buildNodeMaps"]
      350 SETTABLEKS                       R22 R0 K101 ["_testOnly"]
      352 RETURN                           R0 1
