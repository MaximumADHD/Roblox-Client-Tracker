PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableRIDE11651"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisRenderAttribution"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisBugfixesMay2026"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RIDE12959"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneManagerRemoveActive"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisMdiDataModelPicker"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableRIDE11651"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["SceneAnalysisRenderAttribution"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["SceneAnalysisBugfixesMay2026"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["RIDE12959"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["SceneManagerRemoveActive"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K8 ["SceneAnalysisMdiDataModelPicker"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 DUPTABLE                         R0 K15 [{"getFFlagEnableRIDE11651", "getFFlagSceneAnalysisRenderAttribution", "getFFlagSceneAnalysisBugfixesMay2026", "getFFlagRIDE12959", "getFFlagSceneManagerRemoveActive", "getFFlagSceneAnalysisMdiDataModelPicker"}]
       44 DUPCLOSURE                       R1 K16 [PROTO_0]
       45 SETTABLEKS                       R1 R0 K9 ["getFFlagEnableRIDE11651"]
       47 DUPCLOSURE                       R1 K17 [PROTO_1]
       48 SETTABLEKS                       R1 R0 K10 ["getFFlagSceneAnalysisRenderAttribution"]
       50 DUPCLOSURE                       R1 K18 [PROTO_2]
       51 SETTABLEKS                       R1 R0 K11 ["getFFlagSceneAnalysisBugfixesMay2026"]
       53 DUPCLOSURE                       R1 K19 [PROTO_3]
       54 SETTABLEKS                       R1 R0 K12 ["getFFlagRIDE12959"]
       56 DUPCLOSURE                       R1 K20 [PROTO_4]
       57 SETTABLEKS                       R1 R0 K13 ["getFFlagSceneManagerRemoveActive"]
       59 DUPCLOSURE                       R1 K21 [PROTO_5]
       60 SETTABLEKS                       R1 R0 K14 ["getFFlagSceneAnalysisMdiDataModelPicker"]
       62 RETURN                           R0 1
