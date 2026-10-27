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
       15 DUPTABLE                         R0 K8 [{"getFIntAudioEqualizerEditorAnalyzerResolution", "getFFlagLoadAudioEqualizerEditorInAssetDM"}]
       16 DUPCLOSURE                       R1 K9 [PROTO_0]
       17 SETTABLEKS                       R1 R0 K6 ["getFIntAudioEqualizerEditorAnalyzerResolution"]
       19 DUPCLOSURE                       R1 K10 [PROTO_1]
       20 SETTABLEKS                       R1 R0 K7 ["getFFlagLoadAudioEqualizerEditorInAssetDM"]
       22 RETURN                           R0 1
