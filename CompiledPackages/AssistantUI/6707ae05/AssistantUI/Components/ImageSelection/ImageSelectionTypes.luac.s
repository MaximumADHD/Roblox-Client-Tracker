MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ImageSelection"]
       13 GETTABLEKS                       R2 R2 K8 ["ImageSelectionPicker"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K10 [{"ImageSelectionPhase"}]
       17 DUPTABLE                         R3 K13 [{["Form"] = "Form", ["Picker"] = "Picker"}]
       18 SETTABLEKS                       R3 R2 K9 ["ImageSelectionPhase"]
       20 RETURN                           R2 1
