PROTO_0:
        0 NEWTABLE                         R1 0 7
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["new"]
       10 GETTABLEKS                       R5 R0 K2 ["focus"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K1 ["new"]
       16 GETTABLEKS                       R6 R0 K3 ["plugin"]
       18 NAMECALL                         R6 R6 K4 ["GetMouse"]
       20 CALL                             R6 1 -1
       21 CALL                             R5 -1 1
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R6 R6 K1 ["new"]
       25 GETTABLEKS                       R7 R0 K3 ["plugin"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K1 ["new"]
       31 CALL                             R7 0 1
       32 GETUPVAL                         R8 6
       33 GETTABLEKS                       R8 R8 K1 ["new"]
       35 CALL                             R8 0 -1
       36 SETLIST                          R1 R2 -1 [1]
       38 GETUPVAL                         R2 7
       39 GETTABLEKS                       R2 R2 K5 ["provide"]
       41 MOVE                             R3 R1
       42 DUPTABLE                         R4 K7 [{"Child"}]
       43 GETUPVAL                         R5 8
       44 GETTABLEKS                       R5 R5 K8 ["createElement"]
       46 GETUPVAL                         R6 9
       47 MOVE                             R7 R0
       48 CALL                             R5 2 1
       49 SETTABLEKS                       R5 R4 K6 ["Child"]
       51 CALL                             R2 2 -1
       52 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K5 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K6 ["SourceStrings"]
        7 SETTABLEKS                       R3 R2 K1 ["stringResourceTable"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K7 ["LocalizedStrings"]
       12 SETTABLEKS                       R3 R2 K2 ["translationResourceTable"]
       14 LOADK                            R3 K8 ["Storybook"]
       15 SETTABLEKS                       R3 R2 K3 ["pluginName"]
       17 NEWTABLE                         R3 1 0
       19 GETUPVAL                         R4 2
       20 DUPTABLE                         R5 K9 [{"stringResourceTable", "translationResourceTable"}]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K6 ["SourceStrings"]
       24 SETTABLEKS                       R6 R5 K1 ["stringResourceTable"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["LocalizedStrings"]
       29 SETTABLEKS                       R6 R5 K2 ["translationResourceTable"]
       31 SETTABLE                         R5 R3 R4
       32 SETTABLEKS                       R3 R2 K4 ["libraries"]
       34 CALL                             R1 1 1
       35 NEWCLOSURE                       R2 P0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U9
       44 CAPTURE                          UPVAL U10
       45 CAPTURE                          VAL R0
       46 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K8 ["Analytics"]
       23 GETTABLEKS                       R6 R4 K9 ["Focus"]
       25 GETTABLEKS                       R7 R4 K10 ["Localization"]
       27 GETTABLEKS                       R8 R4 K11 ["Mouse"]
       29 GETTABLEKS                       R9 R4 K12 ["Plugin"]
       31 GETIMPORT                        R10 K4 [require]
       33 GETTABLEKS                       R11 R0 K13 ["Resources"]
       35 CALL                             R10 1 1
       36 GETTABLEKS                       R11 R10 K14 ["LOCALIZATION_PROJECT_NAME"]
       38 GETTABLEKS                       R12 R10 K15 ["Theme"]
       40 GETIMPORT                        R13 K4 [require]
       42 GETTABLEKS                       R14 R0 K16 ["Context"]
       44 GETTABLEKS                       R14 R14 K17 ["StudioServices"]
       46 CALL                             R13 1 1
       47 DUPCLOSURE                       R14 K18 [PROTO_1]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R10
       50 CAPTURE                          VAL R11
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R13
       56 CAPTURE                          VAL R12
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 RETURN                           R14 1
