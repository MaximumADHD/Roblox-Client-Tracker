MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createUnimplemented"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 CALL                             R4 1 1
       30 DUPTABLE                         R5 K24 [{["session"] = , ["isGenerating"] = False, ["lastGeneratedPromptText"] = "", ["promptText"] = "", ["setPromptText"], ["errorMessage"] = , ["popError"], ["generateMaterialVariants"], ["uploadMaterialVariant"]}]
       31 MOVE                             R6 R3
       32 LOADK                            R7 K19 ["setPromptText"]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R5 K19 ["setPromptText"]
       36 MOVE                             R6 R3
       37 LOADK                            R7 K21 ["popError"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K21 ["popError"]
       41 MOVE                             R6 R3
       42 LOADK                            R7 K22 ["generateMaterialVariants"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K22 ["generateMaterialVariants"]
       46 MOVE                             R6 R3
       47 LOADK                            R7 K23 ["uploadMaterialVariant"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K23 ["uploadMaterialVariant"]
       51 GETTABLEKS                       R6 R1 K25 ["createContext"]
       53 MOVE                             R7 R5
       54 CALL                             R6 1 1
       55 RETURN                           R6 1
