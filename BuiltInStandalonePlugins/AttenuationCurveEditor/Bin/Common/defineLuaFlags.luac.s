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

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FixAttenuationCurveEditorNilInputCrash"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
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
       11 LOADN                            R3 400
       12 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["ImprovedCursors"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K7 ["FixAttenuationCurveEditorNilInputCrash"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 DUPTABLE                         R0 K11 [{"getFFlagLoadAttenuationCurveEditorInAssetDM", "getFIntDistanceAttenuationMaxPoints", "getFFlagFixAttenuationCurveEditorNilInputCrash"}]
       30 DUPCLOSURE                       R1 K12 [PROTO_0]
       31 SETTABLEKS                       R1 R0 K8 ["getFFlagLoadAttenuationCurveEditorInAssetDM"]
       33 DUPCLOSURE                       R1 K13 [PROTO_1]
       34 SETTABLEKS                       R1 R0 K9 ["getFIntDistanceAttenuationMaxPoints"]
       36 DUPCLOSURE                       R1 K14 [PROTO_2]
       37 SETTABLEKS                       R1 R0 K10 ["getFFlagFixAttenuationCurveEditorNilInputCrash"]
       39 RETURN                           R0 1
