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
       28 JUMPIFEQKNIL                     R1 ; [+221]
       30 DUPTABLE                         R13 K12 [{"icon", "id", "isDisabled", "text"}]
       31 GETUPVAL                         R14 1
       32 MOVE                             R15 R5
       33 CALL                             R14 1 1
       34 SETTABLEKS                       R14 R13 K10 ["icon"]
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R14 R14 K13 ["ENABLED"]
       39 SETTABLEKS                       R14 R13 K0 ["id"]
       41 NOT                              R14 R6
       42 SETTABLEKS                       R14 R13 K11 ["isDisabled"]
       44 LOADK                            R16 K4 ["Menu"]
       45 LOADK                            R17 K14 ["Enabled"]
       46 NAMECALL                         R14 R0 K6 ["getText"]
       48 CALL                             R14 3 1
       49 SETTABLEKS                       R14 R13 K1 ["text"]
       51 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       53 MOVE                             R12 R10
       54 GETIMPORT                        R11 K9 [table.insert]
       56 CALL                             R11 2 0
       57 GETUPVAL                         R11 2
       58 MOVE                             R12 R0
       59 MOVE                             R13 R7
       60 MOVE                             R14 R6
       61 CALL                             R11 3 1
       62 JUMPIFNOT                        R11 ; [+7]
       63 FASTCALL2                        TABLE_INSERT R10 R11 ; [+5]
       65 MOVE                             R13 R10
       66 MOVE                             R14 R11
       67 GETIMPORT                        R12 K9 [table.insert]
       69 CALL                             R12 2 0
       70 DUPTABLE                         R14 K12 [{"icon", "id", "isDisabled", "text"}]
       71 GETUPVAL                         R15 3
       72 GETTABLEKS                       R15 R15 K15 ["Pencil"]
       74 SETTABLEKS                       R15 R14 K10 ["icon"]
       76 GETUPVAL                         R15 0
       77 GETTABLEKS                       R15 R15 K16 ["RENAME"]
       79 SETTABLEKS                       R15 R14 K0 ["id"]
       81 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
       83 LOADK                            R17 K4 ["Menu"]
       84 LOADK                            R18 K17 ["Rename"]
       85 NAMECALL                         R15 R0 K6 ["getText"]
       87 CALL                             R15 3 1
       88 SETTABLEKS                       R15 R14 K1 ["text"]
       90 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
       92 MOVE                             R13 R9
       93 GETIMPORT                        R12 K9 [table.insert]
       95 CALL                             R12 2 0
       96 DUPTABLE                         R14 K12 [{"icon", "id", "isDisabled", "text"}]
       97 GETUPVAL                         R15 3
       98 GETTABLEKS                       R15 R15 K18 ["SquareCornerLine"]
      100 SETTABLEKS                       R15 R14 K10 ["icon"]
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R15 R15 K19 ["DUPLICATE"]
      105 SETTABLEKS                       R15 R14 K0 ["id"]
      107 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
      109 LOADK                            R17 K4 ["Menu"]
      110 LOADK                            R18 K20 ["Duplicate"]
      111 NAMECALL                         R15 R0 K6 ["getText"]
      113 CALL                             R15 3 1
      114 SETTABLEKS                       R15 R14 K1 ["text"]
      116 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      118 MOVE                             R13 R9
      119 GETIMPORT                        R12 K9 [table.insert]
      121 CALL                             R12 2 0
      122 DUPTABLE                         R14 K12 [{"icon", "id", "isDisabled", "text"}]
      123 GETUPVAL                         R15 3
      124 GETTABLEKS                       R15 R15 K21 ["TrashCan"]
      126 SETTABLEKS                       R15 R14 K10 ["icon"]
      128 GETUPVAL                         R15 0
      129 GETTABLEKS                       R15 R15 K22 ["DELETE"]
      131 SETTABLEKS                       R15 R14 K0 ["id"]
      133 NOT                              R15 R6
      134 SETTABLEKS                       R15 R14 K11 ["isDisabled"]
      136 LOADK                            R17 K4 ["Menu"]
      137 LOADK                            R18 K23 ["Delete"]
      138 NAMECALL                         R15 R0 K6 ["getText"]
      140 CALL                             R15 3 1
      141 SETTABLEKS                       R15 R14 K1 ["text"]
      143 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      145 MOVE                             R13 R9
      146 GETIMPORT                        R12 K9 [table.insert]
      148 CALL                             R12 2 0
      149 DUPTABLE                         R14 K24 [{"icon", "id", "text"}]
      150 GETUPVAL                         R15 3
      151 GETTABLEKS                       R15 R15 K25 ["LocationPin"]
      153 SETTABLEKS                       R15 R14 K10 ["icon"]
      155 GETUPVAL                         R15 0
      156 GETTABLEKS                       R15 R15 K26 ["SHOW_IN_EXPLORER"]
      158 SETTABLEKS                       R15 R14 K0 ["id"]
      160 LOADK                            R17 K4 ["Menu"]
      161 LOADK                            R18 K27 ["ShowInExplorer"]
      162 NAMECALL                         R15 R0 K6 ["getText"]
      164 CALL                             R15 3 1
      165 SETTABLEKS                       R15 R14 K1 ["text"]
      167 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      169 MOVE                             R13 R9
      170 GETIMPORT                        R12 K9 [table.insert]
      172 CALL                             R12 2 0
      173 DUPTABLE                         R14 K29 [{"id", "isDisabled", "text", "items"}]
      174 GETUPVAL                         R15 0
      175 GETTABLEKS                       R15 R15 K30 ["CHANGE_ACTION_TYPE"]
      177 SETTABLEKS                       R15 R14 K0 ["id"]
      179 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
      181 LOADK                            R17 K4 ["Menu"]
      182 LOADK                            R18 K31 ["ChangeActionType"]
      183 NAMECALL                         R15 R0 K6 ["getText"]
      185 CALL                             R15 3 1
      186 SETTABLEKS                       R15 R14 K1 ["text"]
      188 GETUPVAL                         R15 4
      189 MOVE                             R16 R1
      190 CALL                             R15 1 1
      191 SETTABLEKS                       R15 R14 K28 ["items"]
      193 FASTCALL2                        TABLE_INSERT R10 R14 ; [+4]
      195 MOVE                             R13 R10
      196 GETIMPORT                        R12 K9 [table.insert]
      198 CALL                             R12 2 0
      199 JUMPIFNOTEQKS                    R3 K32 ["Keycode"] ; [+26]
      201 GETUPVAL                         R13 5
      202 GETTABLE                         R12 R13 R1
      203 JUMPIFEQKNIL                     R12 ; [+22]
      205 DUPTABLE                         R14 K33 [{"id", "isDisabled", "text"}]
      206 GETUPVAL                         R15 0
      207 GETTABLEKS                       R15 R15 K34 ["ROW_USE_COMPOSITE"]
      209 SETTABLEKS                       R15 R14 K0 ["id"]
      211 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
      213 LOADK                            R17 K4 ["Menu"]
      214 LOADK                            R18 K35 ["UseComposite"]
      215 NAMECALL                         R15 R0 K6 ["getText"]
      217 CALL                             R15 3 1
      218 SETTABLEKS                       R15 R14 K1 ["text"]
      220 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      222 MOVE                             R13 R9
      223 GETIMPORT                        R12 K9 [table.insert]
      225 CALL                             R12 2 0
      226 JUMPIFNOTEQKS                    R3 K36 ["Composite"] ; [+49]
      228 DUPTABLE                         R14 K33 [{"id", "isDisabled", "text"}]
      229 GETUPVAL                         R15 0
      230 GETTABLEKS                       R15 R15 K37 ["ROW_USE_KEYCODE"]
      232 SETTABLEKS                       R15 R14 K0 ["id"]
      234 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
      236 LOADK                            R17 K4 ["Menu"]
      237 LOADK                            R18 K38 ["UseKeycode"]
      238 NAMECALL                         R15 R0 K6 ["getText"]
      240 CALL                             R15 3 1
      241 SETTABLEKS                       R15 R14 K1 ["text"]
      243 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      245 MOVE                             R13 R9
      246 GETIMPORT                        R12 K9 [table.insert]
      248 CALL                             R12 2 0
      249 JUMP                             ; [+26]
      250 DUPTABLE                         R13 K12 [{"icon", "id", "isDisabled", "text"}]
      251 GETUPVAL                         R14 3
      252 GETTABLEKS                       R14 R14 K21 ["TrashCan"]
      254 SETTABLEKS                       R14 R13 K10 ["icon"]
      256 GETUPVAL                         R14 0
      257 GETTABLEKS                       R14 R14 K22 ["DELETE"]
      259 SETTABLEKS                       R14 R13 K0 ["id"]
      261 SETTABLEKS                       R8 R13 K11 ["isDisabled"]
      263 LOADK                            R16 K4 ["Menu"]
      264 LOADK                            R17 K23 ["Delete"]
      265 NAMECALL                         R14 R0 K6 ["getText"]
      267 CALL                             R14 3 1
      268 SETTABLEKS                       R14 R13 K1 ["text"]
      270 FASTCALL2                        TABLE_INSERT R9 R13 ; [+4]
      272 MOVE                             R12 R9
      273 GETIMPORT                        R11 K9 [table.insert]
      275 CALL                             R11 2 0
      276 LENGTH                           R11 R10
      277 JUMPIFNOTEQKN                    R11 K39 [0] ; [+9]
      279 NEWTABLE                         R11 0 1
      281 DUPTABLE                         R12 K40 [{"items"}]
      282 SETTABLEKS                       R9 R12 K28 ["items"]
      284 SETLIST                          R11 R12 1 [1]
      286 RETURN                           R11 1
      287 NEWTABLE                         R11 0 2
      289 DUPTABLE                         R12 K40 [{"items"}]
      290 SETTABLEKS                       R9 R12 K28 ["items"]
      292 DUPTABLE                         R13 K40 [{"items"}]
      293 SETTABLEKS                       R10 R13 K28 ["items"]
      295 SETLIST                          R11 R12 2 [1]
      297 RETURN                           R11 1

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
       74 GETTABLEKS                       R8 R1 K18 ["Enums"]
       76 GETTABLEKS                       R8 R8 K19 ["IconName"]
       78 DUPCLOSURE                       R9 K20 [PROTO_0]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R3
       85 RETURN                           R9 1
