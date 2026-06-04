PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableRIDE11651"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RegisterActionsPluginLoader"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisRenderAttribution"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisBugfixesMay2026"]
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
       22 DUPTABLE                         R0 K10 [{"getFFlagEnableRIDE11651", "getFFlagRegisterActionsPluginLoader", "getFFlagSceneAnalysisRenderAttribution", "getFFlagSceneAnalysisBugfixesMay2026"}]
       23 DUPCLOSURE                       R1 K11 [PROTO_0]
       24 SETTABLEKS                       R1 R0 K6 ["getFFlagEnableRIDE11651"]
       26 DUPCLOSURE                       R1 K12 [PROTO_1]
       27 SETTABLEKS                       R1 R0 K7 ["getFFlagRegisterActionsPluginLoader"]
       29 DUPCLOSURE                       R1 K13 [PROTO_2]
       30 SETTABLEKS                       R1 R0 K8 ["getFFlagSceneAnalysisRenderAttribution"]
       32 DUPCLOSURE                       R1 K14 [PROTO_3]
       33 SETTABLEKS                       R1 R0 K9 ["getFFlagSceneAnalysisBugfixesMay2026"]
       35 RETURN                           R0 1
