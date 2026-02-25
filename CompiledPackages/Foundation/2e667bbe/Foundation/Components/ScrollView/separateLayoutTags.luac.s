PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+3]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 RETURN                           R2 2
        9 NEWTABLE                         R2 0 0
       11 NEWTABLE                         R3 0 0
       13 GETIMPORT                        R4 K2 [string.split]
       15 MOVE                             R5 R1
       16 LOADK                            R6 K3 [" "]
       17 CALL                             R4 2 3
       18 FORGPREP                         R4
       19 GETUPVAL                         R12 1
       20 GETTABLE                         R11 R12 R8
       21 JUMPIFNOT                        R11 ; [+2]
       22 MOVE                             R10 R2
       23 JUMP                             ; [+1]
       24 MOVE                             R10 R3
       25 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       27 MOVE                             R11 R8
       28 GETIMPORT                        R9 K6 [table.insert]
       30 CALL                             R9 2 0
       31 FORGLOOP                         R4 2 ; [-13]
       33 GETIMPORT                        R4 K8 [table.concat]
       35 MOVE                             R5 R2
       36 LOADK                            R6 K3 [" "]
       37 CALL                             R4 2 1
       38 GETIMPORT                        R5 K8 [table.concat]
       40 MOVE                             R6 R3
       41 LOADK                            R7 K3 [" "]
       42 CALL                             R5 2 -1
       43 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R4 K9 ["getFormattedTags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K10 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["getLayoutTags"]
       29 CALL                             R3 1 1
       30 MOVE                             R4 R3
       31 CALL                             R4 0 1
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 RETURN                           R5 1
