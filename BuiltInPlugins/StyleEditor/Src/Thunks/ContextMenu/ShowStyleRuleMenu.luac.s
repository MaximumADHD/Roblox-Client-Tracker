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
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 CALL                             R3 2 -1
       11 NAMECALL                         R1 R1 K2 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

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
       15 LOADB                            R3 0
       16 GETUPVAL                         R4 1
       17 JUMPIFNOT                        R4 ; [+25]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K5 ["getQueryTypeFromSelector"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K6 ["Selector"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K7 ["Type"]
       28 GETTABLEKS                       R5 R6 K8 ["Pseudo"]
       30 JUMPIFEQ                         R4 R5 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K7 ["Type"]
       37 GETTABLEKS                       R5 R6 K9 ["Query"]
       39 JUMPIFEQ                         R4 R5 ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 NAMECALL                         R4 R0 K10 ["getState"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R5 R1 K11 ["Localization"]
       48 GETUPVAL                         R7 3
       49 GETTABLEKS                       R6 R7 K12 ["getNewSelectorAction"]
       51 GETUPVAL                         R7 0
       52 NEWCLOSURE                       R8 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          UPVAL U8
       60 MOVE                             R9 R5
       61 CALL                             R6 3 1
       62 LOADNIL                          R7
       63 GETUPVAL                         R8 1
       64 JUMPIFNOT                        R8 ; [+14]
       65 GETUPVAL                         R9 3
       66 GETTABLEKS                       R8 R9 K13 ["getInsertAction"]
       68 NEWCLOSURE                       R9 P1
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U10
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U5
       74 MOVE                             R10 R5
       75 CALL                             R8 2 1
       76 MOVE                             R7 R8
       77 SETTABLEKS                       R2 R6 K14 ["Hidden"]
       79 GETUPVAL                         R9 3
       80 GETTABLEKS                       R8 R9 K15 ["getRenameAction"]
       82 NEWCLOSURE                       R9 P2
       83 CAPTURE                          UPVAL U11
       84 MOVE                             R10 R5
       85 CALL                             R8 2 1
       86 GETUPVAL                         R10 1
       87 JUMPIFNOT                        R10 ; [+11]
       88 GETTABLEKS                       R12 R4 K16 ["Clipboard"]
       90 GETTABLEKS                       R11 R12 K17 ["Instances"]
       92 LENGTH                           R10 R11
       93 LOADN                            R11 0
       94 JUMPIFLT                         R11 R10 ; [+2]
       96 LOADB                            R9 0 +1
       97 LOADB                            R9 1
       98 JUMP                             ; [+8]
       99 GETTABLEKS                       R11 R4 K16 ["Clipboard"]
      101 GETTABLEKS                       R10 R11 K18 ["DEPRECATED_Instance"]
      103 JUMPIFNOTEQKNIL                  R10 ; [+2]
      105 LOADB                            R9 0 +1
      106 LOADB                            R9 1
      107 NEWTABLE                         R10 0 9
      109 MOVE                             R11 R6
      110 MOVE                             R12 R8
      111 DUPTABLE                         R13 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      112 LOADK                            R14 K24 ["ShowInExplorer"]
      113 SETTABLEKS                       R14 R13 K19 ["Id"]
      115 LOADK                            R16 K25 ["ContextMenu"]
      116 LOADK                            R17 K24 ["ShowInExplorer"]
      117 NAMECALL                         R14 R5 K26 ["getText"]
      119 CALL                             R14 3 1
      120 SETTABLEKS                       R14 R13 K20 ["Text"]
      122 GETUPVAL                         R15 3
      123 GETTABLEKS                       R14 R15 K27 ["getClassIcon"]
      125 LOADK                            R15 K28 ["ReplicatedStorage"]
      126 CALL                             R14 1 1
      127 SETTABLEKS                       R14 R13 K21 ["Icon"]
      129 NEWCLOSURE                       R14 P3
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U12
      132 CAPTURE                          UPVAL U0
      133 SETTABLEKS                       R14 R13 K22 ["OnItemClicked"]
      135 DUPTABLE                         R14 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      136 LOADK                            R15 K29 ["Copy"]
      137 SETTABLEKS                       R15 R14 K19 ["Id"]
      139 LOADK                            R17 K25 ["ContextMenu"]
      140 LOADK                            R18 K29 ["Copy"]
      141 NAMECALL                         R15 R5 K26 ["getText"]
      143 CALL                             R15 3 1
      144 SETTABLEKS                       R15 R14 K20 ["Text"]
      146 GETUPVAL                         R16 13
      147 GETTABLEKS                       R15 R16 K30 ["copy"]
      149 CALL                             R15 0 1
      150 SETTABLEKS                       R15 R14 K21 ["Icon"]
      152 NEWCLOSURE                       R15 P4
      153 CAPTURE                          UPVAL U1
      154 CAPTURE                          REF R2
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          UPVAL U0
      157 CAPTURE                          VAL R0
      158 CAPTURE                          UPVAL U14
      159 CAPTURE                          UPVAL U15
      160 SETTABLEKS                       R15 R14 K22 ["OnItemClicked"]
      162 DUPTABLE                         R15 K32 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      163 LOADK                            R16 K33 ["PasteInto"]
      164 SETTABLEKS                       R16 R15 K19 ["Id"]
      166 LOADK                            R18 K25 ["ContextMenu"]
      167 LOADK                            R19 K33 ["PasteInto"]
      168 NAMECALL                         R16 R5 K26 ["getText"]
      170 CALL                             R16 3 1
      171 SETTABLEKS                       R16 R15 K20 ["Text"]
      173 GETUPVAL                         R17 13
      174 GETTABLEKS                       R16 R17 K34 ["paste"]
      176 CALL                             R16 0 1
      177 SETTABLEKS                       R16 R15 K21 ["Icon"]
      179 SETTABLEKS                       R9 R15 K31 ["Enabled"]
      181 NEWCLOSURE                       R16 P5
      182 CAPTURE                          VAL R0
      183 CAPTURE                          UPVAL U16
      184 CAPTURE                          UPVAL U0
      185 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      187 DUPTABLE                         R16 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      188 LOADK                            R17 K35 ["Duplicate"]
      189 SETTABLEKS                       R17 R16 K19 ["Id"]
      191 LOADK                            R19 K25 ["ContextMenu"]
      192 LOADK                            R20 K35 ["Duplicate"]
      193 NAMECALL                         R17 R5 K26 ["getText"]
      195 CALL                             R17 3 1
      196 SETTABLEKS                       R17 R16 K20 ["Text"]
      198 GETUPVAL                         R18 13
      199 GETTABLEKS                       R17 R18 K36 ["duplicate"]
      201 CALL                             R17 0 1
      202 SETTABLEKS                       R17 R16 K21 ["Icon"]
      204 NEWCLOSURE                       R17 P6
      205 CAPTURE                          UPVAL U0
      206 CAPTURE                          UPVAL U1
      207 CAPTURE                          REF R2
      208 CAPTURE                          VAL R0
      209 CAPTURE                          UPVAL U17
      210 CAPTURE                          UPVAL U18
      211 SETTABLEKS                       R17 R16 K22 ["OnItemClicked"]
      213 DUPTABLE                         R17 K32 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      214 LOADK                            R18 K37 ["IncreasePriority"]
      215 SETTABLEKS                       R18 R17 K19 ["Id"]
      217 LOADK                            R20 K25 ["ContextMenu"]
      218 LOADK                            R21 K38 ["IncreaseStyleRulePriority"]
      219 NAMECALL                         R18 R5 K26 ["getText"]
      221 CALL                             R18 3 1
      222 SETTABLEKS                       R18 R17 K20 ["Text"]
      224 GETUPVAL                         R19 13
      225 GETTABLEKS                       R18 R19 K39 ["arrowUp"]
      227 CALL                             R18 0 1
      228 SETTABLEKS                       R18 R17 K21 ["Icon"]
      230 GETUPVAL                         R19 19
      231 GETTABLEKS                       R18 R19 K40 ["changeStyleRulePriority"]
      233 GETUPVAL                         R19 0
      234 LOADB                            R20 1
      235 LOADB                            R21 1
      236 CALL                             R18 3 1
      237 SETTABLEKS                       R18 R17 K31 ["Enabled"]
      239 NEWCLOSURE                       R18 P7
      240 CAPTURE                          VAL R0
      241 CAPTURE                          UPVAL U20
      242 CAPTURE                          UPVAL U0
      243 SETTABLEKS                       R18 R17 K22 ["OnItemClicked"]
      245 DUPTABLE                         R18 K32 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      246 LOADK                            R19 K41 ["DecreasePriority"]
      247 SETTABLEKS                       R19 R18 K19 ["Id"]
      249 LOADK                            R21 K25 ["ContextMenu"]
      250 LOADK                            R22 K42 ["DecreaseStyleRulePriority"]
      251 NAMECALL                         R19 R5 K26 ["getText"]
      253 CALL                             R19 3 1
      254 SETTABLEKS                       R19 R18 K20 ["Text"]
      256 GETUPVAL                         R20 13
      257 GETTABLEKS                       R19 R20 K43 ["arrowDown"]
      259 CALL                             R19 0 1
      260 SETTABLEKS                       R19 R18 K21 ["Icon"]
      262 GETUPVAL                         R20 19
      263 GETTABLEKS                       R19 R20 K40 ["changeStyleRulePriority"]
      265 GETUPVAL                         R20 0
      266 LOADB                            R21 0
      267 LOADB                            R22 1
      268 CALL                             R19 3 1
      269 SETTABLEKS                       R19 R18 K31 ["Enabled"]
      271 NEWCLOSURE                       R19 P8
      272 CAPTURE                          VAL R0
      273 CAPTURE                          UPVAL U20
      274 CAPTURE                          UPVAL U0
      275 SETTABLEKS                       R19 R18 K22 ["OnItemClicked"]
      277 DUPTABLE                         R19 K23 [{"Id", "Text", "Icon", "OnItemClicked"}]
      278 LOADK                            R20 K44 ["Delete"]
      279 SETTABLEKS                       R20 R19 K19 ["Id"]
      281 LOADK                            R22 K25 ["ContextMenu"]
      282 LOADK                            R23 K44 ["Delete"]
      283 NAMECALL                         R20 R5 K26 ["getText"]
      285 CALL                             R20 3 1
      286 SETTABLEKS                       R20 R19 K20 ["Text"]
      288 GETUPVAL                         R21 13
      289 GETTABLEKS                       R20 R21 K45 ["delete"]
      291 CALL                             R20 0 1
      292 SETTABLEKS                       R20 R19 K21 ["Icon"]
      294 NEWCLOSURE                       R20 P9
      295 CAPTURE                          UPVAL U1
      296 CAPTURE                          REF R2
      297 CAPTURE                          VAL R0
      298 CAPTURE                          UPVAL U21
      299 CAPTURE                          UPVAL U0
      300 CAPTURE                          UPVAL U22
      301 SETTABLEKS                       R20 R19 K22 ["OnItemClicked"]
      303 SETLIST                          R10 R11 9 [1]
      305 GETUPVAL                         R11 1
      306 JUMPIFNOT                        R11 ; [+10]
      307 JUMPIF                           R2 ; [+9]
      308 JUMPIF                           R3 ; [+8]
      309 LOADN                            R13 2
      310 FASTCALL3                        TABLE_INSERT R10 R13 R7
      312 MOVE                             R12 R10
      313 MOVE                             R14 R7
      314 GETIMPORT                        R11 K48 [table.insert]
      316 CALL                             R11 3 0
      317 DUPTABLE                         R11 K50 [{"Id", "Children"}]
      318 LOADK                            R12 K0 ["StyleRule"]
      319 SETTABLEKS                       R12 R11 K19 ["Id"]
      321 SETTABLEKS                       R10 R11 K49 ["Children"]
      323 GETUPVAL                         R13 3
      324 GETTABLEKS                       R12 R13 K51 ["trackClicks"]
      326 MOVE                             R13 R11
      327 GETTABLEKS                       R14 R1 K52 ["Telemetry"]
      329 CALL                             R12 2 0
      330 GETUPVAL                         R13 3
      331 GETTABLEKS                       R12 R13 K53 ["showContextMenu"]
      333 GETTABLEKS                       R13 R1 K54 ["Plugin"]
      335 MOVE                             R14 R11
      336 CALL                             R12 2 0
      337 CLOSEUPVALS                      R2
      338 RETURN                           R0 0

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
