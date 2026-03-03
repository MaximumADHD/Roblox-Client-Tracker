PROTO_0:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R9 R5 K0 ["get"]
        8 CALL                             R9 0 -1
        9 CALL                             R8 -1 1
       10 GETTABLEKS                       R7 R8 K1 ["total"]
       12 FASTCALL2                        MATH_MAX R7 R0 ; [+4]
       14 MOVE                             R8 R0
       15 GETIMPORT                        R6 K4 [math.max]
       17 CALL                             R6 2 1
       18 MOVE                             R0 R6
       19 FORGLOOP                         R1 2 ; [-15]
       21 GETUPVAL                         R1 2
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K2 [task.defer]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 JUMPIFEQKNIL                     R0 ; [+5]
       12 GETIMPORT                        R0 K3 [task.cancel]
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          REF R0
        7 CAPTURE                          VAL R1
        8 MOVE                             R3 R1
        9 CALL                             R3 0 0
       10 NEWTABLE                         R3 0 0
       12 GETUPVAL                         R4 0
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 MOVE                             R10 R3
       17 GETTABLEKS                       R11 R8 K0 ["changedSignal"]
       19 MOVE                             R13 R2
       20 NAMECALL                         R11 R11 K1 ["Connect"]
       22 CALL                             R11 2 -1
       23 FASTCALL                         TABLE_INSERT ; [+2]
       24 GETIMPORT                        R9 K4 [table.insert]
       26 CALL                             R9 -1 0
       27 FORGLOOP                         R4 2 ; [-12]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          REF R0
       32 CLOSEUPVALS                      R0
       33 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 0
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["calculateExplorerNodeWidth"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       32 GETTABLEKS                       R5 R6 K12 ["useVisibleExplorerNodeRange"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K13 [PROTO_5]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R5 1
