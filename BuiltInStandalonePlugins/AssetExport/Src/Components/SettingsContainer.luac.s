PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setFormat"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["Dropdown"]
       13 GETTABLEKS                       R4 R4 K3 ["Root"]
       15 DUPTABLE                         R5 K12 [{["label"] = "", ["value"], ["size"], ["onItemChanged"], ["items"], ["isDisabled"], ["LayoutOrder"]}]
       16 SETTABLEKS                       R2 R5 K6 ["value"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K13 ["Enums"]
       21 GETTABLEKS                       R6 R6 K14 ["InputSize"]
       23 GETTABLEKS                       R6 R6 K15 ["Small"]
       25 SETTABLEKS                       R6 R5 K7 ["size"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R6 R5 K8 ["onItemChanged"]
       31 GETUPVAL                         R6 4
       32 SETTABLEKS                       R6 R5 K9 ["items"]
       34 GETTABLEKS                       R7 R0 K16 ["settingsEnabled"]
       36 NOT                              R6 R7
       37 SETTABLEKS                       R6 R5 K10 ["isDisabled"]
       39 GETTABLEKS                       R6 R0 K17 ["layoutOrder"]
       41 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["setting"]
        4 NAMECALL                         R0 R0 K1 ["toggleSetting"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 GETTABLEKS                       R5 R0 K1 ["setting"]
       12 CALL                             R3 2 1
       13 LOADB                            R4 1
       14 GETTABLEKS                       R5 R0 K1 ["setting"]
       16 JUMPIFNOTEQKS                    R5 K2 ["pbr"] ; [+6]
       18 LOADK                            R7 K3 ["textures"]
       19 NAMECALL                         R5 R2 K4 ["getSettingValue"]
       21 CALL                             R5 2 1
       22 MOVE                             R4 R5
       23 GETTABLEKS                       R5 R0 K1 ["setting"]
       25 JUMPIFNOTEQKS                    R5 K5 ["facs"] ; [+6]
       27 LOADK                            R7 K6 ["skinning"]
       28 NAMECALL                         R5 R2 K4 ["getSettingValue"]
       30 CALL                             R5 2 1
       31 MOVE                             R4 R5
       32 JUMPIFNOT                        R4 ; [+2]
       33 MOVE                             R5 R3
       34 JUMPIF                           R5 ; [+1]
       35 LOADB                            R5 0
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K7 ["createElement"]
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K8 ["Checkbox"]
       42 DUPTABLE                         R8 K16 [{"label", "isChecked", "isDisabled", "onActivated", "size", "testId", "LayoutOrder"}]
       43 LOADK                            R11 K17 ["SettingName"]
       44 GETTABLEKS                       R12 R0 K1 ["setting"]
       46 NAMECALL                         R9 R1 K18 ["getText"]
       48 CALL                             R9 3 1
       49 SETTABLEKS                       R9 R8 K9 ["label"]
       51 SETTABLEKS                       R5 R8 K10 ["isChecked"]
       53 NOT                              R9 R4
       54 JUMPIF                           R9 ; [+3]
       55 GETTABLEKS                       R10 R0 K19 ["settingsEnabled"]
       57 NOT                              R9 R10
       58 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       60 NEWCLOSURE                       R9 P0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       65 GETUPVAL                         R9 4
       66 GETTABLEKS                       R9 R9 K20 ["Enums"]
       68 GETTABLEKS                       R9 R9 K21 ["CheckboxSize"]
       70 GETTABLEKS                       R9 R9 K22 ["Small"]
       72 SETTABLEKS                       R9 R8 K13 ["size"]
       74 GETTABLEKS                       R9 R0 K1 ["setting"]
       76 SETTABLEKS                       R9 R8 K14 ["testId"]
       78 GETTABLEKS                       R9 R0 K23 ["layoutOrder"]
       80 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       82 CALL                             R6 2 1
       83 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["toggleSetting"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+107]
       11 NAMECALL                         R3 R2 K1 ["getSettingNames"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 3
       15 MOVE                             R5 R2
       16 CALL                             R4 1 1
       17 NEWTABLE                         R5 4 0
       19 JUMPIF                           R4 ; [+29]
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K2 ["createElement"]
       23 GETUPVAL                         R7 5
       24 GETTABLEKS                       R7 R7 K3 ["Text"]
       26 DUPTABLE                         R8 K8 [{["Text"], ["tag"] = "grow size-full-400 text-title-small text-align-x-left", ["LayoutOrder"] = 1}]
       27 LOADK                            R11 K9 ["SettingName"]
       28 LOADK                            R12 K10 ["Format"]
       29 NAMECALL                         R9 R1 K11 ["getText"]
       31 CALL                             R9 3 1
       32 SETTABLEKS                       R9 R8 K3 ["Text"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K12 ["FormatTitle"]
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K2 ["createElement"]
       40 GETUPVAL                         R7 6
       41 DUPTABLE                         R8 K16 [{["settingsEnabled"], ["layoutOrder"] = 2}]
       42 GETTABLEKS                       R9 R0 K13 ["settingsEnabled"]
       44 SETTABLEKS                       R9 R8 K13 ["settingsEnabled"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K17 ["FormatSelector"]
       49 LENGTH                           R6 R3
       50 LOADN                            R7 0
       51 JUMPIFNOTLT                      R7 R6 ; [+52]
       53 GETUPVAL                         R6 4
       54 GETTABLEKS                       R6 R6 K2 ["createElement"]
       56 GETUPVAL                         R7 5
       57 GETTABLEKS                       R7 R7 K3 ["Text"]
       59 DUPTABLE                         R8 K19 [{["Text"], ["tag"] = "grow size-full-400 text-title-small text-align-x-left", ["LayoutOrder"] = 3}]
       60 LOADK                            R11 K20 ["SettingTitle"]
       61 LOADK                            R12 K21 ["Include"]
       62 NAMECALL                         R9 R1 K11 ["getText"]
       64 CALL                             R9 3 1
       65 SETTABLEKS                       R9 R8 K3 ["Text"]
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K22 ["title"]
       70 NEWTABLE                         R6 0 0
       72 MOVE                             R7 R3
       73 LOADNIL                          R8
       74 LOADNIL                          R9
       75 FORGPREP                         R7
       76 GETUPVAL                         R12 4
       77 GETTABLEKS                       R12 R12 K2 ["createElement"]
       79 GETUPVAL                         R13 7
       80 DUPTABLE                         R14 K24 [{"setting", "settingsEnabled", "layoutOrder"}]
       81 SETTABLEKS                       R11 R14 K23 ["setting"]
       83 GETTABLEKS                       R15 R0 K13 ["settingsEnabled"]
       85 SETTABLEKS                       R15 R14 K13 ["settingsEnabled"]
       87 SETTABLEKS                       R10 R14 K14 ["layoutOrder"]
       89 CALL                             R12 2 1
       90 SETTABLE                         R12 R6 R11
       91 FORGLOOP                         R7 2 ; [-16]
       93 GETUPVAL                         R7 4
       94 GETTABLEKS                       R7 R7 K2 ["createElement"]
       96 GETUPVAL                         R8 5
       97 GETTABLEKS                       R8 R8 K25 ["View"]
       99 DUPTABLE                         R9 K28 [{["tag"] = "col align-y-top gap-small size-full-0 auto-y", ["LayoutOrder"] = 4}]
      100 MOVE                             R10 R6
      101 CALL                             R7 3 1
      102 SETTABLEKS                       R7 R5 K29 ["settings"]
      104 GETUPVAL                         R6 4
      105 GETTABLEKS                       R6 R6 K2 ["createElement"]
      107 GETUPVAL                         R7 5
      108 GETTABLEKS                       R7 R7 K25 ["View"]
      110 DUPTABLE                         R8 K31 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      111 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
      113 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
      115 MOVE                             R9 R5
      116 CALL                             R6 3 -1
      117 RETURN                           R6 -1
      118 NEWTABLE                         R3 0 0
      120 GETTABLEKS                       R4 R0 K29 ["settings"]
      122 LOADNIL                          R5
      123 LOADNIL                          R6
      124 FORGPREP                         R4
      125 GETUPVAL                         R9 8
      126 MOVE                             R10 R2
      127 MOVE                             R11 R8
      128 CALL                             R9 2 1
      129 LOADB                            R10 1
      130 JUMPIFNOTEQKS                    R8 K32 ["pbr"] ; [+6]
      132 LOADK                            R13 K33 ["textures"]
      133 NAMECALL                         R11 R2 K34 ["getSettingValue"]
      135 CALL                             R11 2 1
      136 MOVE                             R10 R11
      137 JUMPIFNOTEQKS                    R8 K35 ["facs"] ; [+6]
      139 LOADK                            R13 K36 ["skinning"]
      140 NAMECALL                         R11 R2 K34 ["getSettingValue"]
      142 CALL                             R11 2 1
      143 MOVE                             R10 R11
      144 JUMPIFNOT                        R10 ; [+2]
      145 MOVE                             R11 R9
      146 JUMPIF                           R11 ; [+1]
      147 LOADB                            R11 0
      148 GETUPVAL                         R12 4
      149 GETTABLEKS                       R12 R12 K2 ["createElement"]
      151 GETUPVAL                         R13 5
      152 GETTABLEKS                       R13 R13 K37 ["Checkbox"]
      154 DUPTABLE                         R14 K44 [{"label", "isChecked", "isDisabled", "onActivated", "size", "testId", "LayoutOrder"}]
      155 LOADK                            R17 K9 ["SettingName"]
      156 MOVE                             R18 R8
      157 NAMECALL                         R15 R1 K11 ["getText"]
      159 CALL                             R15 3 1
      160 SETTABLEKS                       R15 R14 K38 ["label"]
      162 SETTABLEKS                       R11 R14 K39 ["isChecked"]
      164 NOT                              R15 R10
      165 JUMPIF                           R15 ; [+3]
      166 GETTABLEKS                       R16 R0 K13 ["settingsEnabled"]
      168 NOT                              R15 R16
      169 SETTABLEKS                       R15 R14 K40 ["isDisabled"]
      171 NEWCLOSURE                       R15 P0
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R8
      174 SETTABLEKS                       R15 R14 K41 ["onActivated"]
      176 GETUPVAL                         R15 5
      177 GETTABLEKS                       R15 R15 K45 ["Enums"]
      179 GETTABLEKS                       R15 R15 K46 ["CheckboxSize"]
      181 GETTABLEKS                       R15 R15 K47 ["Small"]
      183 SETTABLEKS                       R15 R14 K42 ["size"]
      185 SETTABLEKS                       R8 R14 K43 ["testId"]
      187 SETTABLEKS                       R7 R14 K6 ["LayoutOrder"]
      189 CALL                             R12 2 1
      190 SETTABLE                         R12 R3 R8
      191 FORGLOOP                         R4 2 ; [-67]
      193 GETUPVAL                         R4 4
      194 GETTABLEKS                       R4 R4 K2 ["createElement"]
      196 GETUPVAL                         R5 5
      197 GETTABLEKS                       R5 R5 K25 ["View"]
      199 DUPTABLE                         R6 K48 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      200 DUPTABLE                         R7 K49 [{"title", "settings"}]
      201 GETUPVAL                         R8 4
      202 GETTABLEKS                       R8 R8 K2 ["createElement"]
      204 GETUPVAL                         R9 5
      205 GETTABLEKS                       R9 R9 K3 ["Text"]
      207 DUPTABLE                         R10 K51 [{["Text"], ["tag"] = "grow size-full-400 text-title-medium text-align-x-left"}]
      208 LOADK                            R13 K20 ["SettingTitle"]
      209 GETTABLEKS                       R14 R0 K22 ["title"]
      211 NAMECALL                         R11 R1 K11 ["getText"]
      213 CALL                             R11 3 1
      214 SETTABLEKS                       R11 R10 K3 ["Text"]
      216 CALL                             R8 2 1
      217 SETTABLEKS                       R8 R7 K22 ["title"]
      219 GETUPVAL                         R8 4
      220 GETTABLEKS                       R8 R8 K2 ["createElement"]
      222 GETUPVAL                         R9 5
      223 GETTABLEKS                       R9 R9 K25 ["View"]
      225 DUPTABLE                         R10 K52 [{["tag"] = "col align-y-top gap-small size-full-0 auto-y"}]
      226 MOVE                             R11 R3
      227 CALL                             R8 3 1
      228 SETTABLEKS                       R8 R7 K29 ["settings"]
      230 CALL                             R4 3 -1
      231 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["ExportController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Util"]
       47 GETTABLEKS                       R8 R8 K16 ["ExportFormat"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Flags"]
       56 GETTABLEKS                       R9 R9 K18 ["getFFlagAsyncObjExport"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K20 ["useAnimationExportPending"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Src"]
       72 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K21 ["useFormat"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K12 ["Src"]
       81 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K22 ["useSettings"]
       85 CALL                             R11 1 1
       86 NEWTABLE                         R12 0 2
       88 DUPTABLE                         R13 K26 [{["id"], ["text"] = "glTF"}]
       89 GETTABLEKS                       R14 R7 K27 ["Gltf"]
       91 SETTABLEKS                       R14 R13 K23 ["id"]
       93 DUPTABLE                         R14 K29 [{["id"], ["text"] = "Wavefront OBJ"}]
       94 GETTABLEKS                       R15 R7 K30 ["Obj"]
       96 SETTABLEKS                       R15 R14 K23 ["id"]
       98 SETLIST                          R12 R13 2 [1]
      100 DUPCLOSURE                       R13 K31 [PROTO_1]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R12
      106 DUPCLOSURE                       R14 K32 [PROTO_3]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R3
      112 DUPCLOSURE                       R15 K33 [PROTO_5]
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R11
      122 RETURN                           R15 1
