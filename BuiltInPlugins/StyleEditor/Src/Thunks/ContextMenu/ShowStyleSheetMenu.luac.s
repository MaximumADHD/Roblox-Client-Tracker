PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R2 K1 ["Selector"]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 MOVE                             R6 R1
        8 LOADB                            R7 1
        9 CALL                             R4 3 -1
       10 NAMECALL                         R2 R2 K2 ["dispatch"]
       12 CALL                             R2 -1 0
       13 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R2 K1 ["Category"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R1
       10 CALL                             R4 2 -1
       11 NAMECALL                         R2 R2 K2 ["dispatch"]
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["Parent"]
        6 CALL                             R3 2 -1
        7 NAMECALL                         R1 R1 K1 ["dispatch"]
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
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
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Localization"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["getNewSelectorAction"]
        8 GETUPVAL                         R5 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U1
       13 MOVE                             R7 R3
       14 CALL                             R4 3 1
       15 LOADNIL                          R5
       16 GETUPVAL                         R6 3
       17 JUMPIFNOT                        R6 ; [+11]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K3 ["getInsertAction"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U1
       26 MOVE                             R8 R3
       27 CALL                             R6 2 1
       28 MOVE                             R5 R6
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K4 ["getRenameAction"]
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          UPVAL U6
       34 MOVE                             R8 R3
       35 CALL                             R6 2 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K5 ["getStyleSheetCategoryActions"]
       39 NEWCLOSURE                       R8 P3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U1
       43 MOVE                             R9 R3
       44 CALL                             R7 2 1
       45 GETUPVAL                         R9 3
       46 JUMPIFNOT                        R9 ; [+11]
       47 GETTABLEKS                       R11 R2 K6 ["Clipboard"]
       49 GETTABLEKS                       R10 R11 K7 ["Instances"]
       51 LENGTH                           R9 R10
       52 LOADN                            R10 0
       53 JUMPIFLT                         R10 R9 ; [+2]
       55 LOADB                            R8 0 +1
       56 LOADB                            R8 1
       57 JUMP                             ; [+8]
       58 GETTABLEKS                       R10 R2 K6 ["Clipboard"]
       60 GETTABLEKS                       R9 R10 K8 ["DEPRECATED_Instance"]
       62 JUMPIFNOTEQKNIL                  R9 ; [+2]
       64 LOADB                            R8 0 +1
       65 LOADB                            R8 1
       66 GETUPVAL                         R10 1
       67 LOADK                            R12 K10 ["StyleCategory"]
       68 NAMECALL                         R10 R10 K11 ["GetAttribute"]
       70 CALL                             R10 2 1
       71 ORK                              R9 R10 K9 [""]
       72 GETUPVAL                         R11 8
       73 GETTABLEKS                       R10 R11 K12 ["isTheme"]
       75 GETUPVAL                         R11 1
       76 CALL                             R10 1 1
       77 JUMPIFEQKS                       R9 K13 ["Tokens"] ; [+2]
       79 LOADB                            R11 0 +1
       80 LOADB                            R11 1
       81 OR                               R12 R11 R10
       82 DUPTABLE                         R13 K16 [{"Id", "Children"}]
       83 LOADK                            R14 K17 ["StyleSheet"]
       84 SETTABLEKS                       R14 R13 K14 ["Id"]
       86 NEWTABLE                         R14 0 9
       88 GETUPVAL                         R15 9
       89 MOVE                             R16 R4
       90 DUPTABLE                         R17 K19 [{"Hidden"}]
       91 SETTABLEKS                       R12 R17 K18 ["Hidden"]
       93 CALL                             R15 2 1
       94 MOVE                             R16 R5
       95 MOVE                             R17 R6
       96 DUPTABLE                         R18 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
       97 LOADK                            R19 K24 ["Duplicate"]
       98 SETTABLEKS                       R19 R18 K14 ["Id"]
      100 LOADK                            R21 K25 ["ContextMenu"]
      101 LOADK                            R22 K24 ["Duplicate"]
      102 NAMECALL                         R19 R3 K26 ["getText"]
      104 CALL                             R19 3 1
      105 SETTABLEKS                       R19 R18 K20 ["Text"]
      107 GETUPVAL                         R20 10
      108 GETTABLEKS                       R19 R20 K27 ["duplicate"]
      110 CALL                             R19 0 1
      111 SETTABLEKS                       R19 R18 K21 ["Icon"]
      113 NEWCLOSURE                       R19 P4
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U11
      116 CAPTURE                          UPVAL U1
      117 SETTABLEKS                       R19 R18 K22 ["OnItemClicked"]
      119 DUPTABLE                         R19 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      120 LOADK                            R20 K28 ["Delete"]
      121 SETTABLEKS                       R20 R19 K14 ["Id"]
      123 LOADK                            R22 K25 ["ContextMenu"]
      124 LOADK                            R23 K28 ["Delete"]
      125 NAMECALL                         R20 R3 K26 ["getText"]
      127 CALL                             R20 3 1
      128 SETTABLEKS                       R20 R19 K20 ["Text"]
      130 GETUPVAL                         R21 10
      131 GETTABLEKS                       R20 R21 K29 ["delete"]
      133 CALL                             R20 0 1
      134 SETTABLEKS                       R20 R19 K21 ["Icon"]
      136 NEWCLOSURE                       R20 P5
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U12
      139 CAPTURE                          UPVAL U1
      140 SETTABLEKS                       R20 R19 K22 ["OnItemClicked"]
      142 DUPTABLE                         R20 K31 [{"Id", "Text", "Icon", "Hidden", "Enabled", "OnItemClicked"}]
      143 LOADK                            R21 K32 ["PasteInto"]
      144 SETTABLEKS                       R21 R20 K14 ["Id"]
      146 LOADK                            R23 K25 ["ContextMenu"]
      147 LOADK                            R24 K32 ["PasteInto"]
      148 NAMECALL                         R21 R3 K26 ["getText"]
      150 CALL                             R21 3 1
      151 SETTABLEKS                       R21 R20 K20 ["Text"]
      153 GETUPVAL                         R22 10
      154 GETTABLEKS                       R21 R22 K33 ["paste"]
      156 CALL                             R21 0 1
      157 SETTABLEKS                       R21 R20 K21 ["Icon"]
      159 SETTABLEKS                       R12 R20 K18 ["Hidden"]
      161 SETTABLEKS                       R8 R20 K30 ["Enabled"]
      163 NEWCLOSURE                       R21 P6
      164 CAPTURE                          VAL R0
      165 CAPTURE                          UPVAL U13
      166 CAPTURE                          UPVAL U1
      167 SETTABLEKS                       R21 R20 K22 ["OnItemClicked"]
      169 DUPTABLE                         R21 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      170 LOADK                            R22 K34 ["ShowInExplorer"]
      171 SETTABLEKS                       R22 R21 K14 ["Id"]
      173 LOADK                            R24 K25 ["ContextMenu"]
      174 LOADK                            R25 K34 ["ShowInExplorer"]
      175 NAMECALL                         R22 R3 K26 ["getText"]
      177 CALL                             R22 3 1
      178 SETTABLEKS                       R22 R21 K20 ["Text"]
      180 GETUPVAL                         R23 0
      181 GETTABLEKS                       R22 R23 K35 ["getClassIcon"]
      183 LOADK                            R23 K36 ["ReplicatedStorage"]
      184 CALL                             R22 1 1
      185 SETTABLEKS                       R22 R21 K21 ["Icon"]
      187 NEWCLOSURE                       R22 P7
      188 CAPTURE                          VAL R0
      189 CAPTURE                          UPVAL U14
      190 CAPTURE                          UPVAL U1
      191 SETTABLEKS                       R22 R21 K22 ["OnItemClicked"]
      193 DUPTABLE                         R22 K38 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked", "Data"}]
      194 LOADK                            R23 K39 ["RemoveFromCategory"]
      195 SETTABLEKS                       R23 R22 K14 ["Id"]
      197 LOADK                            R25 K25 ["ContextMenu"]
      198 JUMPIFNOT                        R10 ; [+2]
      199 LOADK                            R26 K40 ["RemoveFromThemes"]
      200 JUMP                             ; [+1]
      201 LOADK                            R26 K41 ["RemoveFromTokens"]
      202 NAMECALL                         R23 R3 K26 ["getText"]
      204 CALL                             R23 3 1
      205 SETTABLEKS                       R23 R22 K20 ["Text"]
      207 GETUPVAL                         R24 10
      208 GETTABLEKS                       R23 R24 K42 ["remove"]
      210 CALL                             R23 0 1
      211 SETTABLEKS                       R23 R22 K21 ["Icon"]
      213 NOT                              R23 R12
      214 SETTABLEKS                       R23 R22 K18 ["Hidden"]
      216 NEWCLOSURE                       R23 P8
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U15
      219 CAPTURE                          UPVAL U1
      220 SETTABLEKS                       R23 R22 K22 ["OnItemClicked"]
      222 DUPTABLE                         R23 K44 [{"Category"}]
      223 SETTABLEKS                       R9 R23 K43 ["Category"]
      225 SETTABLEKS                       R23 R22 K37 ["Data"]
      227 DUPTABLE                         R23 K45 [{"Id", "Text", "Icon", "Hidden", "Children"}]
      228 LOADK                            R24 K46 ["SetCategory"]
      229 SETTABLEKS                       R24 R23 K14 ["Id"]
      231 LOADK                            R26 K25 ["ContextMenu"]
      232 LOADK                            R27 K46 ["SetCategory"]
      233 NAMECALL                         R24 R3 K26 ["getText"]
      235 CALL                             R24 3 1
      236 SETTABLEKS                       R24 R23 K20 ["Text"]
      238 GETUPVAL                         R25 10
      239 GETTABLEKS                       R24 R25 K47 ["set"]
      241 CALL                             R24 0 1
      242 SETTABLEKS                       R24 R23 K21 ["Icon"]
      244 SETTABLEKS                       R12 R23 K18 ["Hidden"]
      246 SETTABLEKS                       R7 R23 K15 ["Children"]
      248 SETLIST                          R14 R15 9 [1]
      250 SETTABLEKS                       R14 R13 K15 ["Children"]
      252 GETUPVAL                         R15 0
      253 GETTABLEKS                       R14 R15 K48 ["trackClicks"]
      255 MOVE                             R15 R13
      256 GETTABLEKS                       R16 R1 K49 ["Telemetry"]
      258 CALL                             R14 2 0
      259 GETUPVAL                         R15 0
      260 GETTABLEKS                       R14 R15 K50 ["showContextMenu"]
      262 GETTABLEKS                       R15 R1 K51 ["Plugin"]
      264 MOVE                             R16 R13
      265 CALL                             R14 2 0
      266 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Util"]
       26 GETTABLEKS                       R3 R4 K9 ["DesignHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K8 ["Util"]
       35 GETTABLEKS                       R4 R5 K10 ["MenuHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K11 ["Resources"]
       44 GETTABLEKS                       R5 R6 K12 ["ModernIcons"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R5 R6 K13 ["Thunks"]
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R8 R5 K14 ["Change"]
       55 GETTABLEKS                       R7 R8 K15 ["ClearStyleSheetCategory"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K4 [require]
       60 GETTABLEKS                       R9 R5 K14 ["Change"]
       62 GETTABLEKS                       R8 R9 K16 ["CreateStyleQuery"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R10 R5 K14 ["Change"]
       69 GETTABLEKS                       R9 R10 K17 ["CreateStyleRule"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R11 R5 K14 ["Change"]
       76 GETTABLEKS                       R10 R11 K18 ["DeleteInstance"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R12 R5 K14 ["Change"]
       83 GETTABLEKS                       R11 R12 K19 ["DuplicateInstance"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K4 [require]
       88 GETTABLEKS                       R13 R5 K14 ["Change"]
       90 GETTABLEKS                       R12 R13 K20 ["PasteInstanceInto"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K4 [require]
       95 GETTABLEKS                       R14 R5 K14 ["Change"]
       97 GETTABLEKS                       R13 R14 K21 ["SetStyleSheetCategory"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K4 [require]
      102 GETTABLEKS                       R15 R5 K14 ["Change"]
      104 GETTABLEKS                       R14 R15 K22 ["ShowInstanceInExplorer"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K4 [require]
      109 GETTABLEKS                       R17 R0 K5 ["Src"]
      111 GETTABLEKS                       R16 R17 K23 ["Flags"]
      113 GETTABLEKS                       R15 R16 K24 ["getFFlagStyleQuery"]
      115 CALL                             R14 1 1
      116 CALL                             R14 0 1
      117 GETIMPORT                        R15 K4 [require]
      119 GETTABLEKS                       R17 R0 K25 ["Packages"]
      121 GETTABLEKS                       R16 R17 K26 ["Dash"]
      123 CALL                             R15 1 1
      124 GETTABLEKS                       R16 R15 K27 ["join"]
      126 GETTABLEKS                       R17 R15 K28 ["endsWith"]
      128 GETIMPORT                        R18 K4 [require]
      130 GETTABLEKS                       R20 R0 K5 ["Src"]
      132 GETTABLEKS                       R19 R20 K29 ["Types"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K4 [require]
      137 GETTABLEKS                       R22 R0 K5 ["Src"]
      139 GETTABLEKS                       R21 R22 K13 ["Thunks"]
      141 GETTABLEKS                       R20 R21 K29 ["Types"]
      143 CALL                             R19 1 1
      144 DUPCLOSURE                       R20 K30 [PROTO_10]
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R6
      159 RETURN                           R20 1
