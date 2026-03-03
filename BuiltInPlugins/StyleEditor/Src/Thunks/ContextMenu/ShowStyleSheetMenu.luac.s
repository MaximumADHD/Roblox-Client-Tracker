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
       45 GETTABLEKS                       R10 R2 K6 ["Clipboard"]
       47 GETTABLEKS                       R9 R10 K7 ["Instance"]
       49 JUMPIFNOTEQKNIL                  R9 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 GETUPVAL                         R10 1
       54 LOADK                            R12 K9 ["StyleCategory"]
       55 NAMECALL                         R10 R10 K10 ["GetAttribute"]
       57 CALL                             R10 2 1
       58 ORK                              R9 R10 K8 [""]
       59 GETUPVAL                         R11 8
       60 GETTABLEKS                       R10 R11 K11 ["isTheme"]
       62 GETUPVAL                         R11 1
       63 CALL                             R10 1 1
       64 JUMPIFEQKS                       R9 K12 ["Tokens"] ; [+2]
       66 LOADB                            R11 0 +1
       67 LOADB                            R11 1
       68 OR                               R12 R11 R10
       69 DUPTABLE                         R13 K15 [{"Id", "Children"}]
       70 LOADK                            R14 K16 ["StyleSheet"]
       71 SETTABLEKS                       R14 R13 K13 ["Id"]
       73 NEWTABLE                         R14 0 9
       75 GETUPVAL                         R15 9
       76 MOVE                             R16 R4
       77 DUPTABLE                         R17 K18 [{"Hidden"}]
       78 SETTABLEKS                       R12 R17 K17 ["Hidden"]
       80 CALL                             R15 2 1
       81 MOVE                             R16 R5
       82 MOVE                             R17 R6
       83 DUPTABLE                         R18 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
       84 LOADK                            R19 K23 ["Duplicate"]
       85 SETTABLEKS                       R19 R18 K13 ["Id"]
       87 LOADK                            R21 K24 ["ContextMenu"]
       88 LOADK                            R22 K23 ["Duplicate"]
       89 NAMECALL                         R19 R3 K25 ["getText"]
       91 CALL                             R19 3 1
       92 SETTABLEKS                       R19 R18 K19 ["Text"]
       94 GETUPVAL                         R20 10
       95 GETTABLEKS                       R19 R20 K26 ["duplicate"]
       97 CALL                             R19 0 1
       98 SETTABLEKS                       R19 R18 K20 ["Icon"]
      100 NEWCLOSURE                       R19 P4
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          UPVAL U1
      104 SETTABLEKS                       R19 R18 K21 ["OnItemClicked"]
      106 DUPTABLE                         R19 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
      107 LOADK                            R20 K27 ["Delete"]
      108 SETTABLEKS                       R20 R19 K13 ["Id"]
      110 LOADK                            R22 K24 ["ContextMenu"]
      111 LOADK                            R23 K27 ["Delete"]
      112 NAMECALL                         R20 R3 K25 ["getText"]
      114 CALL                             R20 3 1
      115 SETTABLEKS                       R20 R19 K19 ["Text"]
      117 GETUPVAL                         R21 10
      118 GETTABLEKS                       R20 R21 K28 ["delete"]
      120 CALL                             R20 0 1
      121 SETTABLEKS                       R20 R19 K20 ["Icon"]
      123 NEWCLOSURE                       R20 P5
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U12
      126 CAPTURE                          UPVAL U1
      127 SETTABLEKS                       R20 R19 K21 ["OnItemClicked"]
      129 DUPTABLE                         R20 K30 [{"Id", "Text", "Icon", "Hidden", "Enabled", "OnItemClicked"}]
      130 LOADK                            R21 K31 ["PasteInto"]
      131 SETTABLEKS                       R21 R20 K13 ["Id"]
      133 LOADK                            R23 K24 ["ContextMenu"]
      134 LOADK                            R24 K31 ["PasteInto"]
      135 NAMECALL                         R21 R3 K25 ["getText"]
      137 CALL                             R21 3 1
      138 SETTABLEKS                       R21 R20 K19 ["Text"]
      140 GETUPVAL                         R22 10
      141 GETTABLEKS                       R21 R22 K32 ["paste"]
      143 CALL                             R21 0 1
      144 SETTABLEKS                       R21 R20 K20 ["Icon"]
      146 SETTABLEKS                       R12 R20 K17 ["Hidden"]
      148 SETTABLEKS                       R8 R20 K29 ["Enabled"]
      150 NEWCLOSURE                       R21 P6
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          UPVAL U1
      154 SETTABLEKS                       R21 R20 K21 ["OnItemClicked"]
      156 DUPTABLE                         R21 K22 [{"Id", "Text", "Icon", "OnItemClicked"}]
      157 LOADK                            R22 K33 ["ShowInExplorer"]
      158 SETTABLEKS                       R22 R21 K13 ["Id"]
      160 LOADK                            R24 K24 ["ContextMenu"]
      161 LOADK                            R25 K33 ["ShowInExplorer"]
      162 NAMECALL                         R22 R3 K25 ["getText"]
      164 CALL                             R22 3 1
      165 SETTABLEKS                       R22 R21 K19 ["Text"]
      167 GETUPVAL                         R23 0
      168 GETTABLEKS                       R22 R23 K34 ["getClassIcon"]
      170 LOADK                            R23 K35 ["ReplicatedStorage"]
      171 CALL                             R22 1 1
      172 SETTABLEKS                       R22 R21 K20 ["Icon"]
      174 NEWCLOSURE                       R22 P7
      175 CAPTURE                          VAL R0
      176 CAPTURE                          UPVAL U14
      177 CAPTURE                          UPVAL U1
      178 SETTABLEKS                       R22 R21 K21 ["OnItemClicked"]
      180 DUPTABLE                         R22 K37 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked", "Data"}]
      181 LOADK                            R23 K38 ["RemoveFromCategory"]
      182 SETTABLEKS                       R23 R22 K13 ["Id"]
      184 LOADK                            R25 K24 ["ContextMenu"]
      185 JUMPIFNOT                        R10 ; [+2]
      186 LOADK                            R26 K39 ["RemoveFromThemes"]
      187 JUMP                             ; [+1]
      188 LOADK                            R26 K40 ["RemoveFromTokens"]
      189 NAMECALL                         R23 R3 K25 ["getText"]
      191 CALL                             R23 3 1
      192 SETTABLEKS                       R23 R22 K19 ["Text"]
      194 GETUPVAL                         R24 10
      195 GETTABLEKS                       R23 R24 K41 ["remove"]
      197 CALL                             R23 0 1
      198 SETTABLEKS                       R23 R22 K20 ["Icon"]
      200 NOT                              R23 R12
      201 SETTABLEKS                       R23 R22 K17 ["Hidden"]
      203 NEWCLOSURE                       R23 P8
      204 CAPTURE                          VAL R0
      205 CAPTURE                          UPVAL U15
      206 CAPTURE                          UPVAL U1
      207 SETTABLEKS                       R23 R22 K21 ["OnItemClicked"]
      209 DUPTABLE                         R23 K43 [{"Category"}]
      210 SETTABLEKS                       R9 R23 K42 ["Category"]
      212 SETTABLEKS                       R23 R22 K36 ["Data"]
      214 DUPTABLE                         R23 K44 [{"Id", "Text", "Icon", "Hidden", "Children"}]
      215 LOADK                            R24 K45 ["SetCategory"]
      216 SETTABLEKS                       R24 R23 K13 ["Id"]
      218 LOADK                            R26 K24 ["ContextMenu"]
      219 LOADK                            R27 K45 ["SetCategory"]
      220 NAMECALL                         R24 R3 K25 ["getText"]
      222 CALL                             R24 3 1
      223 SETTABLEKS                       R24 R23 K19 ["Text"]
      225 GETUPVAL                         R25 10
      226 GETTABLEKS                       R24 R25 K46 ["set"]
      228 CALL                             R24 0 1
      229 SETTABLEKS                       R24 R23 K20 ["Icon"]
      231 SETTABLEKS                       R12 R23 K17 ["Hidden"]
      233 SETTABLEKS                       R7 R23 K14 ["Children"]
      235 SETLIST                          R14 R15 9 [1]
      237 SETTABLEKS                       R14 R13 K14 ["Children"]
      239 GETUPVAL                         R15 0
      240 GETTABLEKS                       R14 R15 K47 ["trackClicks"]
      242 MOVE                             R15 R13
      243 GETTABLEKS                       R16 R1 K48 ["Telemetry"]
      245 CALL                             R14 2 0
      246 GETUPVAL                         R15 0
      247 GETTABLEKS                       R14 R15 K49 ["showContextMenu"]
      249 GETTABLEKS                       R15 R1 K50 ["Plugin"]
      251 MOVE                             R16 R13
      252 CALL                             R14 2 0
      253 RETURN                           R0 0

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
