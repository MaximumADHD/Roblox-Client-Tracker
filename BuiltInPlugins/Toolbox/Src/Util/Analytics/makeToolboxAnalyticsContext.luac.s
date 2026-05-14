PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 LOADK                            R3 K1 ["studio"]
        4 LOADK                            R4 K2 ["Marketplace"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"AssetPreviewPlaySound", "AssetPreviewPauseSound", "AssetPreviewPlayVideo", "AssetPreviewPauseVideo"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["AssetPreviewPlaySound"]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["AssetPreviewPauseSound"]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K2 ["AssetPreviewPlayVideo"]
       10 GETUPVAL                         R2 0
       11 SETTABLEKS                       R2 R1 K3 ["AssetPreviewPauseVideo"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       20 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R5 K10 ["Util"]
       28 GETTABLEKS                       R5 R5 K8 ["Analytics"]
       30 GETTABLEKS                       R5 R5 K11 ["Senders"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K12 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R6 K13 [PROTO_2]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 RETURN                           R6 1
