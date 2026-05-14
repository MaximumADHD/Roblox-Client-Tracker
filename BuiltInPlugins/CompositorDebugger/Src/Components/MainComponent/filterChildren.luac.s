PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LOADB                            R4 0
        3 MOVE                             R5 R0
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 GETTABLEKS                       R11 R9 K0 ["className"]
        9 GETTABLE                         R10 R1 R11
       10 JUMPIF                           R10 ; [+5]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETTABLEKS                       R10 R9 K1 ["weight"]
       14 JUMPIFNOTEQKN                    R10 K2 [0] ; [+3]
       16 LOADB                            R4 1
       17 JUMP                             ; [+18]
       18 LOADNIL                          R10
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R12 R9 K3 ["children"]
       22 MOVE                             R13 R1
       23 MOVE                             R14 R2
       24 CALL                             R11 3 2
       25 SETTABLEKS                       R11 R9 K3 ["children"]
       27 MOVE                             R10 R12
       28 OR                               R4 R4 R10
       29 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       31 MOVE                             R12 R3
       32 MOVE                             R13 R9
       33 GETIMPORT                        R11 K6 [table.insert]
       35 CALL                             R11 2 0
       36 FORGLOOP                         R5 2 ; [-30]
       38 JUMPIFNOT                        R4 ; [+1]
       39 MOVE                             R0 R3
       40 MOVE                             R5 R0
       41 MOVE                             R6 R4
       42 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 RETURN                           R2 1
