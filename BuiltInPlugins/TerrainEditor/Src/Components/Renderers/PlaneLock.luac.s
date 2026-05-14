PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PlaneLockRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Schema"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["createElement"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K8 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
       12 GETUPVAL                         R7 3
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+3]
       15 GETIMPORT                        R6 K11 [Enum.HorizontalAlignment.Left]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R5 K4 ["HorizontalAlignment"]
       21 GETIMPORT                        R6 K14 [Enum.FillDirection.Horizontal]
       23 SETTABLEKS                       R6 R5 K5 ["Layout"]
       25 GETIMPORT                        R6 K17 [UDim2.new]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 LOADN                            R9 0
       30 GETTABLEKS                       R10 R1 K18 ["Height"]
       32 CALL                             R6 4 1
       33 SETTABLEKS                       R6 R5 K6 ["Size"]
       35 GETTABLEKS                       R6 R1 K7 ["Spacing"]
       37 SETTABLEKS                       R6 R5 K7 ["Spacing"]
       39 DUPTABLE                         R6 K21 [{"Edit", "Reset"}]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K3 ["createElement"]
       43 GETUPVAL                         R8 2
       44 DUPTABLE                         R9 K24 [{"LayoutOrder", "Size", "AutomaticSize"}]
       45 LOADN                            R10 1
       46 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
       48 GETUPVAL                         R11 3
       49 CALL                             R11 0 1
       50 JUMPIFNOT                        R11 ; [+2]
       51 LOADNIL                          R10
       52 JUMP                             ; [+13]
       53 GETIMPORT                        R10 K17 [UDim2.new]
       55 LOADN                            R11 1
       56 GETTABLEKS                       R14 R1 K18 ["Height"]
       58 MINUS                            R13 R14
       59 GETTABLEKS                       R14 R1 K7 ["Spacing"]
       61 SUB                              R12 R13 R14
       62 LOADN                            R13 0
       63 GETTABLEKS                       R14 R1 K18 ["Height"]
       65 CALL                             R10 4 1
       66 SETTABLEKS                       R10 R9 K6 ["Size"]
       68 GETUPVAL                         R11 3
       69 CALL                             R11 0 1
       70 JUMPIFNOT                        R11 ; [+3]
       71 GETIMPORT                        R10 K26 [Enum.AutomaticSize.X]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R10
       75 SETTABLEKS                       R10 R9 K23 ["AutomaticSize"]
       77 DUPTABLE                         R10 K28 [{"Button"}]
       78 GETUPVAL                         R12 3
       79 CALL                             R12 0 1
       80 JUMPIFNOT                        R12 ; [+41]
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R11 R11 K3 ["createElement"]
       84 GETUPVAL                         R12 4
       85 GETTABLEKS                       R12 R12 K27 ["Button"]
       87 DUPTABLE                         R13 K33 [{"text", "variant", "onActivated", "size"}]
       88 GETTABLEKS                       R15 R0 K34 ["Value"]
       90 JUMPIFNOT                        R15 ; [+3]
       91 GETTABLEKS                       R14 R2 K35 ["ApplyLabel"]
       93 JUMP                             ; [+2]
       94 GETTABLEKS                       R14 R2 K36 ["EditLabel"]
       96 SETTABLEKS                       R14 R13 K29 ["text"]
       98 GETUPVAL                         R14 4
       99 GETTABLEKS                       R14 R14 K37 ["Enums"]
      101 GETTABLEKS                       R14 R14 K38 ["ButtonVariant"]
      103 GETTABLEKS                       R14 R14 K39 ["Emphasis"]
      105 SETTABLEKS                       R14 R13 K30 ["variant"]
      107 NEWCLOSURE                       R14 P0
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R14 R13 K31 ["onActivated"]
      111 GETUPVAL                         R14 4
      112 GETTABLEKS                       R14 R14 K37 ["Enums"]
      114 GETTABLEKS                       R14 R14 K40 ["InputSize"]
      116 GETTABLEKS                       R14 R14 K41 ["Small"]
      118 SETTABLEKS                       R14 R13 K32 ["size"]
      120 CALL                             R11 2 1
      121 JUMP                             ; [+34]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K3 ["createElement"]
      125 GETUPVAL                         R12 5
      126 DUPTABLE                         R13 K46 [{"OnClick", "Size", "Style", "Text", "TextXAlignment"}]
      127 NEWCLOSURE                       R14 P1
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R14 R13 K42 ["OnClick"]
      131 GETIMPORT                        R14 K48 [UDim2.fromScale]
      133 LOADN                            R15 1
      134 LOADN                            R16 1
      135 CALL                             R14 2 1
      136 SETTABLEKS                       R14 R13 K6 ["Size"]
      138 LOADK                            R14 K49 ["PrimaryBrand"]
      139 SETTABLEKS                       R14 R13 K43 ["Style"]
      141 GETTABLEKS                       R15 R0 K34 ["Value"]
      143 JUMPIFNOT                        R15 ; [+3]
      144 GETTABLEKS                       R14 R2 K35 ["ApplyLabel"]
      146 JUMP                             ; [+2]
      147 GETTABLEKS                       R14 R2 K36 ["EditLabel"]
      149 SETTABLEKS                       R14 R13 K44 ["Text"]
      151 GETIMPORT                        R14 K51 [Enum.TextXAlignment.Center]
      153 SETTABLEKS                       R14 R13 K45 ["TextXAlignment"]
      155 CALL                             R11 2 1
      156 SETTABLEKS                       R11 R10 K27 ["Button"]
      158 CALL                             R7 3 1
      159 SETTABLEKS                       R7 R6 K19 ["Edit"]
      161 GETUPVAL                         R7 1
      162 GETTABLEKS                       R7 R7 K3 ["createElement"]
      164 GETUPVAL                         R8 5
      165 DUPTABLE                         R9 K54 [{"LayoutOrder", "OnClick", "LeftIcon", "IconSize", "Size"}]
      166 LOADN                            R10 2
      167 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      169 GETTABLEKS                       R10 R2 K55 ["OnReset"]
      171 SETTABLEKS                       R10 R9 K42 ["OnClick"]
      173 GETTABLEKS                       R10 R1 K56 ["Icon"]
      175 SETTABLEKS                       R10 R9 K52 ["LeftIcon"]
      177 GETTABLEKS                       R11 R1 K18 ["Height"]
      179 SUBK                             R10 R11 K57 [14]
      180 SETTABLEKS                       R10 R9 K53 ["IconSize"]
      182 GETIMPORT                        R10 K59 [UDim2.fromOffset]
      184 GETTABLEKS                       R11 R1 K18 ["Height"]
      186 GETTABLEKS                       R12 R1 K18 ["Height"]
      188 CALL                             R10 2 1
      189 SETTABLEKS                       R10 R9 K6 ["Size"]
      191 CALL                             R7 2 1
      192 SETTABLEKS                       R7 R6 K20 ["Reset"]
      194 CALL                             R3 3 -1
      195 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       39 GETTABLEKS                       R5 R5 K14 ["Stylizer"]
       41 GETTABLEKS                       R6 R2 K15 ["UI"]
       43 GETTABLEKS                       R6 R6 K16 ["Button"]
       45 GETTABLEKS                       R7 R2 K15 ["UI"]
       47 GETTABLEKS                       R7 R7 K17 ["IconButton"]
       49 GETTABLEKS                       R8 R2 K15 ["UI"]
       51 GETTABLEKS                       R8 R8 K18 ["Pane"]
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K10 ["Src"]
       57 GETTABLEKS                       R10 R10 K19 ["Resources"]
       59 GETTABLEKS                       R10 R10 K20 ["Theme"]
       61 CALL                             R9 1 1
       62 DUPCLOSURE                       R10 K21 [PROTO_2]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 RETURN                           R10 1
