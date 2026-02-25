PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K8 [{"cancelGenerationRequest", "createPartGroup", "getQuotasAsync", "generateTexture", "generationNotificationSignal", "previewNotificationSignal", "previewTexture"}]
        6 GETTABLEKS                       R3 R1 K1 ["cancelGenerationRequest"]
        8 SETTABLEKS                       R3 R2 K1 ["cancelGenerationRequest"]
       10 GETTABLEKS                       R3 R1 K2 ["createPartGroup"]
       12 SETTABLEKS                       R3 R2 K2 ["createPartGroup"]
       14 GETTABLEKS                       R3 R1 K3 ["getQuotasAsync"]
       16 SETTABLEKS                       R3 R2 K3 ["getQuotasAsync"]
       18 GETTABLEKS                       R3 R1 K4 ["generateTexture"]
       20 SETTABLEKS                       R3 R2 K4 ["generateTexture"]
       22 GETTABLEKS                       R3 R1 K5 ["generationNotificationSignal"]
       24 SETTABLEKS                       R3 R2 K5 ["generationNotificationSignal"]
       26 GETTABLEKS                       R3 R1 K6 ["previewNotificationSignal"]
       28 SETTABLEKS                       R3 R2 K6 ["previewNotificationSignal"]
       30 GETTABLEKS                       R3 R1 K7 ["previewTexture"]
       32 SETTABLEKS                       R3 R2 K7 ["previewTexture"]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K9 ["createElement"]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K10 ["Provider"]
       40 DUPTABLE                         R5 K12 [{"value"}]
       41 SETTABLEKS                       R2 R5 K11 ["value"]
       43 GETTABLEKS                       R6 R0 K13 ["children"]
       45 CALL                             R3 3 -1
       46 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Components"]
       20 GETTABLEKS                       R3 R4 K10 ["TextureGenerationServiceContext"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
