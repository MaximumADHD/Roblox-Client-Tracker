PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 LOADK                            R3 K1 ["Insert/StyleQuery"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 CALL                             R3 1 -1
       10 NAMECALL                         R1 R1 K2 ["dispatch"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 ["@Query"]
        4 LOADB                            R5 1
        5 CALL                             R2 3 -1
        6 NAMECALL                         R0 R0 K1 ["dispatch"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAvailablePseudoSelector"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["StyleQuery"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 MOVE                             R5 R0
       10 LOADB                            R6 1
       11 CALL                             R3 3 -1
       12 NAMECALL                         R1 R1 K2 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 NAMECALL                         R3 R0 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 LOADK                            R6 K2 ["StyleRule"]
        7 NAMECALL                         R4 R4 K3 ["FindFirstAncestorOfClass"]
        9 CALL                             R4 2 1
       10 LOADB                            R5 0
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["Name"]
       14 LOADK                            R9 K5 ["Categories"]
       15 LOADK                            R10 K6 ["Queries"]
       16 NAMECALL                         R7 R2 K7 ["getText"]
       18 CALL                             R7 3 1
       19 JUMPIFNOTEQ                      R6 R7 ; [+2]
       21 MOVE                             R5 R4
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K8 ["getRenameAction"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          UPVAL U2
       27 MOVE                             R8 R2
       28 CALL                             R6 2 1
       29 NEWTABLE                         R7 0 0
       31 NEWTABLE                         R8 0 0
       33 JUMPIFNOT                        R5 ; [+68]
       34 JUMPIFNOT                        R4 ; [+67]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R9 R10 K9 ["getInsertAction"]
       38 NEWCLOSURE                       R10 P1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R4
       43 MOVE                             R11 R2
       44 CALL                             R9 2 1
       45 JUMPIFNOT                        R9 ; [+7]
       46 FASTCALL2                        TABLE_INSERT R7 R9 ; [+5]
       48 MOVE                             R11 R7
       49 MOVE                             R12 R9
       50 GETIMPORT                        R10 K12 [table.insert]
       52 CALL                             R10 2 0
       53 DUPTABLE                         R12 K16 [{"Id", "Text", "OnItemClicked"}]
       54 LOADK                            R13 K17 ["AddQueryRule"]
       55 SETTABLEKS                       R13 R12 K13 ["Id"]
       57 LOADK                            R15 K18 ["ContextMenu"]
       58 LOADK                            R16 K19 ["New.Query"]
       59 NAMECALL                         R13 R2 K7 ["getText"]
       61 CALL                             R13 3 1
       62 SETTABLEKS                       R13 R12 K14 ["Text"]
       64 NEWCLOSURE                       R13 P2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U0
       68 SETTABLEKS                       R13 R12 K15 ["OnItemClicked"]
       70 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
       72 MOVE                             R11 R8
       73 GETIMPORT                        R10 K12 [table.insert]
       75 CALL                             R10 2 0
       76 DUPTABLE                         R12 K16 [{"Id", "Text", "OnItemClicked"}]
       77 LOADK                            R13 K20 ["AddPseudoRule"]
       78 SETTABLEKS                       R13 R12 K13 ["Id"]
       80 LOADK                            R15 K18 ["ContextMenu"]
       81 LOADK                            R16 K21 ["New.PseudoInstance"]
       82 NAMECALL                         R13 R2 K7 ["getText"]
       84 CALL                             R13 3 1
       85 SETTABLEKS                       R13 R12 K14 ["Text"]
       87 NEWCLOSURE                       R13 P3
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          UPVAL U0
       93 SETTABLEKS                       R13 R12 K15 ["OnItemClicked"]
       95 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
       97 MOVE                             R11 R8
       98 GETIMPORT                        R10 K12 [table.insert]
      100 CALL                             R10 2 0
      101 JUMP                             ; [+29]
      102 DUPTABLE                         R11 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      103 LOADK                            R12 K24 ["NewThemeStyleSheet"]
      104 SETTABLEKS                       R12 R11 K13 ["Id"]
      106 LOADK                            R14 K18 ["ContextMenu"]
      107 LOADK                            R15 K24 ["NewThemeStyleSheet"]
      108 NAMECALL                         R12 R2 K7 ["getText"]
      110 CALL                             R12 3 1
      111 SETTABLEKS                       R12 R11 K14 ["Text"]
      113 GETUPVAL                         R13 6
      114 GETTABLEKS                       R12 R13 K25 ["new"]
      116 CALL                             R12 0 1
      117 SETTABLEKS                       R12 R11 K22 ["Icon"]
      119 NEWCLOSURE                       R12 P4
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U7
      122 CAPTURE                          UPVAL U0
      123 SETTABLEKS                       R12 R11 K15 ["OnItemClicked"]
      125 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      127 MOVE                             R10 R8
      128 GETIMPORT                        R9 K12 [table.insert]
      130 CALL                             R9 2 0
      131 DUPTABLE                         R11 K27 [{"Id", "Text", "Icon", "Children"}]
      132 LOADK                            R12 K28 ["New"]
      133 SETTABLEKS                       R12 R11 K13 ["Id"]
      135 LOADK                            R14 K18 ["ContextMenu"]
      136 LOADK                            R15 K28 ["New"]
      137 NAMECALL                         R12 R2 K7 ["getText"]
      139 CALL                             R12 3 1
      140 SETTABLEKS                       R12 R11 K14 ["Text"]
      142 GETUPVAL                         R13 6
      143 GETTABLEKS                       R12 R13 K25 ["new"]
      145 CALL                             R12 0 1
      146 SETTABLEKS                       R12 R11 K22 ["Icon"]
      148 SETTABLEKS                       R8 R11 K26 ["Children"]
      150 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      152 MOVE                             R10 R7
      153 GETIMPORT                        R9 K12 [table.insert]
      155 CALL                             R9 2 0
      156 DUPTABLE                         R11 K29 [{"Id", "Text", "Icon", "OnItemClicked", "Children"}]
      157 LOADK                            R12 K30 ["Copy"]
      158 SETTABLEKS                       R12 R11 K13 ["Id"]
      160 LOADK                            R14 K18 ["ContextMenu"]
      161 LOADK                            R15 K30 ["Copy"]
      162 NAMECALL                         R12 R2 K7 ["getText"]
      164 CALL                             R12 3 1
      165 SETTABLEKS                       R12 R11 K14 ["Text"]
      167 GETUPVAL                         R13 6
      168 GETTABLEKS                       R12 R13 K31 ["copy"]
      170 CALL                             R12 0 1
      171 SETTABLEKS                       R12 R11 K22 ["Icon"]
      173 NEWCLOSURE                       R12 P5
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U8
      176 CAPTURE                          UPVAL U0
      177 SETTABLEKS                       R12 R11 K15 ["OnItemClicked"]
      179 NEWTABLE                         R12 0 0
      181 SETTABLEKS                       R12 R11 K26 ["Children"]
      183 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      185 MOVE                             R10 R7
      186 GETIMPORT                        R9 K12 [table.insert]
      188 CALL                             R9 2 0
      189 DUPTABLE                         R11 K33 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked", "Children"}]
      190 LOADK                            R12 K34 ["PasteInto"]
      191 SETTABLEKS                       R12 R11 K13 ["Id"]
      193 LOADK                            R14 K18 ["ContextMenu"]
      194 LOADK                            R15 K34 ["PasteInto"]
      195 NAMECALL                         R12 R2 K7 ["getText"]
      197 CALL                             R12 3 1
      198 SETTABLEKS                       R12 R11 K14 ["Text"]
      200 GETUPVAL                         R13 6
      201 GETTABLEKS                       R12 R13 K35 ["paste"]
      203 CALL                             R12 0 1
      204 SETTABLEKS                       R12 R11 K22 ["Icon"]
      206 GETTABLEKS                       R14 R3 K36 ["Clipboard"]
      208 GETTABLEKS                       R13 R14 K37 ["Instance"]
      210 JUMPIFNOTEQKNIL                  R13 ; [+2]
      212 LOADB                            R12 0 +1
      213 LOADB                            R12 1
      214 SETTABLEKS                       R12 R11 K32 ["Enabled"]
      216 NEWCLOSURE                       R12 P6
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U9
      219 CAPTURE                          UPVAL U0
      220 SETTABLEKS                       R12 R11 K15 ["OnItemClicked"]
      222 NEWTABLE                         R12 0 0
      224 SETTABLEKS                       R12 R11 K26 ["Children"]
      226 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      228 MOVE                             R10 R7
      229 GETIMPORT                        R9 K12 [table.insert]
      231 CALL                             R9 2 0
      232 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
      234 MOVE                             R10 R7
      235 MOVE                             R11 R6
      236 GETIMPORT                        R9 K12 [table.insert]
      238 CALL                             R9 2 0
      239 DUPTABLE                         R11 K29 [{"Id", "Text", "Icon", "OnItemClicked", "Children"}]
      240 LOADK                            R12 K38 ["Delete"]
      241 SETTABLEKS                       R12 R11 K13 ["Id"]
      243 LOADK                            R14 K18 ["ContextMenu"]
      244 LOADK                            R15 K38 ["Delete"]
      245 NAMECALL                         R12 R2 K7 ["getText"]
      247 CALL                             R12 3 1
      248 SETTABLEKS                       R12 R11 K14 ["Text"]
      250 GETUPVAL                         R13 6
      251 GETTABLEKS                       R12 R13 K39 ["delete"]
      253 CALL                             R12 0 1
      254 SETTABLEKS                       R12 R11 K22 ["Icon"]
      256 NEWCLOSURE                       R12 P7
      257 CAPTURE                          VAL R0
      258 CAPTURE                          UPVAL U10
      259 CAPTURE                          UPVAL U0
      260 SETTABLEKS                       R12 R11 K15 ["OnItemClicked"]
      262 NEWTABLE                         R12 0 0
      264 SETTABLEKS                       R12 R11 K26 ["Children"]
      266 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      268 MOVE                             R10 R7
      269 GETIMPORT                        R9 K12 [table.insert]
      271 CALL                             R9 2 0
      272 DUPTABLE                         R11 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      273 LOADK                            R12 K40 ["ShowInExplorer"]
      274 SETTABLEKS                       R12 R11 K13 ["Id"]
      276 LOADK                            R14 K18 ["ContextMenu"]
      277 LOADK                            R15 K40 ["ShowInExplorer"]
      278 NAMECALL                         R12 R2 K7 ["getText"]
      280 CALL                             R12 3 1
      281 SETTABLEKS                       R12 R11 K14 ["Text"]
      283 GETUPVAL                         R13 1
      284 GETTABLEKS                       R12 R13 K41 ["getClassIcon"]
      286 LOADK                            R13 K42 ["ReplicatedStorage"]
      287 CALL                             R12 1 1
      288 SETTABLEKS                       R12 R11 K22 ["Icon"]
      290 NEWCLOSURE                       R12 P8
      291 CAPTURE                          VAL R0
      292 CAPTURE                          UPVAL U11
      293 CAPTURE                          UPVAL U0
      294 SETTABLEKS                       R12 R11 K15 ["OnItemClicked"]
      296 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      298 MOVE                             R10 R7
      299 GETIMPORT                        R9 K12 [table.insert]
      301 CALL                             R9 2 0
      302 DUPTABLE                         R9 K43 [{"Id", "Children"}]
      303 LOADK                            R10 K44 ["Folder"]
      304 SETTABLEKS                       R10 R9 K13 ["Id"]
      306 SETTABLEKS                       R7 R9 K26 ["Children"]
      308 GETUPVAL                         R11 1
      309 GETTABLEKS                       R10 R11 K45 ["showContextMenu"]
      311 GETTABLEKS                       R11 R1 K46 ["Plugin"]
      313 MOVE                             R12 R9
      314 CALL                             R10 2 0
      315 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["MenuHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Resources"]
       26 GETTABLEKS                       R3 R4 K9 ["ModernIcons"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R4 K10 ["Thunks"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R6 R3 K11 ["Change"]
       37 GETTABLEKS                       R5 R6 K12 ["CreateThemeSheet"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R7 R3 K11 ["Change"]
       44 GETTABLEKS                       R6 R7 K13 ["CreateStyleQuery"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R8 R3 K11 ["Change"]
       51 GETTABLEKS                       R7 R8 K14 ["CreateStyleRuleInFolder"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R9 R3 K11 ["Change"]
       58 GETTABLEKS                       R8 R9 K15 ["DeleteInstance"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R10 R3 K11 ["Change"]
       65 GETTABLEKS                       R9 R10 K16 ["PasteInstanceInto"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K4 [require]
       70 GETTABLEKS                       R11 R3 K11 ["Change"]
       72 GETTABLEKS                       R10 R11 K17 ["ShowInstanceInExplorer"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K4 [require]
       77 GETTABLEKS                       R12 R0 K18 ["Packages"]
       79 GETTABLEKS                       R11 R12 K19 ["Dash"]
       81 CALL                             R10 1 1
       82 GETTABLEKS                       R11 R10 K20 ["endsWith"]
       84 GETTABLEKS                       R13 R0 K5 ["Src"]
       86 GETTABLEKS                       R12 R13 K21 ["Actions"]
       88 GETIMPORT                        R13 K4 [require]
       90 GETTABLEKS                       R15 R12 K22 ["Clipboard"]
       92 GETTABLEKS                       R14 R15 K23 ["CopyInstanceToClipboard"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R16 R0 K5 ["Src"]
       99 GETTABLEKS                       R15 R16 K24 ["Types"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R18 R0 K5 ["Src"]
      106 GETTABLEKS                       R17 R18 K10 ["Thunks"]
      108 GETTABLEKS                       R16 R17 K24 ["Types"]
      110 CALL                             R15 1 1
      111 DUPCLOSURE                       R16 K25 [PROTO_10]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R9
      122 RETURN                           R16 1
