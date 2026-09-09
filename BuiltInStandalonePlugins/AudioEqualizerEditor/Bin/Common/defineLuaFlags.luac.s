PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AudioEqualizerEditorAnalyzerResolution"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["LoadAudioEqualizerEditorInAssetDM"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AudioEqualizerZIndexFix"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AudioEqualizerEditorAnalyzerResolution"]
        4 LOADN                            R3 100
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["LoadAudioEqualizerEditorInAssetDM"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["AudioEqualizerZIndexFix"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 DUPTABLE                         R0 K10 [{"getFIntAudioEqualizerEditorAnalyzerResolution", "getFFlagLoadAudioEqualizerEditorInAssetDM", "getFFlagAudioEqualizerZIndexFix"}]
       23 DUPCLOSURE                       R1 K11 [PROTO_0]
       24 SETTABLEKS                       R1 R0 K7 ["getFIntAudioEqualizerEditorAnalyzerResolution"]
       26 DUPCLOSURE                       R1 K12 [PROTO_1]
       27 SETTABLEKS                       R1 R0 K8 ["getFFlagLoadAudioEqualizerEditorInAssetDM"]
       29 DUPCLOSURE                       R1 K13 [PROTO_2]
       30 SETTABLEKS                       R1 R0 K9 ["getFFlagAudioEqualizerZIndexFix"]
       32 RETURN                           R0 1
