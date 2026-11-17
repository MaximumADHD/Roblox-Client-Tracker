PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["name"]
        8 LOADB                            R8 1
        9 SETTABLE                         R8 R1 R7
       10 FORGLOOP                         R2 2 ; [-5]
       12 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["name"]
        8 LOADB                            R9 1
        9 SETTABLE                         R9 R2 R8
       10 FORGLOOP                         R3 2 ; [-5]
       12 JUMPIFNOTEQKNIL                  R0 ; [+4]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 RETURN                           R3 2
       17 NEWTABLE                         R3 0 0
       19 MOVE                             R4 R0
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETTABLE                         R9 R2 R7
       24 JUMPIF                           R9 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       27 MOVE                             R10 R3
       28 MOVE                             R11 R7
       29 GETIMPORT                        R9 K3 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R4 1 ; [-10]
       34 NEWTABLE                         R4 0 0
       36 MOVE                             R5 R2
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 GETTABLE                         R10 R0 R8
       41 JUMPIF                           R10 ; [+7]
       42 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       44 MOVE                             R11 R4
       45 MOVE                             R12 R8
       46 GETIMPORT                        R10 K3 [table.insert]
       48 CALL                             R10 2 0
       49 FORGLOOP                         R5 1 ; [-10]
       51 LENGTH                           R6 R3
       52 LOADN                            R7 0
       53 JUMPIFNOTLT                      R7 R6 ; [+3]
       55 MOVE                             R5 R3
       56 JUMP                             ; [+1]
       57 LOADNIL                          R5
       58 LENGTH                           R7 R4
       59 LOADN                            R8 0
       60 JUMPIFNOTLT                      R8 R7 ; [+3]
       62 MOVE                             R6 R4
       63 JUMP                             ; [+1]
       64 LOADNIL                          R6
       65 MOVE                             R7 R6
       66 MOVE                             R8 R5
       67 RETURN                           R7 2

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["current"]
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R2
        9 MOVE                             R5 R0
       10 CALL                             R3 2 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["current"]
       14 GETUPVAL                         R6 1
       15 NEWTABLE                         R7 0 0
       17 MOVE                             R8 R0
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 FORGPREP                         R8
       21 GETTABLEKS                       R13 R12 K1 ["name"]
       23 LOADB                            R14 1
       24 SETTABLE                         R14 R7 R13
       25 FORGLOOP                         R8 2 ; [-5]
       27 SETTABLE                         R7 R5 R6
       28 JUMPIFNOT                        R4 ; [+15]
       29 LOADK                            R7 K2 ["The following tools have been removed: %*"]
       30 GETIMPORT                        R9 K5 [table.concat]
       32 MOVE                             R10 R4
       33 LOADK                            R11 K6 [", "]
       34 CALL                             R9 2 1
       35 NAMECALL                         R7 R7 K7 ["format"]
       37 CALL                             R7 2 1
       38 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       40 MOVE                             R6 R1
       41 GETIMPORT                        R5 K9 [table.insert]
       43 CALL                             R5 2 0
       44 JUMPIFNOT                        R3 ; [+15]
       45 LOADK                            R7 K10 ["The following tools have been added: %*"]
       46 GETIMPORT                        R9 K5 [table.concat]
       48 MOVE                             R10 R3
       49 LOADK                            R11 K6 [", "]
       50 CALL                             R9 2 1
       51 NAMECALL                         R7 R7 K7 ["format"]
       53 CALL                             R7 2 1
       54 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       56 MOVE                             R6 R1
       57 GETIMPORT                        R5 K9 [table.insert]
       59 CALL                             R5 2 0
       60 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["sessionId"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["useRef"]
       12 NEWTABLE                         R3 0 0
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U2
       22 NEWTABLE                         R5 0 1
       24 MOVE                             R6 R1
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["SessionIdContext"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 DUPCLOSURE                       R5 K13 [PROTO_1]
       32 DUPCLOSURE                       R6 K14 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 RETURN                           R6 1
