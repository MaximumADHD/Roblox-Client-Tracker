MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 DUPTABLE                         R3 K10 [{"Generating", "GenerationFailed", "GenerationSucceeded"}]
       15 LOADK                            R4 K7 ["Generating"]
       16 SETTABLEKS                       R4 R3 K7 ["Generating"]
       18 LOADK                            R4 K8 ["GenerationFailed"]
       19 SETTABLEKS                       R4 R3 K8 ["GenerationFailed"]
       21 LOADK                            R4 K9 ["GenerationSucceeded"]
       22 SETTABLEKS                       R4 R3 K9 ["GenerationSucceeded"]
       24 SETTABLEKS                       R3 R2 K11 ["PreviewStates"]
       26 RETURN                           R2 1
