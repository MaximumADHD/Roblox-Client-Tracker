PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["KnowledgeTutorialsFixSpotlightCleanup"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["KnowledgeTutorialsAvoidHanging"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["KnowledgeTutorialsAssetScanMaxMs"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["KnowledgeTutorialsFixSpotlightCleanup"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["KnowledgeTutorialsAvoidHanging"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["KnowledgeTutorialsAssetScanMaxMs"]
       18 LOADN                            R3 5
       19 NAMECALL                         R0 R0 K6 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 DUPTABLE                         R0 K10 [{"getFFlagKnowledgeTutorialsFixSpotlightCleanup", "getFFlagKnowledgeTutorialsAvoidHanging", "getFIntKnowledgeTutorialsAssetScanMaxMs"}]
       23 DUPCLOSURE                       R1 K11 [PROTO_0]
       24 SETTABLEKS                       R1 R0 K7 ["getFFlagKnowledgeTutorialsFixSpotlightCleanup"]
       26 DUPCLOSURE                       R1 K12 [PROTO_1]
       27 SETTABLEKS                       R1 R0 K8 ["getFFlagKnowledgeTutorialsAvoidHanging"]
       29 DUPCLOSURE                       R1 K13 [PROTO_2]
       30 SETTABLEKS                       R1 R0 K9 ["getFIntKnowledgeTutorialsAssetScanMaxMs"]
       32 RETURN                           R0 1
