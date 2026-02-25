PROTO_0:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R4 0
        6 GETUPVAL                         R5 1
        7 GETTABLE                         R3 R4 R5
        8 NOT                              R2 R3
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K3 ["OnChanged"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R4 0
        6 GETUPVAL                         R5 1
        7 GETTABLE                         R3 R4 R5
        8 NOT                              R2 R3
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K3 ["OnChanged"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K1 ["MultiSelectionRenderer"]
        4 NAMECALL                         R2 R2 K2 ["use"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K3 ["new"]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R4 R1 K4 ["Items"]
       13 GETTABLEKS                       R5 R1 K5 ["Labels"]
       15 GETTABLEKS                       R6 R0 K6 ["Value"]
       17 NEWTABLE                         R7 0 0
       19 MOVE                             R8 R4
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 FORGPREP                         R8
       23 GETUPVAL                         R14 2
       24 CALL                             R14 0 1
       25 JUMPIFNOT                        R14 ; [+39]
       26 GETUPVAL                         R14 3
       27 GETTABLEKS                       R13 R14 K7 ["createElement"]
       29 GETUPVAL                         R15 4
       30 GETTABLEKS                       R14 R15 K8 ["Checkbox"]
       32 DUPTABLE                         R15 K15 [{"label", "isChecked", "isDisabled", "onActivated", "size", "LayoutOrderIterator"}]
       33 GETTABLE                         R16 R5 R11
       34 SETTABLEKS                       R16 R15 K9 ["label"]
       36 GETTABLE                         R16 R6 R12
       37 SETTABLEKS                       R16 R15 K10 ["isChecked"]
       39 GETTABLEKS                       R16 R0 K16 ["Disabled"]
       41 SETTABLEKS                       R16 R15 K11 ["isDisabled"]
       43 NEWCLOSURE                       R16 P0
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R12
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R16 R15 K12 ["onActivated"]
       49 GETUPVAL                         R19 4
       50 GETTABLEKS                       R18 R19 K17 ["Enums"]
       52 GETTABLEKS                       R17 R18 K18 ["InputSize"]
       54 GETTABLEKS                       R16 R17 K19 ["XSmall"]
       56 SETTABLEKS                       R16 R15 K13 ["size"]
       58 NAMECALL                         R16 R3 K20 ["getNextOrder"]
       60 CALL                             R16 1 1
       61 SETTABLEKS                       R16 R15 K14 ["LayoutOrderIterator"]
       63 CALL                             R13 2 1
       64 JUMP                             ; [+27]
       65 GETUPVAL                         R14 3
       66 GETTABLEKS                       R13 R14 K7 ["createElement"]
       68 GETUPVAL                         R14 5
       69 DUPTABLE                         R15 K25 [{"Checked", "Disabled", "LayoutOrder", "OnClick", "Text"}]
       70 GETTABLE                         R16 R6 R12
       71 SETTABLEKS                       R16 R15 K21 ["Checked"]
       73 GETTABLEKS                       R16 R0 K16 ["Disabled"]
       75 SETTABLEKS                       R16 R15 K16 ["Disabled"]
       77 NAMECALL                         R16 R3 K20 ["getNextOrder"]
       79 CALL                             R16 1 1
       80 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
       82 NEWCLOSURE                       R16 P1
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R16 R15 K23 ["OnClick"]
       88 GETTABLE                         R16 R5 R11
       89 SETTABLEKS                       R16 R15 K24 ["Text"]
       91 CALL                             R13 2 1
       92 SETTABLE                         R13 R7 R11
       93 FORGLOOP                         R8 2 ; [-71]
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R8 R9 K7 ["createElement"]
       98 GETUPVAL                         R9 6
       99 DUPTABLE                         R10 K31 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Size", "Spacing"}]
      100 GETIMPORT                        R11 K34 [Enum.AutomaticSize.Y]
      102 SETTABLEKS                       R11 R10 K26 ["AutomaticSize"]
      104 GETIMPORT                        R11 K36 [Enum.HorizontalAlignment.Left]
      106 SETTABLEKS                       R11 R10 K27 ["HorizontalAlignment"]
      108 GETIMPORT                        R11 K39 [Enum.FillDirection.Vertical]
      110 SETTABLEKS                       R11 R10 K28 ["Layout"]
      112 GETIMPORT                        R11 K42 [UDim2.fromScale]
      114 LOADN                            R12 1
      115 LOADN                            R13 0
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K29 ["Size"]
      119 GETTABLEKS                       R11 R2 K30 ["Spacing"]
      121 SETTABLEKS                       R11 R10 K30 ["Spacing"]
      123 MOVE                             R11 R7
      124 CALL                             R8 3 -1
      125 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Flags"]
       34 GETTABLEKS                       R5 R6 K12 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R2 K13 ["ContextServices"]
       39 GETTABLEKS                       R5 R6 K14 ["Stylizer"]
       41 GETTABLEKS                       R7 R2 K15 ["Util"]
       43 GETTABLEKS                       R6 R7 K16 ["LayoutOrderIterator"]
       45 GETTABLEKS                       R7 R2 K17 ["UI"]
       47 GETTABLEKS                       R8 R7 K18 ["Checkbox"]
       49 GETTABLEKS                       R9 R7 K19 ["Pane"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R13 R0 K10 ["Src"]
       55 GETTABLEKS                       R12 R13 K20 ["Resources"]
       57 GETTABLEKS                       R11 R12 K21 ["Theme"]
       59 CALL                             R10 1 1
       60 DUPCLOSURE                       R11 K22 [PROTO_2]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 RETURN                           R11 1
