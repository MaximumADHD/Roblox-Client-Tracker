PROTO_0:
        0 GETUPVAL                         R2 1
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 DUPTABLE                         R1 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K2 ["stringResourceTable"]
        9 GETUPVAL                         R2 3
       10 SETTABLEKS                       R2 R1 K3 ["translationResourceTable"]
       12 LOADK                            R2 K6 ["StreamingServiceDispatcherRegistry"]
       13 SETTABLEKS                       R2 R1 K4 ["pluginName"]
       15 CALL                             R0 1 1
       16 SETUPVAL                         R0 0
       17 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R6 R0 K9 ["Src"]
       18 GETTABLEKS                       R5 R6 K10 ["Resources"]
       20 GETTABLEKS                       R4 R5 K11 ["Localization"]
       22 GETTABLEKS                       R3 R4 K12 ["SourceStrings"]
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Resources"]
       28 GETTABLEKS                       R5 R6 K11 ["Localization"]
       30 GETTABLEKS                       R4 R5 K13 ["LocalizedStrings"]
       32 LOADNIL                          R5
       33 GETIMPORT                        R6 K15 [pcall]
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          REF R5
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CALL                             R6 1 0
       41 JUMPIF                           R5 ; [+5]
       42 DUPTABLE                         R6 K17 [{"getText"}]
       43 DUPCLOSURE                       R7 K18 [PROTO_1]
       44 SETTABLEKS                       R7 R6 K16 ["getText"]
       46 MOVE                             R5 R6
       47 CLOSEUPVALS                      R5
       48 RETURN                           R5 1
