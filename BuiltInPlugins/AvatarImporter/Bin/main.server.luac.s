PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["dispatch"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["StoreProvider"]
        6 DUPTABLE                         R2 K3 [{"store"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["store"]
       10 DUPTABLE                         R3 K5 [{"AvatarImporter"}]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K7 [{"pluginGui"}]
       16 GETUPVAL                         R7 4
       17 SETTABLEKS                       R7 R6 K6 ["pluginGui"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K4 ["AvatarImporter"]
       22 CALL                             R0 3 -1
       23 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["dispatch"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["plugin"]
        2 GETTABLEKS                       R1 R2 K1 ["enabled"]
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K2 ["SetActive"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R1 R2 K3 ["Enabled"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["update"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["DebugEnableRobloxAvatarItemConfigurer"]
       10 LOADB                            R4 0
       11 NAMECALL                         R1 R1 K6 ["DefineFastFlag"]
       13 CALL                             R1 3 0
       14 GETIMPORT                        R1 K8 [pcall]
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CALL                             R1 1 2
       18 AND                              R3 R1 R2
       19 GETIMPORT                        R4 K4 [game]
       21 LOADK                            R6 K5 ["DebugEnableRobloxAvatarItemConfigurer"]
       22 NAMECALL                         R4 R4 K10 ["GetFastFlag"]
       24 CALL                             R4 2 1
       25 JUMPIFNOT                        R4 ; [+1]
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 GETIMPORT                        R4 K12 [require]
       30 GETTABLEKS                       R6 R0 K13 ["Bin"]
       32 GETTABLEKS                       R5 R6 K14 ["defineLuaFlags"]
       34 CALL                             R4 1 0
       35 GETIMPORT                        R4 K12 [require]
       37 GETTABLEKS                       R6 R0 K15 ["src"]
       39 GETTABLEKS                       R5 R6 K16 ["Constants"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K12 [require]
       44 GETTABLEKS                       R7 R0 K15 ["src"]
       46 GETTABLEKS                       R6 R7 K17 ["Globals"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K19 [plugin]
       51 SETTABLEKS                       R6 R5 K18 ["plugin"]
       53 GETTABLEKS                       R6 R5 K18 ["plugin"]
       55 GETTABLEKS                       R8 R4 K20 ["TOOLBAR_NAME"]
       57 NAMECALL                         R6 R6 K21 ["CreateToolbar"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K22 ["toolbar"]
       62 GETIMPORT                        R6 K12 [require]
       64 GETTABLEKS                       R8 R0 K23 ["Packages"]
       66 GETTABLEKS                       R7 R8 K24 ["Roact"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K12 [require]
       71 GETTABLEKS                       R9 R0 K23 ["Packages"]
       73 GETTABLEKS                       R8 R9 K25 ["Rodux"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K12 [require]
       78 GETTABLEKS                       R10 R0 K23 ["Packages"]
       80 GETTABLEKS                       R9 R10 K26 ["RoactRodux"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K12 [require]
       85 GETTABLEKS                       R12 R0 K15 ["src"]
       87 GETTABLEKS                       R11 R12 K27 ["components"]
       89 GETTABLEKS                       R10 R11 K28 ["AvatarImporter"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K12 [require]
       94 GETTABLEKS                       R12 R0 K15 ["src"]
       96 GETTABLEKS                       R11 R12 K29 ["reducers"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K12 [require]
      101 GETTABLEKS                       R14 R0 K15 ["src"]
      103 GETTABLEKS                       R13 R14 K30 ["actions"]
      105 GETTABLEKS                       R12 R13 K31 ["ClosePlugin"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K12 [require]
      110 GETTABLEKS                       R15 R0 K15 ["src"]
      112 GETTABLEKS                       R14 R15 K30 ["actions"]
      114 GETTABLEKS                       R13 R14 K32 ["TogglePlugin"]
      116 CALL                             R12 1 1
      117 GETTABLEKS                       R14 R7 K33 ["Store"]
      119 GETTABLEKS                       R13 R14 K34 ["new"]
      121 MOVE                             R14 R10
      122 LOADNIL                          R15
      123 NEWTABLE                         R16 0 1
      125 GETTABLEKS                       R17 R7 K35 ["thunkMiddleware"]
      127 SETLIST                          R16 R17 1 [1]
      129 CALL                             R13 3 1
      130 GETTABLEKS                       R14 R5 K18 ["plugin"]
      132 GETTABLEKS                       R16 R4 K36 ["NAME"]
      134 DUPTABLE                         R17 K42 [{"Enabled", "Title", "Name", "Modal", "Size"}]
      135 LOADB                            R18 0
      136 SETTABLEKS                       R18 R17 K37 ["Enabled"]
      138 GETTABLEKS                       R18 R4 K43 ["TITLE"]
      140 SETTABLEKS                       R18 R17 K38 ["Title"]
      142 GETTABLEKS                       R18 R4 K36 ["NAME"]
      144 SETTABLEKS                       R18 R17 K39 ["Name"]
      146 LOADB                            R18 1
      147 SETTABLEKS                       R18 R17 K40 ["Modal"]
      149 GETIMPORT                        R18 K45 [Vector2.new]
      151 GETTABLEKS                       R19 R4 K46 ["BACKGROUND_WIDTH"]
      153 GETTABLEKS                       R20 R4 K47 ["BACKGROUND_HEIGHT"]
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K41 ["Size"]
      158 NAMECALL                         R14 R14 K48 ["CreateQWidgetPluginGui"]
      160 CALL                             R14 3 1
      161 GETTABLEKS                       R15 R4 K36 ["NAME"]
      163 SETTABLEKS                       R15 R14 K39 ["Name"]
      165 DUPCLOSURE                       R17 K49 [PROTO_1]
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R11
      168 NAMECALL                         R15 R14 K50 ["BindToClose"]
      170 CALL                             R15 2 0
      171 DUPCLOSURE                       R15 K51 [PROTO_2]
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R14
      177 GETTABLEKS                       R16 R6 K52 ["mount"]
      179 MOVE                             R17 R15
      180 CALL                             R17 0 1
      181 MOVE                             R18 R14
      182 CALL                             R16 2 1
      183 GETTABLEKS                       R17 R5 K22 ["toolbar"]
      185 GETTABLEKS                       R19 R4 K53 ["BUTTON_NAME"]
      187 GETTABLEKS                       R20 R4 K54 ["BUTTON_TOOLTIP"]
      189 LOADK                            R21 K55 ["rbxlocaltheme://AvatarImporter"]
      190 NAMECALL                         R17 R17 K56 ["CreateButton"]
      192 CALL                             R17 4 1
      193 GETTABLEKS                       R18 R17 K57 ["Click"]
      195 DUPCLOSURE                       R20 K58 [PROTO_3]
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R12
      198 NAMECALL                         R18 R18 K59 ["Connect"]
      200 CALL                             R18 2 0
      201 GETTABLEKS                       R18 R13 K60 ["changed"]
      203 DUPCLOSURE                       R20 K61 [PROTO_4]
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R14
      206 NAMECALL                         R18 R18 K62 ["connect"]
      208 CALL                             R18 2 0
      209 GETIMPORT                        R20 K64 [settings]
      211 CALL                             R20 0 1
      212 GETTABLEKS                       R19 R20 K65 ["Studio"]
      214 GETTABLEKS                       R18 R19 K66 ["ThemeChanged"]
      216 DUPCLOSURE                       R20 K67 [PROTO_5]
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R15
      220 NAMECALL                         R18 R18 K59 ["Connect"]
      222 CALL                             R18 2 0
      223 LOADNIL                          R18
      224 RETURN                           R18 1
