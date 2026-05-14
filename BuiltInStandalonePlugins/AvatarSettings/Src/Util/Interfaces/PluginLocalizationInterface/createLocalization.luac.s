PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["getText"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Localization"]
        3 GETTABLEKS                       R3 R3 K1 ["new"]
        5 DUPTABLE                         R4 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R5 1
        7 SETTABLEKS                       R5 R4 K2 ["stringResourceTable"]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K3 ["translationResourceTable"]
       12 LOADK                            R5 K6 ["AvatarSettings"]
       13 SETTABLEKS                       R5 R4 K4 ["pluginName"]
       15 CALL                             R3 1 1
       16 DUPTABLE                         R4 K8 [{"getText"}]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 SETTABLEKS                       R5 R4 K7 ["getText"]
       21 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Interfaces"]
       22 GETTABLEKS                       R3 R3 K11 ["InterfaceTypes"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K12 ["ContextServices"]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K13 ["Resources"]
       31 GETTABLEKS                       R4 R4 K14 ["Localization"]
       33 GETTABLEKS                       R4 R4 K15 ["SourceStrings"]
       35 GETTABLEKS                       R5 R0 K8 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Resources"]
       39 GETTABLEKS                       R5 R5 K14 ["Localization"]
       41 GETTABLEKS                       R5 R5 K16 ["LocalizedStrings"]
       43 DUPCLOSURE                       R6 K17 [PROTO_1]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 RETURN                           R6 1
