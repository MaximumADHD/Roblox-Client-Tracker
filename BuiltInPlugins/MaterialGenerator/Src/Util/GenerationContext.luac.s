MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createUnimplemented"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Types"]
       29 CALL                             R4 1 1
       30 DUPTABLE                         R5 K21 [{"session", "isGenerating", "lastGeneratedPromptText", "promptText", "setPromptText", "errorMessage", "popError", "generateMaterialVariants", "uploadMaterialVariant"}]
       31 LOADNIL                          R6
       32 SETTABLEKS                       R6 R5 K12 ["session"]
       34 LOADB                            R6 0
       35 SETTABLEKS                       R6 R5 K13 ["isGenerating"]
       37 LOADK                            R6 K22 [""]
       38 SETTABLEKS                       R6 R5 K14 ["lastGeneratedPromptText"]
       40 LOADK                            R6 K22 [""]
       41 SETTABLEKS                       R6 R5 K15 ["promptText"]
       43 MOVE                             R6 R3
       44 LOADK                            R7 K16 ["setPromptText"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K16 ["setPromptText"]
       48 LOADNIL                          R6
       49 SETTABLEKS                       R6 R5 K17 ["errorMessage"]
       51 MOVE                             R6 R3
       52 LOADK                            R7 K18 ["popError"]
       53 CALL                             R6 1 1
       54 SETTABLEKS                       R6 R5 K18 ["popError"]
       56 MOVE                             R6 R3
       57 LOADK                            R7 K19 ["generateMaterialVariants"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K19 ["generateMaterialVariants"]
       61 MOVE                             R6 R3
       62 LOADK                            R7 K20 ["uploadMaterialVariant"]
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K20 ["uploadMaterialVariant"]
       66 GETTABLEKS                       R6 R1 K23 ["createContext"]
       68 MOVE                             R7 R5
       69 CALL                             R6 1 1
       70 RETURN                           R6 1
