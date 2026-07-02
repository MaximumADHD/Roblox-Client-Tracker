PROTO_0:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["No OptionSelectorGroupProvider found for OptionSelectorGroup"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["Orientation"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createContext"]
       23 DUPTABLE                         R5 K19 [{["value"] = , ["onValueChanged"], ["orientation"], ["Selectable"] = True, ["testId"] = ""}]
       24 DUPCLOSURE                       R6 K20 [PROTO_0]
       25 SETTABLEKS                       R6 R5 K13 ["onValueChanged"]
       27 GETTABLEKS                       R6 R3 K21 ["Vertical"]
       29 SETTABLEKS                       R6 R5 K14 ["orientation"]
       31 CALL                             R4 1 -1
       32 RETURN                           R4 -1
