PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R1 K0 ["Selected"]
        4 JUMP                             ; [+1]
        5 LOADK                            R1 K1 ["Deselected"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["onRowStateChanged"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R3 R0 K1 ["rowState"]
       11 JUMPIFEQKS                       R3 K2 ["Disabled"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETTABLEKS                       R4 R0 K1 ["rowState"]
       17 JUMPIFEQKS                       R4 K3 ["Selected"] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R6 0 2
       29 MOVE                             R7 R2
       30 GETTABLEKS                       R8 R0 K5 ["onRowStateChanged"]
       32 SETLIST                          R6 R7 2 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K6 ["createElement"]
       38 GETUPVAL                         R6 3
       39 DUPTABLE                         R7 K12 [{"tag", "Size", "AutomaticSize", "LayoutOrder", "GroupTransparency"}]
       40 LOADK                            R8 K13 ["row gap-medium align-y-top padding-small"]
       41 SETTABLEKS                       R8 R7 K7 ["tag"]
       43 GETIMPORT                        R8 K16 [UDim2.new]
       45 LOADN                            R9 1
       46 LOADN                            R10 0
       47 LOADN                            R11 0
       48 LOADN                            R12 0
       49 CALL                             R8 4 1
       50 SETTABLEKS                       R8 R7 K8 ["Size"]
       52 GETIMPORT                        R8 K19 [Enum.AutomaticSize.Y]
       54 SETTABLEKS                       R8 R7 K9 ["AutomaticSize"]
       56 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       58 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       60 JUMPIFNOT                        R2 ; [+2]
       61 LOADK                            R8 K20 [0.5]
       62 JUMP                             ; [+1]
       63 LOADN                            R8 0
       64 SETTABLEKS                       R8 R7 K11 ["GroupTransparency"]
       66 DUPTABLE                         R8 K24 [{"Thumbnail", "Details", "CheckboxContainer"}]
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R9 R10 K6 ["createElement"]
       70 GETUPVAL                         R10 3
       71 DUPTABLE                         R11 K25 [{"tag", "Size", "LayoutOrder"}]
       72 LOADK                            R12 K26 ["stroke-default radius-small"]
       73 SETTABLEKS                       R12 R11 K7 ["tag"]
       75 GETIMPORT                        R12 K28 [UDim2.fromOffset]
       77 LOADN                            R13 48
       78 LOADN                            R14 48
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K8 ["Size"]
       82 LOADN                            R12 1
       83 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       85 DUPTABLE                         R12 K30 [{"ColorSwatch"}]
       86 GETTABLEKS                       R13 R0 K31 ["color"]
       88 JUMPIFNOT                        R13 ; [+36]
       89 GETUPVAL                         R14 2
       90 GETTABLEKS                       R13 R14 K6 ["createElement"]
       92 LOADK                            R14 K32 ["Frame"]
       93 DUPTABLE                         R15 K35 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       94 GETIMPORT                        R16 K37 [UDim2.fromScale]
       96 LOADN                            R17 1
       97 LOADN                            R18 1
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K8 ["Size"]
      101 GETTABLEKS                       R16 R0 K31 ["color"]
      103 SETTABLEKS                       R16 R15 K33 ["BackgroundColor3"]
      105 LOADN                            R16 0
      106 SETTABLEKS                       R16 R15 K34 ["BorderSizePixel"]
      108 DUPTABLE                         R16 K39 [{"UICorner"}]
      109 GETUPVAL                         R18 2
      110 GETTABLEKS                       R17 R18 K6 ["createElement"]
      112 LOADK                            R18 K38 ["UICorner"]
      113 DUPTABLE                         R19 K41 [{"CornerRadius"}]
      114 GETIMPORT                        R20 K43 [UDim.new]
      116 LOADN                            R21 0
      117 LOADN                            R22 4
      118 CALL                             R20 2 1
      119 SETTABLEKS                       R20 R19 K40 ["CornerRadius"]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K38 ["UICorner"]
      124 CALL                             R13 3 1
      125 SETTABLEKS                       R13 R12 K29 ["ColorSwatch"]
      127 CALL                             R9 3 1
      128 SETTABLEKS                       R9 R8 K21 ["Thumbnail"]
      130 GETUPVAL                         R10 2
      131 GETTABLEKS                       R9 R10 K6 ["createElement"]
      133 GETUPVAL                         R10 3
      134 DUPTABLE                         R11 K44 [{"tag", "LayoutOrder"}]
      135 LOADK                            R12 K45 ["col grow auto-y"]
      136 SETTABLEKS                       R12 R11 K7 ["tag"]
      138 LOADN                            R12 2
      139 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      141 DUPTABLE                         R12 K47 [{"Label"}]
      142 GETUPVAL                         R14 2
      143 GETTABLEKS                       R13 R14 K6 ["createElement"]
      145 GETUPVAL                         R14 4
      146 DUPTABLE                         R15 K49 [{"Text", "tag", "LayoutOrder"}]
      147 LOADK                            R18 K50 ["LookComposerDialog"]
      148 LOADK                            R19 K51 ["SkinColor"]
      149 NAMECALL                         R16 R1 K52 ["getText"]
      151 CALL                             R16 3 1
      152 SETTABLEKS                       R16 R15 K48 ["Text"]
      154 LOADK                            R16 K53 ["text-label-medium auto-xy content-default"]
      155 SETTABLEKS                       R16 R15 K7 ["tag"]
      157 LOADN                            R16 1
      158 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      160 CALL                             R13 2 1
      161 SETTABLEKS                       R13 R12 K46 ["Label"]
      163 CALL                             R9 3 1
      164 SETTABLEKS                       R9 R8 K22 ["Details"]
      166 GETUPVAL                         R10 2
      167 GETTABLEKS                       R9 R10 K6 ["createElement"]
      169 GETUPVAL                         R10 3
      170 DUPTABLE                         R11 K44 [{"tag", "LayoutOrder"}]
      171 LOADK                            R12 K54 ["auto-xy padding-left-medium"]
      172 SETTABLEKS                       R12 R11 K7 ["tag"]
      174 LOADN                            R12 3
      175 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      177 DUPTABLE                         R12 K56 [{"Checkbox"}]
      178 GETUPVAL                         R14 2
      179 GETTABLEKS                       R13 R14 K6 ["createElement"]
      181 GETUPVAL                         R14 5
      182 DUPTABLE                         R15 K62 [{"isChecked", "isDisabled", "label", "onActivated", "size"}]
      183 SETTABLEKS                       R3 R15 K57 ["isChecked"]
      185 SETTABLEKS                       R2 R15 K58 ["isDisabled"]
      187 LOADK                            R16 K63 [""]
      188 SETTABLEKS                       R16 R15 K59 ["label"]
      190 SETTABLEKS                       R4 R15 K60 ["onActivated"]
      192 LOADK                            R16 K64 ["Small"]
      193 SETTABLEKS                       R16 R15 K61 ["size"]
      195 CALL                             R13 2 1
      196 SETTABLEKS                       R13 R12 K55 ["Checkbox"]
      198 CALL                             R9 3 1
      199 SETTABLEKS                       R9 R8 K23 ["CheckboxContainer"]
      201 CALL                             R5 3 -1
      202 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Checkbox"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R8 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R6 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R8 K14 ["Localization"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R11 R0 K15 ["Src"]
       42 GETTABLEKS                       R10 R11 K16 ["Flags"]
       44 GETTABLEKS                       R9 R10 K17 ["getFFlagAvatarPreviewerLookComposer"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETIMPORT                        R12 K1 [script]
       51 GETTABLEKS                       R11 R12 K18 ["Parent"]
       53 GETTABLEKS                       R10 R11 K19 ["Types"]
       55 CALL                             R9 1 1
       56 DUPCLOSURE                       R10 K20 [PROTO_1]
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 RETURN                           R10 1
