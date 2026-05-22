PROTO_0:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["No RadioGroupProvider found for RadioGroup"]
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
       14 GETTABLEKS                       R3 R2 K8 ["createContext"]
       16 DUPTABLE                         R4 K13 [{"value", "onValueChanged", "Selectable", "testId"}]
       17 LOADNIL                          R5
       18 SETTABLEKS                       R5 R4 K9 ["value"]
       20 DUPCLOSURE                       R5 K14 [PROTO_0]
       21 SETTABLEKS                       R5 R4 K10 ["onValueChanged"]
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K11 ["Selectable"]
       26 LOADK                            R5 K15 [""]
       27 SETTABLEKS                       R5 R4 K12 ["testId"]
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1
