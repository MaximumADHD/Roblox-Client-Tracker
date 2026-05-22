MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 2 0
       14 DUPTABLE                         R3 K11 [{"Preparing", "Generating", "GenerationFailed", "GenerationSucceeded"}]
       15 LOADK                            R4 K7 ["Preparing"]
       16 SETTABLEKS                       R4 R3 K7 ["Preparing"]
       18 LOADK                            R4 K8 ["Generating"]
       19 SETTABLEKS                       R4 R3 K8 ["Generating"]
       21 LOADK                            R4 K9 ["GenerationFailed"]
       22 SETTABLEKS                       R4 R3 K9 ["GenerationFailed"]
       24 LOADK                            R4 K10 ["GenerationSucceeded"]
       25 SETTABLEKS                       R4 R3 K10 ["GenerationSucceeded"]
       27 SETTABLEKS                       R3 R2 K12 ["PreviewStates"]
       29 DUPTABLE                         R3 K15 [{"NoRigSelected", "NoPromptProvided", "GenerationFailed"}]
       30 LOADK                            R4 K13 ["NoRigSelected"]
       31 SETTABLEKS                       R4 R3 K13 ["NoRigSelected"]
       33 LOADK                            R4 K14 ["NoPromptProvided"]
       34 SETTABLEKS                       R4 R3 K14 ["NoPromptProvided"]
       36 LOADK                            R4 K9 ["GenerationFailed"]
       37 SETTABLEKS                       R4 R3 K9 ["GenerationFailed"]
       39 SETTABLEKS                       R3 R2 K16 ["FailureReasons"]
       41 RETURN                           R2 1
