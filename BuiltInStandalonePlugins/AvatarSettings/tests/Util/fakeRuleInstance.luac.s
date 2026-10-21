PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["Enabled$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K2 [string.match]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K4 ["Id$"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+6]
       14 GETIMPORT                        R1 K2 [string.match]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K5 ["Override$"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADN                            R1 0
       21 RETURN                           R1 1
       22 LOADNIL                          R1
       23 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R1 R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R7 K0 ["ClassName"]
       12 JUMPIFNOTEQ                      R8 R1 ; [+2]
       14 RETURN                           R7 1
       15 FORGLOOP                         R3 2 ; [-6]
       17 LOADNIL                          R3
       18 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K4 [table.remove]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 1
        8 SETTABLE                         R2 R3 R4
        9 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       11 MOVE                             R4 R2
       12 MOVE                             R5 R1
       13 GETIMPORT                        R3 K2 [table.insert]
       15 CALL                             R3 2 0
       16 DUPTABLE                         R3 K4 [{"Disconnect"}]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R4 R3 K3 ["Disconnect"]
       22 RETURN                           R3 1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"Connect"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 SETTABLEKS                       R3 R2 K0 ["Connect"]
        6 RETURN                           R2 1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+24]
        4 GETIMPORT                        R2 K2 [string.match]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K3 ["Enabled$"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADB                            R1 0
       11 JUMP                             ; [+15]
       12 GETIMPORT                        R2 K2 [string.match]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K4 ["Id$"]
       16 CALL                             R2 2 1
       17 JUMPIF                           R2 ; [+6]
       18 GETIMPORT                        R2 K2 [string.match]
       20 MOVE                             R3 R0
       21 LOADK                            R4 K5 ["Override$"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADN                            R1 0
       25 JUMP                             ; [+1]
       26 LOADNIL                          R1
       27 JUMPIFNOTEQKNIL                  R1 ; [+10]
       29 GETIMPORT                        R2 K7 [error]
       31 LOADK                            R3 K8 ["%* is not a valid member of %*"]
       32 MOVE                             R5 R0
       33 GETUPVAL                         R6 1
       34 NAMECALL                         R3 R3 K9 ["format"]
       36 CALL                             R3 3 1
       37 CALL                             R2 1 0
       38 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 ["ClassName"] ; [+3]
        2 GETUPVAL                         R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKS                    R1 K1 ["Parent"] ; [+3]
        6 GETUPVAL                         R2 1
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLE                         R2 R3 R1
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETUPVAL                         R3 2
       12 GETTABLE                         R2 R3 R1
       13 RETURN                           R2 1
       14 GETUPVAL                         R4 3
       15 GETTABLE                         R3 R4 R1
       16 JUMPIFNOTEQKNIL                  R3 ; [+24]
       18 GETIMPORT                        R4 K4 [string.match]
       20 MOVE                             R5 R1
       21 LOADK                            R6 K5 ["Enabled$"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADB                            R3 0
       25 JUMP                             ; [+15]
       26 GETIMPORT                        R4 K4 [string.match]
       28 MOVE                             R5 R1
       29 LOADK                            R6 K6 ["Id$"]
       30 CALL                             R4 2 1
       31 JUMPIF                           R4 ; [+6]
       32 GETIMPORT                        R4 K4 [string.match]
       34 MOVE                             R5 R1
       35 LOADK                            R6 K7 ["Override$"]
       36 CALL                             R4 2 1
       37 JUMPIFNOT                        R4 ; [+2]
       38 LOADN                            R3 0
       39 JUMP                             ; [+1]
       40 LOADNIL                          R3
       41 JUMPIFNOTEQKNIL                  R3 ; [+10]
       43 GETIMPORT                        R4 K9 [error]
       45 LOADK                            R5 K10 ["%* is not a valid member of %*"]
       46 MOVE                             R7 R1
       47 GETUPVAL                         R8 0
       48 NAMECALL                         R5 R5 K11 ["format"]
       50 CALL                             R5 3 1
       51 CALL                             R4 1 0
       52 MOVE                             R2 R3
       53 RETURN                           R2 1

PROTO_9:
        0 JUMPIFNOTEQKS                    R1 K0 ["Parent"] ; [+33]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+12]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R3 R4 R5
        7 GETIMPORT                        R4 K3 [table.remove]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R6 K5 [table.find]
       12 MOVE                             R7 R3
       13 GETUPVAL                         R8 2
       14 CALL                             R6 2 1
       15 CALL                             R4 2 0
       16 SETUPVAL                         R2 0
       17 JUMPIFNOT                        R2 ; [+15]
       18 GETUPVAL                         R3 1
       19 GETUPVAL                         R5 1
       20 GETTABLE                         R4 R5 R2
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 SETTABLE                         R4 R3 R2
       25 GETUPVAL                         R5 1
       26 GETTABLE                         R4 R5 R2
       27 GETUPVAL                         R5 2
       28 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       30 GETIMPORT                        R3 K7 [table.insert]
       32 CALL                             R3 2 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 3
       35 GETTABLE                         R4 R5 R1
       36 JUMPIFNOTEQKNIL                  R4 ; [+24]
       38 GETIMPORT                        R5 K10 [string.match]
       40 MOVE                             R6 R1
       41 LOADK                            R7 K11 ["Enabled$"]
       42 CALL                             R5 2 1
       43 JUMPIFNOT                        R5 ; [+2]
       44 LOADB                            R4 0
       45 JUMP                             ; [+15]
       46 GETIMPORT                        R5 K10 [string.match]
       48 MOVE                             R6 R1
       49 LOADK                            R7 K12 ["Id$"]
       50 CALL                             R5 2 1
       51 JUMPIF                           R5 ; [+6]
       52 GETIMPORT                        R5 K10 [string.match]
       54 MOVE                             R6 R1
       55 LOADK                            R7 K13 ["Override$"]
       56 CALL                             R5 2 1
       57 JUMPIFNOT                        R5 ; [+2]
       58 LOADN                            R4 0
       59 JUMP                             ; [+1]
       60 LOADNIL                          R4
       61 JUMPIFNOTEQKNIL                  R4 ; [+10]
       63 GETIMPORT                        R5 K15 [error]
       65 LOADK                            R6 K16 ["%* is not a valid member of %*"]
       66 MOVE                             R8 R1
       67 GETUPVAL                         R9 4
       68 NAMECALL                         R6 R6 K17 ["format"]
       70 CALL                             R6 3 1
       71 CALL                             R5 1 0
       72 MOVE                             R3 R4
       73 JUMPIFNOTEQ                      R3 R2 ; [+2]
       75 RETURN                           R0 0
       76 GETUPVAL                         R3 3
       77 SETTABLE                         R2 R3 R1
       78 GETIMPORT                        R3 K19 [table.clone]
       80 GETUPVAL                         R5 5
       81 GETTABLE                         R4 R5 R1
       82 JUMPIF                           R4 ; [+2]
       83 NEWTABLE                         R4 0 0
       85 CALL                             R3 1 1
       86 MOVE                             R4 R3
       87 LOADNIL                          R5
       88 LOADNIL                          R6
       89 FORGPREP                         R4
       90 MOVE                             R9 R8
       91 CALL                             R9 0 0
       92 FORGLOOP                         R4 2 ; [-3]
       94 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R1
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 NEWTABLE                         R6 4 0
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R7 R6 K3 ["IsA"]
       17 NEWCLOSURE                       R7 P1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          REF R5
       20 SETTABLEKS                       R7 R6 K4 ["FindFirstChildWhichIsA"]
       22 NEWCLOSURE                       R7 P2
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R7 R6 K5 ["GetPropertyChangedSignal"]
       26 DUPCLOSURE                       R7 K6 [PROTO_6]
       27 SETTABLEKS                       R7 R6 K7 ["Destroy"]
       29 NEWCLOSURE                       R7 P4
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R9 0 0
       34 DUPTABLE                         R10 K10 [{"__index", "__newindex"}]
       35 NEWCLOSURE                       R11 P5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          REF R4
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R11 R10 K8 ["__index"]
       42 NEWCLOSURE                       R11 P6
       43 CAPTURE                          REF R4
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          REF R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R11 R10 K9 ["__newindex"]
       51 FASTCALL2                        SETMETATABLE R9 R10 ; [+3]
       53 GETIMPORT                        R8 K12 [setmetatable]
       55 CALL                             R8 2 1
       56 MOVE                             R5 R8
       57 CLOSEUPVALS                      R4
       58 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R1 0 0
        3 DUPTABLE                         R2 K2 [{[1] = "k"}]
        4 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        6 GETIMPORT                        R0 K4 [setmetatable]
        8 CALL                             R0 2 1
        9 DUPCLOSURE                       R1 K5 [PROTO_0]
       10 DUPCLOSURE                       R2 K6 [PROTO_10]
       11 CAPTURE                          VAL R0
       12 RETURN                           R2 1
