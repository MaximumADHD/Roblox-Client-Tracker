PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 DUPTABLE                         R1 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["stringResourceTable"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["translationResourceTable"]
       12 LOADK                            R2 K6 ["Notifications"]
       13 SETTABLEKS                       R2 R1 K4 ["pluginName"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       18 GETTABLEKS                       R6 R0 K8 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Resources"]
       22 GETTABLEKS                       R4 R5 K10 ["Localization"]
       24 GETTABLEKS                       R3 R4 K11 ["SourceStrings"]
       26 GETTABLEKS                       R7 R0 K8 ["Src"]
       28 GETTABLEKS                       R6 R7 K9 ["Resources"]
       30 GETTABLEKS                       R5 R6 K10 ["Localization"]
       32 GETTABLEKS                       R4 R5 K12 ["LocalizedStrings"]
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 RETURN                           R5 1
