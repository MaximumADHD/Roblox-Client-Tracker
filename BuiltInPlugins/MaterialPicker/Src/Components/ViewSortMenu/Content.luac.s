PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K8 [{["LayoutOrder"], ["Size"], ["Text"], ["tag"] = "text-caption-medium text-align-x-left content-default"}]
       11 GETTABLEKS                       R5 R0 K9 ["layoutOrder"]
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 GETIMPORT                        R5 K12 [UDim2.new]
       17 LOADN                            R6 1
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 GETTABLEKS                       R9 R1 K4 ["Size"]
       22 GETTABLEKS                       R9 R9 K13 ["Size_800"]
       24 CALL                             R5 4 1
       25 SETTABLEKS                       R5 R4 K4 ["Size"]
       27 GETTABLEKS                       R5 R0 K14 ["text"]
       29 SETTABLEKS                       R5 R4 K5 ["Text"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onViewTypeChanged"]
        3 LOADK                            R1 K1 ["grid"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onViewTypeChanged"]
        3 LOADK                            R1 K1 ["list"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSortTypeChanged"]
        3 LOADK                            R1 K1 ["name"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSortTypeChanged"]
        3 LOADK                            R1 K1 ["recentlyUsed"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSortTypeChanged"]
        3 LOADK                            R1 K1 ["slotNumber"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       10 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 3
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 3
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R0
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 3
       22 NEWCLOSURE                       R6 P2
       23 CAPTURE                          VAL R0
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 3
       26 NEWCLOSURE                       R7 P3
       27 CAPTURE                          VAL R0
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 3
       30 NEWCLOSURE                       R8 P4
       31 CAPTURE                          VAL R0
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 4
       34 CALL                             R8 0 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K4 ["createElement"]
       38 GETUPVAL                         R10 5
       39 DUPTABLE                         R11 K10 [{["Size"], ["tag"] = "col auto-y padding-xsmall", ["testId"] = "terrain-material-view-sort-menu-content"}]
       40 GETIMPORT                        R12 K13 [UDim2.fromOffset]
       42 LOADN                            R13 168
       43 LOADN                            R14 0
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K5 ["Size"]
       47 DUPTABLE                         R12 K22 [{"ViewTitle", "Grid", "List", "Divider", "SortTitle", "Name", "RecentlyUsed", "SlotNumber"}]
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K4 ["createElement"]
       51 GETUPVAL                         R14 6
       52 DUPTABLE                         R15 K25 [{"layoutOrder", "text"}]
       53 MOVE                             R16 R8
       54 CALL                             R16 0 1
       55 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
       57 LOADK                            R18 K26 ["Plugin"]
       58 LOADK                            R19 K27 ["ViewGroup"]
       59 NAMECALL                         R16 R1 K28 ["getText"]
       61 CALL                             R16 3 1
       62 SETTABLEKS                       R16 R15 K24 ["text"]
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K14 ["ViewTitle"]
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R13 R13 K4 ["createElement"]
       70 GETUPVAL                         R14 7
       71 DUPTABLE                         R15 K32 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-grid", ["text"]}]
       72 GETTABLEKS                       R17 R0 K33 ["viewType"]
       74 JUMPIFEQKS                       R17 K34 ["grid"] ; [+2]
       76 LOADB                            R16 0 +1
       77 LOADB                            R16 1
       78 SETTABLEKS                       R16 R15 K29 ["isChecked"]
       80 MOVE                             R16 R8
       81 CALL                             R16 0 1
       82 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
       84 SETTABLEKS                       R3 R15 K30 ["onActivated"]
       86 LOADK                            R18 K26 ["Plugin"]
       87 LOADK                            R19 K35 ["GridViewLabel"]
       88 NAMECALL                         R16 R1 K28 ["getText"]
       90 CALL                             R16 3 1
       91 SETTABLEKS                       R16 R15 K24 ["text"]
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K15 ["Grid"]
       96 GETUPVAL                         R13 0
       97 GETTABLEKS                       R13 R13 K4 ["createElement"]
       99 GETUPVAL                         R14 7
      100 DUPTABLE                         R15 K37 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-list", ["text"]}]
      101 GETTABLEKS                       R17 R0 K33 ["viewType"]
      103 JUMPIFEQKS                       R17 K38 ["list"] ; [+2]
      105 LOADB                            R16 0 +1
      106 LOADB                            R16 1
      107 SETTABLEKS                       R16 R15 K29 ["isChecked"]
      109 MOVE                             R16 R8
      110 CALL                             R16 0 1
      111 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
      113 SETTABLEKS                       R4 R15 K30 ["onActivated"]
      115 LOADK                            R18 K26 ["Plugin"]
      116 LOADK                            R19 K39 ["ListViewLabel"]
      117 NAMECALL                         R16 R1 K28 ["getText"]
      119 CALL                             R16 3 1
      120 SETTABLEKS                       R16 R15 K24 ["text"]
      122 CALL                             R13 2 1
      123 SETTABLEKS                       R13 R12 K16 ["List"]
      125 GETUPVAL                         R13 0
      126 GETTABLEKS                       R13 R13 K4 ["createElement"]
      128 GETUPVAL                         R14 5
      129 DUPTABLE                         R15 K42 [{"LayoutOrder", "Size", "backgroundStyle"}]
      130 MOVE                             R16 R8
      131 CALL                             R16 0 1
      132 SETTABLEKS                       R16 R15 K40 ["LayoutOrder"]
      134 GETIMPORT                        R16 K44 [UDim2.new]
      136 LOADN                            R17 1
      137 LOADN                            R18 0
      138 LOADN                            R19 0
      139 GETTABLEKS                       R20 R2 K45 ["Stroke"]
      141 GETTABLEKS                       R20 R20 K46 ["Standard"]
      143 CALL                             R16 4 1
      144 SETTABLEKS                       R16 R15 K5 ["Size"]
      146 GETTABLEKS                       R16 R2 K47 ["Color"]
      148 GETTABLEKS                       R16 R16 K45 ["Stroke"]
      150 GETTABLEKS                       R16 R16 K48 ["Default"]
      152 SETTABLEKS                       R16 R15 K41 ["backgroundStyle"]
      154 CALL                             R13 2 1
      155 SETTABLEKS                       R13 R12 K17 ["Divider"]
      157 GETUPVAL                         R13 0
      158 GETTABLEKS                       R13 R13 K4 ["createElement"]
      160 GETUPVAL                         R14 6
      161 DUPTABLE                         R15 K25 [{"layoutOrder", "text"}]
      162 MOVE                             R16 R8
      163 CALL                             R16 0 1
      164 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
      166 LOADK                            R18 K26 ["Plugin"]
      167 LOADK                            R19 K49 ["SortGroup"]
      168 NAMECALL                         R16 R1 K28 ["getText"]
      170 CALL                             R16 3 1
      171 SETTABLEKS                       R16 R15 K24 ["text"]
      173 CALL                             R13 2 1
      174 SETTABLEKS                       R13 R12 K18 ["SortTitle"]
      176 GETUPVAL                         R13 0
      177 GETTABLEKS                       R13 R13 K4 ["createElement"]
      179 GETUPVAL                         R14 7
      180 DUPTABLE                         R15 K51 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-name", ["text"]}]
      181 GETTABLEKS                       R17 R0 K52 ["sortType"]
      183 JUMPIFEQKS                       R17 K53 ["name"] ; [+2]
      185 LOADB                            R16 0 +1
      186 LOADB                            R16 1
      187 SETTABLEKS                       R16 R15 K29 ["isChecked"]
      189 MOVE                             R16 R8
      190 CALL                             R16 0 1
      191 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
      193 SETTABLEKS                       R5 R15 K30 ["onActivated"]
      195 LOADK                            R18 K26 ["Plugin"]
      196 LOADK                            R19 K54 ["NameLabel"]
      197 NAMECALL                         R16 R1 K28 ["getText"]
      199 CALL                             R16 3 1
      200 SETTABLEKS                       R16 R15 K24 ["text"]
      202 CALL                             R13 2 1
      203 SETTABLEKS                       R13 R12 K19 ["Name"]
      205 GETUPVAL                         R13 0
      206 GETTABLEKS                       R13 R13 K4 ["createElement"]
      208 GETUPVAL                         R14 7
      209 DUPTABLE                         R15 K56 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-recently-used", ["text"]}]
      210 GETTABLEKS                       R17 R0 K52 ["sortType"]
      212 JUMPIFEQKS                       R17 K57 ["recentlyUsed"] ; [+2]
      214 LOADB                            R16 0 +1
      215 LOADB                            R16 1
      216 SETTABLEKS                       R16 R15 K29 ["isChecked"]
      218 MOVE                             R16 R8
      219 CALL                             R16 0 1
      220 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
      222 SETTABLEKS                       R6 R15 K30 ["onActivated"]
      224 LOADK                            R18 K26 ["Plugin"]
      225 LOADK                            R19 K58 ["RecentlyUsedLabel"]
      226 NAMECALL                         R16 R1 K28 ["getText"]
      228 CALL                             R16 3 1
      229 SETTABLEKS                       R16 R15 K24 ["text"]
      231 CALL                             R13 2 1
      232 SETTABLEKS                       R13 R12 K20 ["RecentlyUsed"]
      234 GETUPVAL                         R13 0
      235 GETTABLEKS                       R13 R13 K4 ["createElement"]
      237 GETUPVAL                         R14 7
      238 DUPTABLE                         R15 K60 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-slot-number", ["text"]}]
      239 GETTABLEKS                       R17 R0 K52 ["sortType"]
      241 JUMPIFEQKS                       R17 K61 ["slotNumber"] ; [+2]
      243 LOADB                            R16 0 +1
      244 LOADB                            R16 1
      245 SETTABLEKS                       R16 R15 K29 ["isChecked"]
      247 MOVE                             R16 R8
      248 CALL                             R16 0 1
      249 SETTABLEKS                       R16 R15 K23 ["layoutOrder"]
      251 SETTABLEKS                       R7 R15 K30 ["onActivated"]
      253 LOADK                            R18 K26 ["Plugin"]
      254 LOADK                            R19 K62 ["SlotNumberLabel"]
      255 NAMECALL                         R16 R1 K28 ["getText"]
      257 CALL                             R16 3 1
      258 SETTABLEKS                       R16 R15 K24 ["text"]
      260 CALL                             R13 2 1
      261 SETTABLEKS                       R13 R12 K21 ["SlotNumber"]
      263 CALL                             R9 3 -1
      264 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K11 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["Item"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R4 K15 ["Contexts"]
       53 GETTABLEKS                       R7 R7 K16 ["Localization"]
       55 GETTABLEKS                       R8 R1 K17 ["Text"]
       57 GETTABLEKS                       R9 R1 K18 ["View"]
       59 GETTABLEKS                       R10 R3 K19 ["createNextOrder"]
       61 GETTABLEKS                       R11 R3 K20 ["useEventCallback"]
       63 DUPCLOSURE                       R12 K21 [PROTO_0]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R13 K22 [PROTO_6]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R5
       76 RETURN                           R13 1
