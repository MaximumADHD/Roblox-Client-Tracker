PROTO_0:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["EngineFeatureAssistantEnableAnimationGeneration"]
        4 JUMPIFNOTEQKB                    R1 TRUE ; [+4]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantAnimationGenPluginGate"]
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1
