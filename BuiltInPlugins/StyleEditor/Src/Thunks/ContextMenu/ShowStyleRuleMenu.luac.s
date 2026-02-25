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
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 1
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 LOADB                            R5 0
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
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
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R5 R6 K8 ["getRenameAction"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          UPVAL U7
       38 MOVE                             R7 R3
       39 CALL                             R5 2 1
       40 GETTABLEKS                       R8 R2 K9 ["Clipboard"]
       42 GETTABLEKS                       R7 R8 K10 ["Instance"]
       44 JUMPIFNOTEQKNIL                  R7 ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 DUPTABLE                         R7 K13 [{"Id", "Children"}]
       49 LOADK                            R8 K0 ["StyleRule"]
       50 SETTABLEKS                       R8 R7 K11 ["Id"]
       52 NEWTABLE                         R8 0 9
       54 MOVE                             R9 R4
       55 MOVE                             R10 R5
       56 DUPTABLE                         R11 K17 [{"Id", "Text", "Icon", "OnItemClicked"}]
       57 LOADK                            R12 K18 ["ShowInExplorer"]
       58 SETTABLEKS                       R12 R11 K11 ["Id"]
       60 LOADK                            R14 K19 ["ContextMenu"]
       61 LOADK                            R15 K18 ["ShowInExplorer"]
       62 NAMECALL                         R12 R3 K20 ["getText"]
       64 CALL                             R12 3 1
       65 SETTABLEKS                       R12 R11 K14 ["Text"]
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R12 R13 K21 ["getClassIcon"]
       70 LOADK                            R13 K22 ["ReplicatedStorage"]
       71 CALL                             R12 1 1
       72 SETTABLEKS                       R12 R11 K15 ["Icon"]
       74 NEWCLOSURE                       R12 P2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U0
       78 SETTABLEKS                       R12 R11 K16 ["OnItemClicked"]
       80 DUPTABLE                         R12 K17 [{"Id", "Text", "Icon", "OnItemClicked"}]
       81 LOADK                            R13 K23 ["Copy"]
       82 SETTABLEKS                       R13 R12 K11 ["Id"]
       84 LOADK                            R15 K19 ["ContextMenu"]
       85 LOADK                            R16 K23 ["Copy"]
       86 NAMECALL                         R13 R3 K20 ["getText"]
       88 CALL                             R13 3 1
       89 SETTABLEKS                       R13 R12 K14 ["Text"]
       91 GETUPVAL                         R14 9
       92 GETTABLEKS                       R13 R14 K24 ["copy"]
       94 CALL                             R13 0 1
       95 SETTABLEKS                       R13 R12 K15 ["Icon"]
       97 NEWCLOSURE                       R13 P3
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          UPVAL U0
      101 SETTABLEKS                       R13 R12 K16 ["OnItemClicked"]
      103 DUPTABLE                         R13 K26 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      104 LOADK                            R14 K27 ["PasteInto"]
      105 SETTABLEKS                       R14 R13 K11 ["Id"]
      107 LOADK                            R16 K19 ["ContextMenu"]
      108 LOADK                            R17 K27 ["PasteInto"]
      109 NAMECALL                         R14 R3 K20 ["getText"]
      111 CALL                             R14 3 1
      112 SETTABLEKS                       R14 R13 K14 ["Text"]
      114 GETUPVAL                         R15 9
      115 GETTABLEKS                       R14 R15 K28 ["paste"]
      117 CALL                             R14 0 1
      118 SETTABLEKS                       R14 R13 K15 ["Icon"]
      120 SETTABLEKS                       R6 R13 K25 ["Enabled"]
      122 NEWCLOSURE                       R14 P4
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U11
      125 CAPTURE                          UPVAL U0
      126 SETTABLEKS                       R14 R13 K16 ["OnItemClicked"]
      128 DUPTABLE                         R14 K17 [{"Id", "Text", "Icon", "OnItemClicked"}]
      129 LOADK                            R15 K29 ["Duplicate"]
      130 SETTABLEKS                       R15 R14 K11 ["Id"]
      132 LOADK                            R17 K19 ["ContextMenu"]
      133 LOADK                            R18 K29 ["Duplicate"]
      134 NAMECALL                         R15 R3 K20 ["getText"]
      136 CALL                             R15 3 1
      137 SETTABLEKS                       R15 R14 K14 ["Text"]
      139 GETUPVAL                         R16 9
      140 GETTABLEKS                       R15 R16 K30 ["duplicate"]
      142 CALL                             R15 0 1
      143 SETTABLEKS                       R15 R14 K15 ["Icon"]
      145 NEWCLOSURE                       R15 P5
      146 CAPTURE                          UPVAL U0
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U12
      149 SETTABLEKS                       R15 R14 K16 ["OnItemClicked"]
      151 DUPTABLE                         R15 K26 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      152 LOADK                            R16 K31 ["IncreasePriority"]
      153 SETTABLEKS                       R16 R15 K11 ["Id"]
      155 LOADK                            R18 K19 ["ContextMenu"]
      156 LOADK                            R19 K32 ["IncreaseStyleRulePriority"]
      157 NAMECALL                         R16 R3 K20 ["getText"]
      159 CALL                             R16 3 1
      160 SETTABLEKS                       R16 R15 K14 ["Text"]
      162 GETUPVAL                         R17 9
      163 GETTABLEKS                       R16 R17 K33 ["arrowUp"]
      165 CALL                             R16 0 1
      166 SETTABLEKS                       R16 R15 K15 ["Icon"]
      168 GETUPVAL                         R17 13
      169 GETTABLEKS                       R16 R17 K34 ["changeStyleRulePriority"]
      171 GETUPVAL                         R17 0
      172 LOADB                            R18 1
      173 LOADB                            R19 1
      174 CALL                             R16 3 1
      175 SETTABLEKS                       R16 R15 K25 ["Enabled"]
      177 NEWCLOSURE                       R16 P6
      178 CAPTURE                          VAL R0
      179 CAPTURE                          UPVAL U14
      180 CAPTURE                          UPVAL U0
      181 SETTABLEKS                       R16 R15 K16 ["OnItemClicked"]
      183 DUPTABLE                         R16 K26 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      184 LOADK                            R17 K35 ["DecreasePriority"]
      185 SETTABLEKS                       R17 R16 K11 ["Id"]
      187 LOADK                            R19 K19 ["ContextMenu"]
      188 LOADK                            R20 K36 ["DecreaseStyleRulePriority"]
      189 NAMECALL                         R17 R3 K20 ["getText"]
      191 CALL                             R17 3 1
      192 SETTABLEKS                       R17 R16 K14 ["Text"]
      194 GETUPVAL                         R18 9
      195 GETTABLEKS                       R17 R18 K37 ["arrowDown"]
      197 CALL                             R17 0 1
      198 SETTABLEKS                       R17 R16 K15 ["Icon"]
      200 GETUPVAL                         R18 13
      201 GETTABLEKS                       R17 R18 K34 ["changeStyleRulePriority"]
      203 GETUPVAL                         R18 0
      204 LOADB                            R19 0
      205 LOADB                            R20 1
      206 CALL                             R17 3 1
      207 SETTABLEKS                       R17 R16 K25 ["Enabled"]
      209 NEWCLOSURE                       R17 P7
      210 CAPTURE                          VAL R0
      211 CAPTURE                          UPVAL U14
      212 CAPTURE                          UPVAL U0
      213 SETTABLEKS                       R17 R16 K16 ["OnItemClicked"]
      215 DUPTABLE                         R17 K17 [{"Id", "Text", "Icon", "OnItemClicked"}]
      216 LOADK                            R18 K38 ["Delete"]
      217 SETTABLEKS                       R18 R17 K11 ["Id"]
      219 LOADK                            R20 K19 ["ContextMenu"]
      220 LOADK                            R21 K38 ["Delete"]
      221 NAMECALL                         R18 R3 K20 ["getText"]
      223 CALL                             R18 3 1
      224 SETTABLEKS                       R18 R17 K14 ["Text"]
      226 GETUPVAL                         R19 9
      227 GETTABLEKS                       R18 R19 K39 ["delete"]
      229 CALL                             R18 0 1
      230 SETTABLEKS                       R18 R17 K15 ["Icon"]
      232 NEWCLOSURE                       R18 P8
      233 CAPTURE                          VAL R0
      234 CAPTURE                          UPVAL U15
      235 CAPTURE                          UPVAL U0
      236 SETTABLEKS                       R18 R17 K16 ["OnItemClicked"]
      238 SETLIST                          R8 R9 9 [1]
      240 SETTABLEKS                       R8 R7 K12 ["Children"]
      242 GETUPVAL                         R9 1
      243 GETTABLEKS                       R8 R9 K40 ["trackClicks"]
      245 MOVE                             R9 R7
      246 GETTABLEKS                       R10 R1 K41 ["Telemetry"]
      248 CALL                             R8 2 0
      249 GETUPVAL                         R9 1
      250 GETTABLEKS                       R8 R9 K42 ["showContextMenu"]
      252 GETTABLEKS                       R9 R1 K43 ["Plugin"]
      254 MOVE                             R10 R7
      255 CALL                             R8 2 0
      256 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 RETURN                           R3 1

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
       89 GETTABLEKS                       R12 R13 K22 ["DeleteInstance"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K4 [require]
       94 GETTABLEKS                       R14 R9 K20 ["Change"]
       96 GETTABLEKS                       R13 R14 K23 ["DuplicateInstance"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K4 [require]
      101 GETTABLEKS                       R15 R9 K20 ["Change"]
      103 GETTABLEKS                       R14 R15 K24 ["PasteInstanceInto"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K4 [require]
      108 GETTABLEKS                       R16 R9 K20 ["Change"]
      110 GETTABLEKS                       R15 R16 K25 ["ShowInstanceInExplorer"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K4 [require]
      115 GETTABLEKS                       R17 R9 K20 ["Change"]
      117 GETTABLEKS                       R16 R17 K26 ["ChangeStyleRulePriority"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K4 [require]
      122 GETTABLEKS                       R19 R0 K5 ["Src"]
      124 GETTABLEKS                       R18 R19 K27 ["Flags"]
      126 GETTABLEKS                       R17 R18 K28 ["getFFlagStyleEditorNewRuleRenameFix"]
      128 CALL                             R16 1 1
      129 CALL                             R16 0 1
      130 GETIMPORT                        R17 K4 [require]
      132 GETTABLEKS                       R19 R0 K5 ["Src"]
      134 GETTABLEKS                       R18 R19 K29 ["Types"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K4 [require]
      139 GETTABLEKS                       R21 R0 K5 ["Src"]
      141 GETTABLEKS                       R20 R21 K19 ["Thunks"]
      143 GETTABLEKS                       R19 R20 K29 ["Types"]
      145 CALL                             R18 1 1
      146 DUPCLOSURE                       R19 K30 [PROTO_10]
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R11
      160 RETURN                           R19 1
