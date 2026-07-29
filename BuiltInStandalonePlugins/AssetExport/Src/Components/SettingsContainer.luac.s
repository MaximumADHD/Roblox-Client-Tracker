PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setFormat"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K1 ["createElement"]
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K2 ["Dropdown"]
       17 GETTABLEKS                       R5 R5 K3 ["Root"]
       19 DUPTABLE                         R6 K11 [{"label", "value", "size", "onItemChanged", "items", "isDisabled", "LayoutOrder"}]
       20 LOADK                            R9 K12 ["SettingName"]
       21 LOADK                            R10 K13 ["Format"]
       22 NAMECALL                         R7 R1 K14 ["getText"]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K4 ["label"]
       27 SETTABLEKS                       R3 R6 K5 ["value"]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K15 ["Enums"]
       32 GETTABLEKS                       R7 R7 K16 ["InputSize"]
       34 GETTABLEKS                       R7 R7 K17 ["Small"]
       36 SETTABLEKS                       R7 R6 K6 ["size"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R7 R6 K7 ["onItemChanged"]
       42 GETUPVAL                         R7 5
       43 SETTABLEKS                       R7 R6 K8 ["items"]
       45 GETTABLEKS                       R8 R0 K18 ["settingsEnabled"]
       47 NOT                              R7 R8
       48 SETTABLEKS                       R7 R6 K9 ["isDisabled"]
       50 GETTABLEKS                       R7 R0 K19 ["layoutOrder"]
       52 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

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
       10 JUMPIFNOT                        R3 ; [+86]
       11 NAMECALL                         R3 R2 K1 ["getSettingNames"]
       13 CALL                             R3 1 1
       14 NEWTABLE                         R4 4 0
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K2 ["createElement"]
       19 GETUPVAL                         R6 4
       20 DUPTABLE                         R7 K6 [{["settingsEnabled"], ["layoutOrder"] = 1}]
       21 GETTABLEKS                       R8 R0 K3 ["settingsEnabled"]
       23 SETTABLEKS                       R8 R7 K3 ["settingsEnabled"]
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K7 ["FormatSelector"]
       28 LENGTH                           R5 R3
       29 LOADN                            R6 0
       30 JUMPIFNOTLT                      R6 R5 ; [+52]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K2 ["createElement"]
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K8 ["Text"]
       38 DUPTABLE                         R7 K13 [{["Text"], ["tag"] = "grow size-full-400 text-title-medium text-align-x-left", ["LayoutOrder"] = 2}]
       39 LOADK                            R10 K14 ["SettingTitle"]
       40 LOADK                            R11 K15 ["Include"]
       41 NAMECALL                         R8 R1 K16 ["getText"]
       43 CALL                             R8 3 1
       44 SETTABLEKS                       R8 R7 K8 ["Text"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K17 ["title"]
       49 NEWTABLE                         R5 0 0
       51 MOVE                             R6 R3
       52 LOADNIL                          R7
       53 LOADNIL                          R8
       54 FORGPREP                         R6
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K2 ["createElement"]
       58 GETUPVAL                         R12 6
       59 DUPTABLE                         R13 K19 [{"setting", "settingsEnabled", "layoutOrder"}]
       60 SETTABLEKS                       R10 R13 K18 ["setting"]
       62 GETTABLEKS                       R14 R0 K3 ["settingsEnabled"]
       64 SETTABLEKS                       R14 R13 K3 ["settingsEnabled"]
       66 SETTABLEKS                       R9 R13 K4 ["layoutOrder"]
       68 CALL                             R11 2 1
       69 SETTABLE                         R11 R5 R10
       70 FORGLOOP                         R6 2 ; [-16]
       72 GETUPVAL                         R6 3
       73 GETTABLEKS                       R6 R6 K2 ["createElement"]
       75 GETUPVAL                         R7 5
       76 GETTABLEKS                       R7 R7 K20 ["View"]
       78 DUPTABLE                         R8 K23 [{["tag"] = "col align-y-top gap-small size-full-0 auto-y", ["LayoutOrder"] = 3}]
       79 MOVE                             R9 R5
       80 CALL                             R6 3 1
       81 SETTABLEKS                       R6 R4 K24 ["settings"]
       83 GETUPVAL                         R5 3
       84 GETTABLEKS                       R5 R5 K2 ["createElement"]
       86 GETUPVAL                         R6 5
       87 GETTABLEKS                       R6 R6 K20 ["View"]
       89 DUPTABLE                         R7 K26 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       90 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
       92 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       94 MOVE                             R8 R4
       95 CALL                             R5 3 -1
       96 RETURN                           R5 -1
       97 NEWTABLE                         R3 0 0
       99 GETTABLEKS                       R4 R0 K24 ["settings"]
      101 LOADNIL                          R5
      102 LOADNIL                          R6
      103 FORGPREP                         R4
      104 GETUPVAL                         R9 7
      105 MOVE                             R10 R2
      106 MOVE                             R11 R8
      107 CALL                             R9 2 1
      108 LOADB                            R10 1
      109 JUMPIFNOTEQKS                    R8 K27 ["pbr"] ; [+6]
      111 LOADK                            R13 K28 ["textures"]
      112 NAMECALL                         R11 R2 K29 ["getSettingValue"]
      114 CALL                             R11 2 1
      115 MOVE                             R10 R11
      116 JUMPIFNOTEQKS                    R8 K30 ["facs"] ; [+6]
      118 LOADK                            R13 K31 ["skinning"]
      119 NAMECALL                         R11 R2 K29 ["getSettingValue"]
      121 CALL                             R11 2 1
      122 MOVE                             R10 R11
      123 JUMPIFNOT                        R10 ; [+2]
      124 MOVE                             R11 R9
      125 JUMPIF                           R11 ; [+1]
      126 LOADB                            R11 0
      127 GETUPVAL                         R12 3
      128 GETTABLEKS                       R12 R12 K2 ["createElement"]
      130 GETUPVAL                         R13 5
      131 GETTABLEKS                       R13 R13 K32 ["Checkbox"]
      133 DUPTABLE                         R14 K39 [{"label", "isChecked", "isDisabled", "onActivated", "size", "testId", "LayoutOrder"}]
      134 LOADK                            R17 K40 ["SettingName"]
      135 MOVE                             R18 R8
      136 NAMECALL                         R15 R1 K16 ["getText"]
      138 CALL                             R15 3 1
      139 SETTABLEKS                       R15 R14 K33 ["label"]
      141 SETTABLEKS                       R11 R14 K34 ["isChecked"]
      143 NOT                              R15 R10
      144 JUMPIF                           R15 ; [+3]
      145 GETTABLEKS                       R16 R0 K3 ["settingsEnabled"]
      147 NOT                              R15 R16
      148 SETTABLEKS                       R15 R14 K35 ["isDisabled"]
      150 NEWCLOSURE                       R15 P0
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R8
      153 SETTABLEKS                       R15 R14 K36 ["onActivated"]
      155 GETUPVAL                         R15 5
      156 GETTABLEKS                       R15 R15 K41 ["Enums"]
      158 GETTABLEKS                       R15 R15 K42 ["CheckboxSize"]
      160 GETTABLEKS                       R15 R15 K43 ["Small"]
      162 SETTABLEKS                       R15 R14 K37 ["size"]
      164 SETTABLEKS                       R8 R14 K38 ["testId"]
      166 SETTABLEKS                       R7 R14 K11 ["LayoutOrder"]
      168 CALL                             R12 2 1
      169 SETTABLE                         R12 R3 R8
      170 FORGLOOP                         R4 2 ; [-67]
      172 GETUPVAL                         R4 3
      173 GETTABLEKS                       R4 R4 K2 ["createElement"]
      175 GETUPVAL                         R5 5
      176 GETTABLEKS                       R5 R5 K20 ["View"]
      178 DUPTABLE                         R6 K44 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      179 DUPTABLE                         R7 K45 [{"title", "settings"}]
      180 GETUPVAL                         R8 3
      181 GETTABLEKS                       R8 R8 K2 ["createElement"]
      183 GETUPVAL                         R9 5
      184 GETTABLEKS                       R9 R9 K8 ["Text"]
      186 DUPTABLE                         R10 K46 [{["Text"], ["tag"] = "grow size-full-400 text-title-medium text-align-x-left"}]
      187 LOADK                            R13 K14 ["SettingTitle"]
      188 GETTABLEKS                       R14 R0 K17 ["title"]
      190 NAMECALL                         R11 R1 K16 ["getText"]
      192 CALL                             R11 3 1
      193 SETTABLEKS                       R11 R10 K8 ["Text"]
      195 CALL                             R8 2 1
      196 SETTABLEKS                       R8 R7 K17 ["title"]
      198 GETUPVAL                         R8 3
      199 GETTABLEKS                       R8 R8 K2 ["createElement"]
      201 GETUPVAL                         R9 5
      202 GETTABLEKS                       R9 R9 K20 ["View"]
      204 DUPTABLE                         R10 K47 [{["tag"] = "col align-y-top gap-small size-full-0 auto-y"}]
      205 MOVE                             R11 R3
      206 CALL                             R8 3 1
      207 SETTABLEKS                       R8 R7 K24 ["settings"]
      209 CALL                             R4 3 -1
      210 RETURN                           R4 -1

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
       65 GETTABLEKS                       R10 R10 K20 ["useFormat"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Src"]
       72 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K21 ["useSettings"]
       76 CALL                             R10 1 1
       77 NEWTABLE                         R11 0 2
       79 DUPTABLE                         R12 K25 [{["id"], ["text"] = "glTF"}]
       80 GETTABLEKS                       R13 R7 K26 ["Gltf"]
       82 SETTABLEKS                       R13 R12 K22 ["id"]
       84 DUPTABLE                         R13 K28 [{["id"], ["text"] = "Wavefront OBJ"}]
       85 GETTABLEKS                       R14 R7 K29 ["Obj"]
       87 SETTABLEKS                       R14 R13 K22 ["id"]
       89 SETLIST                          R11 R12 2 [1]
       91 DUPCLOSURE                       R12 K30 [PROTO_1]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R11
       98 DUPCLOSURE                       R13 K31 [PROTO_3]
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R3
      104 DUPCLOSURE                       R14 K32 [PROTO_5]
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R10
      113 RETURN                           R14 1
