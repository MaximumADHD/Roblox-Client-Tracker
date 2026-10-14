PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["key"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["key"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["SetSelectedFilterPill"]
        8 GETTABLEKS                       R5 R1 K4 ["SelectedPill"]
       10 GETTABLEKS                       R7 R1 K5 ["FilterPills"]
       12 LENGTH                           R6 R7
       13 LOADN                            R7 2
       14 JUMPIFNOTLE                      R6 R7 ; [+3]
       16 LOADNIL                          R6
       17 RETURN                           R6 1
       18 NEWTABLE                         R6 0 0
       20 GETTABLEKS                       R7 R1 K5 ["FilterPills"]
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 FORGPREP                         R7
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R12 R12 K6 ["fflagGroupGameEarlyTesters"]
       28 JUMPIFNOT                        R12 ; [+16]
       29 GETTABLEKS                       R12 R1 K7 ["IsGroupGame"]
       31 JUMPIFNOT                        R12 ; [+13]
       32 GETTABLEKS                       R12 R11 K8 ["key"]
       34 JUMPIFNOTEQKS                    R12 K9 ["Creators"] ; [+10]
       36 GETTABLEKS                       R12 R11 K8 ["key"]
       38 LOADK                            R15 K10 ["Permissions"]
       39 LOADK                            R16 K11 ["FilterPill.ExternalPlaytesters.Label"]
       40 NAMECALL                         R13 R3 K12 ["getText"]
       42 CALL                             R13 3 1
       43 SETTABLE                         R13 R6 R12
       44 JUMP                             ; [+13]
       45 GETTABLEKS                       R12 R11 K8 ["key"]
       47 LOADK                            R15 K10 ["Permissions"]
       48 LOADK                            R16 K13 ["FilterPill.%*.Label"]
       49 GETTABLEKS                       R18 R11 K8 ["key"]
       51 NAMECALL                         R16 R16 K14 ["format"]
       53 CALL                             R16 2 1
       54 NAMECALL                         R13 R3 K12 ["getText"]
       56 CALL                             R13 3 1
       57 SETTABLE                         R13 R6 R12
       58 FORGLOOP                         R7 2 ; [-34]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K6 ["fflagGroupGameEarlyTesters"]
       63 JUMPIFNOT                        R7 ; [+101]
       64 NEWTABLE                         R7 0 0
       66 GETTABLEKS                       R8 R1 K5 ["FilterPills"]
       68 LOADNIL                          R9
       69 LOADNIL                          R10
       70 FORGPREP                         R8
       71 DUPTABLE                         R15 K18 [{"text", "isChecked", "onActivated"}]
       72 GETTABLEKS                       R17 R12 K8 ["key"]
       74 GETTABLE                         R16 R6 R17
       75 SETTABLEKS                       R16 R15 K15 ["text"]
       77 GETTABLEKS                       R17 R5 K8 ["key"]
       79 GETTABLEKS                       R18 R12 K8 ["key"]
       81 JUMPIFEQ                         R17 R18 ; [+2]
       83 LOADB                            R16 0 +1
       84 LOADB                            R16 1
       85 SETTABLEKS                       R16 R15 K16 ["isChecked"]
       87 NEWCLOSURE                       R16 P0
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R12
       90 SETTABLEKS                       R16 R15 K17 ["onActivated"]
       92 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       94 MOVE                             R14 R7
       95 GETIMPORT                        R13 K21 [table.insert]
       97 CALL                             R13 2 0
       98 FORGLOOP                         R8 2 ; [-28]
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R8 R8 K22 ["createElement"]
      103 LOADK                            R9 K23 ["Frame"]
      104 DUPTABLE                         R10 K28 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      105 GETTABLEKS                       R12 R1 K24 ["LayoutOrder"]
      107 ORK                              R11 R12 K27 [1]
      108 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
      110 GETTABLEKS                       R11 R2 K29 ["collaboratorFilter"]
      112 GETTABLEKS                       R11 R11 K30 ["size"]
      114 SETTABLEKS                       R11 R10 K25 ["Size"]
      116 DUPTABLE                         R11 K33 [{"Padding", "Chips"}]
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R12 R12 K22 ["createElement"]
      120 LOADK                            R13 K34 ["UIPadding"]
      121 DUPTABLE                         R14 K38 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      122 GETTABLEKS                       R15 R2 K29 ["collaboratorFilter"]
      124 GETTABLEKS                       R15 R15 K39 ["paddingHorizontal"]
      126 SETTABLEKS                       R15 R14 K35 ["PaddingLeft"]
      128 GETTABLEKS                       R15 R2 K29 ["collaboratorFilter"]
      130 GETTABLEKS                       R15 R15 K39 ["paddingHorizontal"]
      132 SETTABLEKS                       R15 R14 K36 ["PaddingRight"]
      134 GETTABLEKS                       R15 R2 K29 ["collaboratorFilter"]
      136 GETTABLEKS                       R15 R15 K40 ["paddingTop"]
      138 SETTABLEKS                       R15 R14 K37 ["PaddingTop"]
      140 CALL                             R12 2 1
      141 SETTABLEKS                       R12 R11 K31 ["Padding"]
      143 GETUPVAL                         R12 2
      144 GETTABLEKS                       R12 R12 K22 ["createElement"]
      146 GETUPVAL                         R13 3
      147 DUPTABLE                         R14 K43 [{"chips", "size", "variant"}]
      148 SETTABLEKS                       R7 R14 K41 ["chips"]
      150 GETUPVAL                         R15 4
      151 GETTABLEKS                       R15 R15 K44 ["Medium"]
      153 SETTABLEKS                       R15 R14 K30 ["size"]
      155 GETUPVAL                         R15 5
      156 GETTABLEKS                       R15 R15 K45 ["Wrap"]
      158 SETTABLEKS                       R15 R14 K42 ["variant"]
      160 CALL                             R12 2 1
      161 SETTABLEKS                       R12 R11 K32 ["Chips"]
      163 CALL                             R8 3 -1
      164 RETURN                           R8 -1
      165 DUPTABLE                         R7 K47 [{"Layout", "Padding"}]
      166 GETUPVAL                         R8 1
      167 GETTABLEKS                       R8 R8 K22 ["createElement"]
      169 LOADK                            R9 K48 ["UIListLayout"]
      170 DUPTABLE                         R10 K52 [{"Padding", "HorizontalAlignment", "SortOrder", "FillDirection"}]
      171 GETTABLEKS                       R11 R2 K29 ["collaboratorFilter"]
      173 GETTABLEKS                       R11 R11 K53 ["pills"]
      175 GETTABLEKS                       R11 R11 K39 ["paddingHorizontal"]
      177 SETTABLEKS                       R11 R10 K31 ["Padding"]
      179 GETIMPORT                        R11 K56 [Enum.HorizontalAlignment.Left]
      181 SETTABLEKS                       R11 R10 K49 ["HorizontalAlignment"]
      183 GETIMPORT                        R11 K57 [Enum.SortOrder.LayoutOrder]
      185 SETTABLEKS                       R11 R10 K50 ["SortOrder"]
      187 GETIMPORT                        R11 K59 [Enum.FillDirection.Horizontal]
      189 SETTABLEKS                       R11 R10 K51 ["FillDirection"]
      191 LOADNIL                          R11
      192 CALL                             R8 3 1
      193 SETTABLEKS                       R8 R7 K46 ["Layout"]
      195 GETUPVAL                         R8 1
      196 GETTABLEKS                       R8 R8 K22 ["createElement"]
      198 LOADK                            R9 K34 ["UIPadding"]
      199 DUPTABLE                         R10 K38 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      200 GETTABLEKS                       R11 R2 K29 ["collaboratorFilter"]
      202 GETTABLEKS                       R11 R11 K39 ["paddingHorizontal"]
      204 SETTABLEKS                       R11 R10 K35 ["PaddingLeft"]
      206 GETTABLEKS                       R11 R2 K29 ["collaboratorFilter"]
      208 GETTABLEKS                       R11 R11 K39 ["paddingHorizontal"]
      210 SETTABLEKS                       R11 R10 K36 ["PaddingRight"]
      212 GETTABLEKS                       R11 R2 K29 ["collaboratorFilter"]
      214 GETTABLEKS                       R11 R11 K40 ["paddingTop"]
      216 SETTABLEKS                       R11 R10 K37 ["PaddingTop"]
      218 CALL                             R8 2 1
      219 SETTABLEKS                       R8 R7 K31 ["Padding"]
      221 GETIMPORT                        R8 K61 [pairs]
      223 GETTABLEKS                       R9 R1 K5 ["FilterPills"]
      225 CALL                             R8 1 3
      226 FORGPREP_NEXT                    R8
      227 MOVE                             R14 R7
      228 GETUPVAL                         R15 1
      229 GETTABLEKS                       R15 R15 K22 ["createElement"]
      231 GETUPVAL                         R16 6
      232 DUPTABLE                         R17 K68 [{["LayoutOrder"], ["Style"] = "Pill", ["Size"], ["Text"], ["StyleModifier"], ["ZIndex"] = 1, ["OnClick"]}]
      233 SETTABLEKS                       R11 R17 K24 ["LayoutOrder"]
      235 GETTABLEKS                       R18 R2 K29 ["collaboratorFilter"]
      237 GETTABLEKS                       R18 R18 K53 ["pills"]
      239 GETTABLEKS                       R18 R18 K30 ["size"]
      241 SETTABLEKS                       R18 R17 K25 ["Size"]
      243 GETTABLEKS                       R19 R12 K8 ["key"]
      245 GETTABLE                         R18 R6 R19
      246 SETTABLEKS                       R18 R17 K64 ["Text"]
      248 GETTABLEKS                       R19 R5 K8 ["key"]
      250 GETTABLEKS                       R20 R12 K8 ["key"]
      252 JUMPIFNOTEQ                      R19 R20 ; [+5]
      254 GETUPVAL                         R18 7
      255 GETTABLEKS                       R18 R18 K69 ["Hover"]
      257 JUMP                             ; [+1]
      258 LOADNIL                          R18
      259 SETTABLEKS                       R18 R17 K65 ["StyleModifier"]
      261 NEWCLOSURE                       R18 P1
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R12
      264 SETTABLEKS                       R18 R17 K67 ["OnClick"]
      266 CALL                             R15 2 -1
      267 FASTCALL                         TABLE_INSERT ; [+2]
      268 GETIMPORT                        R13 K21 [table.insert]
      270 CALL                             R13 -1 0
      271 FORGLOOP                         R8 2 ; [-45]
      273 GETUPVAL                         R8 1
      274 GETTABLEKS                       R8 R8 K22 ["createElement"]
      276 LOADK                            R9 K23 ["Frame"]
      277 DUPTABLE                         R10 K28 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      278 GETTABLEKS                       R12 R1 K24 ["LayoutOrder"]
      280 ORK                              R11 R12 K27 [1]
      281 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
      283 GETTABLEKS                       R11 R2 K29 ["collaboratorFilter"]
      285 GETTABLEKS                       R11 R11 K30 ["size"]
      287 SETTABLEKS                       R11 R10 K25 ["Size"]
      289 MOVE                             R11 R7
      290 CALL                             R8 3 -1
      291 RETURN                           R8 -1

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"FilterPills", "SelectedPill", "IsGroupGame"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["FilterPills"]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["SelectedPill"]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["IsGroupGame"]
       16 RETURN                           R2 1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
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
       27 GETTABLEKS                       R4 R4 K8 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Bin"]
       41 GETTABLEKS                       R6 R6 K11 ["defineLuaFlags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["Packages"]
       48 GETTABLEKS                       R7 R7 K12 ["Framework"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R6 K13 ["Style"]
       53 GETTABLEKS                       R7 R7 K14 ["Stylizer"]
       55 GETTABLEKS                       R8 R6 K15 ["ContextServices"]
       57 GETTABLEKS                       R9 R8 K16 ["withContext"]
       59 GETTABLEKS                       R10 R8 K17 ["Localization"]
       61 GETTABLEKS                       R11 R6 K18 ["Util"]
       63 GETTABLEKS                       R11 R11 K19 ["StyleModifier"]
       65 GETTABLEKS                       R12 R6 K20 ["UI"]
       67 GETTABLEKS                       R12 R12 K21 ["Button"]
       69 GETTABLEKS                       R13 R4 K22 ["ChipGroup"]
       71 GETTABLEKS                       R14 R4 K23 ["Enums"]
       73 GETTABLEKS                       R14 R14 K24 ["ChipGroupVariant"]
       75 GETTABLEKS                       R15 R4 K23 ["Enums"]
       77 GETTABLEKS                       R15 R15 K25 ["ChipSize"]
       79 GETIMPORT                        R16 K4 [require]
       81 GETTABLEKS                       R17 R0 K26 ["Src"]
       83 GETTABLEKS                       R17 R17 K27 ["Selectors"]
       85 GETTABLEKS                       R17 R17 K28 ["GetFilterPills"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K4 [require]
       90 GETTABLEKS                       R18 R0 K26 ["Src"]
       92 GETTABLEKS                       R18 R18 K27 ["Selectors"]
       94 GETTABLEKS                       R18 R18 K29 ["GetSelectedFilterPill"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K4 [require]
       99 GETTABLEKS                       R19 R0 K26 ["Src"]
      101 GETTABLEKS                       R19 R19 K30 ["Thunks"]
      103 GETTABLEKS                       R19 R19 K31 ["SetSelectedFilterPill"]
      105 CALL                             R18 1 1
      106 GETIMPORT                        R19 K4 [require]
      108 GETTABLEKS                       R20 R0 K26 ["Src"]
      110 GETTABLEKS                       R20 R20 K27 ["Selectors"]
      112 GETTABLEKS                       R20 R20 K32 ["IsGroupGame"]
      114 CALL                             R19 1 1
      115 GETTABLEKS                       R20 R1 K33 ["PureComponent"]
      117 LOADK                            R22 K34 ["CollaboratorFilterWidget"]
      118 NAMECALL                         R20 R20 K35 ["extend"]
      120 CALL                             R20 2 1
      121 DUPCLOSURE                       R21 K36 [PROTO_2]
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R11
      130 SETTABLEKS                       R21 R20 K37 ["render"]
      132 MOVE                             R21 R9
      133 DUPTABLE                         R22 K38 [{"Stylizer", "Localization"}]
      134 SETTABLEKS                       R7 R22 K14 ["Stylizer"]
      136 SETTABLEKS                       R10 R22 K17 ["Localization"]
      138 CALL                             R21 1 1
      139 MOVE                             R22 R20
      140 CALL                             R21 1 1
      141 MOVE                             R20 R21
      142 GETTABLEKS                       R21 R2 K39 ["connect"]
      144 DUPCLOSURE                       R22 K40 [PROTO_3]
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R19
      148 DUPCLOSURE                       R23 K41 [PROTO_5]
      149 CAPTURE                          VAL R18
      150 CALL                             R21 2 1
      151 MOVE                             R22 R20
      152 CALL                             R21 1 1
      153 MOVE                             R20 R21
      154 RETURN                           R20 1
