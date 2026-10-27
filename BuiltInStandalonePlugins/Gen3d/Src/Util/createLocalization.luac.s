PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K2 ["new"]
        9 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Gen3d"}]
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R3 K0 ["Studio.Gen3d.%*.%*"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R1 1
        9 DUPTABLE                         R2 K4 [{"getText"}]
       10 DUPCLOSURE                       R3 K5 [PROTO_1]
       11 SETTABLEKS                       R3 R2 K3 ["getText"]
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Resources"]
       18 GETTABLEKS                       R2 R2 K10 ["Localization"]
       20 GETTABLEKS                       R2 R2 K11 ["SourceStrings"]
       22 GETTABLEKS                       R3 R0 K8 ["Src"]
       24 GETTABLEKS                       R3 R3 K9 ["Resources"]
       26 GETTABLEKS                       R3 R3 K10 ["Localization"]
       28 GETTABLEKS                       R3 R3 K12 ["LocalizedStrings"]
       30 DUPCLOSURE                       R4 K13 [PROTO_2]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
