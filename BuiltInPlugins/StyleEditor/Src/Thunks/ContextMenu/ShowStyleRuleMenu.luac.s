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
       25 GETTABLEKS                       R1 R0 K6 ["Data"]
       27 GETTABLEKS                       R1 R1 K7 ["BuiltinCategory"]
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
       70 GETTABLEKS                       R1 R0 K6 ["Data"]
       72 GETTABLEKS                       R1 R1 K10 ["Selector"]
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
       85 GETUPVAL                         R2 11
       86 GETTABLEKS                       R2 R2 K11 ["createItemId"]
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
        3 GETUPVAL                         R5 3
        4 GETTABLEKS                       R5 R5 K0 ["DEFAULT_TRANSITION_NAME"]
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
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["getQueryStyleRulesForPseudo"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Parent"]
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
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["Parent"]
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
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["getQueryTypeFromSelector"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K6 ["Selector"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K7 ["Type"]
       28 GETTABLEKS                       R5 R5 K8 ["Pseudo"]
       30 JUMPIFEQ                         R4 R5 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K7 ["Type"]
       37 GETTABLEKS                       R5 R5 K9 ["Query"]
       39 JUMPIFEQ                         R4 R5 ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 NAMECALL                         R4 R0 K10 ["getState"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R5 R1 K11 ["Localization"]
       48 NEWTABLE                         R6 0 0
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K12 ["getNewSelectorAction"]
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
       81 JUMPIFNOT                        R8 ; [+84]
       82 GETUPVAL                         R8 15
       83 JUMPIFNOT                        R8 ; [+82]
       84 NEWTABLE                         R8 0 0
       86 GETUPVAL                         R11 0
       87 NAMECALL                         R11 R11 K16 ["GetPropertyTransitions"]
       89 CALL                             R11 1 1
       90 GETUPVAL                         R12 16
       91 GETTABLEKS                       R12 R12 K17 ["DEFAULT_TRANSITION_NAME"]
       93 GETTABLE                         R10 R11 R12
       94 JUMPIFEQKNIL                     R10 ; [+2]
       96 LOADB                            R9 0 +1
       97 LOADB                            R9 1
       98 DUPTABLE                         R10 K24 [{["Id"] = "DefaultTransition", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
       99 LOADK                            R13 K25 ["ContextMenu"]
      100 LOADK                            R14 K26 ["New.Transition"]
      101 NAMECALL                         R11 R5 K27 ["getText"]
      103 CALL                             R11 3 1
      104 SETTABLEKS                       R11 R10 K20 ["Text"]
      106 GETUPVAL                         R12 17
      107 CALL                             R12 0 1
      108 JUMPIFNOT                        R12 ; [+5]
      109 GETUPVAL                         R11 18
      110 GETTABLEKS                       R11 R11 K28 ["stylingTransition"]
      112 CALL                             R11 0 1
      113 JUMP                             ; [+4]
      114 GETUPVAL                         R11 18
      115 GETTABLEKS                       R11 R11 K14 ["insert"]
      117 CALL                             R11 0 1
      118 SETTABLEKS                       R11 R10 K21 ["Icon"]
      120 SETTABLEKS                       R9 R10 K22 ["Enabled"]
      122 NEWCLOSURE                       R11 P1
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U19
      125 CAPTURE                          UPVAL U0
      126 CAPTURE                          UPVAL U16
      127 SETTABLEKS                       R11 R10 K23 ["OnItemClicked"]
      129 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
      131 MOVE                             R12 R8
      132 MOVE                             R13 R10
      133 GETIMPORT                        R11 K15 [table.insert]
      135 CALL                             R11 2 0
      136 DUPTABLE                         R11 K32 [{["Id"] = "Insert", ["Text"], ["Icon"], ["Hidden"], ["Children"]}]
      137 LOADK                            R14 K25 ["ContextMenu"]
      138 LOADK                            R15 K29 ["Insert"]
      139 NAMECALL                         R12 R5 K27 ["getText"]
      141 CALL                             R12 3 1
      142 SETTABLEKS                       R12 R11 K20 ["Text"]
      144 GETUPVAL                         R12 18
      145 GETTABLEKS                       R12 R12 K14 ["insert"]
      147 CALL                             R12 0 1
      148 SETTABLEKS                       R12 R11 K21 ["Icon"]
      150 LENGTH                           R13 R8
      151 JUMPIFEQKN                       R13 K33 [0] ; [+2]
      153 LOADB                            R12 0 +1
      154 LOADB                            R12 1
      155 SETTABLEKS                       R12 R11 K30 ["Hidden"]
      157 SETTABLEKS                       R8 R11 K31 ["Children"]
      159 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      161 MOVE                             R13 R6
      162 MOVE                             R14 R11
      163 GETIMPORT                        R12 K15 [table.insert]
      165 CALL                             R12 2 0
      166 GETUPVAL                         R8 3
      167 GETTABLEKS                       R8 R8 K34 ["getRenameAction"]
      169 NEWCLOSURE                       R9 P2
      170 CAPTURE                          UPVAL U20
      171 MOVE                             R10 R5
      172 CALL                             R8 2 1
      173 GETUPVAL                         R10 1
      174 JUMPIFNOT                        R10 ; [+11]
      175 GETTABLEKS                       R11 R4 K35 ["Clipboard"]
      177 GETTABLEKS                       R11 R11 K36 ["Instances"]
      179 LENGTH                           R10 R11
      180 LOADN                            R11 0
      181 JUMPIFLT                         R11 R10 ; [+2]
      183 LOADB                            R9 0 +1
      184 LOADB                            R9 1
      185 JUMP                             ; [+8]
      186 GETTABLEKS                       R10 R4 K35 ["Clipboard"]
      188 GETTABLEKS                       R10 R10 K37 ["DEPRECATED_Instance"]
      190 JUMPIFNOTEQKNIL                  R10 ; [+2]
      192 LOADB                            R9 0 +1
      193 LOADB                            R9 1
      194 GETUPVAL                         R10 21
      195 MOVE                             R11 R6
      196 NEWTABLE                         R12 0 8
      198 MOVE                             R13 R8
      199 DUPTABLE                         R14 K39 [{["Id"] = "ShowInExplorer", ["Text"], ["Icon"], ["OnItemClicked"]}]
      200 LOADK                            R17 K25 ["ContextMenu"]
      201 LOADK                            R18 K38 ["ShowInExplorer"]
      202 NAMECALL                         R15 R5 K27 ["getText"]
      204 CALL                             R15 3 1
      205 SETTABLEKS                       R15 R14 K20 ["Text"]
      207 GETUPVAL                         R15 3
      208 GETTABLEKS                       R15 R15 K40 ["getClassIcon"]
      210 LOADK                            R16 K41 ["ReplicatedStorage"]
      211 CALL                             R15 1 1
      212 SETTABLEKS                       R15 R14 K21 ["Icon"]
      214 NEWCLOSURE                       R15 P3
      215 CAPTURE                          VAL R0
      216 CAPTURE                          UPVAL U22
      217 CAPTURE                          UPVAL U0
      218 SETTABLEKS                       R15 R14 K23 ["OnItemClicked"]
      220 DUPTABLE                         R15 K43 [{["Id"] = "Copy", ["Text"], ["Icon"], ["OnItemClicked"]}]
      221 LOADK                            R18 K25 ["ContextMenu"]
      222 LOADK                            R19 K42 ["Copy"]
      223 NAMECALL                         R16 R5 K27 ["getText"]
      225 CALL                             R16 3 1
      226 SETTABLEKS                       R16 R15 K20 ["Text"]
      228 GETUPVAL                         R16 18
      229 GETTABLEKS                       R16 R16 K44 ["copy"]
      231 CALL                             R16 0 1
      232 SETTABLEKS                       R16 R15 K21 ["Icon"]
      234 NEWCLOSURE                       R16 P4
      235 CAPTURE                          UPVAL U1
      236 CAPTURE                          REF R2
      237 CAPTURE                          UPVAL U2
      238 CAPTURE                          UPVAL U0
      239 CAPTURE                          VAL R0
      240 CAPTURE                          UPVAL U23
      241 CAPTURE                          UPVAL U24
      242 SETTABLEKS                       R16 R15 K23 ["OnItemClicked"]
      244 DUPTABLE                         R16 K46 [{["Id"] = "PasteInto", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
      245 LOADK                            R19 K25 ["ContextMenu"]
      246 LOADK                            R20 K45 ["PasteInto"]
      247 NAMECALL                         R17 R5 K27 ["getText"]
      249 CALL                             R17 3 1
      250 SETTABLEKS                       R17 R16 K20 ["Text"]
      252 GETUPVAL                         R17 18
      253 GETTABLEKS                       R17 R17 K47 ["paste"]
      255 CALL                             R17 0 1
      256 SETTABLEKS                       R17 R16 K21 ["Icon"]
      258 SETTABLEKS                       R9 R16 K22 ["Enabled"]
      260 NEWCLOSURE                       R17 P5
      261 CAPTURE                          VAL R0
      262 CAPTURE                          UPVAL U25
      263 CAPTURE                          UPVAL U0
      264 SETTABLEKS                       R17 R16 K23 ["OnItemClicked"]
      266 DUPTABLE                         R17 K49 [{["Id"] = "Duplicate", ["Text"], ["Icon"], ["OnItemClicked"]}]
      267 LOADK                            R20 K25 ["ContextMenu"]
      268 LOADK                            R21 K48 ["Duplicate"]
      269 NAMECALL                         R18 R5 K27 ["getText"]
      271 CALL                             R18 3 1
      272 SETTABLEKS                       R18 R17 K20 ["Text"]
      274 GETUPVAL                         R18 18
      275 GETTABLEKS                       R18 R18 K50 ["duplicate"]
      277 CALL                             R18 0 1
      278 SETTABLEKS                       R18 R17 K21 ["Icon"]
      280 NEWCLOSURE                       R18 P6
      281 CAPTURE                          UPVAL U0
      282 CAPTURE                          UPVAL U1
      283 CAPTURE                          REF R2
      284 CAPTURE                          VAL R0
      285 CAPTURE                          UPVAL U26
      286 CAPTURE                          UPVAL U27
      287 SETTABLEKS                       R18 R17 K23 ["OnItemClicked"]
      289 DUPTABLE                         R18 K52 [{["Id"] = "IncreasePriority", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
      290 LOADK                            R21 K25 ["ContextMenu"]
      291 LOADK                            R22 K53 ["IncreaseStyleRulePriority"]
      292 NAMECALL                         R19 R5 K27 ["getText"]
      294 CALL                             R19 3 1
      295 SETTABLEKS                       R19 R18 K20 ["Text"]
      297 GETUPVAL                         R19 18
      298 GETTABLEKS                       R19 R19 K54 ["arrowUp"]
      300 CALL                             R19 0 1
      301 SETTABLEKS                       R19 R18 K21 ["Icon"]
      303 NOT                              R19 R3
      304 JUMPIFNOT                        R19 ; [+7]
      305 GETUPVAL                         R19 28
      306 GETTABLEKS                       R19 R19 K55 ["changeStyleRulePriority"]
      308 GETUPVAL                         R20 0
      309 LOADB                            R21 1
      310 LOADB                            R22 1
      311 CALL                             R19 3 1
      312 SETTABLEKS                       R19 R18 K22 ["Enabled"]
      314 NEWCLOSURE                       R19 P7
      315 CAPTURE                          VAL R0
      316 CAPTURE                          UPVAL U29
      317 CAPTURE                          UPVAL U0
      318 SETTABLEKS                       R19 R18 K23 ["OnItemClicked"]
      320 DUPTABLE                         R19 K57 [{["Id"] = "DecreasePriority", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
      321 LOADK                            R22 K25 ["ContextMenu"]
      322 LOADK                            R23 K58 ["DecreaseStyleRulePriority"]
      323 NAMECALL                         R20 R5 K27 ["getText"]
      325 CALL                             R20 3 1
      326 SETTABLEKS                       R20 R19 K20 ["Text"]
      328 GETUPVAL                         R20 18
      329 GETTABLEKS                       R20 R20 K59 ["arrowDown"]
      331 CALL                             R20 0 1
      332 SETTABLEKS                       R20 R19 K21 ["Icon"]
      334 NOT                              R20 R3
      335 JUMPIFNOT                        R20 ; [+7]
      336 GETUPVAL                         R20 28
      337 GETTABLEKS                       R20 R20 K55 ["changeStyleRulePriority"]
      339 GETUPVAL                         R21 0
      340 LOADB                            R22 0
      341 LOADB                            R23 1
      342 CALL                             R20 3 1
      343 SETTABLEKS                       R20 R19 K22 ["Enabled"]
      345 NEWCLOSURE                       R20 P8
      346 CAPTURE                          VAL R0
      347 CAPTURE                          UPVAL U29
      348 CAPTURE                          UPVAL U0
      349 SETTABLEKS                       R20 R19 K23 ["OnItemClicked"]
      351 DUPTABLE                         R20 K61 [{["Id"] = "Delete", ["Text"], ["Icon"], ["OnItemClicked"]}]
      352 LOADK                            R23 K25 ["ContextMenu"]
      353 LOADK                            R24 K60 ["Delete"]
      354 NAMECALL                         R21 R5 K27 ["getText"]
      356 CALL                             R21 3 1
      357 SETTABLEKS                       R21 R20 K20 ["Text"]
      359 GETUPVAL                         R21 18
      360 GETTABLEKS                       R21 R21 K62 ["delete"]
      362 CALL                             R21 0 1
      363 SETTABLEKS                       R21 R20 K21 ["Icon"]
      365 NEWCLOSURE                       R21 P9
      366 CAPTURE                          UPVAL U1
      367 CAPTURE                          REF R2
      368 CAPTURE                          VAL R0
      369 CAPTURE                          UPVAL U30
      370 CAPTURE                          UPVAL U0
      371 CAPTURE                          UPVAL U31
      372 SETTABLEKS                       R21 R20 K23 ["OnItemClicked"]
      374 SETLIST                          R12 R13 8 [1]
      376 CALL                             R10 2 1
      377 MOVE                             R6 R10
      378 DUPTABLE                         R10 K63 [{["Id"] = "StyleRule", ["Children"]}]
      379 SETTABLEKS                       R6 R10 K31 ["Children"]
      381 GETUPVAL                         R11 3
      382 GETTABLEKS                       R11 R11 K64 ["trackClicks"]
      384 MOVE                             R12 R10
      385 GETTABLEKS                       R13 R1 K65 ["Telemetry"]
      387 CALL                             R11 2 0
      388 GETUPVAL                         R11 3
      389 GETTABLEKS                       R11 R11 K66 ["showContextMenu"]
      391 GETTABLEKS                       R12 R1 K67 ["Plugin"]
      393 MOVE                             R13 R10
      394 CALL                             R11 2 0
      395 CLOSEUPVALS                      R2
      396 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Util"]
       26 GETTABLEKS                       R3 R3 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K10 ["Resources"]
       35 GETTABLEKS                       R4 R4 K11 ["ModernIcons"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K8 ["Util"]
       44 GETTABLEKS                       R5 R5 K12 ["TreeTableHelpers"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R6 R0 K5 ["Src"]
       51 GETTABLEKS                       R6 R6 K8 ["Util"]
       53 GETTABLEKS                       R6 R6 K13 ["StyleRuleHelpers"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R7 R0 K5 ["Src"]
       60 GETTABLEKS                       R7 R7 K8 ["Util"]
       62 GETTABLEKS                       R7 R7 K14 ["StyleQueryHelpers"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K4 [require]
       67 GETTABLEKS                       R8 R0 K5 ["Src"]
       69 GETTABLEKS                       R8 R8 K8 ["Util"]
       71 GETTABLEKS                       R8 R8 K15 ["TransitionParamUtil"]
       73 CALL                             R7 1 1
       74 GETTABLEKS                       R8 R0 K5 ["Src"]
       76 GETTABLEKS                       R8 R8 K16 ["Actions"]
       78 GETIMPORT                        R9 K4 [require]
       80 GETTABLEKS                       R10 R8 K17 ["Clipboard"]
       82 GETTABLEKS                       R10 R10 K18 ["CopyInstancesToClipboard"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K4 [require]
       87 GETTABLEKS                       R11 R8 K17 ["Clipboard"]
       89 GETTABLEKS                       R11 R11 K19 ["CopyInstanceToClipboard"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K4 [require]
       94 GETTABLEKS                       R12 R8 K20 ["Window"]
       96 GETTABLEKS                       R12 R12 K21 ["SetItemsExpanded"]
       98 CALL                             R11 1 1
       99 GETTABLEKS                       R12 R0 K5 ["Src"]
      101 GETTABLEKS                       R12 R12 K22 ["Thunks"]
      103 GETIMPORT                        R13 K4 [require]
      105 GETTABLEKS                       R14 R12 K23 ["Change"]
      107 GETTABLEKS                       R14 R14 K24 ["CreateFolder"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K4 [require]
      112 GETTABLEKS                       R15 R12 K23 ["Change"]
      114 GETTABLEKS                       R15 R15 K25 ["CreateStyleRule"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K4 [require]
      119 GETTABLEKS                       R16 R12 K23 ["Change"]
      121 GETTABLEKS                       R16 R16 K26 ["CreateStyleQuery"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K4 [require]
      126 GETTABLEKS                       R17 R12 K23 ["Change"]
      128 GETTABLEKS                       R17 R17 K27 ["CreateBuiltinStyleQuery"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K4 [require]
      133 GETTABLEKS                       R18 R12 K23 ["Change"]
      135 GETTABLEKS                       R18 R18 K28 ["DeleteInstance"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K4 [require]
      140 GETTABLEKS                       R19 R12 K23 ["Change"]
      142 GETTABLEKS                       R19 R19 K29 ["DuplicateInstance"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K4 [require]
      147 GETTABLEKS                       R20 R12 K23 ["Change"]
      149 GETTABLEKS                       R20 R20 K30 ["PasteInstanceInto"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K4 [require]
      154 GETTABLEKS                       R21 R12 K23 ["Change"]
      156 GETTABLEKS                       R21 R21 K31 ["ShowInstanceInExplorer"]
      158 CALL                             R20 1 1
      159 GETIMPORT                        R21 K4 [require]
      161 GETTABLEKS                       R22 R12 K23 ["Change"]
      163 GETTABLEKS                       R22 R22 K32 ["ChangeStyleRulePriority"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K4 [require]
      168 GETTABLEKS                       R23 R12 K23 ["Change"]
      170 GETTABLEKS                       R23 R23 K33 ["DeleteStyleQuery"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K4 [require]
      175 GETTABLEKS                       R24 R12 K23 ["Change"]
      177 GETTABLEKS                       R24 R24 K34 ["DuplicateStyleQuery"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K4 [require]
      182 GETTABLEKS                       R25 R12 K23 ["Change"]
      184 GETTABLEKS                       R25 R25 K35 ["SetStyleRulePropertyTransition"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K4 [require]
      189 GETTABLEKS                       R26 R0 K36 ["Packages"]
      191 GETTABLEKS                       R26 R26 K37 ["Dash"]
      193 CALL                             R25 1 1
      194 GETTABLEKS                       R26 R25 K38 ["append"]
      196 GETIMPORT                        R27 K4 [require]
      198 GETTABLEKS                       R28 R0 K5 ["Src"]
      200 GETTABLEKS                       R28 R28 K39 ["Flags"]
      202 GETTABLEKS                       R28 R28 K40 ["getFFlagStyleEditorNewRuleRenameFix"]
      204 CALL                             R27 1 1
      205 CALL                             R27 0 1
      206 GETIMPORT                        R28 K4 [require]
      208 GETTABLEKS                       R29 R0 K5 ["Src"]
      210 GETTABLEKS                       R29 R29 K39 ["Flags"]
      212 GETTABLEKS                       R29 R29 K41 ["getFFlagStyleQuery"]
      214 CALL                             R28 1 1
      215 CALL                             R28 0 1
      216 GETIMPORT                        R29 K4 [require]
      218 GETTABLEKS                       R30 R0 K5 ["Src"]
      220 GETTABLEKS                       R30 R30 K39 ["Flags"]
      222 GETTABLEKS                       R30 R30 K42 ["getFFlagStyleEditorBuiltinStyleQuery"]
      224 CALL                             R29 1 1
      225 CALL                             R29 0 1
      226 GETIMPORT                        R30 K4 [require]
      228 GETTABLEKS                       R31 R0 K5 ["Src"]
      230 GETTABLEKS                       R31 R31 K39 ["Flags"]
      232 GETTABLEKS                       R31 R31 K43 ["getFFlagStyleEditorSupportTransitions"]
      234 CALL                             R30 1 1
      235 CALL                             R30 0 1
      236 GETIMPORT                        R31 K4 [require]
      238 GETTABLEKS                       R32 R0 K5 ["Src"]
      240 GETTABLEKS                       R32 R32 K39 ["Flags"]
      242 GETTABLEKS                       R32 R32 K44 ["getFFlagStyleEditorShowDefaultTransitions"]
      244 CALL                             R31 1 1
      245 CALL                             R31 0 1
      246 GETIMPORT                        R32 K4 [require]
      248 GETTABLEKS                       R33 R0 K5 ["Src"]
      250 GETTABLEKS                       R33 R33 K39 ["Flags"]
      252 GETTABLEKS                       R33 R33 K45 ["getFFlagStyleEditorCreateFolder"]
      254 CALL                             R32 1 1
      255 CALL                             R32 0 1
      256 GETIMPORT                        R33 K4 [require]
      258 GETTABLEKS                       R34 R0 K5 ["Src"]
      260 GETTABLEKS                       R34 R34 K39 ["Flags"]
      262 GETTABLEKS                       R34 R34 K46 ["getFFlagStyleEditorTransitionsIcon"]
      264 CALL                             R33 1 1
      265 GETIMPORT                        R34 K4 [require]
      267 GETTABLEKS                       R35 R0 K5 ["Src"]
      269 GETTABLEKS                       R35 R35 K47 ["Types"]
      271 CALL                             R34 1 1
      272 GETIMPORT                        R35 K4 [require]
      274 GETTABLEKS                       R36 R0 K5 ["Src"]
      276 GETTABLEKS                       R36 R36 K22 ["Thunks"]
      278 GETTABLEKS                       R36 R36 K47 ["Types"]
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
