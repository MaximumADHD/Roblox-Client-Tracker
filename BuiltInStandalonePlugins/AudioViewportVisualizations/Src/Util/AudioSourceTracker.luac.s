PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["dependents"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 GETUPVAL                         R7 1
       11 MOVE                             R8 R5
       12 CALL                             R7 1 0
       13 FORGLOOP                         R2 1 ; [-4]
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R1 R2 R0
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K2 [table.clone]
        7 GETTABLEKS                       R3 R1 K3 ["dependents"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 2
       12 MOVE                             R8 R5
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 1 ; [-4]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 JUMPIFEQKNIL                     R3 ; [+53]
        7 GETIMPORT                        R4 K1 [game]
        9 JUMPIFEQ                         R3 R4 ; [+49]
       11 MOVE                             R4 R3
       12 LOADN                            R7 1
       13 GETTABLEKS                       R8 R4 K2 ["Name"]
       15 FASTCALL3                        TABLE_INSERT R1 R7 R8
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K5 [table.insert]
       20 CALL                             R5 3 0
       21 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       23 MOVE                             R6 R2
       24 MOVE                             R7 R4
       25 GETIMPORT                        R5 K5 [table.insert]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R6 0
       29 GETTABLE                         R5 R6 R4
       30 JUMPIF                           R5 ; [+21]
       31 DUPTABLE                         R6 K8 [{"connection", "dependents"}]
       32 LOADK                            R9 K2 ["Name"]
       33 NAMECALL                         R7 R4 K9 ["GetPropertyChangedSignal"]
       35 CALL                             R7 2 1
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 NAMECALL                         R7 R7 K10 ["Connect"]
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K6 ["connection"]
       45 NEWTABLE                         R7 0 0
       47 SETTABLEKS                       R7 R6 K7 ["dependents"]
       49 MOVE                             R5 R6
       50 GETUPVAL                         R6 0
       51 SETTABLE                         R5 R6 R4
       52 GETTABLEKS                       R6 R5 K7 ["dependents"]
       54 LOADB                            R7 1
       55 SETTABLE                         R7 R6 R0
       56 GETTABLEKS                       R3 R4 K11 ["Parent"]
       58 JUMPBACK                         ; [-54]
       59 GETUPVAL                         R4 2
       60 GETIMPORT                        R5 K13 [table.concat]
       62 MOVE                             R6 R1
       63 LOADK                            R7 K14 ["."]
       64 CALL                             R5 2 1
       65 SETTABLE                         R5 R4 R0
       66 GETUPVAL                         R4 3
       67 SETTABLE                         R2 R4 R0
       68 GETUPVAL                         R4 4
       69 GETTABLEKS                       R5 R0 K15 ["AncestryChanged"]
       71 NEWCLOSURE                       R7 P1
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          VAL R0
       74 NAMECALL                         R5 R5 K10 ["Connect"]
       76 CALL                             R5 2 1
       77 SETTABLE                         R5 R4 R0
       78 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+6]
        3 NAMECALL                         R2 R1 K0 ["Disconnect"]
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 0
        7 LOADNIL                          R3
        8 SETTABLE                         R3 R2 R0
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R0
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 MOVE                             R3 R2
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETUPVAL                         R9 2
       18 GETTABLE                         R8 R9 R7
       19 GETTABLEKS                       R9 R8 K1 ["dependents"]
       21 LOADNIL                          R10
       22 SETTABLE                         R10 R9 R0
       23 GETIMPORT                        R9 K3 [next]
       25 GETTABLEKS                       R10 R8 K1 ["dependents"]
       27 CALL                             R9 1 1
       28 JUMPIFNOTEQKNIL                  R9 ; [+9]
       30 GETTABLEKS                       R9 R8 K4 ["connection"]
       32 NAMECALL                         R9 R9 K0 ["Disconnect"]
       34 CALL                             R9 1 0
       35 GETUPVAL                         R9 2
       36 LOADNIL                          R10
       37 SETTABLE                         R10 R9 R7
       38 FORGLOOP                         R3 2 ; [-22]
       40 GETUPVAL                         R3 1
       41 LOADNIL                          R4
       42 SETTABLE                         R4 R3 R0
       43 GETUPVAL                         R3 3
       44 LOADNIL                          R4
       45 SETTABLE                         R4 R3 R0
       46 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 GETTABLEKS                       R5 R4 K1 ["connection"]
       15 NAMECALL                         R5 R5 K0 ["Disconnect"]
       17 CALL                             R5 1 0
       18 FORGLOOP                         R0 2 ; [-6]
       20 NEWTABLE                         R0 0 0
       22 SETUPVAL                         R0 0
       23 NEWTABLE                         R0 0 0
       25 SETUPVAL                         R0 1
       26 NEWTABLE                         R0 0 0
       28 SETUPVAL                         R0 2
       29 NEWTABLE                         R0 0 0
       31 SETUPVAL                         R0 3
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SupportedTypes"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 NAMECALL                         R6 R0 K1 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+2]
       11 LOADB                            R6 1
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 ; [-8]
       15 LOADB                            R1 0
       16 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+9]
        5 LOADK                            R3 K2 ["Attachment"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+4]
       10 LOADK                            R3 K3 ["Model"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K3 ["ClassName"]
        6 SETTABLEKS                       R2 R1 K3 ["ClassName"]
        8 GETUPVAL                         R4 1
        9 GETTABLE                         R3 R4 R0
       10 ORK                              R2 R3 K4 [""]
       11 SETTABLEKS                       R2 R1 K5 ["Path"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K6 ["getEmissionSource"]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K7 ["Source"]
       20 LOADK                            R4 K8 ["AudioEmitter"]
       21 NAMECALL                         R2 R0 K9 ["IsA"]
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+21]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K10 ["getDistanceAttenuationRange"]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 1
       30 GETTABLEKS                       R3 R2 K11 ["Max"]
       32 SETTABLEKS                       R3 R1 K12 ["MaxRadius"]
       34 GETTABLEKS                       R3 R2 K13 ["Min"]
       36 SETTABLEKS                       R3 R1 K14 ["MinRadius"]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K15 ["getMetering"]
       41 MOVE                             R4 R0
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R1 K16 ["Metering"]
       45 RETURN                           R1 1
       46 LOADK                            R4 K17 ["Sound"]
       47 NAMECALL                         R2 R0 K9 ["IsA"]
       49 CALL                             R2 2 1
       50 JUMPIFNOT                        R2 ; [+15]
       51 GETTABLEKS                       R2 R0 K18 ["RollOffMaxDistance"]
       53 SETTABLEKS                       R2 R1 K12 ["MaxRadius"]
       55 GETTABLEKS                       R2 R0 K19 ["RollOffMinDistance"]
       57 SETTABLEKS                       R2 R1 K14 ["MinRadius"]
       59 GETUPVAL                         R2 3
       60 GETTABLEKS                       R2 R2 K15 ["getMetering"]
       62 MOVE                             R3 R0
       63 CALL                             R2 1 1
       64 SETTABLEKS                       R2 R1 K16 ["Metering"]
       66 RETURN                           R1 1

PROTO_10:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        3 GETTABLEKS                       R4 R1 K0 ["ClassName"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+30]
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K1 ["Path"]
       10 GETTABLEKS                       R4 R1 K1 ["Path"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+23]
       14 LOADB                            R2 1
       15 GETTABLEKS                       R3 R0 K2 ["MaxRadius"]
       17 GETTABLEKS                       R4 R1 K2 ["MaxRadius"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+16]
       21 LOADB                            R2 1
       22 GETTABLEKS                       R3 R0 K3 ["MinRadius"]
       24 GETTABLEKS                       R4 R1 K3 ["MinRadius"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+9]
       28 GETTABLEKS                       R3 R0 K4 ["Source"]
       30 GETTABLEKS                       R4 R1 K4 ["Source"]
       32 JUMPIFNOTEQ                      R3 R4 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 RETURN                           R2 1

PROTO_11:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Source"]
        3 JUMPIFEQKNIL                     R2 ; [+20]
        5 GETTABLEKS                       R2 R0 K0 ["Source"]
        7 LOADK                            R5 K1 ["BasePart"]
        8 NAMECALL                         R3 R2 K2 ["IsA"]
       10 CALL                             R3 2 1
       11 MOVE                             R1 R3
       12 JUMPIF                           R1 ; [+11]
       13 LOADK                            R5 K3 ["Attachment"]
       14 NAMECALL                         R3 R2 K2 ["IsA"]
       16 CALL                             R3 2 1
       17 MOVE                             R1 R3
       18 JUMPIF                           R1 ; [+5]
       19 LOADK                            R5 K4 ["Model"]
       20 NAMECALL                         R3 R2 K2 ["IsA"]
       22 CALL                             R3 2 1
       23 MOVE                             R1 R3
       24 MOVE                             R2 R1
       25 JUMPIFNOT                        R2 ; [+6]
       26 LOADB                            R2 1
       27 GETTABLEKS                       R3 R0 K5 ["Metering"]
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 GETUPVAL                         R2 0
       32 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 SETTABLE                         R2 R1 R0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["remove"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 NOT                              R3 R4
        3 GETUPVAL                         R4 0
        4 LOADB                            R5 1
        5 SETTABLE                         R5 R4 R0
        6 JUMPIFNOT                        R3 ; [+1]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R5 2
        9 GETTABLE                         R4 R5 R0
       10 MOVE                             R6 R1
       11 LOADB                            R5 1
       12 GETTABLEKS                       R7 R4 K0 ["ClassName"]
       14 GETTABLEKS                       R8 R6 K0 ["ClassName"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+30]
       18 LOADB                            R5 1
       19 GETTABLEKS                       R7 R4 K1 ["Path"]
       21 GETTABLEKS                       R8 R6 K1 ["Path"]
       23 JUMPIFNOTEQ                      R7 R8 ; [+23]
       25 LOADB                            R5 1
       26 GETTABLEKS                       R7 R4 K2 ["MaxRadius"]
       28 GETTABLEKS                       R8 R6 K2 ["MaxRadius"]
       30 JUMPIFNOTEQ                      R7 R8 ; [+16]
       32 LOADB                            R5 1
       33 GETTABLEKS                       R7 R4 K3 ["MinRadius"]
       35 GETTABLEKS                       R8 R6 K3 ["MinRadius"]
       37 JUMPIFNOTEQ                      R7 R8 ; [+9]
       39 GETTABLEKS                       R7 R4 K4 ["Source"]
       41 GETTABLEKS                       R8 R6 K4 ["Source"]
       43 JUMPIFNOTEQ                      R7 R8 ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 GETUPVAL                         R7 3
       48 GETTABLE                         R6 R7 R0
       49 JUMPIFNOT                        R6 ; [+14]
       50 JUMPIFNOT                        R2 ; [+8]
       51 GETUPVAL                         R6 4
       52 GETTABLEKS                       R6 R6 K5 ["update"]
       54 MOVE                             R7 R0
       55 MOVE                             R8 R4
       56 MOVE                             R9 R5
       57 CALL                             R6 3 0
       58 JUMP                             ; [+5]
       59 GETUPVAL                         R6 4
       60 GETTABLEKS                       R6 R6 K6 ["remove"]
       62 MOVE                             R7 R0
       63 CALL                             R6 1 0
       64 JUMPIFNOT                        R5 ; [0]
       65 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 0
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 MOVE                             R8 R5
        9 CALL                             R7 1 1
       10 GETUPVAL                         R8 0
       11 SETTABLE                         R7 R8 R5
       12 LOADB                            R9 0
       13 GETTABLEKS                       R10 R7 K0 ["Source"]
       15 JUMPIFEQKNIL                     R10 ; [+20]
       17 GETTABLEKS                       R10 R7 K0 ["Source"]
       19 LOADK                            R13 K1 ["BasePart"]
       20 NAMECALL                         R11 R10 K2 ["IsA"]
       22 CALL                             R11 2 1
       23 MOVE                             R9 R11
       24 JUMPIF                           R9 ; [+11]
       25 LOADK                            R13 K3 ["Attachment"]
       26 NAMECALL                         R11 R10 K2 ["IsA"]
       28 CALL                             R11 2 1
       29 MOVE                             R9 R11
       30 JUMPIF                           R9 ; [+5]
       31 LOADK                            R13 K4 ["Model"]
       32 NAMECALL                         R11 R10 K2 ["IsA"]
       34 CALL                             R11 2 1
       35 MOVE                             R9 R11
       36 MOVE                             R8 R9
       37 JUMPIFNOT                        R8 ; [+6]
       38 LOADB                            R8 1
       39 GETTABLEKS                       R10 R7 K5 ["Metering"]
       41 JUMPIFNOTEQKNIL                  R10 ; [+2]
       43 GETUPVAL                         R8 2
       44 JUMPIFNOT                        R8 ; [+6]
       45 SETTABLE                         R6 R0 R5
       46 GETUPVAL                         R9 3
       47 GETTABLE                         R8 R9 R5
       48 JUMPIFNOT                        R8 ; [+14]
       49 ADDK                             R1 R1 K6 [1]
       50 JUMP                             ; [+12]
       51 GETUPVAL                         R9 4
       52 GETTABLE                         R8 R9 R5
       53 JUMPIF                           R8 ; [+1]
       54 JUMP                             ; [+8]
       55 GETUPVAL                         R8 4
       56 LOADNIL                          R9
       57 SETTABLE                         R9 R8 R5
       58 GETUPVAL                         R8 5
       59 GETTABLEKS                       R8 R8 K7 ["remove"]
       61 MOVE                             R9 R5
       62 CALL                             R8 1 0
       63 FORGLOOP                         R2 2 ; [-57]
       65 MOVE                             R2 R0
       66 LOADNIL                          R3
       67 LOADNIL                          R4
       68 FORGPREP                         R2
       69 GETUPVAL                         R7 6
       70 MOVE                             R8 R5
       71 MOVE                             R9 R6
       72 JUMPIFEQKN                       R1 K6 [1] ; [+2]
       74 LOADB                            R10 0 +1
       75 LOADB                            R10 1
       76 CALL                             R7 3 0
       77 FORGLOOP                         R2 2 ; [-9]
       79 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R1 R2 R0
        6 JUMPIF                           R1 ; [+1]
        7 JUMP                             ; [+8]
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R1 R0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["remove"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K0 ["remove"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 4
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 LOADNIL                          R2
       26 SETTABLE                         R2 R1 R0
       27 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+17]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["SupportedTypes"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 MOVE                             R9 R6
       10 NAMECALL                         R7 R0 K1 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+2]
       14 LOADB                            R1 1
       15 JUMP                             ; [+3]
       16 FORGLOOP                         R2 2 ; [-8]
       18 LOADB                            R1 0
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 2
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R2 3
       26 MOVE                             R3 R0
       27 CALL                             R2 1 1
       28 SETTABLE                         R2 R1 R0
       29 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SupportedTypes"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K1 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+2]
       11 LOADB                            R1 1
       12 JUMP                             ; [+3]
       13 FORGLOOP                         R2 2 ; [-8]
       15 LOADB                            R1 0
       16 JUMPIFNOT                        R1 ; [+3]
       17 GETUPVAL                         R1 1
       18 LOADB                            R2 1
       19 SETTABLE                         R2 R1 R0
       20 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R3 R3 K0 ["Get"]
        9 CALL                             R3 1 3
       10 FORGPREP                         R3
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K1 ["SupportedTypes"]
       14 LOADNIL                          R10
       15 LOADNIL                          R11
       16 FORGPREP                         R9
       17 MOVE                             R16 R13
       18 NAMECALL                         R14 R7 K2 ["IsA"]
       20 CALL                             R14 2 1
       21 JUMPIFNOT                        R14 ; [+2]
       22 LOADB                            R8 1
       23 JUMP                             ; [+3]
       24 FORGLOOP                         R9 2 ; [-8]
       26 LOADB                            R8 0
       27 JUMPIFNOT                        R8 ; [+2]
       28 LOADB                            R8 1
       29 SETTABLE                         R8 R1 R7
       30 NAMECALL                         R8 R7 K3 ["GetChildren"]
       32 CALL                             R8 1 3
       33 FORGPREP                         R8
       34 GETUPVAL                         R14 1
       35 GETTABLEKS                       R14 R14 K1 ["SupportedTypes"]
       37 LOADNIL                          R15
       38 LOADNIL                          R16
       39 FORGPREP                         R14
       40 MOVE                             R21 R18
       41 NAMECALL                         R19 R12 K2 ["IsA"]
       43 CALL                             R19 2 1
       44 JUMPIFNOT                        R19 ; [+2]
       45 LOADB                            R13 1
       46 JUMP                             ; [+3]
       47 FORGLOOP                         R14 2 ; [-8]
       49 LOADB                            R13 0
       50 JUMPIFNOT                        R13 ; [+2]
       51 LOADB                            R13 1
       52 SETTABLE                         R13 R1 R12
       53 FORGLOOP                         R8 2 ; [-20]
       55 FORGLOOP                         R3 2 ; [-45]
       57 SETUPVAL                         R1 0
       58 MOVE                             R3 R0
       59 LOADNIL                          R4
       60 LOADNIL                          R5
       61 FORGPREP                         R3
       62 GETTABLE                         R8 R1 R6
       63 JUMPIF                           R8 ; [+5]
       64 GETUPVAL                         R8 3
       65 GETTABLEKS                       R8 R8 K4 ["remove"]
       67 MOVE                             R9 R6
       68 CALL                             R8 1 0
       69 FORGLOOP                         R3 1 ; [-8]
       71 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K0 ["Get"]
        6 CALL                             R2 1 3
        7 FORGPREP                         R2
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K1 ["SupportedTypes"]
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 FORGPREP                         R8
       14 MOVE                             R15 R12
       15 NAMECALL                         R13 R6 K2 ["IsA"]
       17 CALL                             R13 2 1
       18 JUMPIFNOT                        R13 ; [+2]
       19 LOADB                            R7 1
       20 JUMP                             ; [+3]
       21 FORGLOOP                         R8 2 ; [-8]
       23 LOADB                            R7 0
       24 JUMPIFNOT                        R7 ; [+8]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K3 ["isPlaying"]
       28 MOVE                             R8 R6
       29 CALL                             R7 1 1
       30 JUMPIF                           R7 ; [+2]
       31 LOADB                            R1 1
       32 JUMP                             ; [+7]
       33 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       35 MOVE                             R8 R0
       36 MOVE                             R9 R6
       37 GETIMPORT                        R7 K6 [table.insert]
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-33]
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETUPVAL                         R2 0
       44 MOVE                             R4 R0
       45 NAMECALL                         R2 R2 K7 ["Set"]
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

PROTO_21:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["plugin was nil"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onCloseView"]
        6 CALL                             R0 0 0
        7 LOADB                            R0 1
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K1 ["onOpenView"]
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["onOpenView"]
       16 CALL                             R0 0 0
       17 NEWTABLE                         R0 0 1
       19 GETUPVAL                         R1 5
       20 GETTABLEKS                       R1 R1 K2 ["SelectionChanged"]
       22 GETUPVAL                         R3 6
       23 NAMECALL                         R1 R1 K3 ["Connect"]
       25 CALL                             R1 2 -1
       26 SETLIST                          R0 R1 -1 [1]
       28 SETUPVAL                         R0 4
       29 NEWTABLE                         R0 0 3
       31 GETIMPORT                        R1 K5 [game]
       33 GETTABLEKS                       R1 R1 K6 ["DescendantAdded"]
       35 GETUPVAL                         R3 8
       36 NAMECALL                         R1 R1 K3 ["Connect"]
       38 CALL                             R1 2 1
       39 GETIMPORT                        R2 K5 [game]
       41 GETTABLEKS                       R2 R2 K7 ["DescendantRemoving"]
       43 GETUPVAL                         R4 9
       44 NAMECALL                         R2 R2 K3 ["Connect"]
       46 CALL                             R2 2 1
       47 GETUPVAL                         R3 10
       48 GETTABLEKS                       R3 R3 K8 ["Heartbeat"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K9 ["updateInstances"]
       53 NAMECALL                         R3 R3 K3 ["Connect"]
       55 CALL                             R3 2 -1
       56 SETLIST                          R0 R1 -1 [1]
       58 SETUPVAL                         R0 7
       59 GETIMPORT                        R0 K5 [game]
       61 NAMECALL                         R0 R0 K10 ["GetDescendants"]
       63 CALL                             R0 1 3
       64 FORGPREP                         R0
       65 GETUPVAL                         R6 11
       66 GETTABLE                         R5 R6 R4
       67 JUMPIF                           R5 ; [+26]
       68 GETUPVAL                         R6 12
       69 GETTABLEKS                       R6 R6 K11 ["SupportedTypes"]
       71 LOADNIL                          R7
       72 LOADNIL                          R8
       73 FORGPREP                         R6
       74 MOVE                             R13 R10
       75 NAMECALL                         R11 R4 K12 ["IsA"]
       77 CALL                             R11 2 1
       78 JUMPIFNOT                        R11 ; [+2]
       79 LOADB                            R5 1
       80 JUMP                             ; [+3]
       81 FORGLOOP                         R6 2 ; [-8]
       83 LOADB                            R5 0
       84 JUMPIF                           R5 ; [+1]
       85 JUMP                             ; [+8]
       86 GETUPVAL                         R5 13
       87 MOVE                             R6 R4
       88 CALL                             R5 1 0
       89 GETUPVAL                         R5 11
       90 GETUPVAL                         R6 14
       91 MOVE                             R7 R4
       92 CALL                             R6 1 1
       93 SETTABLE                         R6 R5 R4
       94 FORGLOOP                         R0 2 ; [-30]
       96 GETUPVAL                         R0 6
       97 CALL                             R0 0 0
       98 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K0 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 NEWTABLE                         R0 0 0
       13 SETUPVAL                         R0 1
       14 GETUPVAL                         R0 2
       15 LOADNIL                          R1
       16 LOADNIL                          R2
       17 FORGPREP                         R0
       18 NAMECALL                         R5 R4 K0 ["Disconnect"]
       20 CALL                             R5 1 0
       21 FORGLOOP                         R0 2 ; [-4]
       23 NEWTABLE                         R0 0 0
       25 SETUPVAL                         R0 2
       26 NEWTABLE                         R0 0 0
       28 SETUPVAL                         R0 3
       29 NEWTABLE                         R0 0 0
       31 SETUPVAL                         R0 4
       32 NEWTABLE                         R0 0 0
       34 SETUPVAL                         R0 5
       35 GETUPVAL                         R0 6
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 7
       38 GETTABLEKS                       R0 R0 K1 ["onCloseView"]
       40 CALL                             R0 0 0
       41 GETUPVAL                         R0 8
       42 GETTABLEKS                       R0 R0 K1 ["onCloseView"]
       44 CALL                             R0 0 0
       45 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R0 0
        5 JUMPIF                           R0 ; [+2]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["SoundEmitterUtil"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["RolloffSpheresUtil"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K8 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["MeteringUtil"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K13 [game]
       43 LOADK                            R7 K14 ["RunService"]
       44 NAMECALL                         R5 R5 K15 ["GetService"]
       46 CALL                             R5 2 1
       47 GETIMPORT                        R6 K13 [game]
       49 LOADK                            R8 K16 ["Selection"]
       50 NAMECALL                         R6 R6 K15 ["GetService"]
       52 CALL                             R6 2 1
       53 DUPTABLE                         R7 K26 [{["ClassName"] = "", ["Path"] = "", ["MaxRadius"] = -1, ["MinRadius"] = -1, ["Metering"] = , ["Source"] = }]
       54 NEWTABLE                         R8 0 0
       56 LOADNIL                          R9
       57 NEWTABLE                         R10 0 0
       59 NEWTABLE                         R11 0 0
       61 NEWTABLE                         R12 0 0
       63 NEWTABLE                         R13 0 0
       65 NEWTABLE                         R14 0 0
       67 LOADB                            R15 0
       68 LOADB                            R16 1
       69 NEWTABLE                         R17 0 0
       71 NEWTABLE                         R18 0 0
       73 NEWTABLE                         R19 0 0
       75 NEWTABLE                         R20 0 0
       77 LOADNIL                          R21
       78 NEWCLOSURE                       R22 P0
       79 CAPTURE                          REF R19
       80 CAPTURE                          REF R21
       81 NEWCLOSURE                       R23 P1
       82 CAPTURE                          REF R19
       83 CAPTURE                          REF R21
       84 CAPTURE                          REF R17
       85 CAPTURE                          REF R18
       86 CAPTURE                          REF R20
       87 NEWCLOSURE                       R24 P2
       88 CAPTURE                          REF R20
       89 CAPTURE                          REF R18
       90 CAPTURE                          REF R19
       91 CAPTURE                          REF R17
       92 NEWCLOSURE                       R21 P3
       93 CAPTURE                          REF R10
       94 CAPTURE                          VAL R24
       95 CAPTURE                          VAL R23
       96 NEWCLOSURE                       R25 P4
       97 CAPTURE                          REF R20
       98 CAPTURE                          REF R19
       99 CAPTURE                          REF R18
      100 CAPTURE                          REF R17
      101 DUPCLOSURE                       R26 K27 [PROTO_7]
      102 CAPTURE                          VAL R1
      103 DUPCLOSURE                       R27 K28 [PROTO_8]
      104 NEWCLOSURE                       R28 P7
      105 CAPTURE                          VAL R7
      106 CAPTURE                          REF R17
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 DUPCLOSURE                       R29 K29 [PROTO_10]
      110 NEWCLOSURE                       R30 P9
      111 CAPTURE                          REF R16
      112 NEWCLOSURE                       R31 P10
      113 CAPTURE                          REF R11
      114 CAPTURE                          VAL R3
      115 NEWCLOSURE                       R32 P11
      116 CAPTURE                          REF R11
      117 CAPTURE                          VAL R7
      118 CAPTURE                          REF R10
      119 CAPTURE                          REF R12
      120 CAPTURE                          VAL R3
      121 NEWCLOSURE                       R33 P12
      122 CAPTURE                          REF R10
      123 SETTABLEKS                       R33 R8 K30 ["getSourceData"]
      125 NEWCLOSURE                       R33 P13
      126 CAPTURE                          REF R10
      127 CAPTURE                          VAL R28
      128 CAPTURE                          REF R16
      129 CAPTURE                          REF R12
      130 CAPTURE                          REF R11
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R32
      133 SETTABLEKS                       R33 R8 K31 ["updateInstances"]
      135 NEWCLOSURE                       R33 P14
      136 CAPTURE                          REF R10
      137 CAPTURE                          REF R11
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R24
      141 NEWCLOSURE                       R34 P15
      142 CAPTURE                          REF R10
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R23
      145 CAPTURE                          VAL R28
      146 NEWCLOSURE                       R35 P16
      147 CAPTURE                          REF R12
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R3
      151 DUPCLOSURE                       R36 K32 [PROTO_20]
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R2
      155 NEWCLOSURE                       R37 P18
      156 CAPTURE                          REF R9
      157 SETTABLEKS                       R37 R8 K33 ["init"]
      159 NEWCLOSURE                       R37 P19
      160 CAPTURE                          REF R15
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R3
      164 CAPTURE                          REF R14
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R35
      167 CAPTURE                          REF R13
      168 CAPTURE                          VAL R34
      169 CAPTURE                          VAL R33
      170 CAPTURE                          VAL R5
      171 CAPTURE                          REF R10
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R28
      175 SETTABLEKS                       R37 R8 K34 ["onOpenView"]
      177 NEWCLOSURE                       R37 P20
      178 CAPTURE                          REF R15
      179 CAPTURE                          REF R13
      180 CAPTURE                          REF R14
      181 CAPTURE                          REF R12
      182 CAPTURE                          REF R11
      183 CAPTURE                          REF R10
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R3
      187 SETTABLEKS                       R37 R8 K35 ["onCloseView"]
      189 NEWCLOSURE                       R37 P21
      190 CAPTURE                          REF R16
      191 CAPTURE                          VAL R36
      192 SETTABLEKS                       R37 R8 K36 ["setShowInactiveEnabled"]
      194 CLOSEUPVALS                      R9
      195 RETURN                           R8 1
