PROTO_0:
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
       13 GETUPVAL                         R2 4
       14 JUMPIF                           R2 ; [+15]
       15 GETUPVAL                         R3 5
       16 GETTABLEKS                       R2 R3 K3 ["createItemId"]
       18 GETUPVAL                         R3 2
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 6
       22 NEWTABLE                         R6 1 0
       24 LOADB                            R7 1
       25 SETTABLE                         R7 R6 R2
       26 CALL                             R5 1 -1
       27 NAMECALL                         R3 R3 K2 ["dispatch"]
       29 CALL                             R3 -1 0
       30 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Parent"]
        3 FASTCALL1                        TYPEOF R4 ; [+2]
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K3 ["Instance"] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       13 LOADK                            R3 K4 ["StyleRule expected to have a valid parent"]
       14 GETIMPORT                        R1 K6 [assert]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 0
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K0 ["Parent"]
       23 CALL                             R3 2 -1
       24 NAMECALL                         R1 R1 K7 ["dispatch"]
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 1
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 0
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["StyleRule"]
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+6]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Selected invalid StyleRule: "]
       11 GETUPVAL                         R4 0
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 NAMECALL                         R2 R0 K5 ["getState"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R1 K6 ["Localization"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K7 ["getNewSelectorAction"]
       22 GETUPVAL                         R5 0
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 MOVE                             R7 R3
       32 CALL                             R4 3 1
       33 LOADNIL                          R5
       34 GETUPVAL                         R6 7
       35 JUMPIFNOT                        R6 ; [+11]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K8 ["getInsertAction"]
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U0
       44 MOVE                             R8 R3
       45 CALL                             R6 2 1
       46 MOVE                             R5 R6
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R6 R7 K9 ["getRenameAction"]
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          UPVAL U10
       52 MOVE                             R8 R3
       53 CALL                             R6 2 1
       54 GETTABLEKS                       R9 R2 K10 ["Clipboard"]
       56 GETTABLEKS                       R8 R9 K11 ["Instance"]
       58 JUMPIFNOTEQKNIL                  R8 ; [+2]
       60 LOADB                            R7 0 +1
       61 LOADB                            R7 1
       62 DUPTABLE                         R8 K14 [{"Id", "Children"}]
       63 LOADK                            R9 K0 ["StyleRule"]
       64 SETTABLEKS                       R9 R8 K12 ["Id"]
       66 NEWTABLE                         R9 0 10
       68 MOVE                             R10 R4
       69 MOVE                             R11 R6
       70 MOVE                             R12 R5
       71 DUPTABLE                         R13 K18 [{"Id", "Text", "Icon", "OnItemClicked"}]
       72 LOADK                            R14 K19 ["ShowInExplorer"]
       73 SETTABLEKS                       R14 R13 K12 ["Id"]
       75 LOADK                            R16 K20 ["ContextMenu"]
       76 LOADK                            R17 K19 ["ShowInExplorer"]
       77 NAMECALL                         R14 R3 K21 ["getText"]
       79 CALL                             R14 3 1
       80 SETTABLEKS                       R14 R13 K15 ["Text"]
       82 GETUPVAL                         R15 1
       83 GETTABLEKS                       R14 R15 K22 ["getClassIcon"]
       85 LOADK                            R15 K23 ["ReplicatedStorage"]
       86 CALL                             R14 1 1
       87 SETTABLEKS                       R14 R13 K16 ["Icon"]
       89 NEWCLOSURE                       R14 P3
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          UPVAL U0
       93 SETTABLEKS                       R14 R13 K17 ["OnItemClicked"]
       95 DUPTABLE                         R14 K18 [{"Id", "Text", "Icon", "OnItemClicked"}]
       96 LOADK                            R15 K24 ["Copy"]
       97 SETTABLEKS                       R15 R14 K12 ["Id"]
       99 LOADK                            R17 K20 ["ContextMenu"]
      100 LOADK                            R18 K24 ["Copy"]
      101 NAMECALL                         R15 R3 K21 ["getText"]
      103 CALL                             R15 3 1
      104 SETTABLEKS                       R15 R14 K15 ["Text"]
      106 GETUPVAL                         R16 12
      107 GETTABLEKS                       R15 R16 K25 ["copy"]
      109 CALL                             R15 0 1
      110 SETTABLEKS                       R15 R14 K16 ["Icon"]
      112 NEWCLOSURE                       R15 P4
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U13
      115 CAPTURE                          UPVAL U0
      116 SETTABLEKS                       R15 R14 K17 ["OnItemClicked"]
      118 DUPTABLE                         R15 K27 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      119 LOADK                            R16 K28 ["PasteInto"]
      120 SETTABLEKS                       R16 R15 K12 ["Id"]
      122 LOADK                            R18 K20 ["ContextMenu"]
      123 LOADK                            R19 K28 ["PasteInto"]
      124 NAMECALL                         R16 R3 K21 ["getText"]
      126 CALL                             R16 3 1
      127 SETTABLEKS                       R16 R15 K15 ["Text"]
      129 GETUPVAL                         R17 12
      130 GETTABLEKS                       R16 R17 K29 ["paste"]
      132 CALL                             R16 0 1
      133 SETTABLEKS                       R16 R15 K16 ["Icon"]
      135 SETTABLEKS                       R7 R15 K26 ["Enabled"]
      137 NEWCLOSURE                       R16 P5
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U14
      140 CAPTURE                          UPVAL U0
      141 SETTABLEKS                       R16 R15 K17 ["OnItemClicked"]
      143 DUPTABLE                         R16 K18 [{"Id", "Text", "Icon", "OnItemClicked"}]
      144 LOADK                            R17 K30 ["Duplicate"]
      145 SETTABLEKS                       R17 R16 K12 ["Id"]
      147 LOADK                            R19 K20 ["ContextMenu"]
      148 LOADK                            R20 K30 ["Duplicate"]
      149 NAMECALL                         R17 R3 K21 ["getText"]
      151 CALL                             R17 3 1
      152 SETTABLEKS                       R17 R16 K15 ["Text"]
      154 GETUPVAL                         R18 12
      155 GETTABLEKS                       R17 R18 K31 ["duplicate"]
      157 CALL                             R17 0 1
      158 SETTABLEKS                       R17 R16 K16 ["Icon"]
      160 NEWCLOSURE                       R17 P6
      161 CAPTURE                          UPVAL U0
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U15
      164 SETTABLEKS                       R17 R16 K17 ["OnItemClicked"]
      166 DUPTABLE                         R17 K27 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      167 LOADK                            R18 K32 ["IncreasePriority"]
      168 SETTABLEKS                       R18 R17 K12 ["Id"]
      170 LOADK                            R20 K20 ["ContextMenu"]
      171 LOADK                            R21 K33 ["IncreaseStyleRulePriority"]
      172 NAMECALL                         R18 R3 K21 ["getText"]
      174 CALL                             R18 3 1
      175 SETTABLEKS                       R18 R17 K15 ["Text"]
      177 GETUPVAL                         R19 12
      178 GETTABLEKS                       R18 R19 K34 ["arrowUp"]
      180 CALL                             R18 0 1
      181 SETTABLEKS                       R18 R17 K16 ["Icon"]
      183 GETUPVAL                         R19 16
      184 GETTABLEKS                       R18 R19 K35 ["changeStyleRulePriority"]
      186 GETUPVAL                         R19 0
      187 LOADB                            R20 1
      188 LOADB                            R21 1
      189 CALL                             R18 3 1
      190 SETTABLEKS                       R18 R17 K26 ["Enabled"]
      192 NEWCLOSURE                       R18 P7
      193 CAPTURE                          VAL R0
      194 CAPTURE                          UPVAL U17
      195 CAPTURE                          UPVAL U0
      196 SETTABLEKS                       R18 R17 K17 ["OnItemClicked"]
      198 DUPTABLE                         R18 K27 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      199 LOADK                            R19 K36 ["DecreasePriority"]
      200 SETTABLEKS                       R19 R18 K12 ["Id"]
      202 LOADK                            R21 K20 ["ContextMenu"]
      203 LOADK                            R22 K37 ["DecreaseStyleRulePriority"]
      204 NAMECALL                         R19 R3 K21 ["getText"]
      206 CALL                             R19 3 1
      207 SETTABLEKS                       R19 R18 K15 ["Text"]
      209 GETUPVAL                         R20 12
      210 GETTABLEKS                       R19 R20 K38 ["arrowDown"]
      212 CALL                             R19 0 1
      213 SETTABLEKS                       R19 R18 K16 ["Icon"]
      215 GETUPVAL                         R20 16
      216 GETTABLEKS                       R19 R20 K35 ["changeStyleRulePriority"]
      218 GETUPVAL                         R20 0
      219 LOADB                            R21 0
      220 LOADB                            R22 1
      221 CALL                             R19 3 1
      222 SETTABLEKS                       R19 R18 K26 ["Enabled"]
      224 NEWCLOSURE                       R19 P8
      225 CAPTURE                          VAL R0
      226 CAPTURE                          UPVAL U17
      227 CAPTURE                          UPVAL U0
      228 SETTABLEKS                       R19 R18 K17 ["OnItemClicked"]
      230 DUPTABLE                         R19 K18 [{"Id", "Text", "Icon", "OnItemClicked"}]
      231 LOADK                            R20 K39 ["Delete"]
      232 SETTABLEKS                       R20 R19 K12 ["Id"]
      234 LOADK                            R22 K20 ["ContextMenu"]
      235 LOADK                            R23 K39 ["Delete"]
      236 NAMECALL                         R20 R3 K21 ["getText"]
      238 CALL                             R20 3 1
      239 SETTABLEKS                       R20 R19 K15 ["Text"]
      241 GETUPVAL                         R21 12
      242 GETTABLEKS                       R20 R21 K40 ["delete"]
      244 CALL                             R20 0 1
      245 SETTABLEKS                       R20 R19 K16 ["Icon"]
      247 NEWCLOSURE                       R20 P9
      248 CAPTURE                          VAL R0
      249 CAPTURE                          UPVAL U18
      250 CAPTURE                          UPVAL U0
      251 SETTABLEKS                       R20 R19 K17 ["OnItemClicked"]
      253 SETLIST                          R9 R10 10 [1]
      255 SETTABLEKS                       R9 R8 K13 ["Children"]
      257 GETUPVAL                         R10 1
      258 GETTABLEKS                       R9 R10 K41 ["trackClicks"]
      260 MOVE                             R10 R8
      261 GETTABLEKS                       R11 R1 K42 ["Telemetry"]
      263 CALL                             R9 2 0
      264 GETUPVAL                         R10 1
      265 GETTABLEKS                       R9 R10 K43 ["showContextMenu"]
      267 GETTABLEKS                       R10 R1 K44 ["Plugin"]
      269 MOVE                             R11 R8
      270 CALL                             R9 2 0
      271 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 RETURN                           R3 1

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
       26 GETTABLEKS                       R3 R4 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K10 ["Resources"]
       35 GETTABLEKS                       R4 R5 K11 ["ModernIcons"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K8 ["Util"]
       44 GETTABLEKS                       R5 R6 K12 ["TreeTableHelpers"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R8 K8 ["Util"]
       53 GETTABLEKS                       R6 R7 K13 ["StyleRuleHelpers"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R6 R7 K14 ["Actions"]
       60 GETIMPORT                        R7 K4 [require]
       62 GETTABLEKS                       R9 R6 K15 ["Clipboard"]
       64 GETTABLEKS                       R8 R9 K16 ["CopyInstanceToClipboard"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K4 [require]
       69 GETTABLEKS                       R10 R6 K17 ["Window"]
       71 GETTABLEKS                       R9 R10 K18 ["SetItemsExpanded"]
       73 CALL                             R8 1 1
       74 GETTABLEKS                       R10 R0 K5 ["Src"]
       76 GETTABLEKS                       R9 R10 K19 ["Thunks"]
       78 GETIMPORT                        R10 K4 [require]
       80 GETTABLEKS                       R12 R9 K20 ["Change"]
       82 GETTABLEKS                       R11 R12 K21 ["CreateStyleRule"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K4 [require]
       87 GETTABLEKS                       R13 R9 K20 ["Change"]
       89 GETTABLEKS                       R12 R13 K22 ["CreateStyleQuery"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K4 [require]
       94 GETTABLEKS                       R14 R9 K20 ["Change"]
       96 GETTABLEKS                       R13 R14 K23 ["DeleteInstance"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K4 [require]
      101 GETTABLEKS                       R15 R9 K20 ["Change"]
      103 GETTABLEKS                       R14 R15 K24 ["DuplicateInstance"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K4 [require]
      108 GETTABLEKS                       R16 R9 K20 ["Change"]
      110 GETTABLEKS                       R15 R16 K25 ["PasteInstanceInto"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K4 [require]
      115 GETTABLEKS                       R17 R9 K20 ["Change"]
      117 GETTABLEKS                       R16 R17 K26 ["ShowInstanceInExplorer"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K4 [require]
      122 GETTABLEKS                       R18 R9 K20 ["Change"]
      124 GETTABLEKS                       R17 R18 K27 ["ChangeStyleRulePriority"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K4 [require]
      129 GETTABLEKS                       R19 R0 K28 ["Packages"]
      131 GETTABLEKS                       R18 R19 K29 ["Dash"]
      133 CALL                             R17 1 1
      134 GETTABLEKS                       R18 R17 K30 ["endsWith"]
      136 GETIMPORT                        R19 K4 [require]
      138 GETTABLEKS                       R22 R0 K5 ["Src"]
      140 GETTABLEKS                       R21 R22 K31 ["Flags"]
      142 GETTABLEKS                       R20 R21 K32 ["getFFlagStyleEditorNewRuleRenameFix"]
      144 CALL                             R19 1 1
      145 CALL                             R19 0 1
      146 GETIMPORT                        R20 K4 [require]
      148 GETTABLEKS                       R23 R0 K5 ["Src"]
      150 GETTABLEKS                       R22 R23 K31 ["Flags"]
      152 GETTABLEKS                       R21 R22 K33 ["getFFlagStyleQuery"]
      154 CALL                             R20 1 1
      155 CALL                             R20 0 1
      156 GETIMPORT                        R21 K4 [require]
      158 GETTABLEKS                       R23 R0 K5 ["Src"]
      160 GETTABLEKS                       R22 R23 K34 ["Types"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K4 [require]
      165 GETTABLEKS                       R25 R0 K5 ["Src"]
      167 GETTABLEKS                       R24 R25 K19 ["Thunks"]
      169 GETTABLEKS                       R23 R24 K34 ["Types"]
      171 CALL                             R22 1 1
      172 DUPCLOSURE                       R23 K35 [PROTO_11]
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R12
      189 RETURN                           R23 1
