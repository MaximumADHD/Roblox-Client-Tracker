PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["_animationCallback"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"_constraintToolModel"}]
        1 SETTABLEKS                       R0 R2 K0 ["_constraintToolModel"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["new"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K5 ["_animationTask"]
       17 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R3 0
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 POWK                             R2 R0 K3 [3]
       10 MULK                             R6 R0 K6 [6]
       11 SUBK                             R5 R6 K5 [15]
       12 MUL                              R4 R0 R5
       13 ADDK                             R3 R4 K4 [10]
       14 MUL                              R1 R2 R3
       15 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_constraintToolModel"]
        2 GETTABLEKS                       R3 R3 K1 ["_lastDragTarget"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETTABLEKS                       R4 R0 K0 ["_constraintToolModel"]
        7 GETTABLEKS                       R4 R4 K2 ["_attachmentMover"]
        9 GETTABLEKS                       R6 R3 K3 ["mainCFrame"]
       11 GETTABLEKS                       R7 R3 K4 ["targetPart"]
       13 NAMECALL                         R4 R4 K5 ["moveTo"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0
       17 MOVE                             R5 R1
       18 LOADN                            R8 0
       19 LOADN                            R9 1
       20 FASTCALL3                        MATH_CLAMP R5 R8 R9
       22 MOVE                             R7 R5
       23 GETIMPORT                        R6 K8 [math.clamp]
       25 CALL                             R6 3 1
       26 MOVE                             R5 R6
       27 POWK                             R6 R5 K9 [3]
       28 MULK                             R10 R5 K12 [6]
       29 SUBK                             R9 R10 K11 [15]
       30 MUL                              R8 R5 R9
       31 ADDK                             R7 R8 K10 [10]
       32 MUL                              R4 R6 R7
       33 GETTABLEKS                       R5 R0 K13 ["_animateFrom"]
       35 GETTABLEKS                       R6 R5 K14 ["tiltRotate"]
       37 GETTABLEKS                       R8 R0 K0 ["_constraintToolModel"]
       39 GETTABLEKS                       R8 R8 K15 ["_tiltRotate"]
       41 MOVE                             R9 R4
       42 NAMECALL                         R6 R6 K16 ["Lerp"]
       44 CALL                             R6 3 1
       45 LOADNIL                          R7
       46 GETTABLEKS                       R8 R3 K17 ["offsetCFrame"]
       48 MUL                              R7 R6 R8
       49 GETTABLEKS                       R8 R0 K18 ["_overrideBaseRotation"]
       51 JUMPIFNOT                        R8 ; [+3]
       52 GETTABLEKS                       R8 R0 K18 ["_overrideBaseRotation"]
       54 MUL                              R7 R8 R7
       55 GETTABLEKS                       R8 R0 K0 ["_constraintToolModel"]
       57 GETTABLEKS                       R10 R0 K0 ["_constraintToolModel"]
       59 GETTABLEKS                       R10 R10 K19 ["_attachmentAdornment"]
       61 MOVE                             R11 R7
       62 NAMECALL                         R8 R8 K20 ["_orientAttachmentAdornment"]
       64 CALL                             R8 3 0
       65 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_constraintToolModel"]
        2 GETTABLEKS                       R2 R2 K1 ["_lastDragTarget"]
        4 GETIMPORT                        R3 K4 [table.freeze]
        6 DUPTABLE                         R4 K8 [{"tiltRotate", "baseCFrame", "offsetCFrame"}]
        7 GETTABLEKS                       R5 R0 K0 ["_constraintToolModel"]
        9 GETTABLEKS                       R5 R5 K9 ["_tiltRotate"]
       11 SETTABLEKS                       R5 R4 K5 ["tiltRotate"]
       13 GETTABLEKS                       R5 R2 K6 ["baseCFrame"]
       15 SETTABLEKS                       R5 R4 K6 ["baseCFrame"]
       17 GETTABLEKS                       R5 R2 K7 ["offsetCFrame"]
       19 SETTABLEKS                       R5 R4 K7 ["offsetCFrame"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R0 K10 ["_animateFrom"]
       24 GETTABLEKS                       R3 R0 K0 ["_constraintToolModel"]
       26 SETTABLEKS                       R1 R3 K9 ["_tiltRotate"]
       28 GETTABLEKS                       R3 R0 K11 ["_animationTask"]
       30 LOADK                            R5 K12 [0.13]
       31 NAMECALL                         R3 R3 K13 ["animate"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_animationTask"]
        2 NAMECALL                         R1 R1 K1 ["inProgress"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_animationTask"]
        2 NAMECALL                         R1 R1 K1 ["commit"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConstraintTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R3 K9 ["AnimationTask"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 8 0
       20 SETTABLEKS                       R3 R3 K10 ["__index"]
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K12 ["new"]
       27 DUPCLOSURE                       R4 K13 [PROTO_2]
       28 DUPCLOSURE                       R5 K14 [PROTO_3]
       29 SETTABLEKS                       R5 R3 K15 ["_animationCallback"]
       31 DUPCLOSURE                       R5 K16 [PROTO_4]
       32 SETTABLEKS                       R5 R3 K17 ["beginAnimation"]
       34 DUPCLOSURE                       R5 K18 [PROTO_5]
       35 SETTABLEKS                       R5 R3 K19 ["inProgress"]
       37 DUPCLOSURE                       R5 K20 [PROTO_6]
       38 SETTABLEKS                       R5 R3 K21 ["forceFinish"]
       40 RETURN                           R3 1
