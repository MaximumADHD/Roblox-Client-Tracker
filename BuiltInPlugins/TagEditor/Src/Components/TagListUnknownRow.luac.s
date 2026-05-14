PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K1 ["assigningGroup"]
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETTABLEKS                       R2 R0 K1 ["assigningGroup"]
       10 JUMPIFNOTEQKS                    R2 K2 [""] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["Get"]
       17 CALL                             R2 0 1
       18 GETTABLEKS                       R4 R0 K4 ["TagName"]
       20 NAMECALL                         R2 R2 K5 ["AddTag"]
       22 CALL                             R2 2 0
       23 JUMPIFNOT                        R1 ; [+11]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K3 ["Get"]
       27 CALL                             R2 0 1
       28 GETTABLEKS                       R4 R0 K4 ["TagName"]
       30 GETTABLEKS                       R5 R0 K1 ["assigningGroup"]
       32 NAMECALL                         R2 R2 K6 ["SetGroup"]
       34 CALL                             R2 3 0
       35 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onRegister"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["TagListUnknownRow"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K5 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K12 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing", "Padding"}]
       17 GETTABLEKS                       R8 R1 K6 ["LayoutOrder"]
       19 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       21 GETTABLEKS                       R8 R3 K7 ["Size"]
       23 SETTABLEKS                       R8 R7 K7 ["Size"]
       25 GETIMPORT                        R8 K16 [Enum.FillDirection.Horizontal]
       27 SETTABLEKS                       R8 R7 K8 ["Layout"]
       29 GETIMPORT                        R8 K18 [Enum.HorizontalAlignment.Left]
       31 SETTABLEKS                       R8 R7 K9 ["HorizontalAlignment"]
       33 GETTABLEKS                       R8 R3 K10 ["Spacing"]
       35 SETTABLEKS                       R8 R7 K10 ["Spacing"]
       37 GETTABLEKS                       R8 R3 K19 ["PaddingIndented"]
       39 SETTABLEKS                       R8 R7 K11 ["Padding"]
       41 DUPTABLE                         R8 K22 [{"CheckboxPane", "NameText"}]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K5 ["createElement"]
       45 GETUPVAL                         R10 2
       46 DUPTABLE                         R11 K23 [{"LayoutOrder", "Size"}]
       47 NAMECALL                         R12 R4 K24 ["getNextOrder"]
       49 CALL                             R12 1 1
       50 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       52 GETTABLEKS                       R12 R3 K25 ["CheckboxSize"]
       54 SETTABLEKS                       R12 R11 K7 ["Size"]
       56 DUPTABLE                         R12 K28 [{"RegisterGroupButton", "HoverArea"}]
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R13 R13 K5 ["createElement"]
       60 GETUPVAL                         R14 3
       61 DUPTABLE                         R15 K34 [{"BackgroundStyle", "LeftIcon", "OnClick", "IconColor", "TooltipText"}]
       62 LOADK                            R16 K35 ["None"]
       63 SETTABLEKS                       R16 R15 K29 ["BackgroundStyle"]
       65 GETTABLEKS                       R16 R3 K36 ["AssignIcon"]
       67 SETTABLEKS                       R16 R15 K30 ["LeftIcon"]
       69 GETTABLEKS                       R16 R0 K37 ["onRegister"]
       71 SETTABLEKS                       R16 R15 K31 ["OnClick"]
       73 GETTABLEKS                       R16 R3 K38 ["AssignIconColor"]
       75 SETTABLEKS                       R16 R15 K32 ["IconColor"]
       77 LOADK                            R18 K39 ["Tooltip"]
       78 LOADK                            R19 K40 ["RegisterTag"]
       79 NAMECALL                         R16 R2 K41 ["getText"]
       81 CALL                             R16 3 1
       82 SETTABLEKS                       R16 R15 K33 ["TooltipText"]
       84 CALL                             R13 2 1
       85 SETTABLEKS                       R13 R12 K26 ["RegisterGroupButton"]
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R13 R13 K5 ["createElement"]
       90 GETUPVAL                         R14 4
       91 DUPTABLE                         R15 K43 [{"Cursor"}]
       92 LOADK                            R16 K44 ["PointingHand"]
       93 SETTABLEKS                       R16 R15 K42 ["Cursor"]
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K27 ["HoverArea"]
       98 CALL                             R9 3 1
       99 SETTABLEKS                       R9 R8 K20 ["CheckboxPane"]
      101 GETUPVAL                         R9 1
      102 GETTABLEKS                       R9 R9 K5 ["createElement"]
      104 GETUPVAL                         R10 5
      105 DUPTABLE                         R11 K47 [{"LayoutOrder", "Text", "Size", "TextXAlignment"}]
      106 NAMECALL                         R12 R4 K24 ["getNextOrder"]
      108 CALL                             R12 1 1
      109 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      111 GETTABLEKS                       R12 R1 K48 ["TagName"]
      113 SETTABLEKS                       R12 R11 K45 ["Text"]
      115 GETTABLEKS                       R12 R3 K49 ["TextSize"]
      117 SETTABLEKS                       R12 R11 K7 ["Size"]
      119 GETIMPORT                        R12 K50 [Enum.TextXAlignment.Left]
      121 SETTABLEKS                       R12 R11 K46 ["TextXAlignment"]
      123 CALL                             R9 2 1
      124 SETTABLEKS                       R9 R8 K21 ["NameText"]
      126 CALL                             R5 3 -1
      127 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"assigningGroup"}]
        1 GETTABLEKS                       R3 R0 K2 ["AssigningGroup"]
        3 SETTABLEKS                       R3 R2 K0 ["assigningGroup"]
        5 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R9 R4 K15 ["Style"]
       47 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R0 K5 ["Src"]
       53 GETTABLEKS                       R11 R11 K17 ["TagManager"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R11 R4 K18 ["UI"]
       58 GETTABLEKS                       R12 R11 K19 ["HoverArea"]
       60 GETTABLEKS                       R13 R11 K20 ["IconButton"]
       62 GETTABLEKS                       R14 R11 K21 ["Pane"]
       64 GETTABLEKS                       R15 R11 K22 ["TextLabel"]
       66 GETTABLEKS                       R16 R4 K23 ["Util"]
       68 GETTABLEKS                       R17 R16 K24 ["LayoutOrderIterator"]
       70 GETTABLEKS                       R18 R2 K25 ["PureComponent"]
       72 LOADK                            R20 K26 ["TagListUnknownRow"]
       73 NAMECALL                         R18 R18 K27 ["extend"]
       75 CALL                             R18 2 1
       76 DUPCLOSURE                       R19 K28 [PROTO_1]
       77 CAPTURE                          VAL R10
       78 SETTABLEKS                       R19 R18 K29 ["init"]
       80 DUPCLOSURE                       R19 K30 [PROTO_2]
       81 CAPTURE                          VAL R17
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R15
       87 SETTABLEKS                       R19 R18 K31 ["render"]
       89 MOVE                             R19 R6
       90 DUPTABLE                         R20 K32 [{"Analytics", "Localization", "Stylizer"}]
       91 SETTABLEKS                       R7 R20 K13 ["Analytics"]
       93 SETTABLEKS                       R8 R20 K14 ["Localization"]
       95 SETTABLEKS                       R9 R20 K16 ["Stylizer"]
       97 CALL                             R19 1 1
       98 MOVE                             R20 R18
       99 CALL                             R19 1 1
      100 MOVE                             R18 R19
      101 DUPCLOSURE                       R19 K33 [PROTO_3]
      102 DUPCLOSURE                       R20 K34 [PROTO_4]
      103 GETTABLEKS                       R21 R3 K35 ["connect"]
      105 MOVE                             R22 R19
      106 MOVE                             R23 R20
      107 CALL                             R21 2 1
      108 MOVE                             R22 R18
      109 CALL                             R21 1 -1
      110 RETURN                           R21 -1
