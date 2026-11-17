MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./CreatorExperimentSettings"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["./EligibleGameFinderSettings"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K1 [require]
       17 LOADK                            R5 K6 ["./ExperimentLabels"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K1 [require]
       21 LOADK                            R6 K7 ["./GameStarterSettings"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K1 [require]
       25 LOADK                            R7 K8 ["./ScoringSettings"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R1 K9 ["object"]
       29 DUPTABLE                         R8 K16 [{"ScoringSettings", "RankedPolicyGroupIds", "EligibleGameFinderSettings", "GameStarterSettings", "CreatorExperimentSettings", "ExperimentLabels"}]
       30 SETTABLEKS                       R6 R8 K10 ["ScoringSettings"]
       32 GETTABLEKS                       R9 R1 K17 ["arrayOf"]
       34 GETTABLEKS                       R10 R1 K17 ["arrayOf"]
       36 GETTABLEKS                       R11 R1 K18 ["Int32"]
       38 CALL                             R10 1 -1
       39 CALL                             R9 -1 1
       40 SETTABLEKS                       R9 R8 K11 ["RankedPolicyGroupIds"]
       42 SETTABLEKS                       R3 R8 K12 ["EligibleGameFinderSettings"]
       44 SETTABLEKS                       R5 R8 K13 ["GameStarterSettings"]
       46 SETTABLEKS                       R2 R8 K14 ["CreatorExperimentSettings"]
       48 SETTABLEKS                       R4 R8 K15 ["ExperimentLabels"]
       50 CALL                             R7 1 -1
       51 RETURN                           R7 -1
