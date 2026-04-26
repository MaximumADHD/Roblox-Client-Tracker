PROTO_0:
        0 NEWTABLE                         R1 0 7
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K0 ["new"]
        7 GETTABLEKS                       R5 R0 K1 ["focus"]
        9 CALL                             R4 1 1
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R5 R6 K0 ["new"]
       13 GETTABLEKS                       R6 R0 K2 ["plugin"]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R6 R7 K0 ["new"]
       19 GETTABLEKS                       R7 R0 K2 ["plugin"]
       21 NAMECALL                         R7 R7 K3 ["GetMouse"]
       23 CALL                             R7 1 -1
       24 CALL                             R6 -1 1
       25 GETUPVAL                         R8 5
       26 GETTABLEKS                       R7 R8 K4 ["mock"]
       28 CALL                             R7 0 1
       29 GETUPVAL                         R9 6
       30 GETTABLEKS                       R8 R9 K0 ["new"]
       32 GETTABLEKS                       R9 R0 K5 ["design"]
       34 CALL                             R8 1 -1
       35 SETLIST                          R1 R2 -1 [1]
       37 GETUPVAL                         R3 7
       38 GETTABLEKS                       R2 R3 K6 ["provide"]
       40 MOVE                             R3 R1
       41 DUPTABLE                         R4 K8 [{"Child"}]
       42 GETUPVAL                         R6 8
       43 GETTABLEKS                       R5 R6 K9 ["createElement"]
       45 GETUPVAL                         R6 9
       46 MOVE                             R7 R0
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K7 ["Child"]
       50 CALL                             R2 2 -1
       51 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 DUPTABLE                         R2 K5 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K6 ["SourceStrings"]
        7 SETTABLEKS                       R3 R2 K1 ["stringResourceTable"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K7 ["LocalizedStrings"]
       12 SETTABLEKS                       R3 R2 K2 ["translationResourceTable"]
       14 LOADK                            R3 K8 ["Storybook"]
       15 SETTABLEKS                       R3 R2 K3 ["pluginName"]
       17 NEWTABLE                         R3 1 0
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K9 ["LOCALIZATION_PROJECT_NAME"]
       22 DUPTABLE                         R5 K10 [{"stringResourceTable", "translationResourceTable"}]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K6 ["SourceStrings"]
       26 SETTABLEKS                       R6 R5 K1 ["stringResourceTable"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K7 ["LocalizedStrings"]
       31 SETTABLEKS                       R6 R5 K2 ["translationResourceTable"]
       33 SETTABLE                         R5 R3 R4
       34 SETTABLEKS                       R3 R2 K4 ["libraries"]
       36 CALL                             R1 1 1
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K0 ["new"]
       40 CALL                             R2 0 1
       41 NEWCLOSURE                       R3 P0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          VAL R0
       52 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["ContextServices"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K9 ["Analytics"]
       25 GETTABLEKS                       R5 R3 K10 ["Design"]
       27 GETTABLEKS                       R6 R3 K11 ["Localization"]
       29 GETTABLEKS                       R7 R3 K12 ["Focus"]
       31 GETTABLEKS                       R8 R3 K13 ["Mouse"]
       33 GETTABLEKS                       R9 R3 K14 ["Plugin"]
       35 GETIMPORT                        R10 K6 [require]
       37 GETTABLEKS                       R12 R0 K15 ["Style"]
       39 GETTABLEKS                       R11 R12 K16 ["ThemeSwitcher"]
       41 CALL                             R10 1 1
       42 GETIMPORT                        R11 K6 [require]
       44 GETTABLEKS                       R12 R0 K17 ["Resources"]
       46 CALL                             R11 1 1
       47 DUPCLOSURE                       R12 K18 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R11
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 RETURN                           R12 1
