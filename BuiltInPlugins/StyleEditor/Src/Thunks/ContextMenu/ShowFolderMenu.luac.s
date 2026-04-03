PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 ["@Query"]
        4 GETUPVAL                         R5 3
        5 CALL                             R2 3 -1
        6 NAMECALL                         R0 R0 K1 ["dispatch"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R2 K1 ["Selector"]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 MOVE                             R6 R1
        8 GETUPVAL                         R7 3
        9 CALL                             R4 3 -1
       10 NAMECALL                         R2 R2 K2 ["dispatch"]
       12 CALL                             R2 -1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 NAMECALL                         R3 R0 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 LOADK                            R6 K2 ["StyleBase"]
        7 NAMECALL                         R4 R4 K3 ["FindFirstAncestorWhichIsA"]
        9 CALL                             R4 2 1
       10 LOADB                            R5 0
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["Name"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K5 ["FolderName"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+2]
       19 MOVE                             R5 R4
       20 GETUPVAL                         R7 2
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETTABLEKS                       R9 R3 K6 ["Clipboard"]
       24 GETTABLEKS                       R8 R9 K7 ["Instances"]
       26 LENGTH                           R7 R8
       27 LOADN                            R8 0
       28 JUMPIFLT                         R8 R7 ; [+2]
       30 LOADB                            R6 0 +1
       31 LOADB                            R6 1
       32 JUMP                             ; [+8]
       33 GETTABLEKS                       R8 R3 K6 ["Clipboard"]
       35 GETTABLEKS                       R7 R8 K8 ["DEPRECATED_Instance"]
       37 JUMPIFNOTEQKNIL                  R7 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 LOADNIL                          R7
       42 LOADNIL                          R8
       43 JUMPIFNOT                        R5 ; [+84]
       44 JUMPIFNOT                        R4 ; [+83]
       45 DUPTABLE                         R9 K13 [{"Id", "Text", "Icon", "Children"}]
       46 LOADK                            R10 K14 ["New"]
       47 SETTABLEKS                       R10 R9 K9 ["Id"]
       49 LOADK                            R12 K15 ["ContextMenu"]
       50 LOADK                            R13 K14 ["New"]
       51 NAMECALL                         R10 R2 K16 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K10 ["Text"]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R10 R11 K17 ["new"]
       59 CALL                             R10 0 1
       60 SETTABLEKS                       R10 R9 K11 ["Icon"]
       62 NEWTABLE                         R10 0 2
       64 DUPTABLE                         R11 K19 [{"Id", "Text", "OnItemClicked"}]
       65 LOADK                            R12 K20 ["AddQueryRule"]
       66 SETTABLEKS                       R12 R11 K9 ["Id"]
       68 LOADK                            R14 K15 ["ContextMenu"]
       69 LOADK                            R15 K21 ["New.Query"]
       70 NAMECALL                         R12 R2 K16 ["getText"]
       72 CALL                             R12 3 1
       73 SETTABLEKS                       R12 R11 K10 ["Text"]
       75 NEWCLOSURE                       R12 P0
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          UPVAL U5
       80 SETTABLEKS                       R12 R11 K18 ["OnItemClicked"]
       82 DUPTABLE                         R12 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
       83 LOADK                            R13 K23 ["AddPseudoRule"]
       84 SETTABLEKS                       R13 R12 K9 ["Id"]
       86 LOADK                            R15 K15 ["ContextMenu"]
       87 LOADK                            R16 K24 ["New.PseudoInstance"]
       88 NAMECALL                         R13 R2 K16 ["getText"]
       90 CALL                             R13 3 1
       91 SETTABLEKS                       R13 R12 K10 ["Text"]
       93 GETUPVAL                         R15 3
       94 GETTABLEKS                       R14 R15 K25 ["Selectors"]
       96 GETTABLEKS                       R13 R14 K26 ["PseudoInstance"]
       98 CALL                             R13 0 1
       99 SETTABLEKS                       R13 R12 K11 ["Icon"]
      101 NEWCLOSURE                       R13 P1
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U0
      107 CAPTURE                          UPVAL U5
      108 SETTABLEKS                       R13 R12 K18 ["OnItemClicked"]
      110 SETLIST                          R10 R11 2 [1]
      112 SETTABLEKS                       R10 R9 K12 ["Children"]
      114 MOVE                             R7 R9
      115 GETUPVAL                         R10 6
      116 GETTABLEKS                       R9 R10 K27 ["getInsertAction"]
      118 NEWCLOSURE                       R10 P2
      119 CAPTURE                          UPVAL U7
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U8
      122 CAPTURE                          VAL R4
      123 CAPTURE                          UPVAL U5
      124 MOVE                             R11 R2
      125 CALL                             R9 2 1
      126 MOVE                             R8 R9
      127 JUMP                             ; [+61]
      128 JUMPIFNOT                        R4 ; [+13]
      129 GETUPVAL                         R10 6
      130 GETTABLEKS                       R9 R10 K28 ["getNewSelectorAction"]
      132 MOVE                             R10 R4
      133 NEWCLOSURE                       R11 P3
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U4
      136 CAPTURE                          UPVAL U0
      137 CAPTURE                          UPVAL U5
      138 MOVE                             R12 R2
      139 CALL                             R9 3 1
      140 MOVE                             R7 R9
      141 JUMP                             ; [+47]
      142 DUPTABLE                         R9 K13 [{"Id", "Text", "Icon", "Children"}]
      143 LOADK                            R10 K14 ["New"]
      144 SETTABLEKS                       R10 R9 K9 ["Id"]
      146 LOADK                            R12 K15 ["ContextMenu"]
      147 LOADK                            R13 K14 ["New"]
      148 NAMECALL                         R10 R2 K16 ["getText"]
      150 CALL                             R10 3 1
      151 SETTABLEKS                       R10 R9 K10 ["Text"]
      153 GETUPVAL                         R11 3
      154 GETTABLEKS                       R10 R11 K17 ["new"]
      156 CALL                             R10 0 1
      157 SETTABLEKS                       R10 R9 K11 ["Icon"]
      159 NEWTABLE                         R10 0 1
      161 DUPTABLE                         R11 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
      162 LOADK                            R12 K29 ["NewThemeStyleSheet"]
      163 SETTABLEKS                       R12 R11 K9 ["Id"]
      165 LOADK                            R14 K15 ["ContextMenu"]
      166 LOADK                            R15 K29 ["NewThemeStyleSheet"]
      167 NAMECALL                         R12 R2 K16 ["getText"]
      169 CALL                             R12 3 1
      170 SETTABLEKS                       R12 R11 K10 ["Text"]
      172 GETUPVAL                         R13 3
      173 GETTABLEKS                       R12 R13 K17 ["new"]
      175 CALL                             R12 0 1
      176 SETTABLEKS                       R12 R11 K11 ["Icon"]
      178 NEWCLOSURE                       R12 P4
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U9
      181 CAPTURE                          UPVAL U0
      182 SETTABLEKS                       R12 R11 K18 ["OnItemClicked"]
      184 SETLIST                          R10 R11 1 [1]
      186 SETTABLEKS                       R10 R9 K12 ["Children"]
      188 MOVE                             R7 R9
      189 FASTCALL1                        ASSERT R7 ; [+3]
      190 MOVE                             R10 R7
      191 GETIMPORT                        R9 K31 [assert]
      193 CALL                             R9 1 0
      194 NEWTABLE                         R9 0 1
      196 MOVE                             R10 R7
      197 SETLIST                          R9 R10 1 [1]
      199 JUMPIFNOT                        R8 ; [+7]
      200 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
      202 MOVE                             R11 R9
      203 MOVE                             R12 R8
      204 GETIMPORT                        R10 K34 [table.insert]
      206 CALL                             R10 2 0
      207 GETUPVAL                         R10 10
      208 MOVE                             R11 R9
      209 NEWTABLE                         R12 0 4
      211 DUPTABLE                         R13 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
      212 LOADK                            R14 K35 ["ShowInExplorer"]
      213 SETTABLEKS                       R14 R13 K9 ["Id"]
      215 LOADK                            R16 K15 ["ContextMenu"]
      216 LOADK                            R17 K35 ["ShowInExplorer"]
      217 NAMECALL                         R14 R2 K16 ["getText"]
      219 CALL                             R14 3 1
      220 SETTABLEKS                       R14 R13 K10 ["Text"]
      222 GETUPVAL                         R15 6
      223 GETTABLEKS                       R14 R15 K36 ["getClassIcon"]
      225 LOADK                            R15 K37 ["ReplicatedStorage"]
      226 CALL                             R14 1 1
      227 SETTABLEKS                       R14 R13 K11 ["Icon"]
      229 NEWCLOSURE                       R14 P5
      230 CAPTURE                          VAL R0
      231 CAPTURE                          UPVAL U11
      232 CAPTURE                          UPVAL U0
      233 SETTABLEKS                       R14 R13 K18 ["OnItemClicked"]
      235 DUPTABLE                         R14 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
      236 LOADK                            R15 K38 ["Copy"]
      237 SETTABLEKS                       R15 R14 K9 ["Id"]
      239 LOADK                            R17 K15 ["ContextMenu"]
      240 LOADK                            R18 K38 ["Copy"]
      241 NAMECALL                         R15 R2 K16 ["getText"]
      243 CALL                             R15 3 1
      244 SETTABLEKS                       R15 R14 K10 ["Text"]
      246 GETUPVAL                         R16 3
      247 GETTABLEKS                       R15 R16 K39 ["copy"]
      249 CALL                             R15 0 1
      250 SETTABLEKS                       R15 R14 K11 ["Icon"]
      252 NEWCLOSURE                       R15 P6
      253 CAPTURE                          VAL R0
      254 CAPTURE                          UPVAL U12
      255 CAPTURE                          UPVAL U0
      256 SETTABLEKS                       R15 R14 K18 ["OnItemClicked"]
      258 DUPTABLE                         R15 K41 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      259 LOADK                            R16 K42 ["PasteInto"]
      260 SETTABLEKS                       R16 R15 K9 ["Id"]
      262 LOADK                            R18 K15 ["ContextMenu"]
      263 LOADK                            R19 K42 ["PasteInto"]
      264 NAMECALL                         R16 R2 K16 ["getText"]
      266 CALL                             R16 3 1
      267 SETTABLEKS                       R16 R15 K10 ["Text"]
      269 GETUPVAL                         R17 3
      270 GETTABLEKS                       R16 R17 K43 ["paste"]
      272 CALL                             R16 0 1
      273 SETTABLEKS                       R16 R15 K11 ["Icon"]
      275 SETTABLEKS                       R6 R15 K40 ["Enabled"]
      277 NEWCLOSURE                       R16 P7
      278 CAPTURE                          VAL R0
      279 CAPTURE                          UPVAL U13
      280 CAPTURE                          UPVAL U0
      281 SETTABLEKS                       R16 R15 K18 ["OnItemClicked"]
      283 DUPTABLE                         R16 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
      284 LOADK                            R17 K44 ["Delete"]
      285 SETTABLEKS                       R17 R16 K9 ["Id"]
      287 LOADK                            R19 K15 ["ContextMenu"]
      288 LOADK                            R20 K44 ["Delete"]
      289 NAMECALL                         R17 R2 K16 ["getText"]
      291 CALL                             R17 3 1
      292 SETTABLEKS                       R17 R16 K10 ["Text"]
      294 GETUPVAL                         R18 3
      295 GETTABLEKS                       R17 R18 K45 ["delete"]
      297 CALL                             R17 0 1
      298 SETTABLEKS                       R17 R16 K11 ["Icon"]
      300 NEWCLOSURE                       R17 P8
      301 CAPTURE                          VAL R0
      302 CAPTURE                          UPVAL U14
      303 CAPTURE                          UPVAL U0
      304 SETTABLEKS                       R17 R16 K18 ["OnItemClicked"]
      306 SETLIST                          R12 R13 4 [1]
      308 CALL                             R10 2 1
      309 MOVE                             R9 R10
      310 DUPTABLE                         R10 K46 [{"Id", "Children"}]
      311 LOADK                            R11 K47 ["Folder"]
      312 SETTABLEKS                       R11 R10 K9 ["Id"]
      314 SETTABLEKS                       R9 R10 K12 ["Children"]
      316 GETUPVAL                         R12 6
      317 GETTABLEKS                       R11 R12 K48 ["showContextMenu"]
      319 GETTABLEKS                       R12 R1 K49 ["Plugin"]
      321 MOVE                             R13 R10
      322 CALL                             R11 2 0
      323 RETURN                           R0 0

PROTO_10:
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
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 RETURN                           R2 1

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
       77 GETTABLEKS                       R13 R0 K5 ["Src"]
       79 GETTABLEKS                       R12 R13 K6 ["Util"]
       81 GETTABLEKS                       R11 R12 K18 ["StyleQueryHelpers"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K4 [require]
       86 GETTABLEKS                       R13 R0 K19 ["Packages"]
       88 GETTABLEKS                       R12 R13 K20 ["Dash"]
       90 CALL                             R11 1 1
       91 GETTABLEKS                       R12 R11 K21 ["endsWith"]
       93 GETTABLEKS                       R13 R11 K22 ["append"]
       95 GETTABLEKS                       R15 R0 K5 ["Src"]
       97 GETTABLEKS                       R14 R15 K23 ["Actions"]
       99 GETIMPORT                        R15 K4 [require]
      101 GETTABLEKS                       R17 R14 K24 ["Clipboard"]
      103 GETTABLEKS                       R16 R17 K25 ["CopyInstanceToClipboard"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R18 R0 K5 ["Src"]
      110 GETTABLEKS                       R17 R18 K26 ["Types"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R20 R0 K5 ["Src"]
      117 GETTABLEKS                       R19 R20 K10 ["Thunks"]
      119 GETTABLEKS                       R18 R19 K26 ["Types"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K4 [require]
      124 GETTABLEKS                       R21 R0 K5 ["Src"]
      126 GETTABLEKS                       R20 R21 K27 ["Flags"]
      128 GETTABLEKS                       R19 R20 K28 ["getFFlagStyleQuery"]
      130 CALL                             R18 1 1
      131 CALL                             R18 0 1
      132 DUPCLOSURE                       R19 K29 [PROTO_10]
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R7
      146 RETURN                           R19 1
