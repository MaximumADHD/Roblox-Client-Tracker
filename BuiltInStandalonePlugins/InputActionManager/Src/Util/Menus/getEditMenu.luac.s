PROTO_0:
        0 GETUPVAL                         R9 0
        1 CALL                             R9 0 1
        2 JUMPIFNOT                        R9 ; [+4]
        3 NOT                              R8 R5
        4 JUMPIF                           R8 ; [+3]
        5 NOT                              R8 R6
        6 JUMP                             ; [+1]
        7 LOADNIL                          R8
        8 NEWTABLE                         R9 0 0
       10 NEWTABLE                         R10 0 0
       12 JUMPIFNOT                        R4 ; [+20]
       13 DUPTABLE                         R13 K2 [{"id", "text"}]
       14 GETUPVAL                         R14 1
       15 GETTABLEKS                       R14 R14 K3 ["CANCEL"]
       17 SETTABLEKS                       R14 R13 K0 ["id"]
       19 LOADK                            R16 K4 ["Menu"]
       20 LOADK                            R17 K5 ["Cancel"]
       21 NAMECALL                         R14 R0 K6 ["getText"]
       23 CALL                             R14 3 1
       24 SETTABLEKS                       R14 R13 K1 ["text"]
       26 FASTCALL2                        TABLE_INSERT R9 R13 ; [+4]
       28 MOVE                             R12 R9
       29 GETIMPORT                        R11 K9 [table.insert]
       31 CALL                             R11 2 0
       32 RETURN                           R9 1
       33 JUMPIFEQKNIL                     R1 ; [+187]
       35 DUPTABLE                         R13 K12 [{"id", "isChecked", "isDisabled", "text"}]
       36 GETUPVAL                         R14 1
       37 GETTABLEKS                       R14 R14 K13 ["ENABLED"]
       39 SETTABLEKS                       R14 R13 K0 ["id"]
       41 SETTABLEKS                       R5 R13 K10 ["isChecked"]
       43 NOT                              R14 R6
       44 SETTABLEKS                       R14 R13 K11 ["isDisabled"]
       46 LOADK                            R16 K4 ["Menu"]
       47 LOADK                            R17 K14 ["Enabled"]
       48 NAMECALL                         R14 R0 K6 ["getText"]
       50 CALL                             R14 3 1
       51 SETTABLEKS                       R14 R13 K1 ["text"]
       53 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       55 MOVE                             R12 R10
       56 GETIMPORT                        R11 K9 [table.insert]
       58 CALL                             R11 2 0
       59 GETUPVAL                         R11 2
       60 MOVE                             R12 R0
       61 MOVE                             R13 R7
       62 MOVE                             R14 R6
       63 CALL                             R11 3 1
       64 JUMPIFNOT                        R11 ; [+7]
       65 FASTCALL2                        TABLE_INSERT R10 R11 ; [+5]
       67 MOVE                             R13 R10
       68 MOVE                             R14 R11
       69 GETIMPORT                        R12 K9 [table.insert]
       71 CALL                             R12 2 0
       72 DUPTABLE                         R14 K17 [{["icon"] = "pencil", [2], ["isDisabled"], ["text"]}]
       73 GETUPVAL                         R15 1
       74 GETTABLEKS                       R15 R15 K18 ["RENAME"]
       76 SETTABLEKS                       R15 R14 K0 ["id"]
       78 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
       80 LOADK                            R17 K4 ["Menu"]
       81 LOADK                            R18 K19 ["Rename"]
       82 NAMECALL                         R15 R0 K6 ["getText"]
       84 CALL                             R15 3 1
       85 SETTABLEKS                       R15 R14 K1 ["text"]
       87 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
       89 MOVE                             R13 R9
       90 GETIMPORT                        R12 K9 [table.insert]
       92 CALL                             R12 2 0
       93 DUPTABLE                         R14 K20 [{"id", "isDisabled", "text"}]
       94 GETUPVAL                         R15 1
       95 GETTABLEKS                       R15 R15 K21 ["DUPLICATE"]
       97 SETTABLEKS                       R15 R14 K0 ["id"]
       99 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
      101 LOADK                            R17 K4 ["Menu"]
      102 LOADK                            R18 K22 ["Duplicate"]
      103 NAMECALL                         R15 R0 K6 ["getText"]
      105 CALL                             R15 3 1
      106 SETTABLEKS                       R15 R14 K1 ["text"]
      108 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      110 MOVE                             R13 R9
      111 GETIMPORT                        R12 K9 [table.insert]
      113 CALL                             R12 2 0
      114 DUPTABLE                         R14 K24 [{["icon"] = "trash-can", [2], ["isDisabled"], ["text"]}]
      115 GETUPVAL                         R15 1
      116 GETTABLEKS                       R15 R15 K25 ["DELETE"]
      118 SETTABLEKS                       R15 R14 K0 ["id"]
      120 GETUPVAL                         R15 0
      121 CALL                             R15 0 1
      122 JUMPIFNOT                        R15 ; [+1]
      123 NOT                              R15 R6
      124 SETTABLEKS                       R15 R14 K11 ["isDisabled"]
      126 LOADK                            R17 K4 ["Menu"]
      127 LOADK                            R18 K26 ["Delete"]
      128 NAMECALL                         R15 R0 K6 ["getText"]
      130 CALL                             R15 3 1
      131 SETTABLEKS                       R15 R14 K1 ["text"]
      133 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      135 MOVE                             R13 R9
      136 GETIMPORT                        R12 K9 [table.insert]
      138 CALL                             R12 2 0
      139 GETUPVAL                         R14 0
      140 CALL                             R14 0 1
      141 JUMPIFNOT                        R14 ; [+2]
      142 MOVE                             R13 R10
      143 JUMP                             ; [+1]
      144 MOVE                             R13 R9
      145 DUPTABLE                         R14 K28 [{"id", "isDisabled", "text", "items"}]
      146 GETUPVAL                         R15 1
      147 GETTABLEKS                       R15 R15 K29 ["CHANGE_ACTION_TYPE"]
      149 SETTABLEKS                       R15 R14 K0 ["id"]
      151 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
      153 LOADK                            R17 K4 ["Menu"]
      154 LOADK                            R18 K30 ["ChangeActionType"]
      155 NAMECALL                         R15 R0 K6 ["getText"]
      157 CALL                             R15 3 1
      158 SETTABLEKS                       R15 R14 K1 ["text"]
      160 GETUPVAL                         R15 3
      161 MOVE                             R16 R1
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K27 ["items"]
      165 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
      167 GETIMPORT                        R12 K9 [table.insert]
      169 CALL                             R12 2 0
      170 JUMPIFNOTEQKS                    R3 K31 ["Keycode"] ; [+26]
      172 GETUPVAL                         R13 4
      173 GETTABLE                         R12 R13 R1
      174 JUMPIFEQKNIL                     R12 ; [+22]
      176 DUPTABLE                         R14 K20 [{"id", "isDisabled", "text"}]
      177 GETUPVAL                         R15 1
      178 GETTABLEKS                       R15 R15 K32 ["ROW_USE_COMPOSITE"]
      180 SETTABLEKS                       R15 R14 K0 ["id"]
      182 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
      184 LOADK                            R17 K4 ["Menu"]
      185 LOADK                            R18 K33 ["UseComposite"]
      186 NAMECALL                         R15 R0 K6 ["getText"]
      188 CALL                             R15 3 1
      189 SETTABLEKS                       R15 R14 K1 ["text"]
      191 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      193 MOVE                             R13 R9
      194 GETIMPORT                        R12 K9 [table.insert]
      196 CALL                             R12 2 0
      197 JUMPIFNOTEQKS                    R3 K34 ["Composite"] ; [+44]
      199 DUPTABLE                         R14 K20 [{"id", "isDisabled", "text"}]
      200 GETUPVAL                         R15 1
      201 GETTABLEKS                       R15 R15 K35 ["ROW_USE_KEYCODE"]
      203 SETTABLEKS                       R15 R14 K0 ["id"]
      205 SETTABLEKS                       R8 R14 K11 ["isDisabled"]
      207 LOADK                            R17 K4 ["Menu"]
      208 LOADK                            R18 K36 ["UseKeycode"]
      209 NAMECALL                         R15 R0 K6 ["getText"]
      211 CALL                             R15 3 1
      212 SETTABLEKS                       R15 R14 K1 ["text"]
      214 FASTCALL2                        TABLE_INSERT R9 R14 ; [+4]
      216 MOVE                             R13 R9
      217 GETIMPORT                        R12 K9 [table.insert]
      219 CALL                             R12 2 0
      220 JUMP                             ; [+21]
      221 DUPTABLE                         R13 K24 [{["icon"] = "trash-can", [2], ["isDisabled"], ["text"]}]
      222 GETUPVAL                         R14 1
      223 GETTABLEKS                       R14 R14 K25 ["DELETE"]
      225 SETTABLEKS                       R14 R13 K0 ["id"]
      227 SETTABLEKS                       R8 R13 K11 ["isDisabled"]
      229 LOADK                            R16 K4 ["Menu"]
      230 LOADK                            R17 K26 ["Delete"]
      231 NAMECALL                         R14 R0 K6 ["getText"]
      233 CALL                             R14 3 1
      234 SETTABLEKS                       R14 R13 K1 ["text"]
      236 FASTCALL2                        TABLE_INSERT R9 R13 ; [+4]
      238 MOVE                             R12 R9
      239 GETIMPORT                        R11 K9 [table.insert]
      241 CALL                             R11 2 0
      242 GETUPVAL                         R11 0
      243 CALL                             R11 0 1
      244 JUMPIF                           R11 ; [+1]
      245 RETURN                           R9 1
      246 LENGTH                           R11 R10
      247 JUMPIFNOTEQKN                    R11 K37 [0] ; [+9]
      249 NEWTABLE                         R11 0 1
      251 DUPTABLE                         R12 K38 [{"items"}]
      252 SETTABLEKS                       R9 R12 K27 ["items"]
      254 SETLIST                          R11 R12 1 [1]
      256 RETURN                           R11 1
      257 NEWTABLE                         R11 0 2
      259 DUPTABLE                         R12 K38 [{"items"}]
      260 SETTABLEKS                       R9 R12 K27 ["items"]
      262 DUPTABLE                         R13 K38 [{"items"}]
      263 SETTABLEKS                       R10 R13 K27 ["items"]
      265 SETLIST                          R11 R12 2 [1]
      267 RETURN                           R11 1

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
       60 GETTABLEKS                       R7 R7 K11 ["Constants"]
       62 GETTABLEKS                       R7 R7 K16 ["MenuIdentifiers"]
       64 CALL                             R6 1 1
       65 GETTABLEKS                       R7 R0 K8 ["Src"]
       67 GETTABLEKS                       R7 R7 K17 ["Flags"]
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R9 R7 K18 ["getFFlagIAMBooleanProperties"]
       73 CALL                             R8 1 1
       74 DUPCLOSURE                       R9 K19 [PROTO_0]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 RETURN                           R9 1
