PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+1]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K0 ["_calloutService"]
        7 GETTABLEKS                       R3 R1 K0 ["_calloutService"]
        9 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       11 LOADK                            R4 K1 ["CalloutController requires a CalloutService"]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R4 1
       16 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       18 MOVE                             R3 R1
       19 GETIMPORT                        R2 K5 [setmetatable]
       21 CALL                             R2 2 1
       22 RETURN                           R2 1

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
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["CalloutService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["ContextItem"]
       31 LOADK                            R8 K15 ["CalloutController"]
       32 NAMECALL                         R6 R5 K16 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K17 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R6
       38 SETTABLEKS                       R7 R6 K18 ["new"]
       40 DUPCLOSURE                       R7 K19 [PROTO_1]
       41 SETTABLEKS                       R7 R6 K20 ["destroy"]
       43 DUPCLOSURE                       R7 K21 [PROTO_2]
       44 SETTABLEKS                       R7 R6 K22 ["defineCallout"]
       46 DUPCLOSURE                       R7 K23 [PROTO_3]
       47 SETTABLEKS                       R7 R6 K24 ["attachCallout"]
       49 DUPCLOSURE                       R7 K25 [PROTO_4]
       50 SETTABLEKS                       R7 R6 K26 ["detachCalloutsByDefinitionId"]
       52 RETURN                           R6 1
