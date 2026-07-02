PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R1 K0 ["Selected"]
        4 JUMP                             ; [+1]
        5 LOADK                            R1 K1 ["Deselected"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["onRowStateChanged"]
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
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R6 0 2
       29 MOVE                             R7 R2
       30 GETTABLEKS                       R8 R0 K5 ["onRowStateChanged"]
       32 SETLIST                          R6 R7 2 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K6 ["createElement"]
       38 GETUPVAL                         R6 3
       39 DUPTABLE                         R7 K13 [{["tag"] = "row align-y-top gap-medium padding-bottom-xlarge", ["Size"], ["AutomaticSize"], ["LayoutOrder"], ["GroupTransparency"]}]
       40 GETIMPORT                        R8 K16 [UDim2.new]
       42 LOADN                            R9 1
       43 LOADN                            R10 0
       44 LOADN                            R11 0
       45 LOADN                            R12 0
       46 CALL                             R8 4 1
       47 SETTABLEKS                       R8 R7 K9 ["Size"]
       49 GETIMPORT                        R8 K19 [Enum.AutomaticSize.Y]
       51 SETTABLEKS                       R8 R7 K10 ["AutomaticSize"]
       53 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
       55 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       57 JUMPIFNOT                        R2 ; [+2]
       58 LOADK                            R8 K20 [0.5]
       59 JUMP                             ; [+1]
       60 LOADN                            R8 0
       61 SETTABLEKS                       R8 R7 K12 ["GroupTransparency"]
       63 DUPTABLE                         R8 K24 [{"Thumbnail", "Details", "CheckboxContainer"}]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K6 ["createElement"]
       67 GETUPVAL                         R10 3
       68 DUPTABLE                         R11 K27 [{["tag"] = "stroke-default radius-medium", ["Size"], ["LayoutOrder"] = 1}]
       69 GETIMPORT                        R12 K29 [UDim2.fromOffset]
       71 LOADN                            R13 40
       72 LOADN                            R14 40
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K9 ["Size"]
       76 DUPTABLE                         R12 K31 [{"ColorSwatch"}]
       77 GETTABLEKS                       R13 R0 K32 ["color"]
       79 JUMPIFNOT                        R13 ; [+33]
       80 GETUPVAL                         R13 2
       81 GETTABLEKS                       R13 R13 K6 ["createElement"]
       83 LOADK                            R14 K33 ["Frame"]
       84 DUPTABLE                         R15 K37 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       85 GETIMPORT                        R16 K39 [UDim2.fromScale]
       87 LOADN                            R17 1
       88 LOADN                            R18 1
       89 CALL                             R16 2 1
       90 SETTABLEKS                       R16 R15 K9 ["Size"]
       92 GETTABLEKS                       R16 R0 K32 ["color"]
       94 SETTABLEKS                       R16 R15 K34 ["BackgroundColor3"]
       96 DUPTABLE                         R16 K41 [{"UICorner"}]
       97 GETUPVAL                         R17 2
       98 GETTABLEKS                       R17 R17 K6 ["createElement"]
      100 LOADK                            R18 K40 ["UICorner"]
      101 DUPTABLE                         R19 K43 [{"CornerRadius"}]
      102 GETIMPORT                        R20 K45 [UDim.new]
      104 LOADN                            R21 0
      105 LOADN                            R22 4
      106 CALL                             R20 2 1
      107 SETTABLEKS                       R20 R19 K42 ["CornerRadius"]
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K40 ["UICorner"]
      112 CALL                             R13 3 1
      113 SETTABLEKS                       R13 R12 K30 ["ColorSwatch"]
      115 CALL                             R9 3 1
      116 SETTABLEKS                       R9 R8 K21 ["Thumbnail"]
      118 GETUPVAL                         R9 2
      119 GETTABLEKS                       R9 R9 K6 ["createElement"]
      121 GETUPVAL                         R10 3
      122 DUPTABLE                         R11 K48 [{["tag"] = "col grow auto-y", ["LayoutOrder"] = 2}]
      123 DUPTABLE                         R12 K50 [{"Label"}]
      124 GETUPVAL                         R13 2
      125 GETTABLEKS                       R13 R13 K6 ["createElement"]
      127 GETUPVAL                         R14 4
      128 DUPTABLE                         R15 K53 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["LayoutOrder"] = 1}]
      129 LOADK                            R18 K54 ["LookComposerDialog"]
      130 LOADK                            R19 K55 ["SkinColor"]
      131 NAMECALL                         R16 R1 K56 ["getText"]
      133 CALL                             R16 3 1
      134 SETTABLEKS                       R16 R15 K51 ["Text"]
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K49 ["Label"]
      139 CALL                             R9 3 1
      140 SETTABLEKS                       R9 R8 K22 ["Details"]
      142 GETUPVAL                         R9 2
      143 GETTABLEKS                       R9 R9 K6 ["createElement"]
      145 GETUPVAL                         R10 3
      146 DUPTABLE                         R11 K59 [{["tag"] = "auto-xy padding-left-medium", ["LayoutOrder"] = 3}]
      147 DUPTABLE                         R12 K61 [{"Checkbox"}]
      148 GETUPVAL                         R13 2
      149 GETTABLEKS                       R13 R13 K6 ["createElement"]
      151 GETUPVAL                         R14 5
      152 DUPTABLE                         R15 K69 [{["isChecked"], ["isDisabled"], ["label"] = "", ["onActivated"], ["size"] = "Small"}]
      153 SETTABLEKS                       R3 R15 K62 ["isChecked"]
      155 SETTABLEKS                       R2 R15 K63 ["isDisabled"]
      157 SETTABLEKS                       R4 R15 K66 ["onActivated"]
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K60 ["Checkbox"]
      162 CALL                             R9 3 1
      163 SETTABLEKS                       R9 R8 K23 ["CheckboxContainer"]
      165 CALL                             R5 3 -1
      166 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Checkbox"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R7 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R7 K14 ["Localization"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K15 ["Src"]
       42 GETTABLEKS                       R9 R9 K16 ["Flags"]
       44 GETTABLEKS                       R9 R9 K17 ["getFFlagAvatarPreviewerLookComposer"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K15 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Types"]
       53 CALL                             R9 1 1
       54 DUPCLOSURE                       R10 K19 [PROTO_1]
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 RETURN                           R10 1
