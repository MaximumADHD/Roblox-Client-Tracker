PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R1
        5 JUMPIF                           R3 ; [+2]
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K2 [table.freeze]
       10 DUPTABLE                         R5 K6 [{"blendWithR6", "upperBlendWithR6", "lowerBlendWithR6"}]
       11 GETTABLEKS                       R7 R2 K3 ["blendWithR6"]
       13 JUMPIF                           R7 ; [+6]
       14 GETTABLEKS                       R7 R3 K3 ["blendWithR6"]
       16 JUMPIF                           R7 ; [+3]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K3 ["blendWithR6"]
       20 LOADN                            R8 0
       21 LOADN                            R9 1
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R6 K9 [math.clamp]
       25 CALL                             R6 3 1
       26 SETTABLEKS                       R6 R5 K3 ["blendWithR6"]
       28 GETTABLEKS                       R7 R2 K4 ["upperBlendWithR6"]
       30 JUMPIF                           R7 ; [+6]
       31 GETTABLEKS                       R7 R3 K4 ["upperBlendWithR6"]
       33 JUMPIF                           R7 ; [+3]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K4 ["upperBlendWithR6"]
       37 LOADN                            R8 0
       38 LOADN                            R9 1
       39 FASTCALL                         MATH_CLAMP ; [+2]
       40 GETIMPORT                        R6 K9 [math.clamp]
       42 CALL                             R6 3 1
       43 SETTABLEKS                       R6 R5 K4 ["upperBlendWithR6"]
       45 GETTABLEKS                       R7 R2 K5 ["lowerBlendWithR6"]
       47 JUMPIF                           R7 ; [+6]
       48 GETTABLEKS                       R7 R3 K5 ["lowerBlendWithR6"]
       50 JUMPIF                           R7 ; [+3]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K5 ["lowerBlendWithR6"]
       54 LOADN                            R8 0
       55 LOADN                            R9 1
       56 FASTCALL                         MATH_CLAMP ; [+2]
       57 GETIMPORT                        R6 K9 [math.clamp]
       59 CALL                             R6 3 1
       60 SETTABLEKS                       R6 R5 K5 ["lowerBlendWithR6"]
       62 CALL                             R4 1 -1
       63 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["resolve"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 MOVE                             R2 R4
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["resolve"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 LOADB                            R4 0
       12 GETTABLEKS                       R5 R2 K1 ["blendWithR6"]
       14 GETTABLEKS                       R6 R3 K1 ["blendWithR6"]
       16 JUMPIFNOTEQ                      R5 R6 ; [+16]
       18 LOADB                            R4 0
       19 GETTABLEKS                       R5 R2 K2 ["upperBlendWithR6"]
       21 GETTABLEKS                       R6 R3 K2 ["upperBlendWithR6"]
       23 JUMPIFNOTEQ                      R5 R6 ; [+9]
       25 GETTABLEKS                       R5 R2 K3 ["lowerBlendWithR6"]
       27 GETTABLEKS                       R6 R3 K3 ["lowerBlendWithR6"]
       29 JUMPIFEQ                         R5 R6 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 RETURN                           R4 1

PROTO_2:
        0 MULK                             R1 R0 K0 [100]
        1 RETURN                           R1 1

PROTO_3:
        0 LOADN                            R4 0
        1 LOADN                            R5 100
        2 FASTCALL3                        MATH_CLAMP R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K3 [math.clamp]
        7 CALL                             R2 3 1
        8 DIVK                             R1 R2 K0 [100]
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K2 ["blendWithR6"]
        7 GETTABLEKS                       R5 R1 K3 ["upperBlendWithR6"]
        9 MUL                              R3 R4 R5
       10 SUBRK                            R2 K1 [1] R3
       11 GETTABLEKS                       R5 R1 K2 ["blendWithR6"]
       13 GETTABLEKS                       R6 R1 K4 ["lowerBlendWithR6"]
       15 MUL                              R4 R5 R6
       16 SUBRK                            R3 K1 [1] R4
       17 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K2 [table.freeze]
        5 DUPTABLE                         R2 K8 [{["blendWithR6"] = 0, ["upperBlendWithR6"] = 1, ["lowerBlendWithR6"] = 1}]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K9 ["DEFAULT"]
        9 DUPCLOSURE                       R2 K10 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K11 ["resolve"]
       13 DUPCLOSURE                       R2 K12 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K13 ["equals"]
       17 DUPCLOSURE                       R2 K14 [PROTO_2]
       18 SETTABLEKS                       R2 R0 K15 ["toPercent"]
       20 DUPCLOSURE                       R2 K16 [PROTO_3]
       21 SETTABLEKS                       R2 R0 K17 ["fromPercent"]
       23 DUPCLOSURE                       R2 K18 [PROTO_4]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K19 ["aiGeneratedWeights"]
       27 RETURN                           R0 1
