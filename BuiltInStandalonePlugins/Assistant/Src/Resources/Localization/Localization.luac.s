PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["Localization"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 DUPTABLE                         R1 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Assistant"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K2 ["stringResourceTable"]
        9 GETUPVAL                         R2 3
       10 SETTABLEKS                       R2 R1 K3 ["translationResourceTable"]
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["Localization"]
       22 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       32 LOADNIL                          R5
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          REF R5
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 FASTPCALL                        pcall 1 ; [+2]
       39 GETIMPORT                        R6 K15 [pcall]
       41 CALL                             R6 1 0
       42 JUMPIF                           R5 ; [+5]
       43 DUPTABLE                         R6 K17 [{"getText"}]
       44 DUPCLOSURE                       R7 K18 [PROTO_1]
       45 SETTABLEKS                       R7 R6 K16 ["getText"]
       47 MOVE                             R5 R6
       48 CLOSEUPVALS                      R5
       49 RETURN                           R5 1
