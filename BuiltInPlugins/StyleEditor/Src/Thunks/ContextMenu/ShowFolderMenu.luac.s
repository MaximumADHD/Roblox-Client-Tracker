PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 [""]
        4 GETUPVAL                         R5 3
        5 CALL                             R2 3 -1
        6 NAMECALL                         R0 R0 K1 ["dispatch"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Folder/New/StyleQuery"] ; [+10]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 CALL                             R3 2 -1
        9 NAMECALL                         R1 R1 K2 ["dispatch"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K3 ["Data"]
       15 GETTABLEKS                       R1 R2 K4 ["Selector"]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R4 4
       19 GETUPVAL                         R5 2
       20 MOVE                             R6 R1
       21 GETUPVAL                         R7 3
       22 CALL                             R4 3 -1
       23 NAMECALL                         R2 R2 K2 ["dispatch"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

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
       42 JUMPIFNOT                        R5 ; [+67]
       43 JUMPIFNOT                        R4 ; [+66]
       44 DUPTABLE                         R8 K13 [{"Id", "Text", "Icon", "Children"}]
       45 LOADK                            R9 K14 ["New"]
       46 SETTABLEKS                       R9 R8 K9 ["Id"]
       48 LOADK                            R11 K15 ["ContextMenu"]
       49 LOADK                            R12 K14 ["New"]
       50 NAMECALL                         R9 R2 K16 ["getText"]
       52 CALL                             R9 3 1
       53 SETTABLEKS                       R9 R8 K10 ["Text"]
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R9 R10 K17 ["new"]
       58 CALL                             R9 0 1
       59 SETTABLEKS                       R9 R8 K11 ["Icon"]
       61 NEWTABLE                         R9 0 2
       63 DUPTABLE                         R10 K19 [{"Id", "Text", "Icon", "OnItemClicked"}]
       64 LOADK                            R11 K20 ["StyleQuery"]
       65 SETTABLEKS                       R11 R10 K9 ["Id"]
       67 GETUPVAL                         R12 1
       68 GETTABLEKS                       R11 R12 K21 ["ClassName"]
       70 SETTABLEKS                       R11 R10 K10 ["Text"]
       72 GETUPVAL                         R12 4
       73 GETTABLEKS                       R11 R12 K22 ["getClassIcon"]
       75 LOADK                            R12 K20 ["StyleQuery"]
       76 CALL                             R11 1 1
       77 SETTABLEKS                       R11 R10 K11 ["Icon"]
       79 NEWCLOSURE                       R11 P0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          UPVAL U6
       84 SETTABLEKS                       R11 R10 K18 ["OnItemClicked"]
       86 DUPTABLE                         R11 K23 [{"Id", "Text", "OnItemClicked"}]
       87 LOADK                            R12 K24 ["Empty"]
       88 SETTABLEKS                       R12 R11 K9 ["Id"]
       90 LOADK                            R14 K15 ["ContextMenu"]
       91 LOADK                            R15 K25 ["New.Empty"]
       92 NAMECALL                         R12 R2 K16 ["getText"]
       94 CALL                             R12 3 1
       95 SETTABLEKS                       R12 R11 K10 ["Text"]
       97 NEWCLOSURE                       R12 P1
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U7
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U6
      102 SETTABLEKS                       R12 R11 K18 ["OnItemClicked"]
      104 SETLIST                          R9 R10 2 [1]
      106 SETTABLEKS                       R9 R8 K12 ["Children"]
      108 MOVE                             R7 R8
      109 JUMP                             ; [+62]
      110 JUMPIFNOT                        R4 ; [+14]
      111 GETUPVAL                         R9 4
      112 GETTABLEKS                       R8 R9 K26 ["getNewSelectorAction"]
      114 MOVE                             R9 R4
      115 NEWCLOSURE                       R10 P2
      116 CAPTURE                          VAL R0
      117 CAPTURE                          UPVAL U5
      118 CAPTURE                          UPVAL U0
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U7
      121 MOVE                             R11 R2
      122 CALL                             R8 3 1
      123 MOVE                             R7 R8
      124 JUMP                             ; [+47]
      125 DUPTABLE                         R8 K13 [{"Id", "Text", "Icon", "Children"}]
      126 LOADK                            R9 K14 ["New"]
      127 SETTABLEKS                       R9 R8 K9 ["Id"]
      129 LOADK                            R11 K15 ["ContextMenu"]
      130 LOADK                            R12 K14 ["New"]
      131 NAMECALL                         R9 R2 K16 ["getText"]
      133 CALL                             R9 3 1
      134 SETTABLEKS                       R9 R8 K10 ["Text"]
      136 GETUPVAL                         R10 3
      137 GETTABLEKS                       R9 R10 K17 ["new"]
      139 CALL                             R9 0 1
      140 SETTABLEKS                       R9 R8 K11 ["Icon"]
      142 NEWTABLE                         R9 0 1
      144 DUPTABLE                         R10 K19 [{"Id", "Text", "Icon", "OnItemClicked"}]
      145 LOADK                            R11 K27 ["NewThemeStyleSheet"]
      146 SETTABLEKS                       R11 R10 K9 ["Id"]
      148 LOADK                            R13 K15 ["ContextMenu"]
      149 LOADK                            R14 K27 ["NewThemeStyleSheet"]
      150 NAMECALL                         R11 R2 K16 ["getText"]
      152 CALL                             R11 3 1
      153 SETTABLEKS                       R11 R10 K10 ["Text"]
      155 GETUPVAL                         R12 3
      156 GETTABLEKS                       R11 R12 K17 ["new"]
      158 CALL                             R11 0 1
      159 SETTABLEKS                       R11 R10 K11 ["Icon"]
      161 NEWCLOSURE                       R11 P3
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U8
      164 CAPTURE                          UPVAL U0
      165 SETTABLEKS                       R11 R10 K18 ["OnItemClicked"]
      167 SETLIST                          R9 R10 1 [1]
      169 SETTABLEKS                       R9 R8 K12 ["Children"]
      171 MOVE                             R7 R8
      172 FASTCALL1                        ASSERT R7 ; [+3]
      173 MOVE                             R9 R7
      174 GETIMPORT                        R8 K29 [assert]
      176 CALL                             R8 1 0
      177 NEWTABLE                         R8 0 1
      179 MOVE                             R9 R7
      180 SETLIST                          R8 R9 1 [1]
      182 GETUPVAL                         R9 9
      183 MOVE                             R10 R8
      184 NEWTABLE                         R11 0 4
      186 DUPTABLE                         R12 K19 [{"Id", "Text", "Icon", "OnItemClicked"}]
      187 LOADK                            R13 K30 ["ShowInExplorer"]
      188 SETTABLEKS                       R13 R12 K9 ["Id"]
      190 LOADK                            R15 K15 ["ContextMenu"]
      191 LOADK                            R16 K30 ["ShowInExplorer"]
      192 NAMECALL                         R13 R2 K16 ["getText"]
      194 CALL                             R13 3 1
      195 SETTABLEKS                       R13 R12 K10 ["Text"]
      197 GETUPVAL                         R14 4
      198 GETTABLEKS                       R13 R14 K22 ["getClassIcon"]
      200 LOADK                            R14 K31 ["ReplicatedStorage"]
      201 CALL                             R13 1 1
      202 SETTABLEKS                       R13 R12 K11 ["Icon"]
      204 NEWCLOSURE                       R13 P4
      205 CAPTURE                          VAL R0
      206 CAPTURE                          UPVAL U10
      207 CAPTURE                          UPVAL U0
      208 SETTABLEKS                       R13 R12 K18 ["OnItemClicked"]
      210 DUPTABLE                         R13 K19 [{"Id", "Text", "Icon", "OnItemClicked"}]
      211 LOADK                            R14 K32 ["Copy"]
      212 SETTABLEKS                       R14 R13 K9 ["Id"]
      214 LOADK                            R16 K15 ["ContextMenu"]
      215 LOADK                            R17 K32 ["Copy"]
      216 NAMECALL                         R14 R2 K16 ["getText"]
      218 CALL                             R14 3 1
      219 SETTABLEKS                       R14 R13 K10 ["Text"]
      221 GETUPVAL                         R15 3
      222 GETTABLEKS                       R14 R15 K33 ["copy"]
      224 CALL                             R14 0 1
      225 SETTABLEKS                       R14 R13 K11 ["Icon"]
      227 NEWCLOSURE                       R14 P5
      228 CAPTURE                          VAL R0
      229 CAPTURE                          UPVAL U11
      230 CAPTURE                          UPVAL U0
      231 SETTABLEKS                       R14 R13 K18 ["OnItemClicked"]
      233 DUPTABLE                         R14 K35 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      234 LOADK                            R15 K36 ["PasteInto"]
      235 SETTABLEKS                       R15 R14 K9 ["Id"]
      237 LOADK                            R17 K15 ["ContextMenu"]
      238 LOADK                            R18 K36 ["PasteInto"]
      239 NAMECALL                         R15 R2 K16 ["getText"]
      241 CALL                             R15 3 1
      242 SETTABLEKS                       R15 R14 K10 ["Text"]
      244 GETUPVAL                         R16 3
      245 GETTABLEKS                       R15 R16 K37 ["paste"]
      247 CALL                             R15 0 1
      248 SETTABLEKS                       R15 R14 K11 ["Icon"]
      250 SETTABLEKS                       R6 R14 K34 ["Enabled"]
      252 NEWCLOSURE                       R15 P6
      253 CAPTURE                          VAL R0
      254 CAPTURE                          UPVAL U12
      255 CAPTURE                          UPVAL U0
      256 SETTABLEKS                       R15 R14 K18 ["OnItemClicked"]
      258 DUPTABLE                         R15 K19 [{"Id", "Text", "Icon", "OnItemClicked"}]
      259 LOADK                            R16 K38 ["Delete"]
      260 SETTABLEKS                       R16 R15 K9 ["Id"]
      262 LOADK                            R18 K15 ["ContextMenu"]
      263 LOADK                            R19 K38 ["Delete"]
      264 NAMECALL                         R16 R2 K16 ["getText"]
      266 CALL                             R16 3 1
      267 SETTABLEKS                       R16 R15 K10 ["Text"]
      269 GETUPVAL                         R17 3
      270 GETTABLEKS                       R16 R17 K39 ["delete"]
      272 CALL                             R16 0 1
      273 SETTABLEKS                       R16 R15 K11 ["Icon"]
      275 NEWCLOSURE                       R16 P7
      276 CAPTURE                          VAL R0
      277 CAPTURE                          UPVAL U13
      278 CAPTURE                          UPVAL U0
      279 SETTABLEKS                       R16 R15 K18 ["OnItemClicked"]
      281 SETLIST                          R11 R12 4 [1]
      283 CALL                             R9 2 1
      284 MOVE                             R8 R9
      285 DUPTABLE                         R9 K40 [{"Id", "Children"}]
      286 LOADK                            R10 K41 ["Folder"]
      287 SETTABLEKS                       R10 R9 K9 ["Id"]
      289 SETTABLEKS                       R8 R9 K12 ["Children"]
      291 GETUPVAL                         R11 4
      292 GETTABLEKS                       R10 R11 K42 ["showContextMenu"]
      294 GETTABLEKS                       R11 R1 K43 ["Plugin"]
      296 MOVE                             R12 R9
      297 CALL                             R10 2 0
      298 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 RETURN                           R2 1

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
       91 GETTABLEKS                       R12 R11 K21 ["append"]
       93 GETTABLEKS                       R14 R0 K5 ["Src"]
       95 GETTABLEKS                       R13 R14 K22 ["Actions"]
       97 GETIMPORT                        R14 K4 [require]
       99 GETTABLEKS                       R16 R13 K23 ["Clipboard"]
      101 GETTABLEKS                       R15 R16 K24 ["CopyInstanceToClipboard"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K4 [require]
      106 GETTABLEKS                       R17 R0 K5 ["Src"]
      108 GETTABLEKS                       R16 R17 K25 ["Types"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K4 [require]
      113 GETTABLEKS                       R19 R0 K5 ["Src"]
      115 GETTABLEKS                       R18 R19 K10 ["Thunks"]
      117 GETTABLEKS                       R17 R18 K25 ["Types"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K4 [require]
      122 GETTABLEKS                       R20 R0 K5 ["Src"]
      124 GETTABLEKS                       R19 R20 K26 ["Flags"]
      126 GETTABLEKS                       R18 R19 K27 ["getFFlagStyleQuery"]
      128 CALL                             R17 1 1
      129 CALL                             R17 0 1
      130 DUPCLOSURE                       R18 K28 [PROTO_9]
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R7
      143 RETURN                           R18 1
