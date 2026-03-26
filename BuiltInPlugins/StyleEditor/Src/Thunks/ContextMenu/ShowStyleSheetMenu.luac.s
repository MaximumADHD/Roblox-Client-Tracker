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
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["Parent"]
        6 CALL                             R3 2 -1
        7 NAMECALL                         R1 R1 K1 ["dispatch"]
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
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
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K3 ["getRenameAction"]
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          UPVAL U3
       20 MOVE                             R7 R3
       21 CALL                             R5 2 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K4 ["getStyleSheetCategoryActions"]
       25 NEWCLOSURE                       R7 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U1
       29 MOVE                             R8 R3
       30 CALL                             R6 2 1
       31 GETUPVAL                         R8 5
       32 JUMPIFNOT                        R8 ; [+11]
       33 GETTABLEKS                       R10 R2 K5 ["Clipboard"]
       35 GETTABLEKS                       R9 R10 K6 ["Instances"]
       37 LENGTH                           R8 R9
       38 LOADN                            R9 0
       39 JUMPIFLT                         R9 R8 ; [+2]
       41 LOADB                            R7 0 +1
       42 LOADB                            R7 1
       43 JUMP                             ; [+8]
       44 GETTABLEKS                       R9 R2 K5 ["Clipboard"]
       46 GETTABLEKS                       R8 R9 K7 ["DEPRECATED_Instance"]
       48 JUMPIFNOTEQKNIL                  R8 ; [+2]
       50 LOADB                            R7 0 +1
       51 LOADB                            R7 1
       52 GETUPVAL                         R9 1
       53 LOADK                            R11 K9 ["StyleCategory"]
       54 NAMECALL                         R9 R9 K10 ["GetAttribute"]
       56 CALL                             R9 2 1
       57 ORK                              R8 R9 K8 [""]
       58 GETUPVAL                         R10 6
       59 GETTABLEKS                       R9 R10 K11 ["isTheme"]
       61 GETUPVAL                         R10 1
       62 CALL                             R9 1 1
       63 JUMPIFEQKS                       R8 K12 ["Tokens"] ; [+2]
       65 LOADB                            R10 0 +1
       66 LOADB                            R10 1
       67 OR                               R11 R10 R9
       68 DUPTABLE                         R12 K15 [{"Id", "Children"}]
       69 LOADK                            R13 K16 ["StyleSheet"]
       70 SETTABLEKS                       R13 R12 K13 ["Id"]
       72 NEWTABLE                         R13 0 8
       74 GETUPVAL                         R14 7
       75 MOVE                             R15 R4
       76 DUPTABLE                         R16 K18 [{"Hidden"}]
       77 SETTABLEKS                       R11 R16 K17 ["Hidden"]
       79 CALL                             R14 2 1
       80 MOVE                             R15 R5
       81 DUPTABLE                         R16 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
       82 LOADK                            R17 K23 ["Duplicate"]
       83 SETTABLEKS                       R17 R16 K13 ["Id"]
       85 LOADK                            R19 K24 ["ContextMenu"]
       86 LOADK                            R20 K23 ["Duplicate"]
       87 NAMECALL                         R17 R3 K25 ["getText"]
       89 CALL                             R17 3 1
       90 SETTABLEKS                       R17 R16 K19 ["Text"]
       92 GETUPVAL                         R18 8
       93 GETTABLEKS                       R17 R18 K26 ["duplicate"]
       95 CALL                             R17 0 1
       96 SETTABLEKS                       R17 R16 K20 ["Icon"]
       98 NEWCLOSURE                       R17 P3
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          UPVAL U1
      102 SETTABLEKS                       R17 R16 K21 ["OnItemClicked"]
      104 DUPTABLE                         R17 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
      105 LOADK                            R18 K27 ["Delete"]
      106 SETTABLEKS                       R18 R17 K13 ["Id"]
      108 LOADK                            R20 K24 ["ContextMenu"]
      109 LOADK                            R21 K27 ["Delete"]
      110 NAMECALL                         R18 R3 K25 ["getText"]
      112 CALL                             R18 3 1
      113 SETTABLEKS                       R18 R17 K19 ["Text"]
      115 GETUPVAL                         R19 8
      116 GETTABLEKS                       R18 R19 K28 ["delete"]
      118 CALL                             R18 0 1
      119 SETTABLEKS                       R18 R17 K20 ["Icon"]
      121 NEWCLOSURE                       R18 P4
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U10
      124 CAPTURE                          UPVAL U1
      125 SETTABLEKS                       R18 R17 K21 ["OnItemClicked"]
      127 DUPTABLE                         R18 K30 [{"Id", "Text", "Icon", "Hidden", "Enabled", "OnItemClicked"}]
      128 LOADK                            R19 K31 ["PasteInto"]
      129 SETTABLEKS                       R19 R18 K13 ["Id"]
      131 LOADK                            R21 K24 ["ContextMenu"]
      132 LOADK                            R22 K31 ["PasteInto"]
      133 NAMECALL                         R19 R3 K25 ["getText"]
      135 CALL                             R19 3 1
      136 SETTABLEKS                       R19 R18 K19 ["Text"]
      138 GETUPVAL                         R20 8
      139 GETTABLEKS                       R19 R20 K32 ["paste"]
      141 CALL                             R19 0 1
      142 SETTABLEKS                       R19 R18 K20 ["Icon"]
      144 SETTABLEKS                       R11 R18 K17 ["Hidden"]
      146 SETTABLEKS                       R7 R18 K29 ["Enabled"]
      148 NEWCLOSURE                       R19 P5
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U11
      151 CAPTURE                          UPVAL U1
      152 SETTABLEKS                       R19 R18 K21 ["OnItemClicked"]
      154 DUPTABLE                         R19 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
      155 LOADK                            R20 K33 ["ShowInExplorer"]
      156 SETTABLEKS                       R20 R19 K13 ["Id"]
      158 LOADK                            R22 K24 ["ContextMenu"]
      159 LOADK                            R23 K33 ["ShowInExplorer"]
      160 NAMECALL                         R20 R3 K25 ["getText"]
      162 CALL                             R20 3 1
      163 SETTABLEKS                       R20 R19 K19 ["Text"]
      165 GETUPVAL                         R21 0
      166 GETTABLEKS                       R20 R21 K34 ["getClassIcon"]
      168 LOADK                            R21 K35 ["ReplicatedStorage"]
      169 CALL                             R20 1 1
      170 SETTABLEKS                       R20 R19 K20 ["Icon"]
      172 NEWCLOSURE                       R20 P6
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U12
      175 CAPTURE                          UPVAL U1
      176 SETTABLEKS                       R20 R19 K21 ["OnItemClicked"]
      178 DUPTABLE                         R20 K37 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked", "Data"}]
      179 LOADK                            R21 K38 ["RemoveFromCategory"]
      180 SETTABLEKS                       R21 R20 K13 ["Id"]
      182 LOADK                            R23 K24 ["ContextMenu"]
      183 JUMPIFNOT                        R9 ; [+2]
      184 LOADK                            R24 K39 ["RemoveFromThemes"]
      185 JUMP                             ; [+1]
      186 LOADK                            R24 K40 ["RemoveFromTokens"]
      187 NAMECALL                         R21 R3 K25 ["getText"]
      189 CALL                             R21 3 1
      190 SETTABLEKS                       R21 R20 K19 ["Text"]
      192 GETUPVAL                         R22 8
      193 GETTABLEKS                       R21 R22 K41 ["remove"]
      195 CALL                             R21 0 1
      196 SETTABLEKS                       R21 R20 K20 ["Icon"]
      198 NOT                              R21 R11
      199 SETTABLEKS                       R21 R20 K17 ["Hidden"]
      201 NEWCLOSURE                       R21 P7
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U13
      204 CAPTURE                          UPVAL U1
      205 SETTABLEKS                       R21 R20 K21 ["OnItemClicked"]
      207 DUPTABLE                         R21 K43 [{"Category"}]
      208 SETTABLEKS                       R8 R21 K42 ["Category"]
      210 SETTABLEKS                       R21 R20 K36 ["Data"]
      212 DUPTABLE                         R21 K44 [{"Id", "Text", "Icon", "Hidden", "Children"}]
      213 LOADK                            R22 K45 ["SetCategory"]
      214 SETTABLEKS                       R22 R21 K13 ["Id"]
      216 LOADK                            R24 K24 ["ContextMenu"]
      217 LOADK                            R25 K45 ["SetCategory"]
      218 NAMECALL                         R22 R3 K25 ["getText"]
      220 CALL                             R22 3 1
      221 SETTABLEKS                       R22 R21 K19 ["Text"]
      223 GETUPVAL                         R23 8
      224 GETTABLEKS                       R22 R23 K46 ["set"]
      226 CALL                             R22 0 1
      227 SETTABLEKS                       R22 R21 K20 ["Icon"]
      229 SETTABLEKS                       R11 R21 K17 ["Hidden"]
      231 SETTABLEKS                       R6 R21 K14 ["Children"]
      233 SETLIST                          R13 R14 8 [1]
      235 SETTABLEKS                       R13 R12 K14 ["Children"]
      237 GETUPVAL                         R14 0
      238 GETTABLEKS                       R13 R14 K47 ["trackClicks"]
      240 MOVE                             R14 R12
      241 GETTABLEKS                       R15 R1 K48 ["Telemetry"]
      243 CALL                             R13 2 0
      244 GETUPVAL                         R14 0
      245 GETTABLEKS                       R13 R14 K49 ["showContextMenu"]
      247 GETTABLEKS                       R14 R1 K50 ["Plugin"]
      249 MOVE                             R15 R12
      250 CALL                             R13 2 0
      251 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 RETURN                           R2 1

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
       62 GETTABLEKS                       R8 R9 K16 ["CreateStyleRule"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R10 R5 K14 ["Change"]
       69 GETTABLEKS                       R9 R10 K17 ["DeleteInstance"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R11 R5 K14 ["Change"]
       76 GETTABLEKS                       R10 R11 K18 ["DuplicateInstance"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R12 R5 K14 ["Change"]
       83 GETTABLEKS                       R11 R12 K19 ["PasteInstanceInto"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K4 [require]
       88 GETTABLEKS                       R13 R5 K14 ["Change"]
       90 GETTABLEKS                       R12 R13 K20 ["SetStyleSheetCategory"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K4 [require]
       95 GETTABLEKS                       R14 R5 K14 ["Change"]
       97 GETTABLEKS                       R13 R14 K21 ["ShowInstanceInExplorer"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K4 [require]
      102 GETTABLEKS                       R16 R0 K5 ["Src"]
      104 GETTABLEKS                       R15 R16 K22 ["Flags"]
      106 GETTABLEKS                       R14 R15 K23 ["getFFlagStyleQuery"]
      108 CALL                             R13 1 1
      109 CALL                             R13 0 1
      110 GETIMPORT                        R14 K4 [require]
      112 GETTABLEKS                       R16 R0 K24 ["Packages"]
      114 GETTABLEKS                       R15 R16 K25 ["Dash"]
      116 CALL                             R14 1 1
      117 GETTABLEKS                       R15 R14 K26 ["join"]
      119 GETIMPORT                        R16 K4 [require]
      121 GETTABLEKS                       R18 R0 K5 ["Src"]
      123 GETTABLEKS                       R17 R18 K27 ["Types"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K4 [require]
      128 GETTABLEKS                       R20 R0 K5 ["Src"]
      130 GETTABLEKS                       R19 R20 K13 ["Thunks"]
      132 GETTABLEKS                       R18 R19 K27 ["Types"]
      134 CALL                             R17 1 1
      135 DUPCLOSURE                       R18 K28 [PROTO_9]
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R6
      148 RETURN                           R18 1
