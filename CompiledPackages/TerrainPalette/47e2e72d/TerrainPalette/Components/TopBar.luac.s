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
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 LOADN                            R4 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 3
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R4
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 3
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          VAL R0
       21 CALL                             R6 1 1
       22 LOADN                            R9 160
       23 LOADN                            R11 2
       24 GETTABLEKS                       R12 R2 K3 ["Size"]
       26 GETTABLEKS                       R12 R12 K4 ["Size_600"]
       28 MUL                              R10 R11 R12
       29 ADD                              R8 R9 R10
       30 LOADN                            R10 2
       31 GETTABLEKS                       R11 R2 K5 ["Gap"]
       33 GETTABLEKS                       R11 R11 K6 ["Small"]
       35 MUL                              R9 R10 R11
       36 ADD                              R7 R8 R9
       37 LOADB                            R8 0
       38 LOADN                            R9 0
       39 JUMPIFNOTLT                      R9 R3 ; [+5]
       41 JUMPIFLT                         R3 R7 ; [+2]
       43 LOADB                            R8 0 +1
       44 LOADB                            R8 1
       45 GETUPVAL                         R9 4
       46 CALL                             R9 0 1
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K7 ["createElement"]
       50 GETUPVAL                         R11 5
       51 DUPTABLE                         R12 K12 [{["tag"] = "row align-y-center gap-small size-full-600", ["LayoutOrder"], ["onAbsoluteSizeChanged"]}]
       52 GETTABLEKS                       R13 R0 K13 ["layoutOrder"]
       54 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       56 SETTABLEKS                       R5 R12 K11 ["onAbsoluteSizeChanged"]
       58 DUPTABLE                         R13 K17 [{"AddMaterial", "Search", "ViewToggle"}]
       59 JUMPIFNOT                        R8 ; [+2]
       60 LOADNIL                          R14
       61 JUMP                             ; [+39]
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K7 ["createElement"]
       65 GETUPVAL                         R15 6
       66 DUPTABLE                         R16 K21 [{["LayoutOrder"], ["title"], ["testId"] = "AddMaterialTooltip"}]
       67 MOVE                             R17 R9
       68 CALL                             R17 0 1
       69 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       71 LOADK                            R19 K22 ["Plugin"]
       72 LOADK                            R20 K23 ["AddIconTooltip"]
       73 NAMECALL                         R17 R1 K24 ["getText"]
       75 CALL                             R17 3 1
       76 SETTABLEKS                       R17 R16 K18 ["title"]
       78 GETUPVAL                         R17 0
       79 GETTABLEKS                       R17 R17 K7 ["createElement"]
       81 GETUPVAL                         R18 7
       82 DUPTABLE                         R19 K29 [{["icon"], ["onActivated"], ["size"], ["testId"] = "AddMaterialButton"}]
       83 GETUPVAL                         R20 8
       84 GETTABLEKS                       R20 R20 K30 ["Icon"]
       86 GETTABLEKS                       R20 R20 K31 ["PlusSmall"]
       88 SETTABLEKS                       R20 R19 K25 ["icon"]
       90 GETTABLEKS                       R20 R0 K32 ["onAddMaterial"]
       92 SETTABLEKS                       R20 R19 K26 ["onActivated"]
       94 GETUPVAL                         R20 9
       95 GETTABLEKS                       R20 R20 K33 ["XSmall"]
       97 SETTABLEKS                       R20 R19 K27 ["size"]
       99 CALL                             R17 2 -1
      100 CALL                             R14 -1 1
      101 SETTABLEKS                       R14 R13 K14 ["AddMaterial"]
      103 GETUPVAL                         R14 0
      104 GETTABLEKS                       R14 R14 K7 ["createElement"]
      106 GETUPVAL                         R15 5
      107 DUPTABLE                         R16 K36 [{["tag"] = "grow size-0-full", ["LayoutOrder"], ["sizeConstraint"]}]
      108 MOVE                             R17 R9
      109 CALL                             R17 0 1
      110 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      112 DUPTABLE                         R17 K38 [{"MinSize"}]
      113 GETIMPORT                        R18 K41 [Vector2.new]
      115 LOADN                            R19 160
      116 LOADN                            R20 0
      117 CALL                             R18 2 1
      118 SETTABLEKS                       R18 R17 K37 ["MinSize"]
      120 SETTABLEKS                       R17 R16 K35 ["sizeConstraint"]
      122 DUPTABLE                         R17 K43 [{"Input"}]
      123 GETUPVAL                         R18 0
      124 GETTABLEKS                       R18 R18 K7 ["createElement"]
      126 GETUPVAL                         R19 10
      127 DUPTABLE                         R20 K50 [{["onChanged"], ["placeholder"], ["shape"], ["size"], ["text"], ["testId"] = "TopBarSearchInput", ["width"]}]
      128 GETTABLEKS                       R21 R0 K51 ["onSearchChanged"]
      130 SETTABLEKS                       R21 R20 K44 ["onChanged"]
      132 LOADK                            R23 K22 ["Plugin"]
      133 LOADK                            R24 K52 ["SearchPlaceholder"]
      134 NAMECALL                         R21 R1 K24 ["getText"]
      136 CALL                             R21 3 1
      137 SETTABLEKS                       R21 R20 K45 ["placeholder"]
      139 GETUPVAL                         R21 11
      140 GETTABLEKS                       R21 R21 K53 ["Rounded"]
      142 SETTABLEKS                       R21 R20 K46 ["shape"]
      144 GETUPVAL                         R21 9
      145 GETTABLEKS                       R21 R21 K33 ["XSmall"]
      147 SETTABLEKS                       R21 R20 K27 ["size"]
      149 GETTABLEKS                       R21 R0 K54 ["searchText"]
      151 SETTABLEKS                       R21 R20 K47 ["text"]
      153 GETIMPORT                        R21 K56 [UDim.new]
      155 LOADN                            R22 1
      156 LOADN                            R23 0
      157 CALL                             R21 2 1
      158 SETTABLEKS                       R21 R20 K49 ["width"]
      160 CALL                             R18 2 1
      161 SETTABLEKS                       R18 R17 K42 ["Input"]
      163 CALL                             R14 3 1
      164 SETTABLEKS                       R14 R13 K15 ["Search"]
      166 JUMPIFNOT                        R8 ; [+2]
      167 LOADNIL                          R14
      168 JUMP                             ; [+47]
      169 GETUPVAL                         R14 0
      170 GETTABLEKS                       R14 R14 K7 ["createElement"]
      172 GETUPVAL                         R15 6
      173 DUPTABLE                         R16 K58 [{["LayoutOrder"], ["title"], ["testId"] = "ViewToggleTooltip"}]
      174 MOVE                             R17 R9
      175 CALL                             R17 0 1
      176 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      178 LOADK                            R19 K22 ["Plugin"]
      179 LOADK                            R20 K59 ["MaterialGridToggleTooltip"]
      180 NAMECALL                         R17 R1 K24 ["getText"]
      182 CALL                             R17 3 1
      183 SETTABLEKS                       R17 R16 K18 ["title"]
      185 GETUPVAL                         R17 0
      186 GETTABLEKS                       R17 R17 K7 ["createElement"]
      188 GETUPVAL                         R18 7
      189 DUPTABLE                         R19 K60 [{["icon"], ["onActivated"], ["size"], ["testId"] = "ViewToggle"}]
      190 GETTABLEKS                       R21 R0 K61 ["viewType"]
      192 JUMPIFNOTEQKS                    R21 K62 ["grid"] ; [+7]
      194 GETUPVAL                         R20 8
      195 GETTABLEKS                       R20 R20 K30 ["Icon"]
      197 GETTABLEKS                       R20 R20 K63 ["FourBarsHorizontalLeftAligned"]
      199 JUMP                             ; [+5]
      200 GETUPVAL                         R20 8
      201 GETTABLEKS                       R20 R20 K30 ["Icon"]
      203 GETTABLEKS                       R20 R20 K64 ["Grid"]
      205 SETTABLEKS                       R20 R19 K25 ["icon"]
      207 SETTABLEKS                       R6 R19 K26 ["onActivated"]
      209 GETUPVAL                         R20 9
      210 GETTABLEKS                       R20 R20 K33 ["XSmall"]
      212 SETTABLEKS                       R20 R19 K27 ["size"]
      214 CALL                             R17 2 -1
      215 CALL                             R14 -1 1
      216 SETTABLEKS                       R14 R13 K16 ["ViewToggle"]
      218 CALL                             R10 3 -1
      219 RETURN                           R10 -1

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
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K12 ["IconButton"]
       44 GETTABLEKS                       R7 R2 K13 ["Enums"]
       46 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       48 GETTABLEKS                       R8 R5 K15 ["Contexts"]
       50 GETTABLEKS                       R8 R8 K16 ["Localization"]
       52 GETTABLEKS                       R9 R2 K17 ["SearchInput"]
       54 GETTABLEKS                       R10 R2 K13 ["Enums"]
       56 GETTABLEKS                       R10 R10 K18 ["SearchInputShape"]
       58 GETTABLEKS                       R11 R2 K19 ["Tooltip"]
       60 GETTABLEKS                       R12 R2 K20 ["View"]
       62 GETTABLEKS                       R13 R4 K21 ["createNextOrder"]
       64 GETTABLEKS                       R14 R4 K22 ["useEventCallback"]
       66 GETTABLEKS                       R15 R2 K23 ["Hooks"]
       68 GETTABLEKS                       R15 R15 K24 ["useTokens"]
       70 DUPCLOSURE                       R16 K25 [PROTO_2]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 RETURN                           R16 1
