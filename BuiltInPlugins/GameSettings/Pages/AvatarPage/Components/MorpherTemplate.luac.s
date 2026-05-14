PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K9 [{"ThemeData", "LayoutOrder", "template", "StateTemplates", "IsEnabled", "IsGameShutdownRequired", "AssetOverrideErrors", "Mouse", "clobberTemplate"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K10 ["props"]
        4 GETTABLEKS                       R1 R1 K0 ["ThemeData"]
        6 SETTABLEKS                       R1 R0 K0 ["ThemeData"]
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K11 ["getNextOrder"]
       11 CALL                             R1 1 1
       12 SETTABLEKS                       R1 R0 K1 ["LayoutOrder"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K10 ["props"]
       17 GETTABLEKS                       R1 R1 K2 ["template"]
       19 SETTABLEKS                       R1 R0 K2 ["template"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K10 ["props"]
       24 GETTABLEKS                       R1 R1 K3 ["StateTemplates"]
       26 SETTABLEKS                       R1 R0 K3 ["StateTemplates"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K10 ["props"]
       31 GETTABLEKS                       R1 R1 K4 ["IsEnabled"]
       33 SETTABLEKS                       R1 R0 K4 ["IsEnabled"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K10 ["props"]
       38 GETTABLEKS                       R1 R1 K5 ["IsGameShutdownRequired"]
       40 SETTABLEKS                       R1 R0 K5 ["IsGameShutdownRequired"]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K10 ["props"]
       45 GETTABLEKS                       R1 R1 K6 ["AssetOverrideErrors"]
       47 SETTABLEKS                       R1 R0 K6 ["AssetOverrideErrors"]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K10 ["props"]
       52 GETTABLEKS                       R1 R1 K7 ["Mouse"]
       54 SETTABLEKS                       R1 R0 K7 ["Mouse"]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K10 ["props"]
       59 GETTABLEKS                       R1 R1 K8 ["clobberTemplate"]
       61 SETTABLEKS                       R1 R0 K8 ["clobberTemplate"]
       63 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["props"]
        5 GETTABLEKS                       R1 R1 K1 ["IsPlacePublished"]
        7 SETTABLEKS                       R1 R0 K2 ["IsEnabled"]
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["frameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 GETIMPORT                        R2 K4 [UDim2.new]
        7 LOADN                            R3 1
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 GETTABLEKS                       R6 R0 K5 ["AbsoluteContentSize"]
       12 GETTABLEKS                       R6 R6 K6 ["y"]
       14 CALL                             R2 4 1
       15 SETTABLEKS                       R2 R1 K7 ["Size"]
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K1 ["createElement"]
       13 LOADK                            R5 K2 ["Frame"]
       14 NEWTABLE                         R6 4 0
       16 GETIMPORT                        R7 K4 [UDim2.new]
       18 LOADN                            R8 1
       19 LOADN                            R9 0
       20 LOADN                            R10 1
       21 LOADN                            R11 0
       22 CALL                             R7 4 1
       23 SETTABLEKS                       R7 R6 K5 ["Size"]
       25 LOADN                            R7 0
       26 SETTABLEKS                       R7 R6 K6 ["BorderSizePixel"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K7 ["getBackgroundColor"]
       31 GETTABLEKS                       R8 R0 K8 ["props"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K9 ["BackgroundColor3"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K10 ["Ref"]
       39 GETTABLEKS                       R8 R0 K11 ["frameRef"]
       41 SETTABLE                         R8 R6 R7
       42 DUPTABLE                         R7 K20 [{"UIListLayoutVertical", "PublishingHint", "PresetsPanel", "AvatarTypePanel", "AnimationPanel", "CollisionPanel", "ScalePanel", "AssetsPanel"}]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K1 ["createElement"]
       46 LOADK                            R9 K21 ["UIListLayout"]
       47 NEWTABLE                         R10 8 0
       49 GETIMPORT                        R11 K25 [Enum.SortOrder.LayoutOrder]
       51 SETTABLEKS                       R11 R10 K23 ["SortOrder"]
       53 GETIMPORT                        R11 K28 [Enum.HorizontalAlignment.Center]
       55 SETTABLEKS                       R11 R10 K26 ["HorizontalAlignment"]
       57 GETIMPORT                        R11 K31 [Enum.FillDirection.Vertical]
       59 SETTABLEKS                       R11 R10 K29 ["FillDirection"]
       61 GETUPVAL                         R11 3
       62 GETTABLEKS                       R11 R11 K32 ["VirticalPadding"]
       64 SETTABLEKS                       R11 R10 K33 ["Padding"]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R11 R11 K34 ["Change"]
       69 GETTABLEKS                       R11 R11 K35 ["AbsoluteContentSize"]
       71 NEWCLOSURE                       R12 P2
       72 CAPTURE                          VAL R0
       73 SETTABLE                         R12 R10 R11
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R7 K12 ["UIListLayoutVertical"]
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K1 ["createElement"]
       80 GETUPVAL                         R9 4
       81 MOVE                             R11 R2
       82 CALL                             R11 0 1
       83 GETTABLEKS                       R12 R0 K8 ["props"]
       85 GETTABLEKS                       R12 R12 K36 ["IsPlacePublished"]
       87 SETTABLEKS                       R12 R11 K37 ["IsEnabled"]
       89 MOVE                             R10 R11
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K13 ["PublishingHint"]
       93 GETUPVAL                         R8 1
       94 GETTABLEKS                       R8 R8 K1 ["createElement"]
       96 GETUPVAL                         R9 5
       97 MOVE                             R10 R2
       98 CALL                             R10 0 1
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R7 K14 ["PresetsPanel"]
      102 GETUPVAL                         R8 1
      103 GETTABLEKS                       R8 R8 K1 ["createElement"]
      105 GETUPVAL                         R9 6
      106 MOVE                             R10 R2
      107 CALL                             R10 0 1
      108 CALL                             R8 2 1
      109 SETTABLEKS                       R8 R7 K15 ["AvatarTypePanel"]
      111 GETUPVAL                         R8 1
      112 GETTABLEKS                       R8 R8 K1 ["createElement"]
      114 GETUPVAL                         R9 7
      115 MOVE                             R10 R2
      116 CALL                             R10 0 1
      117 CALL                             R8 2 1
      118 SETTABLEKS                       R8 R7 K16 ["AnimationPanel"]
      120 GETUPVAL                         R8 1
      121 GETTABLEKS                       R8 R8 K1 ["createElement"]
      123 GETUPVAL                         R9 8
      124 MOVE                             R10 R2
      125 CALL                             R10 0 1
      126 CALL                             R8 2 1
      127 SETTABLEKS                       R8 R7 K17 ["CollisionPanel"]
      129 GETUPVAL                         R8 1
      130 GETTABLEKS                       R8 R8 K1 ["createElement"]
      132 GETUPVAL                         R9 9
      133 MOVE                             R10 R2
      134 CALL                             R10 0 1
      135 CALL                             R8 2 1
      136 SETTABLEKS                       R8 R7 K18 ["ScalePanel"]
      138 GETUPVAL                         R8 1
      139 GETTABLEKS                       R8 R8 K1 ["createElement"]
      141 GETUPVAL                         R9 10
      142 MOVE                             R10 R2
      143 CALL                             R10 0 1
      144 CALL                             R8 2 1
      145 SETTABLEKS                       R8 R7 K19 ["AssetsPanel"]
      147 CALL                             R4 3 -1
      148 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Framework"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K8 ["Util"]
       33 GETTABLEKS                       R4 R3 K9 ["LayoutOrderIterator"]
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Util"]
       39 GETTABLEKS                       R6 R6 K10 ["ConstantLayout"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Util"]
       46 GETTABLEKS                       R7 R7 K11 ["StateInterfaceTheme"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Components"]
       53 GETTABLEKS                       R8 R8 K13 ["PublishingHint"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K12 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["PresetsPanel"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Components"]
       67 GETTABLEKS                       R10 R10 K15 ["AvatarTypePanel"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K12 ["Components"]
       74 GETTABLEKS                       R11 R11 K16 ["AnimationPanel"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R0 K12 ["Components"]
       81 GETTABLEKS                       R12 R12 K17 ["CollisionPanel"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Components"]
       88 GETTABLEKS                       R13 R13 K18 ["ScalePanel"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R14 R0 K12 ["Components"]
       95 GETTABLEKS                       R14 R14 K19 ["AssetsPanel"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R2 K20 ["Component"]
      100 LOADK                            R16 K21 ["ComponentMorpherTemplate"]
      101 NAMECALL                         R14 R14 K22 ["extend"]
      103 CALL                             R14 2 1
      104 DUPCLOSURE                       R15 K23 [PROTO_0]
      105 CAPTURE                          VAL R2
      106 SETTABLEKS                       R15 R14 K24 ["init"]
      108 DUPCLOSURE                       R15 K25 [PROTO_4]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R13
      120 SETTABLEKS                       R15 R14 K26 ["render"]
      122 RETURN                           R14 1
