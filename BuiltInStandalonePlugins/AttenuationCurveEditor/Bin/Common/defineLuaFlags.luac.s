PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["LoadAttenuationCurveEditorInAssetDM"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AudioEmitterDistanceAttenuationMaxPoints"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LoadAttenuationCurveEditorInAssetDM"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["AudioEmitterDistanceAttenuationMaxPoints"]
       11 LOADN                            R3 144
       12 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["ImprovedCursors"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 DUPTABLE                         R0 K9 [{"getFFlagLoadAttenuationCurveEditorInAssetDM", "getFIntDistanceAttenuationMaxPoints"}]
       23 DUPCLOSURE                       R1 K10 [PROTO_0]
       24 SETTABLEKS                       R1 R0 K7 ["getFFlagLoadAttenuationCurveEditorInAssetDM"]
       26 DUPCLOSURE                       R1 K11 [PROTO_1]
       27 SETTABLEKS                       R1 R0 K8 ["getFIntDistanceAttenuationMaxPoints"]
       29 RETURN                           R0 1
