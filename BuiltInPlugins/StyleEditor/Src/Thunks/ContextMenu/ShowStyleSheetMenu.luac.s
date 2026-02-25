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
       31 GETTABLEKS                       R9 R2 K5 ["Clipboard"]
       33 GETTABLEKS                       R8 R9 K6 ["Instance"]
       35 JUMPIFNOTEQKNIL                  R8 ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 GETUPVAL                         R9 1
       40 LOADK                            R11 K8 ["StyleCategory"]
       41 NAMECALL                         R9 R9 K9 ["GetAttribute"]
       43 CALL                             R9 2 1
       44 ORK                              R8 R9 K7 [""]
       45 GETUPVAL                         R10 5
       46 GETTABLEKS                       R9 R10 K10 ["isTheme"]
       48 GETUPVAL                         R10 1
       49 CALL                             R9 1 1
       50 JUMPIFEQKS                       R8 K11 ["Tokens"] ; [+2]
       52 LOADB                            R10 0 +1
       53 LOADB                            R10 1
       54 OR                               R11 R10 R9
       55 DUPTABLE                         R12 K14 [{"Id", "Children"}]
       56 LOADK                            R13 K15 ["StyleSheet"]
       57 SETTABLEKS                       R13 R12 K12 ["Id"]
       59 NEWTABLE                         R13 0 8
       61 GETUPVAL                         R14 6
       62 MOVE                             R15 R4
       63 DUPTABLE                         R16 K17 [{"Hidden"}]
       64 SETTABLEKS                       R11 R16 K16 ["Hidden"]
       66 CALL                             R14 2 1
       67 MOVE                             R15 R5
       68 DUPTABLE                         R16 K21 [{"Id", "Text", "Icon", "OnItemClicked"}]
       69 LOADK                            R17 K22 ["Duplicate"]
       70 SETTABLEKS                       R17 R16 K12 ["Id"]
       72 LOADK                            R19 K23 ["ContextMenu"]
       73 LOADK                            R20 K22 ["Duplicate"]
       74 NAMECALL                         R17 R3 K24 ["getText"]
       76 CALL                             R17 3 1
       77 SETTABLEKS                       R17 R16 K18 ["Text"]
       79 GETUPVAL                         R18 7
       80 GETTABLEKS                       R17 R18 K25 ["duplicate"]
       82 CALL                             R17 0 1
       83 SETTABLEKS                       R17 R16 K19 ["Icon"]
       85 NEWCLOSURE                       R17 P3
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          UPVAL U1
       89 SETTABLEKS                       R17 R16 K20 ["OnItemClicked"]
       91 DUPTABLE                         R17 K21 [{"Id", "Text", "Icon", "OnItemClicked"}]
       92 LOADK                            R18 K26 ["Delete"]
       93 SETTABLEKS                       R18 R17 K12 ["Id"]
       95 LOADK                            R20 K23 ["ContextMenu"]
       96 LOADK                            R21 K26 ["Delete"]
       97 NAMECALL                         R18 R3 K24 ["getText"]
       99 CALL                             R18 3 1
      100 SETTABLEKS                       R18 R17 K18 ["Text"]
      102 GETUPVAL                         R19 7
      103 GETTABLEKS                       R18 R19 K27 ["delete"]
      105 CALL                             R18 0 1
      106 SETTABLEKS                       R18 R17 K19 ["Icon"]
      108 NEWCLOSURE                       R18 P4
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U9
      111 CAPTURE                          UPVAL U1
      112 SETTABLEKS                       R18 R17 K20 ["OnItemClicked"]
      114 DUPTABLE                         R18 K29 [{"Id", "Text", "Icon", "Hidden", "Enabled", "OnItemClicked"}]
      115 LOADK                            R19 K30 ["PasteInto"]
      116 SETTABLEKS                       R19 R18 K12 ["Id"]
      118 LOADK                            R21 K23 ["ContextMenu"]
      119 LOADK                            R22 K30 ["PasteInto"]
      120 NAMECALL                         R19 R3 K24 ["getText"]
      122 CALL                             R19 3 1
      123 SETTABLEKS                       R19 R18 K18 ["Text"]
      125 GETUPVAL                         R20 7
      126 GETTABLEKS                       R19 R20 K31 ["paste"]
      128 CALL                             R19 0 1
      129 SETTABLEKS                       R19 R18 K19 ["Icon"]
      131 SETTABLEKS                       R11 R18 K16 ["Hidden"]
      133 SETTABLEKS                       R7 R18 K28 ["Enabled"]
      135 NEWCLOSURE                       R19 P5
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U10
      138 CAPTURE                          UPVAL U1
      139 SETTABLEKS                       R19 R18 K20 ["OnItemClicked"]
      141 DUPTABLE                         R19 K21 [{"Id", "Text", "Icon", "OnItemClicked"}]
      142 LOADK                            R20 K32 ["ShowInExplorer"]
      143 SETTABLEKS                       R20 R19 K12 ["Id"]
      145 LOADK                            R22 K23 ["ContextMenu"]
      146 LOADK                            R23 K32 ["ShowInExplorer"]
      147 NAMECALL                         R20 R3 K24 ["getText"]
      149 CALL                             R20 3 1
      150 SETTABLEKS                       R20 R19 K18 ["Text"]
      152 GETUPVAL                         R21 0
      153 GETTABLEKS                       R20 R21 K33 ["getClassIcon"]
      155 LOADK                            R21 K34 ["ReplicatedStorage"]
      156 CALL                             R20 1 1
      157 SETTABLEKS                       R20 R19 K19 ["Icon"]
      159 NEWCLOSURE                       R20 P6
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U11
      162 CAPTURE                          UPVAL U1
      163 SETTABLEKS                       R20 R19 K20 ["OnItemClicked"]
      165 DUPTABLE                         R20 K36 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked", "Data"}]
      166 LOADK                            R21 K37 ["RemoveFromCategory"]
      167 SETTABLEKS                       R21 R20 K12 ["Id"]
      169 LOADK                            R23 K23 ["ContextMenu"]
      170 JUMPIFNOT                        R9 ; [+2]
      171 LOADK                            R24 K38 ["RemoveFromThemes"]
      172 JUMP                             ; [+1]
      173 LOADK                            R24 K39 ["RemoveFromTokens"]
      174 NAMECALL                         R21 R3 K24 ["getText"]
      176 CALL                             R21 3 1
      177 SETTABLEKS                       R21 R20 K18 ["Text"]
      179 GETUPVAL                         R22 7
      180 GETTABLEKS                       R21 R22 K40 ["remove"]
      182 CALL                             R21 0 1
      183 SETTABLEKS                       R21 R20 K19 ["Icon"]
      185 NOT                              R21 R11
      186 SETTABLEKS                       R21 R20 K16 ["Hidden"]
      188 NEWCLOSURE                       R21 P7
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U12
      191 CAPTURE                          UPVAL U1
      192 SETTABLEKS                       R21 R20 K20 ["OnItemClicked"]
      194 DUPTABLE                         R21 K42 [{"Category"}]
      195 SETTABLEKS                       R8 R21 K41 ["Category"]
      197 SETTABLEKS                       R21 R20 K35 ["Data"]
      199 DUPTABLE                         R21 K43 [{"Id", "Text", "Icon", "Hidden", "Children"}]
      200 LOADK                            R22 K44 ["SetCategory"]
      201 SETTABLEKS                       R22 R21 K12 ["Id"]
      203 LOADK                            R24 K23 ["ContextMenu"]
      204 LOADK                            R25 K44 ["SetCategory"]
      205 NAMECALL                         R22 R3 K24 ["getText"]
      207 CALL                             R22 3 1
      208 SETTABLEKS                       R22 R21 K18 ["Text"]
      210 GETUPVAL                         R23 7
      211 GETTABLEKS                       R22 R23 K45 ["set"]
      213 CALL                             R22 0 1
      214 SETTABLEKS                       R22 R21 K19 ["Icon"]
      216 SETTABLEKS                       R11 R21 K16 ["Hidden"]
      218 SETTABLEKS                       R6 R21 K13 ["Children"]
      220 SETLIST                          R13 R14 8 [1]
      222 SETTABLEKS                       R13 R12 K13 ["Children"]
      224 GETUPVAL                         R14 0
      225 GETTABLEKS                       R13 R14 K46 ["trackClicks"]
      227 MOVE                             R14 R12
      228 GETTABLEKS                       R15 R1 K47 ["Telemetry"]
      230 CALL                             R13 2 0
      231 GETUPVAL                         R14 0
      232 GETTABLEKS                       R13 R14 K48 ["showContextMenu"]
      234 GETTABLEKS                       R14 R1 K49 ["Plugin"]
      236 MOVE                             R15 R12
      237 CALL                             R13 2 0
      238 RETURN                           R0 0

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
      102 GETTABLEKS                       R15 R0 K22 ["Packages"]
      104 GETTABLEKS                       R14 R15 K23 ["Dash"]
      106 CALL                             R13 1 1
      107 GETTABLEKS                       R14 R13 K24 ["join"]
      109 GETIMPORT                        R15 K4 [require]
      111 GETTABLEKS                       R17 R0 K5 ["Src"]
      113 GETTABLEKS                       R16 R17 K25 ["Types"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K4 [require]
      118 GETTABLEKS                       R19 R0 K5 ["Src"]
      120 GETTABLEKS                       R18 R19 K13 ["Thunks"]
      122 GETTABLEKS                       R17 R18 K25 ["Types"]
      124 CALL                             R16 1 1
      125 DUPCLOSURE                       R17 K26 [PROTO_9]
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R6
      137 RETURN                           R17 1
