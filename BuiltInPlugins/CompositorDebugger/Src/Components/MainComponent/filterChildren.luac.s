PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LOADB                            R4 0
        3 MOVE                             R5 R0
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 GETTABLEKS                       R10 R9 K0 ["className"]
        9 JUMPIFNOT                        R10 ; [+4]
       10 GETTABLEKS                       R11 R9 K0 ["className"]
       12 GETTABLE                         R10 R1 R11
       13 JUMPIF                           R10 ; [+5]
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETTABLEKS                       R10 R9 K1 ["weight"]
       17 JUMPIFNOTEQKN                    R10 K2 [0] ; [+3]
       19 LOADB                            R4 1
       20 JUMP                             ; [+18]
       21 LOADNIL                          R10
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R12 R9 K3 ["children"]
       25 MOVE                             R13 R1
       26 MOVE                             R14 R2
       27 CALL                             R11 3 2
       28 SETTABLEKS                       R11 R9 K3 ["children"]
       30 MOVE                             R10 R12
       31 OR                               R4 R4 R10
       32 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       34 MOVE                             R12 R3
       35 MOVE                             R13 R9
       36 GETIMPORT                        R11 K6 [table.insert]
       38 CALL                             R11 2 0
       39 FORGLOOP                         R5 2 ; [-33]
       41 JUMPIFNOT                        R4 ; [+1]
       42 MOVE                             R0 R3
       43 MOVE                             R5 R0
       44 MOVE                             R6 R4
       45 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 RETURN                           R2 1
