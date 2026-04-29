PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETIMPORT                        R1 K2 [string.find]
        4 GETTABLEKS                       R2 R0 K3 ["Id"]
        6 LOADK                            R3 K4 ["/Folder$"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 GETUPVAL                         R5 4
       13 CALL                             R3 2 -1
       14 NAMECALL                         R1 R1 K5 ["dispatch"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 5
       19 JUMPIFNOT                        R1 ; [+50]
       20 GETUPVAL                         R1 6
       21 JUMPIFNOT                        R1 ; [+35]
       22 GETTABLEKS                       R1 R0 K6 ["Data"]
       24 JUMPIFNOT                        R1 ; [+4]
       25 GETTABLEKS                       R2 R0 K6 ["Data"]
       27 GETTABLEKS                       R1 R2 K7 ["BuiltinCategory"]
       29 JUMPIFNOT                        R1 ; [+10]
       30 GETUPVAL                         R2 1
       31 GETUPVAL                         R4 7
       32 GETUPVAL                         R5 3
       33 MOVE                             R6 R1
       34 GETUPVAL                         R7 4
       35 CALL                             R4 3 -1
       36 NAMECALL                         R2 R2 K5 ["dispatch"]
       38 CALL                             R2 -1 0
       39 RETURN                           R0 0
       40 GETIMPORT                        R2 K2 [string.find]
       42 GETTABLEKS                       R3 R0 K3 ["Id"]
       44 LOADK                            R4 K8 ["/StyleQuery/Custom$"]
       45 CALL                             R2 2 1
       46 JUMPIFNOT                        R2 ; [+23]
       47 GETUPVAL                         R2 1
       48 GETUPVAL                         R4 8
       49 GETUPVAL                         R5 3
       50 GETUPVAL                         R6 4
       51 CALL                             R4 2 -1
       52 NAMECALL                         R2 R2 K5 ["dispatch"]
       54 CALL                             R2 -1 0
       55 RETURN                           R0 0
       56 JUMP                             ; [+13]
       57 GETTABLEKS                       R1 R0 K3 ["Id"]
       59 JUMPIFNOTEQKS                    R1 K9 ["StyleRule/New/StyleQuery"] ; [+10]
       61 GETUPVAL                         R1 1
       62 GETUPVAL                         R3 8
       63 GETUPVAL                         R4 3
       64 GETUPVAL                         R5 4
       65 CALL                             R3 2 -1
       66 NAMECALL                         R1 R1 K5 ["dispatch"]
       68 CALL                             R1 -1 0
       69 RETURN                           R0 0
       70 GETTABLEKS                       R2 R0 K6 ["Data"]
       72 GETTABLEKS                       R1 R2 K10 ["Selector"]
       74 GETUPVAL                         R2 1
       75 GETUPVAL                         R4 9
       76 GETUPVAL                         R5 3
       77 MOVE                             R6 R1
       78 GETUPVAL                         R7 4
       79 CALL                             R4 3 -1
       80 NAMECALL                         R2 R2 K5 ["dispatch"]
       82 CALL                             R2 -1 0
       83 GETUPVAL                         R2 10
       84 JUMPIF                           R2 ; [+15]
       85 GETUPVAL                         R3 11
       86 GETTABLEKS                       R2 R3 K11 ["createItemId"]
       88 GETUPVAL                         R3 3
       89 CALL                             R2 1 1
       90 GETUPVAL                         R3 1
       91 GETUPVAL                         R5 12
       92 NEWTABLE                         R6 1 0
       94 LOADB                            R7 1
       95 SETTABLE                         R7 R6 R2
       96 CALL                             R5 1 -1
       97 NAMECALL                         R3 R3 K5 ["dispatch"]
       99 CALL                             R3 -1 0
      100 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R6 3
        4 GETTABLEKS                       R5 R6 K0 ["DEFAULT_TRANSITION_NAME"]
        6 GETIMPORT                        R6 K3 [TweenInfo.new]
        8 CALL                             R6 0 -1
        9 CALL                             R3 -1 -1
       10 NAMECALL                         R1 R1 K4 ["dispatch"]
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
       48 NEWTABLE                         R6 0 0
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R7 R8 K12 ["getNewSelectorAction"]
       53 GETUPVAL                         R8 0
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          UPVAL U10
       65 CAPTURE                          UPVAL U11
       66 CAPTURE                          UPVAL U12
       67 CAPTURE                          UPVAL U13
       68 MOVE                             R10 R5
       69 CALL                             R7 3 1
       70 GETUPVAL                         R8 1
       71 JUMPIFNOT                        R8 ; [+1]
       72 JUMPIF                           R2 ; [+7]
       73 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       75 MOVE                             R9 R6
       76 MOVE                             R10 R7
       77 GETIMPORT                        R8 K15 [table.insert]
       79 CALL                             R8 2 0
       80 GETUPVAL                         R8 14
       81 JUMPIFNOT                        R8 ; [+90]
       82 GETUPVAL                         R8 15
       83 JUMPIFNOT                        R8 ; [+88]
       84 NEWTABLE                         R8 0 0
       86 GETUPVAL                         R11 0
       87 NAMECALL                         R11 R11 K16 ["GetPropertyTransitions"]
       89 CALL                             R11 1 1
       90 GETUPVAL                         R13 16
       91 GETTABLEKS                       R12 R13 K17 ["DEFAULT_TRANSITION_NAME"]
       93 GETTABLE                         R10 R11 R12
       94 JUMPIFEQKNIL                     R10 ; [+2]
       96 LOADB                            R9 0 +1
       97 LOADB                            R9 1
       98 DUPTABLE                         R10 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
       99 LOADK                            R11 K24 ["DefaultTransition"]
      100 SETTABLEKS                       R11 R10 K18 ["Id"]
      102 LOADK                            R13 K25 ["ContextMenu"]
      103 LOADK                            R14 K26 ["New.Transition"]
      104 NAMECALL                         R11 R5 K27 ["getText"]
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K19 ["Text"]
      109 GETUPVAL                         R12 17
      110 CALL                             R12 0 1
      111 JUMPIFNOT                        R12 ; [+5]
      112 GETUPVAL                         R12 18
      113 GETTABLEKS                       R11 R12 K28 ["stylingTransition"]
      115 CALL                             R11 0 1
      116 JUMP                             ; [+4]
      117 GETUPVAL                         R12 18
      118 GETTABLEKS                       R11 R12 K14 ["insert"]
      120 CALL                             R11 0 1
      121 SETTABLEKS                       R11 R10 K20 ["Icon"]
      123 SETTABLEKS                       R9 R10 K21 ["Enabled"]
      125 NEWCLOSURE                       R11 P1
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U19
      128 CAPTURE                          UPVAL U0
      129 CAPTURE                          UPVAL U16
      130 SETTABLEKS                       R11 R10 K22 ["OnItemClicked"]
      132 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
      134 MOVE                             R12 R8
      135 MOVE                             R13 R10
      136 GETIMPORT                        R11 K15 [table.insert]
      138 CALL                             R11 2 0
      139 DUPTABLE                         R11 K31 [{"Id", "Text", "Icon", "Hidden", "Children"}]
      140 LOADK                            R12 K32 ["Insert"]
      141 SETTABLEKS                       R12 R11 K18 ["Id"]
      143 LOADK                            R14 K25 ["ContextMenu"]
      144 LOADK                            R15 K32 ["Insert"]
      145 NAMECALL                         R12 R5 K27 ["getText"]
      147 CALL                             R12 3 1
      148 SETTABLEKS                       R12 R11 K19 ["Text"]
      150 GETUPVAL                         R13 18
      151 GETTABLEKS                       R12 R13 K14 ["insert"]
      153 CALL                             R12 0 1
      154 SETTABLEKS                       R12 R11 K20 ["Icon"]
      156 LENGTH                           R13 R8
      157 JUMPIFEQKN                       R13 K33 [0] ; [+2]
      159 LOADB                            R12 0 +1
      160 LOADB                            R12 1
      161 SETTABLEKS                       R12 R11 K29 ["Hidden"]
      163 SETTABLEKS                       R8 R11 K30 ["Children"]
      165 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      167 MOVE                             R13 R6
      168 MOVE                             R14 R11
      169 GETIMPORT                        R12 K15 [table.insert]
      171 CALL                             R12 2 0
      172 GETUPVAL                         R9 3
      173 GETTABLEKS                       R8 R9 K34 ["getRenameAction"]
      175 NEWCLOSURE                       R9 P2
      176 CAPTURE                          UPVAL U20
      177 MOVE                             R10 R5
      178 CALL                             R8 2 1
      179 GETUPVAL                         R10 1
      180 JUMPIFNOT                        R10 ; [+11]
      181 GETTABLEKS                       R12 R4 K35 ["Clipboard"]
      183 GETTABLEKS                       R11 R12 K36 ["Instances"]
      185 LENGTH                           R10 R11
      186 LOADN                            R11 0
      187 JUMPIFLT                         R11 R10 ; [+2]
      189 LOADB                            R9 0 +1
      190 LOADB                            R9 1
      191 JUMP                             ; [+8]
      192 GETTABLEKS                       R11 R4 K35 ["Clipboard"]
      194 GETTABLEKS                       R10 R11 K37 ["DEPRECATED_Instance"]
      196 JUMPIFNOTEQKNIL                  R10 ; [+2]
      198 LOADB                            R9 0 +1
      199 LOADB                            R9 1
      200 GETUPVAL                         R10 21
      201 MOVE                             R11 R6
      202 NEWTABLE                         R12 0 8
      204 MOVE                             R13 R8
      205 DUPTABLE                         R14 K38 [{"Id", "Text", "Icon", "OnItemClicked"}]
      206 LOADK                            R15 K39 ["ShowInExplorer"]
      207 SETTABLEKS                       R15 R14 K18 ["Id"]
      209 LOADK                            R17 K25 ["ContextMenu"]
      210 LOADK                            R18 K39 ["ShowInExplorer"]
      211 NAMECALL                         R15 R5 K27 ["getText"]
      213 CALL                             R15 3 1
      214 SETTABLEKS                       R15 R14 K19 ["Text"]
      216 GETUPVAL                         R16 3
      217 GETTABLEKS                       R15 R16 K40 ["getClassIcon"]
      219 LOADK                            R16 K41 ["ReplicatedStorage"]
      220 CALL                             R15 1 1
      221 SETTABLEKS                       R15 R14 K20 ["Icon"]
      223 NEWCLOSURE                       R15 P3
      224 CAPTURE                          VAL R0
      225 CAPTURE                          UPVAL U22
      226 CAPTURE                          UPVAL U0
      227 SETTABLEKS                       R15 R14 K22 ["OnItemClicked"]
      229 DUPTABLE                         R15 K38 [{"Id", "Text", "Icon", "OnItemClicked"}]
      230 LOADK                            R16 K42 ["Copy"]
      231 SETTABLEKS                       R16 R15 K18 ["Id"]
      233 LOADK                            R18 K25 ["ContextMenu"]
      234 LOADK                            R19 K42 ["Copy"]
      235 NAMECALL                         R16 R5 K27 ["getText"]
      237 CALL                             R16 3 1
      238 SETTABLEKS                       R16 R15 K19 ["Text"]
      240 GETUPVAL                         R17 18
      241 GETTABLEKS                       R16 R17 K43 ["copy"]
      243 CALL                             R16 0 1
      244 SETTABLEKS                       R16 R15 K20 ["Icon"]
      246 NEWCLOSURE                       R16 P4
      247 CAPTURE                          UPVAL U1
      248 CAPTURE                          REF R2
      249 CAPTURE                          UPVAL U2
      250 CAPTURE                          UPVAL U0
      251 CAPTURE                          VAL R0
      252 CAPTURE                          UPVAL U23
      253 CAPTURE                          UPVAL U24
      254 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      256 DUPTABLE                         R16 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      257 LOADK                            R17 K44 ["PasteInto"]
      258 SETTABLEKS                       R17 R16 K18 ["Id"]
      260 LOADK                            R19 K25 ["ContextMenu"]
      261 LOADK                            R20 K44 ["PasteInto"]
      262 NAMECALL                         R17 R5 K27 ["getText"]
      264 CALL                             R17 3 1
      265 SETTABLEKS                       R17 R16 K19 ["Text"]
      267 GETUPVAL                         R18 18
      268 GETTABLEKS                       R17 R18 K45 ["paste"]
      270 CALL                             R17 0 1
      271 SETTABLEKS                       R17 R16 K20 ["Icon"]
      273 SETTABLEKS                       R9 R16 K21 ["Enabled"]
      275 NEWCLOSURE                       R17 P5
      276 CAPTURE                          VAL R0
      277 CAPTURE                          UPVAL U25
      278 CAPTURE                          UPVAL U0
      279 SETTABLEKS                       R17 R16 K22 ["OnItemClicked"]
      281 DUPTABLE                         R17 K38 [{"Id", "Text", "Icon", "OnItemClicked"}]
      282 LOADK                            R18 K46 ["Duplicate"]
      283 SETTABLEKS                       R18 R17 K18 ["Id"]
      285 LOADK                            R20 K25 ["ContextMenu"]
      286 LOADK                            R21 K46 ["Duplicate"]
      287 NAMECALL                         R18 R5 K27 ["getText"]
      289 CALL                             R18 3 1
      290 SETTABLEKS                       R18 R17 K19 ["Text"]
      292 GETUPVAL                         R19 18
      293 GETTABLEKS                       R18 R19 K47 ["duplicate"]
      295 CALL                             R18 0 1
      296 SETTABLEKS                       R18 R17 K20 ["Icon"]
      298 NEWCLOSURE                       R18 P6
      299 CAPTURE                          UPVAL U0
      300 CAPTURE                          UPVAL U1
      301 CAPTURE                          REF R2
      302 CAPTURE                          VAL R0
      303 CAPTURE                          UPVAL U26
      304 CAPTURE                          UPVAL U27
      305 SETTABLEKS                       R18 R17 K22 ["OnItemClicked"]
      307 DUPTABLE                         R18 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      308 LOADK                            R19 K48 ["IncreasePriority"]
      309 SETTABLEKS                       R19 R18 K18 ["Id"]
      311 LOADK                            R21 K25 ["ContextMenu"]
      312 LOADK                            R22 K49 ["IncreaseStyleRulePriority"]
      313 NAMECALL                         R19 R5 K27 ["getText"]
      315 CALL                             R19 3 1
      316 SETTABLEKS                       R19 R18 K19 ["Text"]
      318 GETUPVAL                         R20 18
      319 GETTABLEKS                       R19 R20 K50 ["arrowUp"]
      321 CALL                             R19 0 1
      322 SETTABLEKS                       R19 R18 K20 ["Icon"]
      324 NOT                              R19 R3
      325 JUMPIFNOT                        R19 ; [+7]
      326 GETUPVAL                         R20 28
      327 GETTABLEKS                       R19 R20 K51 ["changeStyleRulePriority"]
      329 GETUPVAL                         R20 0
      330 LOADB                            R21 1
      331 LOADB                            R22 1
      332 CALL                             R19 3 1
      333 SETTABLEKS                       R19 R18 K21 ["Enabled"]
      335 NEWCLOSURE                       R19 P7
      336 CAPTURE                          VAL R0
      337 CAPTURE                          UPVAL U29
      338 CAPTURE                          UPVAL U0
      339 SETTABLEKS                       R19 R18 K22 ["OnItemClicked"]
      341 DUPTABLE                         R19 K23 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      342 LOADK                            R20 K52 ["DecreasePriority"]
      343 SETTABLEKS                       R20 R19 K18 ["Id"]
      345 LOADK                            R22 K25 ["ContextMenu"]
      346 LOADK                            R23 K53 ["DecreaseStyleRulePriority"]
      347 NAMECALL                         R20 R5 K27 ["getText"]
      349 CALL                             R20 3 1
      350 SETTABLEKS                       R20 R19 K19 ["Text"]
      352 GETUPVAL                         R21 18
      353 GETTABLEKS                       R20 R21 K54 ["arrowDown"]
      355 CALL                             R20 0 1
      356 SETTABLEKS                       R20 R19 K20 ["Icon"]
      358 NOT                              R20 R3
      359 JUMPIFNOT                        R20 ; [+7]
      360 GETUPVAL                         R21 28
      361 GETTABLEKS                       R20 R21 K51 ["changeStyleRulePriority"]
      363 GETUPVAL                         R21 0
      364 LOADB                            R22 0
      365 LOADB                            R23 1
      366 CALL                             R20 3 1
      367 SETTABLEKS                       R20 R19 K21 ["Enabled"]
      369 NEWCLOSURE                       R20 P8
      370 CAPTURE                          VAL R0
      371 CAPTURE                          UPVAL U29
      372 CAPTURE                          UPVAL U0
      373 SETTABLEKS                       R20 R19 K22 ["OnItemClicked"]
      375 DUPTABLE                         R20 K38 [{"Id", "Text", "Icon", "OnItemClicked"}]
      376 LOADK                            R21 K55 ["Delete"]
      377 SETTABLEKS                       R21 R20 K18 ["Id"]
      379 LOADK                            R23 K25 ["ContextMenu"]
      380 LOADK                            R24 K55 ["Delete"]
      381 NAMECALL                         R21 R5 K27 ["getText"]
      383 CALL                             R21 3 1
      384 SETTABLEKS                       R21 R20 K19 ["Text"]
      386 GETUPVAL                         R22 18
      387 GETTABLEKS                       R21 R22 K56 ["delete"]
      389 CALL                             R21 0 1
      390 SETTABLEKS                       R21 R20 K20 ["Icon"]
      392 NEWCLOSURE                       R21 P9
      393 CAPTURE                          UPVAL U1
      394 CAPTURE                          REF R2
      395 CAPTURE                          VAL R0
      396 CAPTURE                          UPVAL U30
      397 CAPTURE                          UPVAL U0
      398 CAPTURE                          UPVAL U31
      399 SETTABLEKS                       R21 R20 K22 ["OnItemClicked"]
      401 SETLIST                          R12 R13 8 [1]
      403 CALL                             R10 2 1
      404 MOVE                             R6 R10
      405 DUPTABLE                         R10 K57 [{"Id", "Children"}]
      406 LOADK                            R11 K0 ["StyleRule"]
      407 SETTABLEKS                       R11 R10 K18 ["Id"]
      409 SETTABLEKS                       R6 R10 K30 ["Children"]
      411 GETUPVAL                         R12 3
      412 GETTABLEKS                       R11 R12 K58 ["trackClicks"]
      414 MOVE                             R12 R10
      415 GETTABLEKS                       R13 R1 K59 ["Telemetry"]
      417 CALL                             R11 2 0
      418 GETUPVAL                         R12 3
      419 GETTABLEKS                       R11 R12 K60 ["showContextMenu"]
      421 GETTABLEKS                       R12 R1 K61 ["Plugin"]
      423 MOVE                             R13 R10
      424 CALL                             R11 2 0
      425 CLOSEUPVALS                      R2
      426 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          UPVAL U16
       20 CAPTURE                          UPVAL U17
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U18
       23 CAPTURE                          UPVAL U19
       24 CAPTURE                          UPVAL U20
       25 CAPTURE                          UPVAL U21
       26 CAPTURE                          UPVAL U22
       27 CAPTURE                          UPVAL U23
       28 CAPTURE                          UPVAL U24
       29 CAPTURE                          UPVAL U25
       30 CAPTURE                          UPVAL U26
       31 CAPTURE                          UPVAL U27
       32 CAPTURE                          UPVAL U28
       33 RETURN                           R3 1

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
       65 GETIMPORT                        R7 K4 [require]
       67 GETTABLEKS                       R10 R0 K5 ["Src"]
       69 GETTABLEKS                       R9 R10 K8 ["Util"]
       71 GETTABLEKS                       R8 R9 K15 ["TransitionParamUtil"]
       73 CALL                             R7 1 1
       74 GETTABLEKS                       R9 R0 K5 ["Src"]
       76 GETTABLEKS                       R8 R9 K16 ["Actions"]
       78 GETIMPORT                        R9 K4 [require]
       80 GETTABLEKS                       R11 R8 K17 ["Clipboard"]
       82 GETTABLEKS                       R10 R11 K18 ["CopyInstancesToClipboard"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K4 [require]
       87 GETTABLEKS                       R12 R8 K17 ["Clipboard"]
       89 GETTABLEKS                       R11 R12 K19 ["CopyInstanceToClipboard"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K4 [require]
       94 GETTABLEKS                       R13 R8 K20 ["Window"]
       96 GETTABLEKS                       R12 R13 K21 ["SetItemsExpanded"]
       98 CALL                             R11 1 1
       99 GETTABLEKS                       R13 R0 K5 ["Src"]
      101 GETTABLEKS                       R12 R13 K22 ["Thunks"]
      103 GETIMPORT                        R13 K4 [require]
      105 GETTABLEKS                       R15 R12 K23 ["Change"]
      107 GETTABLEKS                       R14 R15 K24 ["CreateFolder"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K4 [require]
      112 GETTABLEKS                       R16 R12 K23 ["Change"]
      114 GETTABLEKS                       R15 R16 K25 ["CreateStyleRule"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K4 [require]
      119 GETTABLEKS                       R17 R12 K23 ["Change"]
      121 GETTABLEKS                       R16 R17 K26 ["CreateStyleQuery"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K4 [require]
      126 GETTABLEKS                       R18 R12 K23 ["Change"]
      128 GETTABLEKS                       R17 R18 K27 ["CreateBuiltinStyleQuery"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K4 [require]
      133 GETTABLEKS                       R19 R12 K23 ["Change"]
      135 GETTABLEKS                       R18 R19 K28 ["DeleteInstance"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K4 [require]
      140 GETTABLEKS                       R20 R12 K23 ["Change"]
      142 GETTABLEKS                       R19 R20 K29 ["DuplicateInstance"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K4 [require]
      147 GETTABLEKS                       R21 R12 K23 ["Change"]
      149 GETTABLEKS                       R20 R21 K30 ["PasteInstanceInto"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K4 [require]
      154 GETTABLEKS                       R22 R12 K23 ["Change"]
      156 GETTABLEKS                       R21 R22 K31 ["ShowInstanceInExplorer"]
      158 CALL                             R20 1 1
      159 GETIMPORT                        R21 K4 [require]
      161 GETTABLEKS                       R23 R12 K23 ["Change"]
      163 GETTABLEKS                       R22 R23 K32 ["ChangeStyleRulePriority"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K4 [require]
      168 GETTABLEKS                       R24 R12 K23 ["Change"]
      170 GETTABLEKS                       R23 R24 K33 ["DeleteStyleQuery"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K4 [require]
      175 GETTABLEKS                       R25 R12 K23 ["Change"]
      177 GETTABLEKS                       R24 R25 K34 ["DuplicateStyleQuery"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K4 [require]
      182 GETTABLEKS                       R26 R12 K23 ["Change"]
      184 GETTABLEKS                       R25 R26 K35 ["SetStyleRulePropertyTransition"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K4 [require]
      189 GETTABLEKS                       R27 R0 K36 ["Packages"]
      191 GETTABLEKS                       R26 R27 K37 ["Dash"]
      193 CALL                             R25 1 1
      194 GETTABLEKS                       R26 R25 K38 ["append"]
      196 GETIMPORT                        R27 K4 [require]
      198 GETTABLEKS                       R30 R0 K5 ["Src"]
      200 GETTABLEKS                       R29 R30 K39 ["Flags"]
      202 GETTABLEKS                       R28 R29 K40 ["getFFlagStyleEditorNewRuleRenameFix"]
      204 CALL                             R27 1 1
      205 CALL                             R27 0 1
      206 GETIMPORT                        R28 K4 [require]
      208 GETTABLEKS                       R31 R0 K5 ["Src"]
      210 GETTABLEKS                       R30 R31 K39 ["Flags"]
      212 GETTABLEKS                       R29 R30 K41 ["getFFlagStyleQuery"]
      214 CALL                             R28 1 1
      215 CALL                             R28 0 1
      216 GETIMPORT                        R29 K4 [require]
      218 GETTABLEKS                       R32 R0 K5 ["Src"]
      220 GETTABLEKS                       R31 R32 K39 ["Flags"]
      222 GETTABLEKS                       R30 R31 K42 ["getFFlagStyleEditorBuiltinStyleQuery"]
      224 CALL                             R29 1 1
      225 CALL                             R29 0 1
      226 GETIMPORT                        R30 K4 [require]
      228 GETTABLEKS                       R33 R0 K5 ["Src"]
      230 GETTABLEKS                       R32 R33 K39 ["Flags"]
      232 GETTABLEKS                       R31 R32 K43 ["getFFlagStyleEditorSupportTransitions"]
      234 CALL                             R30 1 1
      235 CALL                             R30 0 1
      236 GETIMPORT                        R31 K4 [require]
      238 GETTABLEKS                       R34 R0 K5 ["Src"]
      240 GETTABLEKS                       R33 R34 K39 ["Flags"]
      242 GETTABLEKS                       R32 R33 K44 ["getFFlagStyleEditorShowDefaultTransitions"]
      244 CALL                             R31 1 1
      245 CALL                             R31 0 1
      246 GETIMPORT                        R32 K4 [require]
      248 GETTABLEKS                       R35 R0 K5 ["Src"]
      250 GETTABLEKS                       R34 R35 K39 ["Flags"]
      252 GETTABLEKS                       R33 R34 K45 ["getFFlagStyleEditorCreateFolder"]
      254 CALL                             R32 1 1
      255 CALL                             R32 0 1
      256 GETIMPORT                        R33 K4 [require]
      258 GETTABLEKS                       R36 R0 K5 ["Src"]
      260 GETTABLEKS                       R35 R36 K39 ["Flags"]
      262 GETTABLEKS                       R34 R35 K46 ["getFFlagStyleEditorTransitionsIcon"]
      264 CALL                             R33 1 1
      265 GETIMPORT                        R34 K4 [require]
      267 GETTABLEKS                       R36 R0 K5 ["Src"]
      269 GETTABLEKS                       R35 R36 K47 ["Types"]
      271 CALL                             R34 1 1
      272 GETIMPORT                        R35 K4 [require]
      274 GETTABLEKS                       R38 R0 K5 ["Src"]
      276 GETTABLEKS                       R37 R38 K22 ["Thunks"]
      278 GETTABLEKS                       R36 R37 K47 ["Types"]
      280 CALL                             R35 1 1
      281 DUPCLOSURE                       R36 K48 [PROTO_11]
      282 CAPTURE                          VAL R28
      283 CAPTURE                          VAL R6
      284 CAPTURE                          VAL R2
      285 CAPTURE                          VAL R32
      286 CAPTURE                          VAL R13
      287 CAPTURE                          VAL R29
      288 CAPTURE                          VAL R16
      289 CAPTURE                          VAL R15
      290 CAPTURE                          VAL R14
      291 CAPTURE                          VAL R27
      292 CAPTURE                          VAL R4
      293 CAPTURE                          VAL R11
      294 CAPTURE                          VAL R30
      295 CAPTURE                          VAL R31
      296 CAPTURE                          VAL R7
      297 CAPTURE                          VAL R33
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R24
      300 CAPTURE                          VAL R26
      301 CAPTURE                          VAL R20
      302 CAPTURE                          VAL R9
      303 CAPTURE                          VAL R10
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R23
      306 CAPTURE                          VAL R18
      307 CAPTURE                          VAL R5
      308 CAPTURE                          VAL R21
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R17
      311 RETURN                           R36 1
