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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["StoreProvider"]
        6 DUPTABLE                         R2 K3 [{"store"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K2 ["store"]
       10 DUPTABLE                         R3 K5 [{"AvatarImporter"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["createElement"]
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
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETTABLEKS                       R1 R1 K1 ["enabled"]
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K2 ["SetActive"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R1 R2 K3 ["Enabled"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["update"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["DebugEnableRobloxAvatarItemConfigurer"]
       10 LOADB                            R4 0
       11 NAMECALL                         R1 R1 K6 ["DefineFastFlag"]
       13 CALL                             R1 3 0
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 FASTPCALL                        pcall 1 ; [+2]
       16 GETIMPORT                        R1 K9 [pcall]
       18 CALL                             R1 1 2
       19 AND                              R3 R1 R2
       20 GETIMPORT                        R4 K4 [game]
       22 LOADK                            R6 K5 ["DebugEnableRobloxAvatarItemConfigurer"]
       23 NAMECALL                         R4 R4 K10 ["GetFastFlag"]
       25 CALL                             R4 2 1
       26 JUMPIFNOT                        R4 ; [+1]
       27 JUMPIF                           R3 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R4 K12 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Bin"]
       33 GETTABLEKS                       R5 R5 K14 ["defineLuaFlags"]
       35 CALL                             R4 1 0
       36 GETIMPORT                        R4 K12 [require]
       38 GETTABLEKS                       R5 R0 K15 ["src"]
       40 GETTABLEKS                       R5 R5 K16 ["Constants"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K12 [require]
       45 GETTABLEKS                       R6 R0 K15 ["src"]
       47 GETTABLEKS                       R6 R6 K17 ["Globals"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K19 [plugin]
       52 SETTABLEKS                       R6 R5 K18 ["plugin"]
       54 GETTABLEKS                       R6 R5 K18 ["plugin"]
       56 GETTABLEKS                       R8 R4 K20 ["TOOLBAR_NAME"]
       58 NAMECALL                         R6 R6 K21 ["CreateToolbar"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K22 ["toolbar"]
       63 GETIMPORT                        R6 K12 [require]
       65 GETTABLEKS                       R7 R0 K23 ["Packages"]
       67 GETTABLEKS                       R7 R7 K24 ["Roact"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K12 [require]
       72 GETTABLEKS                       R8 R0 K23 ["Packages"]
       74 GETTABLEKS                       R8 R8 K25 ["Rodux"]
       76 CALL                             R7 1 1
       77 GETIMPORT                        R8 K12 [require]
       79 GETTABLEKS                       R9 R0 K23 ["Packages"]
       81 GETTABLEKS                       R9 R9 K26 ["RoactRodux"]
       83 CALL                             R8 1 1
       84 GETIMPORT                        R9 K12 [require]
       86 GETTABLEKS                       R10 R0 K15 ["src"]
       88 GETTABLEKS                       R10 R10 K27 ["components"]
       90 GETTABLEKS                       R10 R10 K28 ["AvatarImporter"]
       92 CALL                             R9 1 1
       93 GETIMPORT                        R10 K12 [require]
       95 GETTABLEKS                       R11 R0 K15 ["src"]
       97 GETTABLEKS                       R11 R11 K29 ["reducers"]
       99 CALL                             R10 1 1
      100 GETIMPORT                        R11 K12 [require]
      102 GETTABLEKS                       R12 R0 K15 ["src"]
      104 GETTABLEKS                       R12 R12 K30 ["actions"]
      106 GETTABLEKS                       R12 R12 K31 ["ClosePlugin"]
      108 CALL                             R11 1 1
      109 GETIMPORT                        R12 K12 [require]
      111 GETTABLEKS                       R13 R0 K15 ["src"]
      113 GETTABLEKS                       R13 R13 K30 ["actions"]
      115 GETTABLEKS                       R13 R13 K32 ["TogglePlugin"]
      117 CALL                             R12 1 1
      118 GETTABLEKS                       R13 R7 K33 ["Store"]
      120 GETTABLEKS                       R13 R13 K34 ["new"]
      122 MOVE                             R14 R10
      123 LOADNIL                          R15
      124 NEWTABLE                         R16 0 1
      126 GETTABLEKS                       R17 R7 K35 ["thunkMiddleware"]
      128 SETLIST                          R16 R17 1 [1]
      130 CALL                             R13 3 1
      131 GETTABLEKS                       R14 R5 K18 ["plugin"]
      133 GETTABLEKS                       R16 R4 K36 ["NAME"]
      135 DUPTABLE                         R17 K44 [{["Enabled"] = False, ["Title"], ["Name"], ["Modal"] = True, ["Size"]}]
      136 GETTABLEKS                       R18 R4 K45 ["TITLE"]
      138 SETTABLEKS                       R18 R17 K39 ["Title"]
      140 GETTABLEKS                       R18 R4 K36 ["NAME"]
      142 SETTABLEKS                       R18 R17 K40 ["Name"]
      144 GETIMPORT                        R18 K47 [Vector2.new]
      146 GETTABLEKS                       R19 R4 K48 ["BACKGROUND_WIDTH"]
      148 GETTABLEKS                       R20 R4 K49 ["BACKGROUND_HEIGHT"]
      150 CALL                             R18 2 1
      151 SETTABLEKS                       R18 R17 K43 ["Size"]
      153 NAMECALL                         R14 R14 K50 ["CreateQWidgetPluginGui"]
      155 CALL                             R14 3 1
      156 GETTABLEKS                       R15 R4 K36 ["NAME"]
      158 SETTABLEKS                       R15 R14 K40 ["Name"]
      160 DUPCLOSURE                       R17 K51 [PROTO_1]
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R11
      163 NAMECALL                         R15 R14 K52 ["BindToClose"]
      165 CALL                             R15 2 0
      166 DUPCLOSURE                       R15 K53 [PROTO_2]
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R14
      172 GETTABLEKS                       R16 R6 K54 ["mount"]
      174 MOVE                             R17 R15
      175 CALL                             R17 0 1
      176 MOVE                             R18 R14
      177 CALL                             R16 2 1
      178 GETTABLEKS                       R17 R5 K22 ["toolbar"]
      180 GETTABLEKS                       R19 R4 K55 ["BUTTON_NAME"]
      182 GETTABLEKS                       R20 R4 K56 ["BUTTON_TOOLTIP"]
      184 LOADK                            R21 K57 ["rbxlocaltheme://AvatarImporter"]
      185 NAMECALL                         R17 R17 K58 ["CreateButton"]
      187 CALL                             R17 4 1
      188 GETTABLEKS                       R18 R17 K59 ["Click"]
      190 DUPCLOSURE                       R20 K60 [PROTO_3]
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R12
      193 NAMECALL                         R18 R18 K61 ["Connect"]
      195 CALL                             R18 2 0
      196 GETTABLEKS                       R18 R13 K62 ["changed"]
      198 DUPCLOSURE                       R20 K63 [PROTO_4]
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R14
      201 NAMECALL                         R18 R18 K64 ["connect"]
      203 CALL                             R18 2 0
      204 GETIMPORT                        R18 K66 [settings]
      206 CALL                             R18 0 1
      207 GETTABLEKS                       R18 R18 K67 ["Studio"]
      209 GETTABLEKS                       R18 R18 K68 ["ThemeChanged"]
      211 DUPCLOSURE                       R20 K69 [PROTO_5]
      212 CAPTURE                          VAL R6
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R15
      215 NAMECALL                         R18 R18 K61 ["Connect"]
      217 CALL                             R18 2 0
      218 LOADNIL                          R18
      219 RETURN                           R18 1
