PROTO_0:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 DUPTABLE                         R2 K5 [{"Label", "HidesDialog"}]
        3 DUPTABLE                         R3 K9 [{"Project", "Scope", "Key"}]
        4 GETUPVAL                         R4 0
        5 SETTABLEKS                       R4 R3 K6 ["Project"]
        7 LOADK                            R4 K10 ["DialogAction"]
        8 SETTABLEKS                       R4 R3 K7 ["Scope"]
       10 SETTABLEKS                       R0 R3 K8 ["Key"]
       12 SETTABLEKS                       R3 R2 K3 ["Label"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K4 ["HidesDialog"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Util"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Resources"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["LOCALIZATION_PROJECT_NAME"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 DUPTABLE                         R4 K16 [{"YES", "NO", "OK", "CANCEL", "CLOSE", "SAVE"}]
       19 MOVE                             R5 R3
       20 LOADK                            R6 K17 ["Yes"]
       21 CALL                             R5 1 1
       22 SETTABLEKS                       R5 R4 K10 ["YES"]
       24 MOVE                             R5 R3
       25 LOADK                            R6 K18 ["No"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K11 ["NO"]
       29 MOVE                             R5 R3
       30 LOADK                            R6 K12 ["OK"]
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R4 K12 ["OK"]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K19 ["Cancel"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K13 ["CANCEL"]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K20 ["Close"]
       41 CALL                             R5 1 1
       42 SETTABLEKS                       R5 R4 K14 ["CLOSE"]
       44 MOVE                             R5 R3
       45 LOADK                            R6 K21 ["Save"]
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K15 ["SAVE"]
       49 RETURN                           R4 1
