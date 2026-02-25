PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"color"}]
        2 SETTABLEKS                       R0 R3 K0 ["color"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["props"]
        7 GETTABLEKS                       R2 R3 K2 ["tagName"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["state"]
       12 GETTABLEKS                       R3 R4 K4 ["color"]
       14 NAMECALL                         R0 R0 K5 ["SetColor"]
       16 CALL                             R0 3 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K1 ["props"]
       20 GETTABLEKS                       R0 R1 K6 ["close"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onColorChanged"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K1 ["onSave"]
        9 DUPTABLE                         R3 K3 [{"color"}]
       10 GETTABLEKS                       R5 R0 K4 ["props"]
       12 GETTABLEKS                       R4 R5 K5 ["tagColor"]
       14 SETTABLEKS                       R4 R3 K2 ["color"]
       16 NAMECALL                         R1 R0 K6 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["ColorPicker"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["new"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R5 R0 K4 ["state"]
       12 GETTABLEKS                       R4 R5 K5 ["colo"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K6 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K10 [{"Layout", "Padding", "Spacing"}]
       19 GETIMPORT                        R8 K14 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R8 R7 K7 ["Layout"]
       23 GETTABLEKS                       R8 R2 K8 ["Padding"]
       25 SETTABLEKS                       R8 R7 K8 ["Padding"]
       27 GETTABLEKS                       R8 R2 K9 ["Spacing"]
       29 SETTABLEKS                       R8 R7 K9 ["Spacing"]
       31 DUPTABLE                         R8 K17 [{"TopControls", "ColorPickerComponent"}]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R9 R10 K6 ["createElement"]
       35 GETUPVAL                         R10 3
       36 DUPTABLE                         R11 K23 [{"LayoutOrder", "TagName", "Color", "Close", "Save"}]
       37 NAMECALL                         R12 R3 K24 ["getNextOrder"]
       39 CALL                             R12 1 1
       40 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
       42 GETTABLEKS                       R12 R1 K25 ["tagName"]
       44 SETTABLEKS                       R12 R11 K19 ["TagName"]
       46 SETTABLEKS                       R4 R11 K20 ["Color"]
       48 GETTABLEKS                       R12 R1 K26 ["close"]
       50 SETTABLEKS                       R12 R11 K21 ["Close"]
       52 GETTABLEKS                       R12 R0 K27 ["onSave"]
       54 SETTABLEKS                       R12 R11 K22 ["Save"]
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K15 ["TopControls"]
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R9 R10 K6 ["createElement"]
       62 GETUPVAL                         R10 4
       63 DUPTABLE                         R11 K30 [{"LayoutOrder", "Color", "Size", "OnColorChanged"}]
       64 NAMECALL                         R12 R3 K24 ["getNextOrder"]
       66 CALL                             R12 1 1
       67 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
       69 SETTABLEKS                       R4 R11 K20 ["Color"]
       71 GETTABLEKS                       R12 R2 K31 ["BodySize"]
       73 SETTABLEKS                       R12 R11 K28 ["Size"]
       75 GETTABLEKS                       R12 R0 K32 ["onColorChanged"]
       77 SETTABLEKS                       R12 R11 K29 ["OnColorChanged"]
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K16 ["ColorPickerComponent"]
       82 CALL                             R5 3 -1
       83 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["ColorPicker"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETIMPORT                        R4 K2 [pairs]
        6 GETTABLEKS                       R5 R0 K3 ["TagData"]
        8 CALL                             R4 1 3
        9 FORGPREP_NEXT                    R4
       10 GETTABLEKS                       R9 R8 K4 ["Name"]
       12 JUMPIFNOTEQ                      R9 R1 ; [+6]
       14 GETTABLEKS                       R2 R8 K5 ["Icon"]
       16 GETTABLEKS                       R3 R8 K6 ["Color"]
       18 JUMP                             ; [+2]
       19 FORGLOOP                         R4 2 ; [-10]
       21 DUPTABLE                         R4 K10 [{"tagName", "tagIcon", "tagColor"}]
       22 SETTABLEKS                       R1 R4 K7 ["tagName"]
       24 SETTABLEKS                       R2 R4 K8 ["tagIcon"]
       26 SETTABLEKS                       R3 R4 K9 ["tagColor"]
       28 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["ToggleColorPicker"]
        4 LOADK                            R2 K1 [""]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"close"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["close"]
        6 RETURN                           R1 1

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
       34 GETTABLEKS                       R6 R4 K11 ["Analytics"]
       36 GETTABLEKS                       R7 R4 K12 ["Localization"]
       38 GETTABLEKS                       R9 R3 K13 ["Style"]
       40 GETTABLEKS                       R8 R9 K14 ["Stylizer"]
       42 GETIMPORT                        R9 K4 [require]
       44 GETTABLEKS                       R11 R0 K15 ["Src"]
       46 GETTABLEKS                       R10 R11 K16 ["TagManager"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R12 R0 K15 ["Src"]
       53 GETTABLEKS                       R11 R12 K17 ["Actions"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R11 R3 K18 ["UI"]
       58 GETTABLEKS                       R12 R11 K19 ["ColorPicker"]
       60 GETTABLEKS                       R13 R11 K20 ["Pane"]
       62 GETTABLEKS                       R14 R3 K21 ["Util"]
       64 GETTABLEKS                       R15 R14 K22 ["LayoutOrderIterator"]
       66 GETIMPORT                        R16 K4 [require]
       68 GETIMPORT                        R18 K1 [script]
       70 GETTABLEKS                       R17 R18 K23 ["ColorPickerTopControls"]
       72 CALL                             R16 1 1
       73 GETTABLEKS                       R17 R1 K24 ["PureComponent"]
       75 LOADK                            R19 K19 ["ColorPicker"]
       76 NAMECALL                         R17 R17 K25 ["extend"]
       78 CALL                             R17 2 1
       79 DUPCLOSURE                       R18 K26 [PROTO_2]
       80 CAPTURE                          VAL R9
       81 SETTABLEKS                       R18 R17 K27 ["init"]
       83 DUPCLOSURE                       R18 K28 [PROTO_3]
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R12
       89 SETTABLEKS                       R18 R17 K29 ["render"]
       91 MOVE                             R18 R5
       92 DUPTABLE                         R19 K30 [{"Analytics", "Localization", "Stylizer"}]
       93 SETTABLEKS                       R6 R19 K11 ["Analytics"]
       95 SETTABLEKS                       R7 R19 K12 ["Localization"]
       97 SETTABLEKS                       R8 R19 K14 ["Stylizer"]
       99 CALL                             R18 1 1
      100 MOVE                             R19 R17
      101 CALL                             R18 1 1
      102 MOVE                             R17 R18
      103 DUPCLOSURE                       R18 K31 [PROTO_4]
      104 DUPCLOSURE                       R19 K32 [PROTO_6]
      105 CAPTURE                          VAL R10
      106 GETTABLEKS                       R20 R2 K33 ["connect"]
      108 MOVE                             R21 R18
      109 MOVE                             R22 R19
      110 CALL                             R20 2 1
      111 MOVE                             R21 R17
      112 CALL                             R20 1 1
      113 MOVE                             R17 R20
      114 RETURN                           R17 1
