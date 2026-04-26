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
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["name"]
        8 LOADB                            R10 1
        9 SETTABLE                         R10 R3 R9
       10 FORGLOOP                         R4 2 ; [-5]
       12 MOVE                             R2 R3
       13 JUMPIFNOTEQKNIL                  R0 ; [+4]
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 RETURN                           R3 2
       18 NEWTABLE                         R3 0 0
       20 MOVE                             R4 R0
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 GETTABLE                         R9 R2 R7
       25 JUMPIF                           R9 ; [+7]
       26 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       28 MOVE                             R10 R3
       29 MOVE                             R11 R7
       30 GETIMPORT                        R9 K3 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R4 1 ; [-10]
       35 NEWTABLE                         R4 0 0
       37 MOVE                             R5 R2
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 FORGPREP                         R5
       41 GETTABLE                         R10 R0 R8
       42 JUMPIF                           R10 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       45 MOVE                             R11 R4
       46 MOVE                             R12 R8
       47 GETIMPORT                        R10 K3 [table.insert]
       49 CALL                             R10 2 0
       50 FORGLOOP                         R5 1 ; [-10]
       52 LENGTH                           R6 R3
       53 LOADN                            R7 0
       54 JUMPIFNOTLT                      R7 R6 ; [+3]
       56 MOVE                             R5 R3
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 LENGTH                           R7 R4
       60 LOADN                            R8 0
       61 JUMPIFNOTLT                      R8 R7 ; [+3]
       63 MOVE                             R6 R4
       64 JUMP                             ; [+1]
       65 LOADNIL                          R6
       66 MOVE                             R7 R6
       67 MOVE                             R8 R5
       68 RETURN                           R7 2

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["current"]
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R2
        9 MOVE                             R5 R0
       10 CALL                             R3 2 2
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K0 ["current"]
       14 GETUPVAL                         R6 1
       15 NEWTABLE                         R8 0 0
       17 MOVE                             R9 R0
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 FORGPREP                         R9
       21 GETTABLEKS                       R14 R13 K1 ["name"]
       23 LOADB                            R15 1
       24 SETTABLE                         R15 R8 R14
       25 FORGLOOP                         R9 2 ; [-5]
       27 MOVE                             R7 R8
       28 SETTABLE                         R7 R5 R6
       29 JUMPIFNOT                        R4 ; [+16]
       30 LOADK                            R8 K2 ["The following tools have been removed: %*"]
       31 GETIMPORT                        R10 K5 [table.concat]
       33 MOVE                             R11 R4
       34 LOADK                            R12 K6 [", "]
       35 CALL                             R10 2 1
       36 NAMECALL                         R8 R8 K7 ["format"]
       38 CALL                             R8 2 1
       39 MOVE                             R7 R8
       40 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       42 MOVE                             R6 R1
       43 GETIMPORT                        R5 K9 [table.insert]
       45 CALL                             R5 2 0
       46 JUMPIFNOT                        R3 ; [+16]
       47 LOADK                            R8 K10 ["The following tools have been added: %*"]
       48 GETIMPORT                        R10 K5 [table.concat]
       50 MOVE                             R11 R3
       51 LOADK                            R12 K6 [", "]
       52 CALL                             R10 2 1
       53 NAMECALL                         R8 R8 K7 ["format"]
       55 CALL                             R8 2 1
       56 MOVE                             R7 R8
       57 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       59 MOVE                             R6 R1
       60 GETIMPORT                        R5 K9 [table.insert]
       62 CALL                             R5 2 0
       63 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["sessionId"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["useRef"]
       12 NEWTABLE                         R3 0 0
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["useCallback"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["SessionIdContext"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 DUPCLOSURE                       R5 K13 [PROTO_1]
       32 DUPCLOSURE                       R6 K14 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 RETURN                           R6 1
