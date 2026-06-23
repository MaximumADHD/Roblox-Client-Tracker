PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLE                         R7 R0 R6
        6 JUMPIFEQKB                       R7 TRUE ; [+3]
        8 LOADB                            R1 1
        9 JUMP                             ; [+2]
       10 FORGLOOP                         R2 2 ; [-6]
       12 JUMPIFNOT                        R1 ; [+13]
       13 GETIMPORT                        R2 K2 [table.clone]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 0
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 LOADB                            R8 1
       22 SETTABLE                         R8 R2 R7
       23 FORGLOOP                         R3 2 ; [-3]
       25 RETURN                           R2 1
       26 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R1 0 0
        5 GETVARARGS                       R4 -1
        6 SETLIST                          R1 R4 -1 [1]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETIMPORT                        R6 K2 [string.split]
       13 MOVE                             R7 R5
       14 LOADK                            R8 K3 [" "]
       15 CALL                             R6 2 1
       16 MOVE                             R7 R6
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 FASTCALL2                        TABLE_INSERT R0 R11 ; [+5]
       22 MOVE                             R13 R0
       23 MOVE                             R14 R11
       24 GETIMPORT                        R12 K6 [table.insert]
       26 CALL                             R12 2 0
       27 FORGLOOP                         R7 2 ; [-8]
       29 FORGLOOP                         R1 2 ; [-19]
       31 GETUPVAL                         R1 0
       32 NEWCLOSURE                       R2 P0
       33 CAPTURE                          VAL R0
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 1
       13 MOVE                             R5 R1
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 1
       17 MOVE                             R3 R0
       18 MOVE                             R4 R2
       19 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_2]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
