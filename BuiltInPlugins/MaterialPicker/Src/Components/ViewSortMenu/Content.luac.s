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
        3 LOADK                            R1 K1 ["slotNumber"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

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
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       32 DUPCLOSURE                       R8 K5 [PROTO_5]
       33 NEWTABLE                         R9 0 0
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 4
       37 CALL                             R8 0 1
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K6 ["createElement"]
       41 GETUPVAL                         R10 5
       42 DUPTABLE                         R11 K12 [{["Size"], ["tag"] = "col auto-y padding-xsmall", ["testId"] = "terrain-material-view-sort-menu-content"}]
       43 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       45 LOADN                            R13 168
       46 LOADN                            R14 0
       47 CALL                             R12 2 1
       48 SETTABLEKS                       R12 R11 K7 ["Size"]
       50 DUPTABLE                         R12 K24 [{"ViewTitle", "Grid", "List", "Divider", "SortTitle", "Name", "RecentlyUsed", "SlotNumber"}]
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K6 ["createElement"]
       54 GETUPVAL                         R14 6
       55 DUPTABLE                         R15 K27 [{"layoutOrder", "text"}]
       56 MOVE                             R16 R8
       57 CALL                             R16 0 1
       58 SETTABLEKS                       R16 R15 K25 ["layoutOrder"]
       60 LOADK                            R18 K28 ["Plugin"]
       61 LOADK                            R19 K29 ["ViewGroup"]
       62 NAMECALL                         R16 R1 K30 ["getText"]
       64 CALL                             R16 3 1
       65 SETTABLEKS                       R16 R15 K26 ["text"]
       67 CALL                             R13 2 1
       68 SETTABLEKS                       R13 R12 K16 ["ViewTitle"]
       70 GETUPVAL                         R13 0
       71 GETTABLEKS                       R13 R13 K6 ["createElement"]
       73 GETUPVAL                         R14 7
       74 DUPTABLE                         R15 K34 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-grid", ["text"]}]
       75 GETTABLEKS                       R17 R0 K35 ["viewType"]
       77 JUMPIFEQKS                       R17 K36 ["grid"] ; [+2]
       79 LOADB                            R16 0 +1
       80 LOADB                            R16 1
       81 SETTABLEKS                       R16 R15 K31 ["isChecked"]
       83 MOVE                             R16 R8
       84 CALL                             R16 0 1
       85 SETTABLEKS                       R16 R15 K25 ["layoutOrder"]
       87 SETTABLEKS                       R3 R15 K32 ["onActivated"]
       89 LOADK                            R18 K28 ["Plugin"]
       90 LOADK                            R19 K37 ["GridViewLabel"]
       91 NAMECALL                         R16 R1 K30 ["getText"]
       93 CALL                             R16 3 1
       94 SETTABLEKS                       R16 R15 K26 ["text"]
       96 CALL                             R13 2 1
       97 SETTABLEKS                       R13 R12 K17 ["Grid"]
       99 GETUPVAL                         R13 0
      100 GETTABLEKS                       R13 R13 K6 ["createElement"]
      102 GETUPVAL                         R14 7
      103 DUPTABLE                         R15 K39 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-list", ["text"]}]
      104 GETTABLEKS                       R17 R0 K35 ["viewType"]
      106 JUMPIFEQKS                       R17 K40 ["list"] ; [+2]
      108 LOADB                            R16 0 +1
      109 LOADB                            R16 1
      110 SETTABLEKS                       R16 R15 K31 ["isChecked"]
      112 MOVE                             R16 R8
      113 CALL                             R16 0 1
      114 SETTABLEKS                       R16 R15 K25 ["layoutOrder"]
      116 SETTABLEKS                       R4 R15 K32 ["onActivated"]
      118 LOADK                            R18 K28 ["Plugin"]
      119 LOADK                            R19 K41 ["ListViewLabel"]
      120 NAMECALL                         R16 R1 K30 ["getText"]
      122 CALL                             R16 3 1
      123 SETTABLEKS                       R16 R15 K26 ["text"]
      125 CALL                             R13 2 1
      126 SETTABLEKS                       R13 R12 K18 ["List"]
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R13 R13 K6 ["createElement"]
      131 GETUPVAL                         R14 5
      132 DUPTABLE                         R15 K44 [{"LayoutOrder", "Size", "backgroundStyle"}]
      133 MOVE                             R16 R8
      134 CALL                             R16 0 1
      135 SETTABLEKS                       R16 R15 K42 ["LayoutOrder"]
      137 GETIMPORT                        R16 K46 [UDim2.new]
      139 LOADN                            R17 1
      140 LOADN                            R18 0
      141 LOADN                            R19 0
      142 GETTABLEKS                       R20 R2 K47 ["Stroke"]
      144 GETTABLEKS                       R20 R20 K48 ["Standard"]
      146 CALL                             R16 4 1
      147 SETTABLEKS                       R16 R15 K7 ["Size"]
      149 GETTABLEKS                       R16 R2 K49 ["Color"]
      151 GETTABLEKS                       R16 R16 K47 ["Stroke"]
      153 GETTABLEKS                       R16 R16 K50 ["Default"]
      155 SETTABLEKS                       R16 R15 K43 ["backgroundStyle"]
      157 CALL                             R13 2 1
      158 SETTABLEKS                       R13 R12 K19 ["Divider"]
      160 GETUPVAL                         R13 0
      161 GETTABLEKS                       R13 R13 K6 ["createElement"]
      163 GETUPVAL                         R14 6
      164 DUPTABLE                         R15 K27 [{"layoutOrder", "text"}]
      165 MOVE                             R16 R8
      166 CALL                             R16 0 1
      167 SETTABLEKS                       R16 R15 K25 ["layoutOrder"]
      169 LOADK                            R18 K28 ["Plugin"]
      170 LOADK                            R19 K51 ["SortGroup"]
      171 NAMECALL                         R16 R1 K30 ["getText"]
      173 CALL                             R16 3 1
      174 SETTABLEKS                       R16 R15 K26 ["text"]
      176 CALL                             R13 2 1
      177 SETTABLEKS                       R13 R12 K20 ["SortTitle"]
      179 GETUPVAL                         R13 0
      180 GETTABLEKS                       R13 R13 K6 ["createElement"]
      182 GETUPVAL                         R14 7
      183 DUPTABLE                         R15 K53 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-name", ["text"]}]
      184 GETTABLEKS                       R17 R0 K54 ["sortType"]
      186 JUMPIFEQKS                       R17 K55 ["name"] ; [+2]
      188 LOADB                            R16 0 +1
      189 LOADB                            R16 1
      190 SETTABLEKS                       R16 R15 K31 ["isChecked"]
      192 MOVE                             R16 R8
      193 CALL                             R16 0 1
      194 SETTABLEKS                       R16 R15 K25 ["layoutOrder"]
      196 SETTABLEKS                       R5 R15 K32 ["onActivated"]
      198 LOADK                            R18 K28 ["Plugin"]
      199 LOADK                            R19 K56 ["NameLabel"]
      200 NAMECALL                         R16 R1 K30 ["getText"]
      202 CALL                             R16 3 1
      203 SETTABLEKS                       R16 R15 K26 ["text"]
      205 CALL                             R13 2 1
      206 SETTABLEKS                       R13 R12 K21 ["Name"]
      208 GETUPVAL                         R13 0
      209 GETTABLEKS                       R13 R13 K6 ["createElement"]
      211 GETUPVAL                         R14 7
      212 DUPTABLE                         R15 K61 [{["isChecked"] = False, ["isDisabled"] = True, ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-recently-used", ["text"]}]
      213 MOVE                             R16 R8
      214 CALL                             R16 0 1
      215 SETTABLEKS                       R16 R15 K25 ["layoutOrder"]
      217 SETTABLEKS                       R7 R15 K32 ["onActivated"]
      219 LOADK                            R18 K28 ["Plugin"]
      220 LOADK                            R19 K62 ["RecentlyUsedLabel"]
      221 NAMECALL                         R16 R1 K30 ["getText"]
      223 CALL                             R16 3 1
      224 SETTABLEKS                       R16 R15 K26 ["text"]
      226 CALL                             R13 2 1
      227 SETTABLEKS                       R13 R12 K22 ["RecentlyUsed"]
      229 GETUPVAL                         R13 0
      230 GETTABLEKS                       R13 R13 K6 ["createElement"]
      232 GETUPVAL                         R14 7
      233 DUPTABLE                         R15 K64 [{["isChecked"], ["layoutOrder"], ["onActivated"], ["testId"] = "terrain-material-view-sort-slot-number", ["text"]}]
      234 GETTABLEKS                       R17 R0 K54 ["sortType"]
      236 JUMPIFEQKS                       R17 K65 ["slotNumber"] ; [+2]
      238 LOADB                            R16 0 +1
      239 LOADB                            R16 1
      240 SETTABLEKS                       R16 R15 K31 ["isChecked"]
      242 MOVE                             R16 R8
      243 CALL                             R16 0 1
      244 SETTABLEKS                       R16 R15 K25 ["layoutOrder"]
      246 SETTABLEKS                       R6 R15 K32 ["onActivated"]
      248 LOADK                            R18 K28 ["Plugin"]
      249 LOADK                            R19 K66 ["SlotNumberLabel"]
      250 NAMECALL                         R16 R1 K30 ["getText"]
      252 CALL                             R16 3 1
      253 SETTABLEKS                       R16 R15 K26 ["text"]
      255 CALL                             R13 2 1
      256 SETTABLEKS                       R13 R12 K23 ["SlotNumber"]
      258 CALL                             R9 3 -1
      259 RETURN                           R9 -1

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
