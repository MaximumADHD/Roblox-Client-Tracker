PROTO_0:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 JUMPIFNOT                        R8 ; [+4]
        3 NOT                              R7 R5
        4 JUMPIF                           R7 ; [+3]
        5 NOT                              R7 R6
        6 JUMP                             ; [+1]
        7 LOADNIL                          R7
        8 NEWTABLE                         R8 0 0
       10 NEWTABLE                         R9 0 0
       12 JUMPIFNOT                        R4 ; [+20]
       13 DUPTABLE                         R12 K2 [{"id", "text"}]
       14 GETUPVAL                         R13 1
       15 GETTABLEKS                       R13 R13 K3 ["CANCEL"]
       17 SETTABLEKS                       R13 R12 K0 ["id"]
       19 LOADK                            R15 K4 ["Menu"]
       20 LOADK                            R16 K5 ["Cancel"]
       21 NAMECALL                         R13 R0 K6 ["getText"]
       23 CALL                             R13 3 1
       24 SETTABLEKS                       R13 R12 K1 ["text"]
       26 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
       28 MOVE                             R11 R8
       29 GETIMPORT                        R10 K9 [table.insert]
       31 CALL                             R10 2 0
       32 RETURN                           R8 1
       33 JUMPIFEQKNIL                     R1 ; [+180]
       35 DUPTABLE                         R12 K12 [{"id", "isChecked", "isDisabled", "text"}]
       36 GETUPVAL                         R13 1
       37 GETTABLEKS                       R13 R13 K13 ["ENABLED"]
       39 SETTABLEKS                       R13 R12 K0 ["id"]
       41 SETTABLEKS                       R5 R12 K10 ["isChecked"]
       43 NOT                              R13 R6
       44 SETTABLEKS                       R13 R12 K11 ["isDisabled"]
       46 LOADK                            R15 K4 ["Menu"]
       47 LOADK                            R16 K14 ["Enabled"]
       48 NAMECALL                         R13 R0 K6 ["getText"]
       50 CALL                             R13 3 1
       51 SETTABLEKS                       R13 R12 K1 ["text"]
       53 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       55 MOVE                             R11 R9
       56 GETIMPORT                        R10 K9 [table.insert]
       58 CALL                             R10 2 0
       59 DUPTABLE                         R12 K17 [{["icon"] = "pencil", [2], ["isDisabled"], ["text"]}]
       60 GETUPVAL                         R13 1
       61 GETTABLEKS                       R13 R13 K18 ["RENAME"]
       63 SETTABLEKS                       R13 R12 K0 ["id"]
       65 SETTABLEKS                       R7 R12 K11 ["isDisabled"]
       67 LOADK                            R15 K4 ["Menu"]
       68 LOADK                            R16 K19 ["Rename"]
       69 NAMECALL                         R13 R0 K6 ["getText"]
       71 CALL                             R13 3 1
       72 SETTABLEKS                       R13 R12 K1 ["text"]
       74 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
       76 MOVE                             R11 R8
       77 GETIMPORT                        R10 K9 [table.insert]
       79 CALL                             R10 2 0
       80 GETUPVAL                         R10 2
       81 CALL                             R10 0 1
       82 JUMPIFNOT                        R10 ; [+21]
       83 DUPTABLE                         R12 K20 [{"id", "isDisabled", "text"}]
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R13 R13 K21 ["DUPLICATE"]
       87 SETTABLEKS                       R13 R12 K0 ["id"]
       89 SETTABLEKS                       R7 R12 K11 ["isDisabled"]
       91 LOADK                            R15 K4 ["Menu"]
       92 LOADK                            R16 K22 ["Duplicate"]
       93 NAMECALL                         R13 R0 K6 ["getText"]
       95 CALL                             R13 3 1
       96 SETTABLEKS                       R13 R12 K1 ["text"]
       98 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      100 MOVE                             R11 R8
      101 GETIMPORT                        R10 K9 [table.insert]
      103 CALL                             R10 2 0
      104 DUPTABLE                         R12 K24 [{["icon"] = "trash-can", [2], ["isDisabled"], ["text"]}]
      105 GETUPVAL                         R13 1
      106 GETTABLEKS                       R13 R13 K25 ["DELETE"]
      108 SETTABLEKS                       R13 R12 K0 ["id"]
      110 GETUPVAL                         R13 0
      111 CALL                             R13 0 1
      112 JUMPIFNOT                        R13 ; [+1]
      113 NOT                              R13 R6
      114 SETTABLEKS                       R13 R12 K11 ["isDisabled"]
      116 LOADK                            R15 K4 ["Menu"]
      117 LOADK                            R16 K26 ["Delete"]
      118 NAMECALL                         R13 R0 K6 ["getText"]
      120 CALL                             R13 3 1
      121 SETTABLEKS                       R13 R12 K1 ["text"]
      123 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      125 MOVE                             R11 R8
      126 GETIMPORT                        R10 K9 [table.insert]
      128 CALL                             R10 2 0
      129 GETUPVAL                         R12 0
      130 CALL                             R12 0 1
      131 JUMPIFNOT                        R12 ; [+2]
      132 MOVE                             R11 R9
      133 JUMP                             ; [+1]
      134 MOVE                             R11 R8
      135 DUPTABLE                         R12 K28 [{"id", "isDisabled", "text", "items"}]
      136 GETUPVAL                         R13 1
      137 GETTABLEKS                       R13 R13 K29 ["CHANGE_ACTION_TYPE"]
      139 SETTABLEKS                       R13 R12 K0 ["id"]
      141 SETTABLEKS                       R7 R12 K11 ["isDisabled"]
      143 LOADK                            R15 K4 ["Menu"]
      144 LOADK                            R16 K30 ["ChangeActionType"]
      145 NAMECALL                         R13 R0 K6 ["getText"]
      147 CALL                             R13 3 1
      148 SETTABLEKS                       R13 R12 K1 ["text"]
      150 GETUPVAL                         R13 3
      151 MOVE                             R14 R1
      152 CALL                             R13 1 1
      153 SETTABLEKS                       R13 R12 K27 ["items"]
      155 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      157 GETIMPORT                        R10 K9 [table.insert]
      159 CALL                             R10 2 0
      160 JUMPIFNOTEQKS                    R3 K31 ["Keycode"] ; [+29]
      162 GETUPVAL                         R10 4
      163 CALL                             R10 0 1
      164 JUMPIFNOT                        R10 ; [+4]
      165 GETUPVAL                         R11 5
      166 GETTABLE                         R10 R11 R1
      167 JUMPIFEQKNIL                     R10 ; [+22]
      169 DUPTABLE                         R12 K20 [{"id", "isDisabled", "text"}]
      170 GETUPVAL                         R13 1
      171 GETTABLEKS                       R13 R13 K32 ["ROW_USE_COMPOSITE"]
      173 SETTABLEKS                       R13 R12 K0 ["id"]
      175 SETTABLEKS                       R7 R12 K11 ["isDisabled"]
      177 LOADK                            R15 K4 ["Menu"]
      178 LOADK                            R16 K33 ["UseComposite"]
      179 NAMECALL                         R13 R0 K6 ["getText"]
      181 CALL                             R13 3 1
      182 SETTABLEKS                       R13 R12 K1 ["text"]
      184 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      186 MOVE                             R11 R8
      187 GETIMPORT                        R10 K9 [table.insert]
      189 CALL                             R10 2 0
      190 JUMPIFNOTEQKS                    R3 K34 ["Composite"] ; [+44]
      192 DUPTABLE                         R12 K20 [{"id", "isDisabled", "text"}]
      193 GETUPVAL                         R13 1
      194 GETTABLEKS                       R13 R13 K35 ["ROW_USE_KEYCODE"]
      196 SETTABLEKS                       R13 R12 K0 ["id"]
      198 SETTABLEKS                       R7 R12 K11 ["isDisabled"]
      200 LOADK                            R15 K4 ["Menu"]
      201 LOADK                            R16 K36 ["UseKeycode"]
      202 NAMECALL                         R13 R0 K6 ["getText"]
      204 CALL                             R13 3 1
      205 SETTABLEKS                       R13 R12 K1 ["text"]
      207 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      209 MOVE                             R11 R8
      210 GETIMPORT                        R10 K9 [table.insert]
      212 CALL                             R10 2 0
      213 JUMP                             ; [+21]
      214 DUPTABLE                         R12 K24 [{["icon"] = "trash-can", [2], ["isDisabled"], ["text"]}]
      215 GETUPVAL                         R13 1
      216 GETTABLEKS                       R13 R13 K25 ["DELETE"]
      218 SETTABLEKS                       R13 R12 K0 ["id"]
      220 SETTABLEKS                       R7 R12 K11 ["isDisabled"]
      222 LOADK                            R15 K4 ["Menu"]
      223 LOADK                            R16 K26 ["Delete"]
      224 NAMECALL                         R13 R0 K6 ["getText"]
      226 CALL                             R13 3 1
      227 SETTABLEKS                       R13 R12 K1 ["text"]
      229 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      231 MOVE                             R11 R8
      232 GETIMPORT                        R10 K9 [table.insert]
      234 CALL                             R10 2 0
      235 GETUPVAL                         R10 6
      236 CALL                             R10 0 1
      237 JUMPIF                           R10 ; [+59]
      238 GETUPVAL                         R10 7
      239 MOVE                             R11 R2
      240 CALL                             R10 1 1
      241 JUMPIFNOT                        R10 ; [+26]
      242 GETUPVAL                         R11 8
      243 MOVE                             R12 R2
      244 CALL                             R11 1 1
      245 JUMPIF                           R11 ; [+22]
      246 DUPTABLE                         R13 K20 [{"id", "isDisabled", "text"}]
      247 GETUPVAL                         R14 1
      248 GETTABLEKS                       R14 R14 K37 ["ROW_ADD_PRIMARY_MODIFIER"]
      250 SETTABLEKS                       R14 R13 K0 ["id"]
      252 SETTABLEKS                       R7 R13 K11 ["isDisabled"]
      254 LOADK                            R16 K4 ["Menu"]
      255 LOADK                            R17 K38 ["AddPrimaryModifier"]
      256 NAMECALL                         R14 R0 K6 ["getText"]
      258 CALL                             R14 3 1
      259 SETTABLEKS                       R14 R13 K1 ["text"]
      261 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      263 MOVE                             R12 R8
      264 GETIMPORT                        R11 K9 [table.insert]
      266 CALL                             R11 2 0
      267 JUMP                             ; [+29]
      268 GETUPVAL                         R11 8
      269 MOVE                             R12 R2
      270 CALL                             R11 1 1
      271 JUMPIFNOT                        R11 ; [+25]
      272 GETUPVAL                         R11 9
      273 MOVE                             R12 R2
      274 CALL                             R11 1 1
      275 JUMPIF                           R11 ; [+21]
      276 DUPTABLE                         R13 K20 [{"id", "isDisabled", "text"}]
      277 GETUPVAL                         R14 1
      278 GETTABLEKS                       R14 R14 K39 ["ROW_ADD_SECONDARY_MODIFIER"]
      280 SETTABLEKS                       R14 R13 K0 ["id"]
      282 SETTABLEKS                       R7 R13 K11 ["isDisabled"]
      284 LOADK                            R16 K4 ["Menu"]
      285 LOADK                            R17 K40 ["AddSecondaryModifier"]
      286 NAMECALL                         R14 R0 K6 ["getText"]
      288 CALL                             R14 3 1
      289 SETTABLEKS                       R14 R13 K1 ["text"]
      291 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      293 MOVE                             R12 R8
      294 GETIMPORT                        R11 K9 [table.insert]
      296 CALL                             R11 2 0
      297 GETUPVAL                         R10 0
      298 CALL                             R10 0 1
      299 JUMPIF                           R10 ; [+1]
      300 RETURN                           R8 1
      301 LENGTH                           R10 R9
      302 JUMPIFNOTEQKN                    R10 K41 [0] ; [+9]
      304 NEWTABLE                         R10 0 1
      306 DUPTABLE                         R11 K42 [{"items"}]
      307 SETTABLEKS                       R8 R11 K27 ["items"]
      309 SETLIST                          R10 R11 1 [1]
      311 RETURN                           R10 1
      312 NEWTABLE                         R10 0 2
      314 DUPTABLE                         R11 K42 [{"items"}]
      315 SETTABLEKS                       R8 R11 K27 ["items"]
      317 DUPTABLE                         R12 K42 [{"items"}]
      318 SETTABLEKS                       R9 R12 K27 ["items"]
      320 SETLIST                          R10 R11 2 [1]
      322 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 GETTABLEKS                       R4 R4 K12 ["DirectionPropertyNames"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["Menus"]
       40 GETTABLEKS                       R5 R5 K14 ["getActionTypeMenu"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K11 ["Constants"]
       51 GETTABLEKS                       R6 R6 K15 ["MenuIdentifiers"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K8 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Util"]
       60 GETTABLEKS                       R7 R7 K16 ["Binding"]
       62 GETTABLEKS                       R7 R7 K17 ["hasKeycodes"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K8 ["Src"]
       69 GETTABLEKS                       R8 R8 K10 ["Util"]
       71 GETTABLEKS                       R8 R8 K16 ["Binding"]
       73 GETTABLEKS                       R8 R8 K18 ["hasPrimaryModifier"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K8 ["Src"]
       80 GETTABLEKS                       R9 R9 K10 ["Util"]
       82 GETTABLEKS                       R9 R9 K16 ["Binding"]
       84 GETTABLEKS                       R9 R9 K19 ["hasSecondaryModifier"]
       86 CALL                             R8 1 1
       87 GETIMPORT                        R9 K5 [require]
       89 GETTABLEKS                       R10 R0 K8 ["Src"]
       91 GETTABLEKS                       R10 R10 K20 ["Flags"]
       93 GETTABLEKS                       R10 R10 K21 ["getFFlagIAMViewportPositionType"]
       95 CALL                             R9 1 1
       96 GETTABLEKS                       R10 R0 K8 ["Src"]
       98 GETTABLEKS                       R10 R10 K20 ["Flags"]
      100 GETIMPORT                        R11 K5 [require]
      102 GETTABLEKS                       R12 R10 K22 ["getFFlagIAMBooleanProperties"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K5 [require]
      107 GETTABLEKS                       R13 R10 K23 ["getFFlagIAMDuplicate"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K5 [require]
      112 GETTABLEKS                       R14 R10 K24 ["getFFlagIAMImprovedModifierMenu"]
      114 CALL                             R13 1 1
      115 DUPCLOSURE                       R14 K25 [PROTO_0]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R8
      126 RETURN                           R14 1
