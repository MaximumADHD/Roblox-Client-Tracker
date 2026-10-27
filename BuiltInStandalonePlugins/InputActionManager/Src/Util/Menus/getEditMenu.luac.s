PROTO_0:
        0 NOT                              R8 R5
        1 JUMPIF                           R8 ; [+1]
        2 NOT                              R8 R6
        3 NEWTABLE                         R9 0 0
        5 NEWTABLE                         R10 0 0
        7 JUMPIFNOT                        R4 ; [+20]
        8 DUPTABLE                         R13 K2 [{"id", "text"}]
        9 GETUPVAL                         R14 0
       10 GETTABLEKS                       R14 R14 K3 ["CANCEL"]
       12 SETTABLEKS                       R14 R13 K0 ["id"]
       14 LOADK                            R16 K4 ["Menu"]
       15 LOADK                            R17 K5 ["Cancel"]
       16 NAMECALL                         R14 R0 K6 ["getText"]
       18 CALL                             R14 3 1
       19 SETTABLEKS                       R14 R13 K1 ["text"]
       21 FASTCALL2                        TABLE_INSERT R9 R13 ; [+4]
       23 MOVE                             R12 R9
       24 GETIMPORT                        R11 K9 [table.insert]
       26 CALL                             R11 2 0
       27 RETURN                           R9 1
       28 JUMPIFEQKNIL                     R1 ; [+242]
       30 DUPTABLE                         R13 K13 [{"icon", "id", "isChecked", "isDisabled", "text"}]
       31 GETUPVAL                         R15 1
       32 CALL                             R15 0 1
       33 JUMPIFNOT                        R15 ; [+4]
       34 GETUPVAL                         R14 2
       35 MOVE                             R15 R5
       36 CALL                             R14 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R14
       39 SETTABLEKS                       R14 R13 K10 ["icon"]
       41 GETUPVAL                         R14 0
       42 GETTABLEKS                       R14 R14 K14 ["ENABLED"]
       44 SETTABLEKS                       R14 R13 K0 ["id"]
       46 GETUPVAL                         R15 1
       47 CALL                             R15 0 1
       48 JUMPIFNOT                        R15 ; [+2]
       49 LOADNIL                          R14
       50 JUMP                             ; [+1]
       51 MOVE                             R14 R5
       52 SETTABLEKS                       R14 R13 K11 ["isChecked"]
       54 NOT                              R14 R6
       55 SETTABLEKS                       R14 R13 K12 ["isDisabled"]
       57 LOADK                            R16 K4 ["Menu"]
       58 LOADK                            R17 K15 ["Enabled"]
       59 NAMECALL                         R14 R0 K6 ["getText"]
       61 CALL                             R14 3 1
       62 SETTABLEKS                       R14 R13 K1 ["text"]
       64 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       66 MOVE                             R12 R10
       67 GETIMPORT                        R11 K9 [table.insert]
       69 CALL                             R11 2 0
       70 GETUPVAL                         R11 3
       71 MOVE                             R12 R0
       72 MOVE                             R13 R7
       73 MOVE                             R14 R6
       74 CALL                             R11 3 1
       75 JUMPIFNOT                        R11 ; [+7]
       76 FASTCALL2                        TABLE_INSERT R10 R11 ; [+5]
       78 MOVE                             R13 R10
       79 MOVE                             R14 R11
       80 GETIMPORT                        R12 K9 [table.insert]
       82 CALL                             R12 2 0
       83 DUPTABLE                         R14 K16 [{"icon", "id", "isDisabled", "text"}]
       84 GETUPVAL                         R15 4
       85 GETTABLEKS                       R15 R15 K17 ["Pencil"]
       87 SETTABLEKS                       R15 R14 K10 ["icon"]
       89 GETUPVAL                         R15 0
       90 GETTABLEKS                       R15 R15 K18 ["RENAME"]
       92 SETTABLEKS                       R15 R14 K0 ["id"]
       94 SETTABLEKS                       R8 R14 K12 ["isDisabled"]
       96 LOADK                            R17 K4 ["Menu"]
       97 LOADK                            R18 K19 ["Rename"]
       98 NAMECALL                         R15 R0 K6 ["getText"]
      100 CALL                             R15 3 1
      101 SETTABLEKS                       R15 R14 K1 ["text"]
      103 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      105 MOVE                             R13 R9
      106 GETIMPORT                        R12 K9 [table.insert]
      108 CALL                             R12 2 0
      109 DUPTABLE                         R14 K16 [{"icon", "id", "isDisabled", "text"}]
      110 GETUPVAL                         R16 1
      111 CALL                             R16 0 1
      112 JUMPIFNOT                        R16 ; [+4]
      113 GETUPVAL                         R15 4
      114 GETTABLEKS                       R15 R15 K20 ["SquareCornerLine"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R15
      118 SETTABLEKS                       R15 R14 K10 ["icon"]
      120 GETUPVAL                         R15 0
      121 GETTABLEKS                       R15 R15 K21 ["DUPLICATE"]
      123 SETTABLEKS                       R15 R14 K0 ["id"]
      125 SETTABLEKS                       R8 R14 K12 ["isDisabled"]
      127 LOADK                            R17 K4 ["Menu"]
      128 LOADK                            R18 K22 ["Duplicate"]
      129 NAMECALL                         R15 R0 K6 ["getText"]
      131 CALL                             R15 3 1
      132 SETTABLEKS                       R15 R14 K1 ["text"]
      134 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      136 MOVE                             R13 R9
      137 GETIMPORT                        R12 K9 [table.insert]
      139 CALL                             R12 2 0
      140 DUPTABLE                         R14 K16 [{"icon", "id", "isDisabled", "text"}]
      141 GETUPVAL                         R15 4
      142 GETTABLEKS                       R15 R15 K23 ["TrashCan"]
      144 SETTABLEKS                       R15 R14 K10 ["icon"]
      146 GETUPVAL                         R15 0
      147 GETTABLEKS                       R15 R15 K24 ["DELETE"]
      149 SETTABLEKS                       R15 R14 K0 ["id"]
      151 NOT                              R15 R6
      152 SETTABLEKS                       R15 R14 K12 ["isDisabled"]
      154 LOADK                            R17 K4 ["Menu"]
      155 LOADK                            R18 K25 ["Delete"]
      156 NAMECALL                         R15 R0 K6 ["getText"]
      158 CALL                             R15 3 1
      159 SETTABLEKS                       R15 R14 K1 ["text"]
      161 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      163 MOVE                             R13 R9
      164 GETIMPORT                        R12 K9 [table.insert]
      166 CALL                             R12 2 0
      167 GETUPVAL                         R12 5
      168 CALL                             R12 0 1
      169 JUMPIFNOT                        R12 ; [+24]
      170 DUPTABLE                         R14 K26 [{"icon", "id", "text"}]
      171 GETUPVAL                         R15 4
      172 GETTABLEKS                       R15 R15 K27 ["LocationPin"]
      174 SETTABLEKS                       R15 R14 K10 ["icon"]
      176 GETUPVAL                         R15 0
      177 GETTABLEKS                       R15 R15 K28 ["SHOW_IN_EXPLORER"]
      179 SETTABLEKS                       R15 R14 K0 ["id"]
      181 LOADK                            R17 K4 ["Menu"]
      182 LOADK                            R18 K29 ["ShowInExplorer"]
      183 NAMECALL                         R15 R0 K6 ["getText"]
      185 CALL                             R15 3 1
      186 SETTABLEKS                       R15 R14 K1 ["text"]
      188 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      190 MOVE                             R13 R9
      191 GETIMPORT                        R12 K9 [table.insert]
      193 CALL                             R12 2 0
      194 DUPTABLE                         R14 K31 [{"id", "isDisabled", "text", "items"}]
      195 GETUPVAL                         R15 0
      196 GETTABLEKS                       R15 R15 K32 ["CHANGE_ACTION_TYPE"]
      198 SETTABLEKS                       R15 R14 K0 ["id"]
      200 SETTABLEKS                       R8 R14 K12 ["isDisabled"]
      202 LOADK                            R17 K4 ["Menu"]
      203 LOADK                            R18 K33 ["ChangeActionType"]
      204 NAMECALL                         R15 R0 K6 ["getText"]
      206 CALL                             R15 3 1
      207 SETTABLEKS                       R15 R14 K1 ["text"]
      209 GETUPVAL                         R15 6
      210 MOVE                             R16 R1
      211 CALL                             R15 1 1
      212 SETTABLEKS                       R15 R14 K30 ["items"]
      214 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      216 MOVE                             R13 R10
      217 GETIMPORT                        R12 K9 [table.insert]
      219 CALL                             R12 2 0
      220 JUMPIFNOTEQKS                    R3 K34 ["Keycode"] ; [+26]
      222 GETUPVAL                         R13 7
      223 GETTABLE                         R12 R13 R1
      224 JUMPIFEQKNIL                     R12 ; [+22]
      226 DUPTABLE                         R14 K35 [{"id", "isDisabled", "text"}]
      227 GETUPVAL                         R15 0
      228 GETTABLEKS                       R15 R15 K36 ["ROW_USE_COMPOSITE"]
      230 SETTABLEKS                       R15 R14 K0 ["id"]
      232 SETTABLEKS                       R8 R14 K12 ["isDisabled"]
      234 LOADK                            R17 K4 ["Menu"]
      235 LOADK                            R18 K37 ["UseComposite"]
      236 NAMECALL                         R15 R0 K6 ["getText"]
      238 CALL                             R15 3 1
      239 SETTABLEKS                       R15 R14 K1 ["text"]
      241 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      243 MOVE                             R13 R9
      244 GETIMPORT                        R12 K9 [table.insert]
      246 CALL                             R12 2 0
      247 JUMPIFNOTEQKS                    R3 K38 ["Composite"] ; [+49]
      249 DUPTABLE                         R14 K35 [{"id", "isDisabled", "text"}]
      250 GETUPVAL                         R15 0
      251 GETTABLEKS                       R15 R15 K39 ["ROW_USE_KEYCODE"]
      253 SETTABLEKS                       R15 R14 K0 ["id"]
      255 SETTABLEKS                       R8 R14 K12 ["isDisabled"]
      257 LOADK                            R17 K4 ["Menu"]
      258 LOADK                            R18 K40 ["UseKeycode"]
      259 NAMECALL                         R15 R0 K6 ["getText"]
      261 CALL                             R15 3 1
      262 SETTABLEKS                       R15 R14 K1 ["text"]
      264 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      266 MOVE                             R13 R9
      267 GETIMPORT                        R12 K9 [table.insert]
      269 CALL                             R12 2 0
      270 JUMP                             ; [+26]
      271 DUPTABLE                         R13 K16 [{"icon", "id", "isDisabled", "text"}]
      272 GETUPVAL                         R14 4
      273 GETTABLEKS                       R14 R14 K23 ["TrashCan"]
      275 SETTABLEKS                       R14 R13 K10 ["icon"]
      277 GETUPVAL                         R14 0
      278 GETTABLEKS                       R14 R14 K24 ["DELETE"]
      280 SETTABLEKS                       R14 R13 K0 ["id"]
      282 SETTABLEKS                       R8 R13 K12 ["isDisabled"]
      284 LOADK                            R16 K4 ["Menu"]
      285 LOADK                            R17 K25 ["Delete"]
      286 NAMECALL                         R14 R0 K6 ["getText"]
      288 CALL                             R14 3 1
      289 SETTABLEKS                       R14 R13 K1 ["text"]
      291 FASTCALL2                        TABLE_INSERT R9 R13 ; [+4]
      293 MOVE                             R12 R9
      294 GETIMPORT                        R11 K9 [table.insert]
      296 CALL                             R11 2 0
      297 LENGTH                           R11 R10
      298 JUMPIFNOTEQKN                    R11 K41 [0] ; [+9]
      300 NEWTABLE                         R11 0 1
      302 DUPTABLE                         R12 K42 [{"items"}]
      303 SETTABLEKS                       R9 R12 K30 ["items"]
      305 SETLIST                          R11 R12 1 [1]
      307 RETURN                           R11 1
      308 NEWTABLE                         R11 0 2
      310 DUPTABLE                         R12 K42 [{"items"}]
      311 SETTABLEKS                       R9 R12 K30 ["items"]
      313 DUPTABLE                         R13 K42 [{"items"}]
      314 SETTABLEKS                       R10 R13 K30 ["items"]
      316 SETLIST                          R11 R12 2 [1]
      318 RETURN                           R11 1

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
       49 GETTABLEKS                       R6 R6 K13 ["Menus"]
       51 GETTABLEKS                       R6 R6 K15 ["getScriptableMenu"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K8 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Util"]
       60 GETTABLEKS                       R7 R7 K16 ["getIconForBoolean"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K8 ["Src"]
       67 GETTABLEKS                       R8 R8 K10 ["Util"]
       69 GETTABLEKS                       R8 R8 K11 ["Constants"]
       71 GETTABLEKS                       R8 R8 K17 ["MenuIdentifiers"]
       73 CALL                             R7 1 1
       74 GETTABLEKS                       R8 R0 K8 ["Src"]
       76 GETTABLEKS                       R8 R8 K18 ["Flags"]
       78 GETIMPORT                        R9 K5 [require]
       80 GETTABLEKS                       R10 R8 K19 ["getFFlagIAMShowInExplorer"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K5 [require]
       85 GETTABLEKS                       R11 R8 K20 ["getFFlagIAMIconImprovements"]
       87 CALL                             R10 1 1
       88 GETTABLEKS                       R11 R1 K21 ["Enums"]
       90 GETTABLEKS                       R11 R11 K22 ["IconName"]
       92 DUPCLOSURE                       R12 K23 [PROTO_0]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R3
      101 RETURN                           R12 1
