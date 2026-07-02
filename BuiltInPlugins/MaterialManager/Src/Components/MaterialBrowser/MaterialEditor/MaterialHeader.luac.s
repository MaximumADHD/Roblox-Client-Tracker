PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchClearMaterial"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClose"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MaterialHeader"]
        6 GETTABLEKS                       R3 R1 K3 ["Material"]
        8 JUMPIF                           R3 ; [+6]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["createElement"]
       12 GETUPVAL                         R5 1
       13 CALL                             R4 1 -1
       14 RETURN                           R4 -1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["createElement"]
       18 GETUPVAL                         R5 1
       19 DUPTABLE                         R6 K7 [{"LayoutOrder", "Size"}]
       20 GETTABLEKS                       R7 R1 K5 ["LayoutOrder"]
       22 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       24 GETTABLEKS                       R7 R2 K8 ["HeaderSize"]
       26 SETTABLEKS                       R7 R6 K6 ["Size"]
       28 DUPTABLE                         R7 K11 [{"Preview", "Close"}]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K4 ["createElement"]
       32 GETUPVAL                         R9 2
       33 DUPTABLE                         R10 K18 [{["BackgroundColor"], ["DisableZoom"] = True, ["LayoutOrder"] = 1, ["Material"], ["MaterialVariant"], ["Position"]}]
       34 GETTABLEKS                       R11 R2 K19 ["HeaderBackground"]
       36 SETTABLEKS                       R11 R10 K12 ["BackgroundColor"]
       38 GETTABLEKS                       R11 R3 K3 ["Material"]
       40 SETTABLEKS                       R11 R10 K3 ["Material"]
       42 GETTABLEKS                       R11 R3 K16 ["MaterialVariant"]
       44 SETTABLEKS                       R11 R10 K16 ["MaterialVariant"]
       46 GETIMPORT                        R11 K22 [UDim2.fromOffset]
       48 LOADN                            R12 0
       49 LOADN                            R13 0
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K17 ["Position"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K9 ["Preview"]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K4 ["createElement"]
       59 GETUPVAL                         R9 3
       60 DUPTABLE                         R10 K27 [{["OnClick"], ["Position"], ["Size"], ["Style"], ["ZIndex"] = 2}]
       61 GETTABLEKS                       R11 R0 K28 ["onClose"]
       63 SETTABLEKS                       R11 R10 K23 ["OnClick"]
       65 GETTABLEKS                       R11 R2 K29 ["ButtonPosition"]
       67 SETTABLEKS                       R11 R10 K17 ["Position"]
       69 GETTABLEKS                       R11 R2 K30 ["ButtonSize"]
       71 SETTABLEKS                       R11 R10 K6 ["Size"]
       73 GETTABLEKS                       R11 R2 K31 ["ButtonStyle"]
       75 SETTABLEKS                       R11 R10 K24 ["Style"]
       77 DUPTABLE                         R11 K33 [{"Image"}]
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R12 R12 K4 ["createElement"]
       81 GETUPVAL                         R13 4
       82 DUPTABLE                         R14 K34 [{"Style", "Size", "Position"}]
       83 GETTABLEKS                       R15 R2 K10 ["Close"]
       85 SETTABLEKS                       R15 R14 K24 ["Style"]
       87 GETTABLEKS                       R15 R2 K35 ["ImageSize"]
       89 SETTABLEKS                       R15 R14 K6 ["Size"]
       91 GETTABLEKS                       R15 R2 K36 ["ImagePosition"]
       93 SETTABLEKS                       R15 R14 K17 ["Position"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K32 ["Image"]
       98 CALL                             R8 3 1
       99 SETTABLEKS                       R8 R7 K10 ["Close"]
      101 CALL                             R4 3 -1
      102 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"Material"}]
        1 GETTABLEKS                       R3 R1 K2 ["MockMaterial"]
        3 JUMPIF                           R3 ; [+4]
        4 GETTABLEKS                       R3 R0 K3 ["MaterialBrowserReducer"]
        6 GETTABLEKS                       R3 R3 K0 ["Material"]
        8 SETTABLEKS                       R3 R2 K0 ["Material"]
       10 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"dispatchClearMaterial"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchClearMaterial"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K11 ["Style"]
       43 GETTABLEKS                       R5 R5 K12 ["Stylizer"]
       45 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       47 GETTABLEKS                       R7 R6 K14 ["withContext"]
       49 GETTABLEKS                       R8 R6 K15 ["Analytics"]
       51 GETTABLEKS                       R9 R6 K16 ["Localization"]
       53 GETTABLEKS                       R10 R4 K17 ["UI"]
       55 GETTABLEKS                       R11 R10 K18 ["Button"]
       57 GETTABLEKS                       R12 R10 K19 ["Image"]
       59 GETTABLEKS                       R13 R10 K20 ["Pane"]
       61 GETIMPORT                        R14 K4 [require]
       63 GETTABLEKS                       R15 R0 K5 ["Src"]
       65 GETTABLEKS                       R15 R15 K21 ["Actions"]
       67 GETTABLEKS                       R15 R15 K22 ["ClearMaterial"]
       69 CALL                             R14 1 1
       70 GETIMPORT                        R15 K4 [require]
       72 GETTABLEKS                       R16 R0 K5 ["Src"]
       74 GETTABLEKS                       R16 R16 K23 ["Reducers"]
       76 GETTABLEKS                       R16 R16 K24 ["MainReducer"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K4 [require]
       81 GETTABLEKS                       R17 R0 K5 ["Src"]
       83 GETTABLEKS                       R17 R17 K25 ["Components"]
       85 GETTABLEKS                       R17 R17 K26 ["MaterialPreview"]
       87 CALL                             R16 1 1
       88 GETTABLEKS                       R17 R2 K27 ["PureComponent"]
       90 LOADK                            R19 K28 ["MaterialHeader"]
       91 NAMECALL                         R17 R17 K29 ["extend"]
       93 CALL                             R17 2 1
       94 DUPCLOSURE                       R18 K30 [PROTO_1]
       95 SETTABLEKS                       R18 R17 K31 ["init"]
       97 DUPCLOSURE                       R18 K32 [PROTO_2]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 SETTABLEKS                       R18 R17 K33 ["render"]
      105 MOVE                             R18 R7
      106 DUPTABLE                         R19 K34 [{"Analytics", "Localization", "Stylizer"}]
      107 SETTABLEKS                       R8 R19 K15 ["Analytics"]
      109 SETTABLEKS                       R9 R19 K16 ["Localization"]
      111 SETTABLEKS                       R5 R19 K12 ["Stylizer"]
      113 CALL                             R18 1 1
      114 MOVE                             R19 R17
      115 CALL                             R18 1 1
      116 MOVE                             R17 R18
      117 GETTABLEKS                       R18 R3 K35 ["connect"]
      119 DUPCLOSURE                       R19 K36 [PROTO_3]
      120 DUPCLOSURE                       R20 K37 [PROTO_5]
      121 CAPTURE                          VAL R14
      122 CALL                             R18 2 1
      123 MOVE                             R19 R17
      124 CALL                             R18 1 -1
      125 RETURN                           R18 -1
