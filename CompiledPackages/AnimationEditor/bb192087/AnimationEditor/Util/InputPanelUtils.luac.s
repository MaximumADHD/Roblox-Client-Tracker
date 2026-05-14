PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["copy"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETTABLE                         R4 R3 R1
        6 LOADNIL                          R5
        7 SETTABLE                         R5 R3 R1
        8 ADDK                             R5 R2 K1 [0.5]
        9 SETTABLE                         R4 R3 R5
       10 NEWTABLE                         R5 0 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["keys"]
       15 MOVE                             R7 R3
       16 CALL                             R6 1 1
       17 GETIMPORT                        R7 K5 [table.sort]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 0
       21 MOVE                             R7 R6
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 FORGPREP                         R7
       25 GETTABLE                         R14 R3 R11
       26 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       28 MOVE                             R13 R5
       29 GETIMPORT                        R12 K7 [table.insert]
       31 CALL                             R12 2 0
       32 FORGLOOP                         R7 2 ; [-8]
       34 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["ReorderInputs"]
       20 RETURN                           R2 1
