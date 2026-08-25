PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["name"]
        2 GETTABLE                         R2 R0 R3
        3 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["name"]
        2 NAMECALL                         R2 R0 K1 ["GetStyled"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["name"]
        4 GETUPVAL                         R2 2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 2
        7 JUMPIF                           R3 ; [+13]
        8 GETIMPORT                        R5 K3 [warn]
       10 LOADK                            R7 K4 ["Bad value written to %* on %*:\n\t%*"]
       11 GETTABLEKS                       R9 R1 K5 ["name"]
       13 GETTABLEKS                       R10 R1 K6 ["className"]
       15 MOVE                             R11 R4
       16 NAMECALL                         R7 R7 K7 ["format"]
       18 CALL                             R7 4 1
       19 MOVE                             R6 R7
       20 CALL                             R5 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R1 K0 ["metaType"]
        2 JUMPIFEQKS                       R4 K1 ["Property"] ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        8 LOADK                            R4 K2 ["Was not a property"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R4 R1 K5 ["className"]
       14 NAMECALL                         R2 R0 K6 ["IsA"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["InteractorTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["PropertyTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagDebugPropertiesUseStyledValues"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_0]
       29 DUPCLOSURE                       R5 K12 [PROTO_1]
       30 DUPCLOSURE                       R6 K13 [PROTO_3]
       31 DUPCLOSURE                       R7 K14 [PROTO_4]
       32 DUPTABLE                         R8 K18 [{"read", "write", "has"}]
       33 MOVE                             R10 R3
       34 CALL                             R10 0 1
       35 JUMPIFNOT                        R10 ; [+2]
       36 MOVE                             R9 R5
       37 JUMP                             ; [+1]
       38 MOVE                             R9 R4
       39 SETTABLEKS                       R9 R8 K15 ["read"]
       41 SETTABLEKS                       R6 R8 K16 ["write"]
       43 SETTABLEKS                       R7 R8 K17 ["has"]
       45 RETURN                           R8 1
