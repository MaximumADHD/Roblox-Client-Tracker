PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K3 [{"armsReach", "legsReach", "blend"}]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K4 ["clamp"]
        8 GETTABLEKS                       R4 R1 K0 ["armsReach"]
       10 JUMPIF                           R4 ; [+3]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["NEUTRAL"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K0 ["armsReach"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["clamp"]
       20 GETTABLEKS                       R4 R1 K1 ["legsReach"]
       22 JUMPIF                           R4 ; [+3]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K5 ["NEUTRAL"]
       26 CALL                             R3 1 1
       27 SETTABLEKS                       R3 R2 K1 ["legsReach"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K6 ["resolve"]
       32 GETTABLEKS                       R4 R1 K2 ["blend"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K2 ["blend"]
       37 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K5 [{"armsReach", "legsReach", "r6Blend", "upperBodyBlend", "lowerBodyBlend"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K6 ["toPercent"]
        4 GETTABLEKS                       R3 R0 K0 ["armsReach"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K0 ["armsReach"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K6 ["toPercent"]
       12 GETTABLEKS                       R3 R0 K1 ["legsReach"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K1 ["legsReach"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K6 ["toPercent"]
       20 GETTABLEKS                       R3 R0 K7 ["blend"]
       22 GETTABLEKS                       R3 R3 K8 ["blendWithR6"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K2 ["r6Blend"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K6 ["toPercent"]
       30 GETTABLEKS                       R3 R0 K7 ["blend"]
       32 GETTABLEKS                       R3 R3 K9 ["upperBlendWithR6"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R1 K3 ["upperBodyBlend"]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K6 ["toPercent"]
       40 GETTABLEKS                       R3 R0 K7 ["blend"]
       42 GETTABLEKS                       R3 R3 K10 ["lowerBlendWithR6"]
       44 CALL                             R2 1 1
       45 SETTABLEKS                       R2 R1 K4 ["lowerBodyBlend"]
       47 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+8]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["fromPercent"]
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R2 R3 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+8]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["fromPercent"]
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R2 R3 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["resolve"]
        9 DUPTABLE                         R4 K4 [{"armsReach", "legsReach", "blend"}]
       10 GETTABLEKS                       R7 R0 K1 ["armsReach"]
       12 FASTCALL1                        TYPEOF R7 ; [+2]
       13 GETIMPORT                        R6 K6 [typeof]
       15 CALL                             R6 1 1
       16 JUMPIFNOTEQKS                    R6 K7 ["number"] ; [+8]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K8 ["fromPercent"]
       21 GETTABLEKS                       R6 R0 K1 ["armsReach"]
       23 CALL                             R5 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R5
       26 SETTABLEKS                       R5 R4 K1 ["armsReach"]
       28 GETTABLEKS                       R7 R0 K2 ["legsReach"]
       30 FASTCALL1                        TYPEOF R7 ; [+2]
       31 GETIMPORT                        R6 K6 [typeof]
       33 CALL                             R6 1 1
       34 JUMPIFNOTEQKS                    R6 K7 ["number"] ; [+8]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K8 ["fromPercent"]
       39 GETTABLEKS                       R6 R0 K2 ["legsReach"]
       41 CALL                             R5 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 SETTABLEKS                       R5 R4 K2 ["legsReach"]
       46 DUPTABLE                         R5 K12 [{"blendWithR6", "upperBlendWithR6", "lowerBlendWithR6"}]
       47 GETTABLEKS                       R8 R0 K13 ["r6Blend"]
       49 FASTCALL1                        TYPEOF R8 ; [+2]
       50 GETIMPORT                        R7 K6 [typeof]
       52 CALL                             R7 1 1
       53 JUMPIFNOTEQKS                    R7 K7 ["number"] ; [+8]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K8 ["fromPercent"]
       58 GETTABLEKS                       R7 R0 K13 ["r6Blend"]
       60 CALL                             R6 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K9 ["blendWithR6"]
       65 GETTABLEKS                       R8 R0 K14 ["upperBodyBlend"]
       67 FASTCALL1                        TYPEOF R8 ; [+2]
       68 GETIMPORT                        R7 K6 [typeof]
       70 CALL                             R7 1 1
       71 JUMPIFNOTEQKS                    R7 K7 ["number"] ; [+8]
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R6 R6 K8 ["fromPercent"]
       76 GETTABLEKS                       R7 R0 K14 ["upperBodyBlend"]
       78 CALL                             R6 1 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R6
       81 SETTABLEKS                       R6 R5 K10 ["upperBlendWithR6"]
       83 GETTABLEKS                       R8 R0 K15 ["lowerBodyBlend"]
       85 FASTCALL1                        TYPEOF R8 ; [+2]
       86 GETIMPORT                        R7 K6 [typeof]
       88 CALL                             R7 1 1
       89 JUMPIFNOTEQKS                    R7 K7 ["number"] ; [+8]
       91 GETUPVAL                         R6 1
       92 GETTABLEKS                       R6 R6 K8 ["fromPercent"]
       94 GETTABLEKS                       R7 R0 K15 ["lowerBodyBlend"]
       96 CALL                             R6 1 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R6
       99 SETTABLEKS                       R6 R5 K11 ["lowerBlendWithR6"]
      101 SETTABLEKS                       R5 R4 K3 ["blend"]
      103 CALL                             R3 1 -1
      104 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["BlendSettings"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["ReachSteps"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 4 0
       27 DUPCLOSURE                       R4 K10 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R3 K11 ["resolve"]
       32 DUPCLOSURE                       R4 K12 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R3 K13 ["toForm"]
       37 DUPCLOSURE                       R4 K14 [PROTO_4]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R4 R3 K15 ["fromForm"]
       43 RETURN                           R3 1
