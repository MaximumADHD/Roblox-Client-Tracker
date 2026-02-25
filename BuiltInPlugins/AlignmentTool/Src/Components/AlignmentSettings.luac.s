PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 NEWTABLE                         R4 0 3
        8 DUPTABLE                         R5 K6 [{"Text", "TextYAlignment", "Content"}]
        9 LOADK                            R8 K7 ["ModeSection"]
       10 LOADK                            R9 K8 ["Title"]
       11 NAMECALL                         R6 R2 K9 ["getText"]
       13 CALL                             R6 3 1
       14 SETTABLEKS                       R6 R5 K3 ["Text"]
       16 GETIMPORT                        R6 K12 [Enum.TextYAlignment.Center]
       18 SETTABLEKS                       R6 R5 K4 ["TextYAlignment"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K13 ["createElement"]
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K16 [{"Value", "OnValueChanged"}]
       25 GETTABLEKS                       R9 R1 K17 ["alignmentMode"]
       27 SETTABLEKS                       R9 R8 K14 ["Value"]
       29 GETTABLEKS                       R9 R1 K18 ["setAlignmentMode"]
       31 SETTABLEKS                       R9 R8 K15 ["OnValueChanged"]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K5 ["Content"]
       36 DUPTABLE                         R6 K19 [{"Text", "Content"}]
       37 LOADK                            R9 K20 ["AxesSection"]
       38 LOADK                            R10 K8 ["Title"]
       39 NAMECALL                         R7 R2 K9 ["getText"]
       41 CALL                             R7 3 1
       42 SETTABLEKS                       R7 R6 K3 ["Text"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K13 ["createElement"]
       47 GETUPVAL                         R8 2
       48 DUPTABLE                         R9 K25 [{"AlignmentSpace", "EnabledAxes", "OnAlignmentSpaceChanged", "OnEnabledAxesChanged"}]
       49 GETTABLEKS                       R10 R1 K26 ["alignmentSpace"]
       51 SETTABLEKS                       R10 R9 K21 ["AlignmentSpace"]
       53 GETTABLEKS                       R10 R1 K27 ["enabledAxes"]
       55 SETTABLEKS                       R10 R9 K22 ["EnabledAxes"]
       57 GETTABLEKS                       R10 R1 K28 ["setAlignmentSpace"]
       59 SETTABLEKS                       R10 R9 K23 ["OnAlignmentSpaceChanged"]
       61 GETTABLEKS                       R10 R1 K29 ["setEnabledAxes"]
       63 SETTABLEKS                       R10 R9 K24 ["OnEnabledAxesChanged"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K5 ["Content"]
       68 DUPTABLE                         R7 K19 [{"Text", "Content"}]
       69 LOADK                            R10 K30 ["RelativeToSection"]
       70 LOADK                            R11 K8 ["Title"]
       71 NAMECALL                         R8 R2 K9 ["getText"]
       73 CALL                             R8 3 1
       74 SETTABLEKS                       R8 R7 K3 ["Text"]
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R8 R9 K13 ["createElement"]
       79 GETUPVAL                         R9 3
       80 DUPTABLE                         R10 K16 [{"Value", "OnValueChanged"}]
       81 GETTABLEKS                       R11 R1 K31 ["relativeTo"]
       83 SETTABLEKS                       R11 R10 K14 ["Value"]
       85 GETTABLEKS                       R11 R1 K32 ["setRelativeTo"]
       87 SETTABLEKS                       R11 R10 K15 ["OnValueChanged"]
       89 CALL                             R8 2 1
       90 SETTABLEKS                       R8 R7 K5 ["Content"]
       92 SETLIST                          R4 R5 3 [1]
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R5 R6 K13 ["createElement"]
       97 GETUPVAL                         R6 4
       98 DUPTABLE                         R7 K37 [{"Collapsible", "Items", "LayoutOrder", "MaximumLabelWidth"}]
       99 LOADB                            R8 1
      100 SETTABLEKS                       R8 R7 K33 ["Collapsible"]
      102 SETTABLEKS                       R4 R7 K34 ["Items"]
      104 GETTABLEKS                       R8 R1 K35 ["LayoutOrder"]
      106 SETTABLEKS                       R8 R7 K35 ["LayoutOrder"]
      108 GETTABLEKS                       R8 R3 K36 ["MaximumLabelWidth"]
      110 SETTABLEKS                       R8 R7 K36 ["MaximumLabelWidth"]
      112 CALL                             R5 2 -1
      113 RETURN                           R5 -1

PROTO_1:
        0 DUPTABLE                         R2 K4 [{"alignmentMode", "alignmentSpace", "enabledAxes", "relativeTo"}]
        1 GETTABLEKS                       R3 R0 K0 ["alignmentMode"]
        3 SETTABLEKS                       R3 R2 K0 ["alignmentMode"]
        5 GETTABLEKS                       R3 R0 K1 ["alignmentSpace"]
        7 SETTABLEKS                       R3 R2 K1 ["alignmentSpace"]
        9 GETTABLEKS                       R3 R0 K2 ["enabledAxes"]
       11 SETTABLEKS                       R3 R2 K2 ["enabledAxes"]
       13 GETTABLEKS                       R3 R0 K3 ["relativeTo"]
       15 SETTABLEKS                       R3 R2 K3 ["relativeTo"]
       17 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 -1
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 3
       11 CALL                             R2 0 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K4 [{"setAlignmentMode", "setAlignmentSpace", "setEnabledAxes", "setRelativeTo"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["setAlignmentMode"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U1
       11 SETTABLEKS                       R2 R1 K1 ["setAlignmentSpace"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U1
       17 SETTABLEKS                       R2 R1 K2 ["setEnabledAxes"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R2 R1 K3 ["setRelativeTo"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Actions"]
       40 GETTABLEKS                       R7 R8 K13 ["SetAlignmentMode"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R10 R0 K11 ["Src"]
       47 GETTABLEKS                       R9 R10 K12 ["Actions"]
       49 GETTABLEKS                       R8 R9 K14 ["SetAlignmentSpace"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R11 R0 K11 ["Src"]
       56 GETTABLEKS                       R10 R11 K12 ["Actions"]
       58 GETTABLEKS                       R9 R10 K15 ["SetEnabledAxes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R12 R0 K11 ["Src"]
       65 GETTABLEKS                       R11 R12 K12 ["Actions"]
       67 GETTABLEKS                       R10 R11 K16 ["SetRelativeTo"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R13 R0 K11 ["Src"]
       74 GETTABLEKS                       R12 R13 K17 ["Components"]
       76 GETTABLEKS                       R11 R12 K18 ["AxesSettingsFragment"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K4 [require]
       81 GETTABLEKS                       R14 R0 K11 ["Src"]
       83 GETTABLEKS                       R13 R14 K17 ["Components"]
       85 GETTABLEKS                       R12 R13 K19 ["ModeSetting"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K4 [require]
       90 GETTABLEKS                       R15 R0 K11 ["Src"]
       92 GETTABLEKS                       R14 R15 K17 ["Components"]
       94 GETTABLEKS                       R13 R14 K20 ["LabeledElementList"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K4 [require]
       99 GETTABLEKS                       R16 R0 K11 ["Src"]
      101 GETTABLEKS                       R15 R16 K17 ["Components"]
      103 GETTABLEKS                       R14 R15 K21 ["RelativeToSetting"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K4 [require]
      108 GETTABLEKS                       R17 R0 K11 ["Src"]
      110 GETTABLEKS                       R16 R17 K22 ["Thunks"]
      112 GETTABLEKS                       R15 R16 K23 ["UpdateActiveInstanceHighlight"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K4 [require]
      117 GETTABLEKS                       R18 R0 K11 ["Src"]
      119 GETTABLEKS                       R17 R18 K22 ["Thunks"]
      121 GETTABLEKS                       R16 R17 K24 ["UpdateAlignEnabled"]
      123 CALL                             R15 1 1
      124 GETTABLEKS                       R16 R1 K25 ["PureComponent"]
      126 LOADK                            R18 K26 ["AlignmentSettings"]
      127 NAMECALL                         R16 R16 K27 ["extend"]
      129 CALL                             R16 2 1
      130 DUPCLOSURE                       R17 K28 [PROTO_0]
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R12
      136 SETTABLEKS                       R17 R16 K29 ["render"]
      138 MOVE                             R17 R5
      139 DUPTABLE                         R18 K32 [{"Localization", "Stylizer"}]
      140 GETTABLEKS                       R19 R4 K30 ["Localization"]
      142 SETTABLEKS                       R19 R18 K30 ["Localization"]
      144 GETTABLEKS                       R19 R4 K31 ["Stylizer"]
      146 SETTABLEKS                       R19 R18 K31 ["Stylizer"]
      148 CALL                             R17 1 1
      149 MOVE                             R18 R16
      150 CALL                             R17 1 1
      151 MOVE                             R16 R17
      152 DUPCLOSURE                       R17 K33 [PROTO_1]
      153 DUPCLOSURE                       R18 K34 [PROTO_6]
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R14
      160 GETTABLEKS                       R19 R2 K35 ["connect"]
      162 MOVE                             R20 R17
      163 MOVE                             R21 R18
      164 CALL                             R19 2 1
      165 MOVE                             R20 R16
      166 CALL                             R19 1 -1
      167 RETURN                           R19 -1
