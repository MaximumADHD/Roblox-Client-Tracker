PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Localization"]
        3 GETTABLEKS                       R2 R3 K1 ["new"]
        5 DUPTABLE                         R3 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       12 LOADK                            R4 K6 ["InternalAvatarTools"]
       13 SETTABLEKS                       R4 R3 K4 ["pluginName"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K7 ["localization"]
       18 DUPTABLE                         R4 K9 [{"promptExportNonAccessoryOpen"}]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K8 ["promptExportNonAccessoryOpen"]
       22 NAMECALL                         R2 R0 K10 ["setState"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R2 K1 [{"promptExportNonAccessoryOpen"}]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K0 ["promptExportNonAccessoryOpen"]
        8 NAMECALL                         R0 R0 K2 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 DUPTABLE                         R2 K1 [{"promptExportNonAccessoryOpen"}]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K0 ["promptExportNonAccessoryOpen"]
        8 NAMECALL                         R0 R0 K2 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"promptExportNonAccessoryOpen"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["promptExportNonAccessoryOpen"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["provide"]
        7 NEWTABLE                         R4 0 4
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["new"]
       12 MOVE                             R6 R2
       13 CALL                             R5 1 1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K3 ["new"]
       17 NAMECALL                         R7 R2 K4 ["getMouse"]
       19 CALL                             R7 1 -1
       20 CALL                             R6 -1 1
       21 GETUPVAL                         R7 3
       22 CALL                             R7 0 1
       23 GETTABLEKS                       R8 R0 K5 ["localization"]
       25 SETLIST                          R4 R5 4 [1]
       27 DUPTABLE                         R5 K8 [{"Toolbar", "PromptExportNonAccessory"}]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R6 R7 K9 ["createElement"]
       31 GETUPVAL                         R7 5
       32 DUPTABLE                         R8 K11 [{"onExportClicked"}]
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R9 R8 K10 ["onExportClicked"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K6 ["Toolbar"]
       43 GETTABLEKS                       R7 R0 K12 ["state"]
       45 GETTABLEKS                       R6 R7 K13 ["promptExportNonAccessoryOpen"]
       47 JUMPIFNOT                        R6 ; [+16]
       48 GETUPVAL                         R7 4
       49 GETTABLEKS                       R6 R7 K9 ["createElement"]
       51 GETUPVAL                         R7 8
       52 DUPTABLE                         R8 K16 [{"onConfirm", "onCancel"}]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R9 R8 K14 ["onConfirm"]
       59 NEWCLOSURE                       R9 P2
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R9 R8 K15 ["onCancel"]
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K7 ["PromptExportNonAccessory"]
       66 CALL                             R3 2 -1
       67 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K9 ["Plugin"]
       25 GETTABLEKS                       R5 R3 K10 ["Mouse"]
       27 GETIMPORT                        R6 K4 [require]
       29 GETTABLEKS                       R9 R0 K11 ["Src"]
       31 GETTABLEKS                       R8 R9 K12 ["Resources"]
       33 GETTABLEKS                       R7 R8 K13 ["MakeTheme"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R10 R0 K11 ["Src"]
       40 GETTABLEKS                       R9 R10 K14 ["Components"]
       42 GETTABLEKS                       R8 R9 K15 ["Toolbar"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R11 R0 K11 ["Src"]
       49 GETTABLEKS                       R10 R11 K14 ["Components"]
       51 GETTABLEKS                       R9 R10 K16 ["PromptExportNonAccessory"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R12 R0 K11 ["Src"]
       56 GETTABLEKS                       R11 R12 K12 ["Resources"]
       58 GETTABLEKS                       R10 R11 K17 ["Localization"]
       60 GETTABLEKS                       R9 R10 K18 ["SourceStrings"]
       62 GETTABLEKS                       R13 R0 K11 ["Src"]
       64 GETTABLEKS                       R12 R13 K12 ["Resources"]
       66 GETTABLEKS                       R11 R12 K17 ["Localization"]
       68 GETTABLEKS                       R10 R11 K19 ["LocalizedStrings"]
       70 GETIMPORT                        R11 K4 [require]
       72 GETTABLEKS                       R14 R0 K11 ["Src"]
       74 GETTABLEKS                       R13 R14 K20 ["Functions"]
       76 GETTABLEKS                       R12 R13 K21 ["NonAccessoriesSelected"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K4 [require]
       81 GETTABLEKS                       R15 R0 K11 ["Src"]
       83 GETTABLEKS                       R14 R15 K20 ["Functions"]
       85 GETTABLEKS                       R13 R14 K22 ["Export"]
       87 CALL                             R12 1 1
       88 GETTABLEKS                       R13 R1 K23 ["PureComponent"]
       90 LOADK                            R15 K24 ["MainPlugin"]
       91 NAMECALL                         R13 R13 K25 ["extend"]
       93 CALL                             R13 2 1
       94 DUPCLOSURE                       R14 K26 [PROTO_0]
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R10
       98 SETTABLEKS                       R14 R13 K27 ["init"]
      100 DUPCLOSURE                       R14 K28 [PROTO_4]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R8
      110 SETTABLEKS                       R14 R13 K29 ["render"]
      112 RETURN                           R13 1
