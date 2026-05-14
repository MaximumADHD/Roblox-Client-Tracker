PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["key"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["SetSelectedFilterPill"]
        8 GETTABLEKS                       R5 R1 K4 ["SelectedPill"]
       10 DUPTABLE                         R6 K7 [{"Layout", "Padding"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K8 ["createElement"]
       14 LOADK                            R8 K9 ["UIListLayout"]
       15 DUPTABLE                         R9 K13 [{"Padding", "HorizontalAlignment", "SortOrder", "FillDirection"}]
       16 GETTABLEKS                       R10 R2 K14 ["collaboratorFilter"]
       18 GETTABLEKS                       R10 R10 K15 ["pills"]
       20 GETTABLEKS                       R10 R10 K16 ["paddingHorizontal"]
       22 SETTABLEKS                       R10 R9 K6 ["Padding"]
       24 GETIMPORT                        R10 K19 [Enum.HorizontalAlignment.Left]
       26 SETTABLEKS                       R10 R9 K10 ["HorizontalAlignment"]
       28 GETIMPORT                        R10 K21 [Enum.SortOrder.LayoutOrder]
       30 SETTABLEKS                       R10 R9 K11 ["SortOrder"]
       32 GETIMPORT                        R10 K23 [Enum.FillDirection.Horizontal]
       34 SETTABLEKS                       R10 R9 K12 ["FillDirection"]
       36 LOADNIL                          R10
       37 CALL                             R7 3 1
       38 SETTABLEKS                       R7 R6 K5 ["Layout"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K8 ["createElement"]
       43 LOADK                            R8 K24 ["UIPadding"]
       44 DUPTABLE                         R9 K28 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
       45 GETTABLEKS                       R10 R2 K14 ["collaboratorFilter"]
       47 GETTABLEKS                       R10 R10 K16 ["paddingHorizontal"]
       49 SETTABLEKS                       R10 R9 K25 ["PaddingLeft"]
       51 GETTABLEKS                       R10 R2 K14 ["collaboratorFilter"]
       53 GETTABLEKS                       R10 R10 K16 ["paddingHorizontal"]
       55 SETTABLEKS                       R10 R9 K26 ["PaddingRight"]
       57 GETUPVAL                         R11 1
       58 JUMPIFNOT                        R11 ; [+5]
       59 GETTABLEKS                       R10 R2 K14 ["collaboratorFilter"]
       61 GETTABLEKS                       R10 R10 K29 ["paddingTop"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R10
       65 SETTABLEKS                       R10 R9 K27 ["PaddingTop"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K6 ["Padding"]
       70 GETIMPORT                        R7 K31 [pairs]
       72 GETTABLEKS                       R8 R1 K32 ["FilterPills"]
       74 CALL                             R7 1 3
       75 FORGPREP_NEXT                    R7
       76 MOVE                             R13 R6
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R14 R14 K8 ["createElement"]
       80 GETUPVAL                         R15 2
       81 DUPTABLE                         R16 K39 [{"LayoutOrder", "Style", "Size", "Text", "StyleModifier", "ZIndex", "OnClick"}]
       82 SETTABLEKS                       R10 R16 K20 ["LayoutOrder"]
       84 LOADK                            R17 K40 ["Pill"]
       85 SETTABLEKS                       R17 R16 K33 ["Style"]
       87 GETTABLEKS                       R17 R2 K14 ["collaboratorFilter"]
       89 GETTABLEKS                       R17 R17 K15 ["pills"]
       91 GETTABLEKS                       R17 R17 K41 ["size"]
       93 SETTABLEKS                       R17 R16 K34 ["Size"]
       95 LOADK                            R19 K42 ["Permissions"]
       96 LOADK                            R21 K43 ["FilterPill.%*.Label"]
       97 GETTABLEKS                       R23 R11 K44 ["key"]
       99 NAMECALL                         R21 R21 K45 ["format"]
      101 CALL                             R21 2 1
      102 MOVE                             R20 R21
      103 NAMECALL                         R17 R3 K46 ["getText"]
      105 CALL                             R17 3 1
      106 SETTABLEKS                       R17 R16 K35 ["Text"]
      108 GETTABLEKS                       R18 R5 K44 ["key"]
      110 GETTABLEKS                       R19 R11 K44 ["key"]
      112 JUMPIFNOTEQ                      R18 R19 ; [+5]
      114 GETUPVAL                         R17 3
      115 GETTABLEKS                       R17 R17 K47 ["Hover"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R17
      119 SETTABLEKS                       R17 R16 K36 ["StyleModifier"]
      121 LOADN                            R17 1
      122 SETTABLEKS                       R17 R16 K37 ["ZIndex"]
      124 NEWCLOSURE                       R17 P0
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R11
      127 SETTABLEKS                       R17 R16 K38 ["OnClick"]
      129 CALL                             R14 2 -1
      130 FASTCALL                         TABLE_INSERT ; [+2]
      131 GETIMPORT                        R12 K50 [table.insert]
      133 CALL                             R12 -1 0
      134 FORGLOOP                         R7 2 ; [-59]
      136 LENGTH                           R7 R6
      137 LOADN                            R8 2
      138 JUMPIFNOTLE                      R7 R8 ; [+3]
      140 LOADNIL                          R7
      141 RETURN                           R7 1
      142 GETUPVAL                         R7 0
      143 GETTABLEKS                       R7 R7 K8 ["createElement"]
      145 LOADK                            R8 K51 ["Frame"]
      146 DUPTABLE                         R9 K53 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
      147 GETTABLEKS                       R11 R1 K20 ["LayoutOrder"]
      149 ORK                              R10 R11 K54 [1]
      150 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      152 GETTABLEKS                       R10 R2 K14 ["collaboratorFilter"]
      154 GETTABLEKS                       R10 R10 K41 ["size"]
      156 SETTABLEKS                       R10 R9 K34 ["Size"]
      158 LOADN                            R10 1
      159 SETTABLEKS                       R10 R9 K52 ["BackgroundTransparency"]
      161 MOVE                             R10 R6
      162 CALL                             R7 3 -1
      163 RETURN                           R7 -1

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"FilterPills", "SelectedPill"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["FilterPills"]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["SelectedPill"]
       11 RETURN                           R2 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"SetSelectedFilterPill"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetSelectedFilterPill"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["Style"]
       32 GETTABLEKS                       R4 R4 K10 ["Stylizer"]
       34 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K12 ["withContext"]
       38 GETTABLEKS                       R7 R5 K13 ["Localization"]
       40 GETTABLEKS                       R8 R3 K14 ["Util"]
       42 GETTABLEKS                       R8 R8 K15 ["StyleModifier"]
       44 GETTABLEKS                       R9 R3 K16 ["UI"]
       46 GETTABLEKS                       R9 R9 K17 ["Button"]
       48 GETIMPORT                        R10 K4 [require]
       50 GETTABLEKS                       R11 R0 K18 ["Src"]
       52 GETTABLEKS                       R11 R11 K19 ["Selectors"]
       54 GETTABLEKS                       R11 R11 K20 ["GetFilterPills"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K4 [require]
       59 GETTABLEKS                       R12 R0 K18 ["Src"]
       61 GETTABLEKS                       R12 R12 K19 ["Selectors"]
       63 GETTABLEKS                       R12 R12 K21 ["GetSelectedFilterPill"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K4 [require]
       68 GETTABLEKS                       R13 R0 K18 ["Src"]
       70 GETTABLEKS                       R13 R13 K22 ["Thunks"]
       72 GETTABLEKS                       R13 R13 K23 ["SetSelectedFilterPill"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K25 [game]
       77 LOADK                            R15 K26 ["ManageCollabFilterWidgetSpacingFix"]
       78 NAMECALL                         R13 R13 K27 ["GetFastFlag"]
       80 CALL                             R13 2 1
       81 GETTABLEKS                       R14 R1 K28 ["PureComponent"]
       83 LOADK                            R16 K29 ["CollaboratorFilterWidget"]
       84 NAMECALL                         R14 R14 K30 ["extend"]
       86 CALL                             R14 2 1
       87 DUPCLOSURE                       R15 K31 [PROTO_1]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R15 R14 K32 ["render"]
       94 MOVE                             R15 R6
       95 DUPTABLE                         R16 K33 [{"Stylizer", "Localization"}]
       96 SETTABLEKS                       R4 R16 K10 ["Stylizer"]
       98 SETTABLEKS                       R7 R16 K13 ["Localization"]
      100 CALL                             R15 1 1
      101 MOVE                             R16 R14
      102 CALL                             R15 1 1
      103 MOVE                             R14 R15
      104 GETTABLEKS                       R15 R2 K34 ["connect"]
      106 DUPCLOSURE                       R16 K35 [PROTO_2]
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R11
      109 DUPCLOSURE                       R17 K36 [PROTO_4]
      110 CAPTURE                          VAL R12
      111 CALL                             R15 2 1
      112 MOVE                             R16 R14
      113 CALL                             R15 1 1
      114 MOVE                             R14 R15
      115 RETURN                           R14 1
