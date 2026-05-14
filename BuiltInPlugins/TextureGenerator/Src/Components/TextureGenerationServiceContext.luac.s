PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["TextureGenerationService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["CancelGenerationRequest"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R0 K0 ["abcd"]
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K0 ["CreatePartGroup"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 DUPTABLE                         R1 K3 [{"meshParts", "GetMeshIdsHash"}]
        9 SETTABLEKS                       R0 R1 K1 ["meshParts"]
       11 DUPCLOSURE                       R2 K4 [PROTO_2]
       12 SETTABLEKS                       R2 R1 K2 ["GetMeshIdsHash"]
       14 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["GetQuotasAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1
        7 DUPTABLE                         R0 K5 [{"generationQuota", "generationTotal", "previewQuota", "previewTotal"}]
        8 LOADN                            R1 50
        9 SETTABLEKS                       R1 R0 K1 ["generationQuota"]
       11 LOADN                            R1 0
       12 SETTABLEKS                       R1 R0 K2 ["generationTotal"]
       14 LOADN                            R1 50
       15 SETTABLEKS                       R1 R0 K3 ["previewQuota"]
       17 LOADN                            R1 0
       18 SETTABLEKS                       R1 R0 K4 ["previewTotal"]
       20 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K0 ["GenerateTexture"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 DUPTABLE                         R1 K2 [{"uuid"}]
        9 LOADK                            R2 K3 ["1234"]
       10 SETTABLEKS                       R2 R1 K1 ["uuid"]
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["GenerationNotificationSignal"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["new"]
        9 CALL                             R0 0 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["PreviewNotificationSignal"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["new"]
        9 CALL                             R0 0 -1
       10 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+8]
        2 GETUPVAL                         R3 1
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K0 ["PreviewTexture"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1
       10 DUPTABLE                         R3 K2 [{"uuid"}]
       11 LOADK                            R4 K3 ["1234"]
       12 SETTABLEKS                       R4 R3 K1 ["uuid"]
       14 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [pcall]
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CALL                             R3 1 2
       25 DUPTABLE                         R5 K19 [{"cancelGenerationRequest", "createPartGroup", "getQuotasAsync", "generateTexture", "generationNotificationSignal", "previewNotificationSignal", "previewTexture"}]
       26 DUPCLOSURE                       R6 K20 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R6 R5 K12 ["cancelGenerationRequest"]
       31 DUPCLOSURE                       R6 K21 [PROTO_3]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R6 R5 K13 ["createPartGroup"]
       36 DUPCLOSURE                       R6 K22 [PROTO_4]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R5 K14 ["getQuotasAsync"]
       41 DUPCLOSURE                       R6 K23 [PROTO_5]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R6 R5 K15 ["generateTexture"]
       46 DUPCLOSURE                       R6 K24 [PROTO_6]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R6 R5 K16 ["generationNotificationSignal"]
       52 DUPCLOSURE                       R6 K25 [PROTO_7]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R6 R5 K17 ["previewNotificationSignal"]
       58 DUPCLOSURE                       R6 K26 [PROTO_8]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R6 R5 K18 ["previewTexture"]
       63 GETTABLEKS                       R6 R1 K27 ["createContext"]
       65 MOVE                             R7 R5
       66 CALL                             R6 1 1
       67 RETURN                           R6 1
