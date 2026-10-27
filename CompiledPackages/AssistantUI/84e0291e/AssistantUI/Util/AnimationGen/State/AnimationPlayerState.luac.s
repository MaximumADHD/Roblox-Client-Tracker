PROTO_0:
        0 DUPTABLE                         R1 K2 [{"keyframeSequence", "isUpscale"}]
        1 GETTABLEKS                       R2 R0 K0 ["keyframeSequence"]
        3 SETTABLEKS                       R2 R1 K0 ["keyframeSequence"]
        5 GETTABLEKS                       R2 R0 K1 ["isUpscale"]
        7 SETTABLEKS                       R2 R1 K1 ["isUpscale"]
        9 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K6 [{[1], ["isUpscale"], ["rig"], ["needsReload"] = True, ["cache"]}]
        1 GETTABLEKS                       R3 R0 K0 ["keyframeSequence"]
        3 SETTABLEKS                       R3 R2 K0 ["keyframeSequence"]
        5 GETTABLEKS                       R3 R0 K1 ["isUpscale"]
        7 SETTABLEKS                       R3 R2 K1 ["isUpscale"]
        9 SETTABLEKS                       R1 R2 K2 ["rig"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K5 ["cache"]
       15 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"content", "undoSafeKeyframeSequence", "useEditPreview"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["getContent"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["content"]
        8 GETTABLEKS                       R2 R0 K1 ["undoSafeKeyframeSequence"]
       10 SETTABLEKS                       R2 R1 K1 ["undoSafeKeyframeSequence"]
       12 GETTABLEKS                       R2 R0 K2 ["useEditPreview"]
       14 SETTABLEKS                       R2 R1 K2 ["useEditPreview"]
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 GETTABLEKS                       R3 R0 K1 ["content"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R0 K2 ["undoSafeKeyframeSequence"]
        9 SETTABLEKS                       R3 R2 K2 ["undoSafeKeyframeSequence"]
       11 GETTABLEKS                       R3 R0 K3 ["useEditPreview"]
       13 SETTABLEKS                       R3 R2 K3 ["useEditPreview"]
       15 RETURN                           R2 1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 NAMECALL                         R1 R0 K0 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["cache"]
        2 GETTABLEKS                       R2 R1 K1 ["editPreviewSequence"]
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 NAMECALL                         R3 R2 K2 ["Destroy"]
        8 CALL                             R3 1 0
        9 GETTABLEKS                       R2 R1 K3 ["composedReachSequence"]
       11 JUMPIFEQKNIL                     R2 ; [+4]
       13 NAMECALL                         R3 R2 K2 ["Destroy"]
       15 CALL                             R3 1 0
       16 GETIMPORT                        R2 K6 [table.clear]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFEQKNIL                     R3 ; [+6]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["disposeCache"]
        6 MOVE                             R5 R3
        7 CALL                             R4 1 0
        8 SETTABLE                         R2 R0 R1
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["State"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimationContent"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K10 ["HostTypes"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 8 0
       29 DUPCLOSURE                       R4 K11 [PROTO_0]
       30 SETTABLEKS                       R4 R3 K12 ["getContent"]
       32 DUPCLOSURE                       R4 K13 [PROTO_1]
       33 SETTABLEKS                       R4 R3 K14 ["create"]
       35 DUPCLOSURE                       R4 K15 [PROTO_2]
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R3 K16 ["capture"]
       39 DUPCLOSURE                       R4 K17 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R4 R3 K18 ["restore"]
       43 DUPCLOSURE                       R4 K19 [PROTO_4]
       44 DUPCLOSURE                       R5 K20 [PROTO_5]
       45 SETTABLEKS                       R5 R3 K21 ["disposeCache"]
       47 DUPCLOSURE                       R5 K22 [PROTO_6]
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R5 R3 K23 ["replace"]
       51 RETURN                           R3 1
