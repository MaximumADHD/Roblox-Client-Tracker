PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+6]
        4 GETIMPORT                        R2 K1 [game]
        6 LOADK                            R4 K2 ["CalloutService"]
        7 NAMECALL                         R2 R2 K3 ["GetService"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K4 ["_calloutService"]
       12 GETTABLEKS                       R3 R1 K4 ["_calloutService"]
       14 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       16 LOADK                            R4 K5 ["CalloutController requires a CalloutService"]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R4 0
       21 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K9 [setmetatable]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

PROTO_1:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_calloutService"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R5 R0 K0 ["_calloutService"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 MOVE                             R10 R4
        6 NAMECALL                         R5 R5 K1 ["DefineCallout"]
        8 CALL                             R5 5 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_calloutService"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R4 R4 K1 ["AttachCallout"]
        7 CALL                             R4 4 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_calloutService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["DetachCalloutsByDefinitionId"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 LOADK                            R6 K10 ["CalloutController"]
       19 NAMECALL                         R4 R3 K11 ["extend"]
       21 CALL                             R4 2 1
       22 DUPCLOSURE                       R5 K12 [PROTO_0]
       23 CAPTURE                          VAL R4
       24 SETTABLEKS                       R5 R4 K13 ["new"]
       26 DUPCLOSURE                       R5 K14 [PROTO_1]
       27 SETTABLEKS                       R5 R4 K15 ["destroy"]
       29 DUPCLOSURE                       R5 K16 [PROTO_2]
       30 SETTABLEKS                       R5 R4 K17 ["defineCallout"]
       32 DUPCLOSURE                       R5 K18 [PROTO_3]
       33 SETTABLEKS                       R5 R4 K19 ["attachCallout"]
       35 DUPCLOSURE                       R5 K20 [PROTO_4]
       36 SETTABLEKS                       R5 R4 K21 ["detachCalloutsByDefinitionId"]
       38 RETURN                           R4 1
