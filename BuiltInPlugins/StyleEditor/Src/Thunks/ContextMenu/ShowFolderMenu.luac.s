PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 LOADK                            R3 K1 ["Insert/StyleQuery"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 -1
       11 NAMECALL                         R1 R1 K2 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 ["@Query"]
        4 GETUPVAL                         R5 3
        5 CALL                             R2 3 -1
        6 NAMECALL                         R0 R0 K1 ["dispatch"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAvailablePseudoSelector"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["StyleQuery"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 MOVE                             R5 R0
       10 GETUPVAL                         R6 5
       11 CALL                             R3 3 -1
       12 NAMECALL                         R1 R1 K2 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
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
       23 JUMPIFNOT                        R7 ; [+11]
       24 GETTABLEKS                       R9 R3 K8 ["Clipboard"]
       26 GETTABLEKS                       R8 R9 K9 ["Instances"]
       28 LENGTH                           R7 R8
       29 LOADN                            R8 0
       30 JUMPIFLT                         R8 R7 ; [+2]
       32 LOADB                            R6 0 +1
       33 LOADB                            R6 1
       34 JUMP                             ; [+8]
       35 GETTABLEKS                       R8 R3 K8 ["Clipboard"]
       37 GETTABLEKS                       R7 R8 K10 ["DEPRECATED_Instance"]
       39 JUMPIFNOTEQKNIL                  R7 ; [+2]
       41 LOADB                            R6 0 +1
       42 LOADB                            R6 1
       43 NEWTABLE                         R7 0 0
       45 NEWTABLE                         R8 0 0
       47 JUMPIFNOT                        R5 ; [+79]
       48 JUMPIFNOT                        R4 ; [+78]
       49 GETUPVAL                         R10 2
       50 GETTABLEKS                       R9 R10 K11 ["getInsertAction"]
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U5
       58 MOVE                             R11 R2
       59 CALL                             R9 2 1
       60 JUMPIFNOT                        R9 ; [+7]
       61 FASTCALL2                        TABLE_INSERT R7 R9 ; [+5]
       63 MOVE                             R11 R7
       64 MOVE                             R12 R9
       65 GETIMPORT                        R10 K14 [table.insert]
       67 CALL                             R10 2 0
       68 DUPTABLE                         R12 K18 [{"Id", "Text", "OnItemClicked"}]
       69 LOADK                            R13 K19 ["AddQueryRule"]
       70 SETTABLEKS                       R13 R12 K15 ["Id"]
       72 LOADK                            R15 K20 ["ContextMenu"]
       73 LOADK                            R16 K21 ["New.Query"]
       74 NAMECALL                         R13 R2 K7 ["getText"]
       76 CALL                             R13 3 1
       77 SETTABLEKS                       R13 R12 K16 ["Text"]
       79 NEWCLOSURE                       R13 P1
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          UPVAL U5
       84 SETTABLEKS                       R13 R12 K17 ["OnItemClicked"]
       86 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
       88 MOVE                             R11 R8
       89 GETIMPORT                        R10 K14 [table.insert]
       91 CALL                             R10 2 0
       92 DUPTABLE                         R12 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
       93 LOADK                            R13 K24 ["AddPseudoRule"]
       94 SETTABLEKS                       R13 R12 K15 ["Id"]
       96 LOADK                            R15 K20 ["ContextMenu"]
       97 LOADK                            R16 K25 ["New.PseudoInstance"]
       98 NAMECALL                         R13 R2 K7 ["getText"]
      100 CALL                             R13 3 1
      101 SETTABLEKS                       R13 R12 K16 ["Text"]
      103 GETUPVAL                         R15 7
      104 GETTABLEKS                       R14 R15 K26 ["Selectors"]
      106 GETTABLEKS                       R13 R14 K27 ["PseudoInstance"]
      108 CALL                             R13 0 1
      109 SETTABLEKS                       R13 R12 K22 ["Icon"]
      111 NEWCLOSURE                       R13 P2
      112 CAPTURE                          UPVAL U2
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          UPVAL U0
      117 CAPTURE                          UPVAL U5
      118 SETTABLEKS                       R13 R12 K17 ["OnItemClicked"]
      120 FASTCALL2                        TABLE_INSERT R8 R12 ; [+4]
      122 MOVE                             R11 R8
      123 GETIMPORT                        R10 K14 [table.insert]
      125 CALL                             R10 2 0
      126 JUMP                             ; [+29]
      127 DUPTABLE                         R11 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      128 LOADK                            R12 K28 ["NewThemeStyleSheet"]
      129 SETTABLEKS                       R12 R11 K15 ["Id"]
      131 LOADK                            R14 K20 ["ContextMenu"]
      132 LOADK                            R15 K28 ["NewThemeStyleSheet"]
      133 NAMECALL                         R12 R2 K7 ["getText"]
      135 CALL                             R12 3 1
      136 SETTABLEKS                       R12 R11 K16 ["Text"]
      138 GETUPVAL                         R13 7
      139 GETTABLEKS                       R12 R13 K29 ["new"]
      141 CALL                             R12 0 1
      142 SETTABLEKS                       R12 R11 K22 ["Icon"]
      144 NEWCLOSURE                       R12 P3
      145 CAPTURE                          VAL R0
      146 CAPTURE                          UPVAL U8
      147 CAPTURE                          UPVAL U0
      148 SETTABLEKS                       R12 R11 K17 ["OnItemClicked"]
      150 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      152 MOVE                             R10 R8
      153 GETIMPORT                        R9 K14 [table.insert]
      155 CALL                             R9 2 0
      156 LOADN                            R11 1
      157 DUPTABLE                         R12 K31 [{"Id", "Text", "Icon", "Children"}]
      158 LOADK                            R13 K32 ["New"]
      159 SETTABLEKS                       R13 R12 K15 ["Id"]
      161 LOADK                            R15 K20 ["ContextMenu"]
      162 LOADK                            R16 K32 ["New"]
      163 NAMECALL                         R13 R2 K7 ["getText"]
      165 CALL                             R13 3 1
      166 SETTABLEKS                       R13 R12 K16 ["Text"]
      168 GETUPVAL                         R14 7
      169 GETTABLEKS                       R13 R14 K29 ["new"]
      171 CALL                             R13 0 1
      172 SETTABLEKS                       R13 R12 K22 ["Icon"]
      174 SETTABLEKS                       R8 R12 K30 ["Children"]
      176 FASTCALL3                        TABLE_INSERT R7 R11 R12
      178 MOVE                             R10 R7
      179 GETIMPORT                        R9 K14 [table.insert]
      181 CALL                             R9 3 0
      182 DUPTABLE                         R11 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      183 LOADK                            R12 K33 ["ShowInExplorer"]
      184 SETTABLEKS                       R12 R11 K15 ["Id"]
      186 LOADK                            R14 K20 ["ContextMenu"]
      187 LOADK                            R15 K33 ["ShowInExplorer"]
      188 NAMECALL                         R12 R2 K7 ["getText"]
      190 CALL                             R12 3 1
      191 SETTABLEKS                       R12 R11 K16 ["Text"]
      193 GETUPVAL                         R13 2
      194 GETTABLEKS                       R12 R13 K34 ["getClassIcon"]
      196 LOADK                            R13 K35 ["ReplicatedStorage"]
      197 CALL                             R12 1 1
      198 SETTABLEKS                       R12 R11 K22 ["Icon"]
      200 NEWCLOSURE                       R12 P4
      201 CAPTURE                          VAL R0
      202 CAPTURE                          UPVAL U9
      203 CAPTURE                          UPVAL U0
      204 SETTABLEKS                       R12 R11 K17 ["OnItemClicked"]
      206 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      208 MOVE                             R10 R7
      209 GETIMPORT                        R9 K14 [table.insert]
      211 CALL                             R9 2 0
      212 DUPTABLE                         R11 K36 [{"Id", "Text", "Icon", "OnItemClicked", "Children"}]
      213 LOADK                            R12 K37 ["Copy"]
      214 SETTABLEKS                       R12 R11 K15 ["Id"]
      216 LOADK                            R14 K20 ["ContextMenu"]
      217 LOADK                            R15 K37 ["Copy"]
      218 NAMECALL                         R12 R2 K7 ["getText"]
      220 CALL                             R12 3 1
      221 SETTABLEKS                       R12 R11 K16 ["Text"]
      223 GETUPVAL                         R13 7
      224 GETTABLEKS                       R12 R13 K38 ["copy"]
      226 CALL                             R12 0 1
      227 SETTABLEKS                       R12 R11 K22 ["Icon"]
      229 NEWCLOSURE                       R12 P5
      230 CAPTURE                          VAL R0
      231 CAPTURE                          UPVAL U10
      232 CAPTURE                          UPVAL U0
      233 SETTABLEKS                       R12 R11 K17 ["OnItemClicked"]
      235 NEWTABLE                         R12 0 0
      237 SETTABLEKS                       R12 R11 K30 ["Children"]
      239 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      241 MOVE                             R10 R7
      242 GETIMPORT                        R9 K14 [table.insert]
      244 CALL                             R9 2 0
      245 DUPTABLE                         R11 K40 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked", "Children"}]
      246 LOADK                            R12 K41 ["PasteInto"]
      247 SETTABLEKS                       R12 R11 K15 ["Id"]
      249 LOADK                            R14 K20 ["ContextMenu"]
      250 LOADK                            R15 K41 ["PasteInto"]
      251 NAMECALL                         R12 R2 K7 ["getText"]
      253 CALL                             R12 3 1
      254 SETTABLEKS                       R12 R11 K16 ["Text"]
      256 GETUPVAL                         R13 7
      257 GETTABLEKS                       R12 R13 K42 ["paste"]
      259 CALL                             R12 0 1
      260 SETTABLEKS                       R12 R11 K22 ["Icon"]
      262 SETTABLEKS                       R6 R11 K39 ["Enabled"]
      264 NEWCLOSURE                       R12 P6
      265 CAPTURE                          VAL R0
      266 CAPTURE                          UPVAL U11
      267 CAPTURE                          UPVAL U0
      268 SETTABLEKS                       R12 R11 K17 ["OnItemClicked"]
      270 NEWTABLE                         R12 0 0
      272 SETTABLEKS                       R12 R11 K30 ["Children"]
      274 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      276 MOVE                             R10 R7
      277 GETIMPORT                        R9 K14 [table.insert]
      279 CALL                             R9 2 0
      280 DUPTABLE                         R11 K36 [{"Id", "Text", "Icon", "OnItemClicked", "Children"}]
      281 LOADK                            R12 K43 ["Delete"]
      282 SETTABLEKS                       R12 R11 K15 ["Id"]
      284 LOADK                            R14 K20 ["ContextMenu"]
      285 LOADK                            R15 K43 ["Delete"]
      286 NAMECALL                         R12 R2 K7 ["getText"]
      288 CALL                             R12 3 1
      289 SETTABLEKS                       R12 R11 K16 ["Text"]
      291 GETUPVAL                         R13 7
      292 GETTABLEKS                       R12 R13 K44 ["delete"]
      294 CALL                             R12 0 1
      295 SETTABLEKS                       R12 R11 K22 ["Icon"]
      297 NEWCLOSURE                       R12 P7
      298 CAPTURE                          VAL R0
      299 CAPTURE                          UPVAL U12
      300 CAPTURE                          UPVAL U0
      301 SETTABLEKS                       R12 R11 K17 ["OnItemClicked"]
      303 NEWTABLE                         R12 0 0
      305 SETTABLEKS                       R12 R11 K30 ["Children"]
      307 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      309 MOVE                             R10 R7
      310 GETIMPORT                        R9 K14 [table.insert]
      312 CALL                             R9 2 0
      313 DUPTABLE                         R9 K45 [{"Id", "Children"}]
      314 LOADK                            R10 K46 ["Folder"]
      315 SETTABLEKS                       R10 R9 K15 ["Id"]
      317 SETTABLEKS                       R7 R9 K30 ["Children"]
      319 GETUPVAL                         R11 2
      320 GETTABLEKS                       R10 R11 K47 ["showContextMenu"]
      322 GETTABLEKS                       R11 R1 K48 ["Plugin"]
      324 MOVE                             R12 R9
      325 CALL                             R10 2 0
      326 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 RETURN                           R2 1

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
      111 GETIMPORT                        R16 K4 [require]
      113 GETTABLEKS                       R19 R0 K5 ["Src"]
      115 GETTABLEKS                       R18 R19 K25 ["Flags"]
      117 GETTABLEKS                       R17 R18 K26 ["getFFlagStyleQuery"]
      119 CALL                             R16 1 1
      120 CALL                             R16 0 1
      121 DUPCLOSURE                       R17 K27 [PROTO_9]
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R7
      133 RETURN                           R17 1
