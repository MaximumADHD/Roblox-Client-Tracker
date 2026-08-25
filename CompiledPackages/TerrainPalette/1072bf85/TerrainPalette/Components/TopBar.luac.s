PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onViewTypeChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["viewType"]
        6 JUMPIFNOTEQKS                    R2 K2 ["grid"] ; [+3]
        8 LOADK                            R1 K3 ["list"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K2 ["grid"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADN                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 2
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R3
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 2
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R0
       14 CALL                             R5 1 1
       15 LOADN                            R8 160
       16 LOADN                            R10 2
       17 GETTABLEKS                       R11 R1 K1 ["Size"]
       19 GETTABLEKS                       R11 R11 K2 ["Size_600"]
       21 MUL                              R9 R10 R11
       22 ADD                              R7 R8 R9
       23 LOADN                            R9 2
       24 GETTABLEKS                       R10 R1 K3 ["Gap"]
       26 GETTABLEKS                       R10 R10 K4 ["Small"]
       28 MUL                              R8 R9 R10
       29 ADD                              R6 R7 R8
       30 LOADB                            R7 0
       31 LOADN                            R8 0
       32 JUMPIFNOTLT                      R8 R2 ; [+5]
       34 JUMPIFLT                         R2 R6 ; [+2]
       36 LOADB                            R7 0 +1
       37 LOADB                            R7 1
       38 GETUPVAL                         R8 3
       39 CALL                             R8 0 1
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K5 ["createElement"]
       43 GETUPVAL                         R10 4
       44 DUPTABLE                         R11 K10 [{["tag"] = "row align-y-center gap-small size-full-600", ["LayoutOrder"], ["onAbsoluteSizeChanged"]}]
       45 GETTABLEKS                       R12 R0 K11 ["layoutOrder"]
       47 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       49 SETTABLEKS                       R4 R11 K9 ["onAbsoluteSizeChanged"]
       51 DUPTABLE                         R12 K15 [{"AddMaterial", "Search", "ViewToggle"}]
       52 JUMPIFNOT                        R7 ; [+2]
       53 LOADNIL                          R13
       54 JUMP                             ; [+26]
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R13 R13 K5 ["createElement"]
       58 GETUPVAL                         R14 5
       59 DUPTABLE                         R15 K21 [{["LayoutOrder"], ["icon"], ["onActivated"], ["size"], ["testId"] = "AddMaterialButton"}]
       60 MOVE                             R16 R8
       61 CALL                             R16 0 1
       62 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
       64 GETUPVAL                         R16 6
       65 GETTABLEKS                       R16 R16 K22 ["Icon"]
       67 GETTABLEKS                       R16 R16 K23 ["PlusSmall"]
       69 SETTABLEKS                       R16 R15 K16 ["icon"]
       71 GETTABLEKS                       R16 R0 K24 ["onAddMaterial"]
       73 SETTABLEKS                       R16 R15 K17 ["onActivated"]
       75 GETUPVAL                         R16 7
       76 GETTABLEKS                       R16 R16 K25 ["XSmall"]
       78 SETTABLEKS                       R16 R15 K18 ["size"]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K12 ["AddMaterial"]
       83 GETUPVAL                         R13 1
       84 GETTABLEKS                       R13 R13 K5 ["createElement"]
       86 GETUPVAL                         R14 4
       87 DUPTABLE                         R15 K28 [{["tag"] = "grow size-0-full", ["LayoutOrder"], ["sizeConstraint"]}]
       88 MOVE                             R16 R8
       89 CALL                             R16 0 1
       90 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
       92 DUPTABLE                         R16 K30 [{"MinSize"}]
       93 GETIMPORT                        R17 K33 [Vector2.new]
       95 LOADN                            R18 160
       96 LOADN                            R19 0
       97 CALL                             R17 2 1
       98 SETTABLEKS                       R17 R16 K29 ["MinSize"]
      100 SETTABLEKS                       R16 R15 K27 ["sizeConstraint"]
      102 DUPTABLE                         R16 K35 [{"Input"}]
      103 GETUPVAL                         R17 1
      104 GETTABLEKS                       R17 R17 K5 ["createElement"]
      106 GETUPVAL                         R18 8
      107 DUPTABLE                         R19 K43 [{["onChanged"], ["placeholder"] = "Search slots...", ["shape"], ["size"], ["text"], ["testId"] = "TopBarSearchInput", ["width"]}]
      108 GETTABLEKS                       R20 R0 K44 ["onSearchChanged"]
      110 SETTABLEKS                       R20 R19 K36 ["onChanged"]
      112 GETUPVAL                         R20 9
      113 GETTABLEKS                       R20 R20 K45 ["Rounded"]
      115 SETTABLEKS                       R20 R19 K39 ["shape"]
      117 GETUPVAL                         R20 7
      118 GETTABLEKS                       R20 R20 K25 ["XSmall"]
      120 SETTABLEKS                       R20 R19 K18 ["size"]
      122 GETTABLEKS                       R20 R0 K46 ["searchText"]
      124 SETTABLEKS                       R20 R19 K40 ["text"]
      126 GETIMPORT                        R20 K48 [UDim.new]
      128 LOADN                            R21 1
      129 LOADN                            R22 0
      130 CALL                             R20 2 1
      131 SETTABLEKS                       R20 R19 K42 ["width"]
      133 CALL                             R17 2 1
      134 SETTABLEKS                       R17 R16 K34 ["Input"]
      136 CALL                             R13 3 1
      137 SETTABLEKS                       R13 R12 K13 ["Search"]
      139 JUMPIFNOT                        R7 ; [+2]
      140 LOADNIL                          R13
      141 JUMP                             ; [+49]
      142 GETUPVAL                         R13 1
      143 GETTABLEKS                       R13 R13 K5 ["createElement"]
      145 GETUPVAL                         R14 10
      146 DUPTABLE                         R15 K51 [{["LayoutOrder"], ["title"], ["testId"] = "ViewToggleTooltip"}]
      147 MOVE                             R16 R8
      148 CALL                             R16 0 1
      149 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      151 GETTABLEKS                       R17 R0 K52 ["viewType"]
      153 JUMPIFNOTEQKS                    R17 K53 ["grid"] ; [+3]
      155 LOADK                            R16 K54 ["List view"]
      156 JUMP                             ; [+1]
      157 LOADK                            R16 K55 ["Grid view"]
      158 SETTABLEKS                       R16 R15 K49 ["title"]
      160 GETUPVAL                         R16 1
      161 GETTABLEKS                       R16 R16 K5 ["createElement"]
      163 GETUPVAL                         R17 5
      164 DUPTABLE                         R18 K56 [{["icon"], ["onActivated"], ["size"], ["testId"] = "ViewToggle"}]
      165 GETTABLEKS                       R20 R0 K52 ["viewType"]
      167 JUMPIFNOTEQKS                    R20 K53 ["grid"] ; [+7]
      169 GETUPVAL                         R19 6
      170 GETTABLEKS                       R19 R19 K22 ["Icon"]
      172 GETTABLEKS                       R19 R19 K57 ["FourBarsHorizontalLeftAligned"]
      174 JUMP                             ; [+5]
      175 GETUPVAL                         R19 6
      176 GETTABLEKS                       R19 R19 K22 ["Icon"]
      178 GETTABLEKS                       R19 R19 K58 ["Grid"]
      180 SETTABLEKS                       R19 R18 K16 ["icon"]
      182 SETTABLEKS                       R5 R18 K17 ["onActivated"]
      184 GETUPVAL                         R19 7
      185 GETTABLEKS                       R19 R19 K25 ["XSmall"]
      187 SETTABLEKS                       R19 R18 K18 ["size"]
      189 CALL                             R16 2 -1
      190 CALL                             R13 -1 1
      191 SETTABLEKS                       R13 R12 K14 ["ViewToggle"]
      193 CALL                             R9 3 -1
      194 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["BuilderIcons"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["IconButton"]
       37 GETTABLEKS                       R6 R2 K12 ["Enums"]
       39 GETTABLEKS                       R6 R6 K13 ["InputSize"]
       41 GETTABLEKS                       R7 R2 K14 ["SearchInput"]
       43 GETTABLEKS                       R8 R2 K12 ["Enums"]
       45 GETTABLEKS                       R8 R8 K15 ["SearchInputShape"]
       47 GETTABLEKS                       R9 R2 K16 ["Tooltip"]
       49 GETTABLEKS                       R10 R2 K17 ["View"]
       51 GETTABLEKS                       R11 R4 K18 ["createNextOrder"]
       53 GETTABLEKS                       R12 R4 K19 ["useEventCallback"]
       55 GETTABLEKS                       R13 R2 K20 ["Hooks"]
       57 GETTABLEKS                       R13 R13 K21 ["useTokens"]
       59 DUPCLOSURE                       R14 K22 [PROTO_2]
       60 CAPTURE                          VAL R13
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 RETURN                           R14 1
