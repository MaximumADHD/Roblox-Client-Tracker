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
        1 JUMPIFNOT                        R1 ; [+33]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+31]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K0 ["getQueryStyleRulesForPseudo"]
        7 GETUPVAL                         R2 3
        8 CALL                             R1 1 1
        9 NEWTABLE                         R2 0 1
       11 GETUPVAL                         R3 3
       12 SETLIST                          R2 R3 1 [1]
       14 MOVE                             R3 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       20 MOVE                             R9 R2
       21 MOVE                             R10 R7
       22 GETIMPORT                        R8 K3 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-8]
       27 GETUPVAL                         R3 4
       28 GETUPVAL                         R5 5
       29 MOVE                             R6 R2
       30 CALL                             R5 1 -1
       31 NAMECALL                         R3 R3 K4 ["dispatch"]
       33 CALL                             R3 -1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 4
       36 GETUPVAL                         R3 6
       37 GETUPVAL                         R4 3
       38 CALL                             R3 1 -1
       39 NAMECALL                         R1 R1 K4 ["dispatch"]
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

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
       18 JUMPIFNOT                        R1 ; [+10]
       19 GETUPVAL                         R1 2
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETUPVAL                         R1 3
       22 GETUPVAL                         R3 4
       23 GETUPVAL                         R4 0
       24 CALL                             R3 1 -1
       25 NAMECALL                         R1 R1 K7 ["dispatch"]
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 GETUPVAL                         R3 5
       31 GETUPVAL                         R4 0
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K0 ["Parent"]
       35 CALL                             R3 2 -1
       36 NAMECALL                         R1 R1 K7 ["dispatch"]
       38 CALL                             R1 -1 0
       39 RETURN                           R0 0

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
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R3 1 -1
        8 NAMECALL                         R1 R1 K0 ["dispatch"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R3 5
       14 GETUPVAL                         R4 4
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K0 ["dispatch"]
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

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
       14 LOADB                            R2 0
       15 GETUPVAL                         R3 1
       16 JUMPIFNOT                        R3 ; [+16]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K5 ["getQueryTypeFromSelector"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K6 ["Selector"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K7 ["Type"]
       27 GETTABLEKS                       R4 R5 K8 ["Pseudo"]
       29 JUMPIFEQ                         R3 R4 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 NAMECALL                         R3 R0 K9 ["getState"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R1 K10 ["Localization"]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R5 R6 K11 ["getNewSelectorAction"]
       41 GETUPVAL                         R6 0
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 MOVE                             R8 R4
       51 CALL                             R5 3 1
       52 LOADNIL                          R6
       53 GETUPVAL                         R7 1
       54 JUMPIFNOT                        R7 ; [+11]
       55 GETUPVAL                         R8 3
       56 GETTABLEKS                       R7 R8 K12 ["getInsertAction"]
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U10
       62 CAPTURE                          UPVAL U0
       63 MOVE                             R9 R4
       64 CALL                             R7 2 1
       65 MOVE                             R6 R7
       66 GETUPVAL                         R8 3
       67 GETTABLEKS                       R7 R8 K13 ["getRenameAction"]
       69 NEWCLOSURE                       R8 P2
       70 CAPTURE                          UPVAL U11
       71 MOVE                             R9 R4
       72 CALL                             R7 2 1
       73 GETUPVAL                         R9 1
       74 JUMPIFNOT                        R9 ; [+11]
       75 GETTABLEKS                       R11 R3 K14 ["Clipboard"]
       77 GETTABLEKS                       R10 R11 K15 ["Instances"]
       79 LENGTH                           R9 R10
       80 LOADN                            R10 0
       81 JUMPIFLT                         R10 R9 ; [+2]
       83 LOADB                            R8 0 +1
       84 LOADB                            R8 1
       85 JUMP                             ; [+8]
       86 GETTABLEKS                       R10 R3 K14 ["Clipboard"]
       88 GETTABLEKS                       R9 R10 K16 ["DEPRECATED_Instance"]
       90 JUMPIFNOTEQKNIL                  R9 ; [+2]
       92 LOADB                            R8 0 +1
       93 LOADB                            R8 1
       94 DUPTABLE                         R9 K19 [{"Id", "Children"}]
       95 LOADK                            R10 K0 ["StyleRule"]
       96 SETTABLEKS                       R10 R9 K17 ["Id"]
       98 NEWTABLE                         R10 0 10
      100 MOVE                             R11 R5
      101 MOVE                             R12 R7
      102 MOVE                             R13 R6
      103 DUPTABLE                         R14 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      104 LOADK                            R15 K24 ["ShowInExplorer"]
      105 SETTABLEKS                       R15 R14 K17 ["Id"]
      107 LOADK                            R17 K25 ["ContextMenu"]
      108 LOADK                            R18 K24 ["ShowInExplorer"]
      109 NAMECALL                         R15 R4 K26 ["getText"]
      111 CALL                             R15 3 1
      112 SETTABLEKS                       R15 R14 K20 ["Text"]
      114 GETUPVAL                         R16 3
      115 GETTABLEKS                       R15 R16 K27 ["getClassIcon"]
      117 LOADK                            R16 K28 ["ReplicatedStorage"]
      118 CALL                             R15 1 1
      119 SETTABLEKS                       R15 R14 K21 ["Icon"]
      121 NEWCLOSURE                       R15 P3
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U12
      124 CAPTURE                          UPVAL U0
      125 SETTABLEKS                       R15 R14 K22 ["OnItemClicked"]
      127 DUPTABLE                         R15 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      128 LOADK                            R16 K29 ["Copy"]
      129 SETTABLEKS                       R16 R15 K17 ["Id"]
      131 LOADK                            R18 K25 ["ContextMenu"]
      132 LOADK                            R19 K29 ["Copy"]
      133 NAMECALL                         R16 R4 K26 ["getText"]
      135 CALL                             R16 3 1
      136 SETTABLEKS                       R16 R15 K20 ["Text"]
      138 GETUPVAL                         R17 13
      139 GETTABLEKS                       R16 R17 K30 ["copy"]
      141 CALL                             R16 0 1
      142 SETTABLEKS                       R16 R15 K21 ["Icon"]
      144 NEWCLOSURE                       R16 P4
      145 CAPTURE                          UPVAL U1
      146 CAPTURE                          REF R2
      147 CAPTURE                          UPVAL U2
      148 CAPTURE                          UPVAL U0
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U14
      151 CAPTURE                          UPVAL U15
      152 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      154 DUPTABLE                         R16 K32 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      155 LOADK                            R17 K33 ["PasteInto"]
      156 SETTABLEKS                       R17 R16 K17 ["Id"]
      158 LOADK                            R19 K25 ["ContextMenu"]
      159 LOADK                            R20 K33 ["PasteInto"]
      160 NAMECALL                         R17 R4 K26 ["getText"]
      162 CALL                             R17 3 1
      163 SETTABLEKS                       R17 R16 K20 ["Text"]
      165 GETUPVAL                         R18 13
      166 GETTABLEKS                       R17 R18 K34 ["paste"]
      168 CALL                             R17 0 1
      169 SETTABLEKS                       R17 R16 K21 ["Icon"]
      171 SETTABLEKS                       R8 R16 K31 ["Enabled"]
      173 NEWCLOSURE                       R17 P5
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U16
      176 CAPTURE                          UPVAL U0
      177 SETTABLEKS                       R17 R16 K22 ["OnItemClicked"]
      179 DUPTABLE                         R17 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      180 LOADK                            R18 K35 ["Duplicate"]
      181 SETTABLEKS                       R18 R17 K17 ["Id"]
      183 LOADK                            R20 K25 ["ContextMenu"]
      184 LOADK                            R21 K35 ["Duplicate"]
      185 NAMECALL                         R18 R4 K26 ["getText"]
      187 CALL                             R18 3 1
      188 SETTABLEKS                       R18 R17 K20 ["Text"]
      190 GETUPVAL                         R19 13
      191 GETTABLEKS                       R18 R19 K36 ["duplicate"]
      193 CALL                             R18 0 1
      194 SETTABLEKS                       R18 R17 K21 ["Icon"]
      196 NEWCLOSURE                       R18 P6
      197 CAPTURE                          UPVAL U0
      198 CAPTURE                          UPVAL U1
      199 CAPTURE                          REF R2
      200 CAPTURE                          VAL R0
      201 CAPTURE                          UPVAL U17
      202 CAPTURE                          UPVAL U18
      203 SETTABLEKS                       R18 R17 K22 ["OnItemClicked"]
      205 DUPTABLE                         R18 K32 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      206 LOADK                            R19 K37 ["IncreasePriority"]
      207 SETTABLEKS                       R19 R18 K17 ["Id"]
      209 LOADK                            R21 K25 ["ContextMenu"]
      210 LOADK                            R22 K38 ["IncreaseStyleRulePriority"]
      211 NAMECALL                         R19 R4 K26 ["getText"]
      213 CALL                             R19 3 1
      214 SETTABLEKS                       R19 R18 K20 ["Text"]
      216 GETUPVAL                         R20 13
      217 GETTABLEKS                       R19 R20 K39 ["arrowUp"]
      219 CALL                             R19 0 1
      220 SETTABLEKS                       R19 R18 K21 ["Icon"]
      222 GETUPVAL                         R20 19
      223 GETTABLEKS                       R19 R20 K40 ["changeStyleRulePriority"]
      225 GETUPVAL                         R20 0
      226 LOADB                            R21 1
      227 LOADB                            R22 1
      228 CALL                             R19 3 1
      229 SETTABLEKS                       R19 R18 K31 ["Enabled"]
      231 NEWCLOSURE                       R19 P7
      232 CAPTURE                          VAL R0
      233 CAPTURE                          UPVAL U20
      234 CAPTURE                          UPVAL U0
      235 SETTABLEKS                       R19 R18 K22 ["OnItemClicked"]
      237 DUPTABLE                         R19 K32 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      238 LOADK                            R20 K41 ["DecreasePriority"]
      239 SETTABLEKS                       R20 R19 K17 ["Id"]
      241 LOADK                            R22 K25 ["ContextMenu"]
      242 LOADK                            R23 K42 ["DecreaseStyleRulePriority"]
      243 NAMECALL                         R20 R4 K26 ["getText"]
      245 CALL                             R20 3 1
      246 SETTABLEKS                       R20 R19 K20 ["Text"]
      248 GETUPVAL                         R21 13
      249 GETTABLEKS                       R20 R21 K43 ["arrowDown"]
      251 CALL                             R20 0 1
      252 SETTABLEKS                       R20 R19 K21 ["Icon"]
      254 GETUPVAL                         R21 19
      255 GETTABLEKS                       R20 R21 K40 ["changeStyleRulePriority"]
      257 GETUPVAL                         R21 0
      258 LOADB                            R22 0
      259 LOADB                            R23 1
      260 CALL                             R20 3 1
      261 SETTABLEKS                       R20 R19 K31 ["Enabled"]
      263 NEWCLOSURE                       R20 P8
      264 CAPTURE                          VAL R0
      265 CAPTURE                          UPVAL U20
      266 CAPTURE                          UPVAL U0
      267 SETTABLEKS                       R20 R19 K22 ["OnItemClicked"]
      269 DUPTABLE                         R20 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      270 LOADK                            R21 K44 ["Delete"]
      271 SETTABLEKS                       R21 R20 K17 ["Id"]
      273 LOADK                            R23 K25 ["ContextMenu"]
      274 LOADK                            R24 K44 ["Delete"]
      275 NAMECALL                         R21 R4 K26 ["getText"]
      277 CALL                             R21 3 1
      278 SETTABLEKS                       R21 R20 K20 ["Text"]
      280 GETUPVAL                         R22 13
      281 GETTABLEKS                       R21 R22 K45 ["delete"]
      283 CALL                             R21 0 1
      284 SETTABLEKS                       R21 R20 K21 ["Icon"]
      286 NEWCLOSURE                       R21 P9
      287 CAPTURE                          UPVAL U1
      288 CAPTURE                          REF R2
      289 CAPTURE                          VAL R0
      290 CAPTURE                          UPVAL U21
      291 CAPTURE                          UPVAL U0
      292 CAPTURE                          UPVAL U22
      293 SETTABLEKS                       R21 R20 K22 ["OnItemClicked"]
      295 SETLIST                          R10 R11 10 [1]
      297 SETTABLEKS                       R10 R9 K18 ["Children"]
      299 GETUPVAL                         R11 3
      300 GETTABLEKS                       R10 R11 K46 ["trackClicks"]
      302 MOVE                             R11 R9
      303 GETTABLEKS                       R12 R1 K47 ["Telemetry"]
      305 CALL                             R10 2 0
      306 GETUPVAL                         R11 3
      307 GETTABLEKS                       R10 R11 K48 ["showContextMenu"]
      309 GETTABLEKS                       R11 R1 K49 ["Plugin"]
      311 MOVE                             R12 R9
      312 CALL                             R10 2 0
      313 CLOSEUPVALS                      R2
      314 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 CAPTURE                          UPVAL U16
       21 CAPTURE                          UPVAL U17
       22 CAPTURE                          UPVAL U18
       23 CAPTURE                          UPVAL U19
       24 RETURN                           R3 1

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
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R9 R0 K5 ["Src"]
       60 GETTABLEKS                       R8 R9 K8 ["Util"]
       62 GETTABLEKS                       R7 R8 K14 ["StyleQueryHelpers"]
       64 CALL                             R6 1 1
       65 GETTABLEKS                       R8 R0 K5 ["Src"]
       67 GETTABLEKS                       R7 R8 K15 ["Actions"]
       69 GETIMPORT                        R8 K4 [require]
       71 GETTABLEKS                       R10 R7 K16 ["Clipboard"]
       73 GETTABLEKS                       R9 R10 K17 ["CopyInstancesToClipboard"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K4 [require]
       78 GETTABLEKS                       R11 R7 K16 ["Clipboard"]
       80 GETTABLEKS                       R10 R11 K18 ["CopyInstanceToClipboard"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K4 [require]
       85 GETTABLEKS                       R12 R7 K19 ["Window"]
       87 GETTABLEKS                       R11 R12 K20 ["SetItemsExpanded"]
       89 CALL                             R10 1 1
       90 GETTABLEKS                       R12 R0 K5 ["Src"]
       92 GETTABLEKS                       R11 R12 K21 ["Thunks"]
       94 GETIMPORT                        R12 K4 [require]
       96 GETTABLEKS                       R14 R11 K22 ["Change"]
       98 GETTABLEKS                       R13 R14 K23 ["CreateStyleRule"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K4 [require]
      103 GETTABLEKS                       R15 R11 K22 ["Change"]
      105 GETTABLEKS                       R14 R15 K24 ["CreateStyleQuery"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K4 [require]
      110 GETTABLEKS                       R16 R11 K22 ["Change"]
      112 GETTABLEKS                       R15 R16 K25 ["DeleteInstance"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K4 [require]
      117 GETTABLEKS                       R17 R11 K22 ["Change"]
      119 GETTABLEKS                       R16 R17 K26 ["DuplicateInstance"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K4 [require]
      124 GETTABLEKS                       R18 R11 K22 ["Change"]
      126 GETTABLEKS                       R17 R18 K27 ["PasteInstanceInto"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K4 [require]
      131 GETTABLEKS                       R19 R11 K22 ["Change"]
      133 GETTABLEKS                       R18 R19 K28 ["ShowInstanceInExplorer"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K4 [require]
      138 GETTABLEKS                       R20 R11 K22 ["Change"]
      140 GETTABLEKS                       R19 R20 K29 ["ChangeStyleRulePriority"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K4 [require]
      145 GETTABLEKS                       R21 R11 K22 ["Change"]
      147 GETTABLEKS                       R20 R21 K30 ["DeleteStyleQuery"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K4 [require]
      152 GETTABLEKS                       R22 R11 K22 ["Change"]
      154 GETTABLEKS                       R21 R22 K31 ["DuplicateStyleQuery"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K4 [require]
      159 GETTABLEKS                       R23 R0 K32 ["Packages"]
      161 GETTABLEKS                       R22 R23 K33 ["Dash"]
      163 CALL                             R21 1 1
      164 GETTABLEKS                       R22 R21 K34 ["endsWith"]
      166 GETIMPORT                        R23 K4 [require]
      168 GETTABLEKS                       R26 R0 K5 ["Src"]
      170 GETTABLEKS                       R25 R26 K35 ["Flags"]
      172 GETTABLEKS                       R24 R25 K36 ["getFFlagStyleEditorNewRuleRenameFix"]
      174 CALL                             R23 1 1
      175 CALL                             R23 0 1
      176 GETIMPORT                        R24 K4 [require]
      178 GETTABLEKS                       R27 R0 K5 ["Src"]
      180 GETTABLEKS                       R26 R27 K35 ["Flags"]
      182 GETTABLEKS                       R25 R26 K37 ["getFFlagStyleQuery"]
      184 CALL                             R24 1 1
      185 CALL                             R24 0 1
      186 GETIMPORT                        R25 K4 [require]
      188 GETTABLEKS                       R27 R0 K5 ["Src"]
      190 GETTABLEKS                       R26 R27 K38 ["Types"]
      192 CALL                             R25 1 1
      193 GETIMPORT                        R26 K4 [require]
      195 GETTABLEKS                       R29 R0 K5 ["Src"]
      197 GETTABLEKS                       R28 R29 K21 ["Thunks"]
      199 GETTABLEKS                       R27 R28 K38 ["Types"]
      201 CALL                             R26 1 1
      202 DUPCLOSURE                       R27 K39 [PROTO_11]
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R14
      223 RETURN                           R27 1
