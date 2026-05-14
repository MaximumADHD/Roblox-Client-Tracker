PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["Localization"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 DUPTABLE                         R1 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K2 ["stringResourceTable"]
        9 GETUPVAL                         R2 3
       10 SETTABLEKS                       R2 R1 K3 ["translationResourceTable"]
       12 LOADK                            R2 K6 ["AudioActions"]
       13 SETTABLEKS                       R2 R1 K4 ["pluginName"]
       15 CALL                             R0 1 1
       16 SETUPVAL                         R0 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+7]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 NAMECALL                         R2 R2 K0 ["getText"]
        7 CALL                             R2 3 1
        8 RETURN                           R2 1
        9 MOVE                             R2 R1
       10 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+7]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["Action"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["getText"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+7]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["Tooltip"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["getText"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActions"]
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
       22 GETTABLEKS                       R3 R3 K12 ["LocalizedStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["SourceStrings"]
       32 LOADNIL                          R5
       33 NEWTABLE                         R6 4 0
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          REF R5
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R7 R6 K14 ["createLocalization"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          REF R5
       44 SETTABLEKS                       R7 R6 K15 ["getLocalized"]
       46 NEWCLOSURE                       R7 P2
       47 CAPTURE                          REF R5
       48 SETTABLEKS                       R7 R6 K16 ["action"]
       50 NEWCLOSURE                       R7 P3
       51 CAPTURE                          REF R5
       52 SETTABLEKS                       R7 R6 K17 ["tooltip"]
       54 CLOSEUPVALS                      R5
       55 RETURN                           R6 1
