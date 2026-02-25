PROTO_0:
        0 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 GETIMPORT                        R3 K2 [math.min]
        6 CALL                             R3 2 1
        7 FASTCALL2                        MATH_MAX R1 R2 ; [+5]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 GETIMPORT                        R4 K4 [math.max]
       13 CALL                             R4 2 1
       14 LOADN                            R5 1
       15 JUMPIFLT                         R3 R5 ; [+4]
       17 LENGTH                           R5 R0
       18 JUMPIFNOTLT                      R5 R3 ; [+4]
       20 NEWTABLE                         R5 0 0
       22 RETURN                           R5 1
       23 LOADN                            R5 1
       24 JUMPIFLT                         R4 R5 ; [+4]
       26 LENGTH                           R5 R0
       27 JUMPIFNOTLT                      R5 R4 ; [+4]
       29 NEWTABLE                         R5 0 0
       31 RETURN                           R5 1
       32 NEWTABLE                         R5 0 0
       34 MOVE                             R8 R3
       35 MOVE                             R6 R4
       36 LOADN                            R7 1
       37 FORNPREP                         R6
       38 GETUPVAL                         R9 0
       39 CALL                             R9 0 1
       40 JUMPIFNOT                        R9 ; [+8]
       41 GETTABLE                         R11 R0 R8
       42 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       44 MOVE                             R10 R5
       45 GETIMPORT                        R9 K7 [table.insert]
       47 CALL                             R9 2 0
       48 JUMP                             ; [+9]
       49 GETTABLE                         R12 R0 R8
       50 GETTABLEKS                       R11 R12 K8 ["AssetId"]
       52 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       54 MOVE                             R10 R5
       55 GETIMPORT                        R9 K7 [table.insert]
       57 CALL                             R9 2 0
       58 FORNLOOP                         R6
       59 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Flags"]
       20 GETTABLEKS                       R3 R4 K9 ["getFFlagAmrUpdatedItemsCache"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
