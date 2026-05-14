PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 LOADN                            R3 1
        5 GETIMPORT                        R4 K2 [string.find]
        7 MOVE                             R5 R0
        8 LOADK                            R6 K3 ["%d+"]
        9 MOVE                             R7 R3
       10 CALL                             R4 3 2
       11 JUMPIFNOT                        R4 ; [+53]
       12 SUB                              R7 R5 R4
       13 ADDK                             R6 R7 K4 [1]
       14 LOADN                            R7 4
       15 JUMPIFNOTLT                      R7 R6 ; [+45]
       17 FASTCALL3                        STRING_SUB R0 R4 R5
       19 MOVE                             R8 R0
       20 MOVE                             R9 R4
       21 MOVE                             R10 R5
       22 GETIMPORT                        R7 K6 [string.sub]
       24 CALL                             R7 3 1
       25 SUBK                             R10 R4 K4 [1]
       26 SUBK                             R11 R4 K4 [1]
       27 FASTCALL3                        STRING_SUB R0 R10 R11
       29 MOVE                             R9 R0
       30 GETIMPORT                        R8 K6 [string.sub]
       32 CALL                             R8 3 1
       33 JUMPIFEQKS                       R8 K7 ["."] ; [+27]
       35 SUBK                             R11 R4 K8 [13]
       36 SUBK                             R12 R4 K4 [1]
       37 FASTCALL3                        STRING_SUB R0 R11 R12
       39 MOVE                             R10 R0
       40 GETIMPORT                        R9 K6 [string.sub]
       42 CALL                             R9 3 1
       43 JUMPIFEQKS                       R9 K9 ["rbxassetid://"] ; [+5]
       45 GETUPVAL                         R10 0
       46 MOVE                             R11 R7
       47 CALL                             R10 1 1
       48 JUMPIFNOT                        R10 ; [+12]
       49 GETTABLE                         R10 R2 R7
       50 JUMPIF                           R10 ; [+10]
       51 LOADB                            R10 1
       52 SETTABLE                         R10 R2 R7
       53 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       55 MOVE                             R11 R1
       56 MOVE                             R12 R7
       57 GETIMPORT                        R10 K12 [table.insert]
       59 CALL                             R10 2 0
       60 JUMP                             ; [0]
       61 ADDK                             R3 R5 K4 [1]
       62 JUMP                             ; [+1]
       63 RETURN                           R1 1
       64 JUMPBACK                         ; [-60]
       65 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["isAssetIdLike"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
