PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K2 ["new"]
        7 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AnimationGraphEditor"}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K8 ["Src"]
       11 GETTABLEKS                       R2 R2 K9 ["Resources"]
       13 GETTABLEKS                       R2 R2 K1 ["Localization"]
       15 GETTABLEKS                       R2 R2 K10 ["SourceStrings"]
       17 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K8 ["Src"]
       22 GETTABLEKS                       R2 R2 K9 ["Resources"]
       24 GETTABLEKS                       R2 R2 K1 ["Localization"]
       26 GETTABLEKS                       R2 R2 K11 ["LocalizedStrings"]
       28 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       30 CALL                             R0 1 -1
       31 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R1
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K3 ["ContextServices"]
       23 GETTABLEKS                       R2 R2 K4 ["provide"]
       25 NEWTABLE                         R3 0 3
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K3 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K5 ["Plugin"]
       32 GETTABLEKS                       R4 R4 K6 ["new"]
       34 GETTABLEKS                       R5 R0 K5 ["Plugin"]
       36 CALL                             R4 1 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K3 ["ContextServices"]
       40 GETTABLEKS                       R5 R5 K7 ["Mouse"]
       42 GETTABLEKS                       R5 R5 K6 ["new"]
       44 GETTABLEKS                       R6 R0 K5 ["Plugin"]
       46 NAMECALL                         R6 R6 K8 ["GetMouse"]
       48 CALL                             R6 1 -1
       49 CALL                             R5 -1 1
       50 MOVE                             R6 R1
       51 SETLIST                          R3 R4 3 [1]
       53 DUPTABLE                         R4 K10 [{"ContextStack"}]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K11 ["createElement"]
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R6 R6 K9 ["ContextStack"]
       60 DUPTABLE                         R7 K13 [{"providers"}]
       61 NEWTABLE                         R8 0 3
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K11 ["createElement"]
       66 GETUPVAL                         R10 4
       67 GETTABLEKS                       R10 R10 K14 ["InstanceRegistryContext"]
       69 GETTABLEKS                       R10 R10 K15 ["Provider"]
       71 CALL                             R9 1 1
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K11 ["createElement"]
       75 GETUPVAL                         R11 4
       76 GETTABLEKS                       R11 R11 K16 ["NetworkingContext"]
       78 GETTABLEKS                       R11 R11 K17 ["EditableDataModelProvider"]
       80 CALL                             R10 1 1
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K11 ["createElement"]
       84 GETUPVAL                         R12 4
       85 GETTABLEKS                       R12 R12 K18 ["PreviewDataModelContexts"]
       87 CALL                             R11 1 -1
       88 SETLIST                          R8 R9 -1 [1]
       90 SETTABLEKS                       R8 R7 K12 ["providers"]
       92 CALL                             R5 2 1
       93 SETTABLEKS                       R5 R4 K9 ["ContextStack"]
       95 CALL                             R2 2 -1
       96 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K11 [PROTO_3]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 RETURN                           R5 1
