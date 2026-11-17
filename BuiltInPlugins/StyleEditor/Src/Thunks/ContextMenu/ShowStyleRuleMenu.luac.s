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
       83 RETURN                           R0 0

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
       65 MOVE                             R10 R5
       66 CALL                             R7 3 1
       67 GETUPVAL                         R8 1
       68 JUMPIFNOT                        R8 ; [+1]
       69 JUMPIF                           R2 ; [+7]
       70 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       72 MOVE                             R9 R6
       73 MOVE                             R10 R7
       74 GETIMPORT                        R8 K15 [table.insert]
       76 CALL                             R8 2 0
       77 GETUPVAL                         R8 11
       78 JUMPIFNOT                        R8 ; [+84]
       79 GETUPVAL                         R8 12
       80 JUMPIFNOT                        R8 ; [+82]
       81 NEWTABLE                         R8 0 0
       83 GETUPVAL                         R11 0
       84 NAMECALL                         R11 R11 K16 ["GetPropertyTransitions"]
       86 CALL                             R11 1 1
       87 GETUPVAL                         R12 13
       88 GETTABLEKS                       R12 R12 K17 ["DEFAULT_TRANSITION_NAME"]
       90 GETTABLE                         R10 R11 R12
       91 JUMPIFEQKNIL                     R10 ; [+2]
       93 LOADB                            R9 0 +1
       94 LOADB                            R9 1
       95 DUPTABLE                         R10 K24 [{["Id"] = "DefaultTransition", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
       96 LOADK                            R13 K25 ["ContextMenu"]
       97 LOADK                            R14 K26 ["New.Transition"]
       98 NAMECALL                         R11 R5 K27 ["getText"]
      100 CALL                             R11 3 1
      101 SETTABLEKS                       R11 R10 K20 ["Text"]
      103 GETUPVAL                         R12 14
      104 CALL                             R12 0 1
      105 JUMPIFNOT                        R12 ; [+5]
      106 GETUPVAL                         R11 15
      107 GETTABLEKS                       R11 R11 K28 ["stylingTransition"]
      109 CALL                             R11 0 1
      110 JUMP                             ; [+4]
      111 GETUPVAL                         R11 15
      112 GETTABLEKS                       R11 R11 K14 ["insert"]
      114 CALL                             R11 0 1
      115 SETTABLEKS                       R11 R10 K21 ["Icon"]
      117 SETTABLEKS                       R9 R10 K22 ["Enabled"]
      119 NEWCLOSURE                       R11 P1
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U16
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          UPVAL U13
      124 SETTABLEKS                       R11 R10 K23 ["OnItemClicked"]
      126 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
      128 MOVE                             R12 R8
      129 MOVE                             R13 R10
      130 GETIMPORT                        R11 K15 [table.insert]
      132 CALL                             R11 2 0
      133 DUPTABLE                         R11 K32 [{["Id"] = "Insert", ["Text"], ["Icon"], ["Hidden"], ["Children"]}]
      134 LOADK                            R14 K25 ["ContextMenu"]
      135 LOADK                            R15 K29 ["Insert"]
      136 NAMECALL                         R12 R5 K27 ["getText"]
      138 CALL                             R12 3 1
      139 SETTABLEKS                       R12 R11 K20 ["Text"]
      141 GETUPVAL                         R12 15
      142 GETTABLEKS                       R12 R12 K14 ["insert"]
      144 CALL                             R12 0 1
      145 SETTABLEKS                       R12 R11 K21 ["Icon"]
      147 LENGTH                           R13 R8
      148 JUMPIFEQKN                       R13 K33 [0] ; [+2]
      150 LOADB                            R12 0 +1
      151 LOADB                            R12 1
      152 SETTABLEKS                       R12 R11 K30 ["Hidden"]
      154 SETTABLEKS                       R8 R11 K31 ["Children"]
      156 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      158 MOVE                             R13 R6
      159 MOVE                             R14 R11
      160 GETIMPORT                        R12 K15 [table.insert]
      162 CALL                             R12 2 0
      163 GETUPVAL                         R8 3
      164 GETTABLEKS                       R8 R8 K34 ["getRenameAction"]
      166 NEWCLOSURE                       R9 P2
      167 CAPTURE                          UPVAL U17
      168 MOVE                             R10 R5
      169 CALL                             R8 2 1
      170 GETUPVAL                         R10 1
      171 JUMPIFNOT                        R10 ; [+11]
      172 GETTABLEKS                       R11 R4 K35 ["Clipboard"]
      174 GETTABLEKS                       R11 R11 K36 ["Instances"]
      176 LENGTH                           R10 R11
      177 LOADN                            R11 0
      178 JUMPIFLT                         R11 R10 ; [+2]
      180 LOADB                            R9 0 +1
      181 LOADB                            R9 1
      182 JUMP                             ; [+8]
      183 GETTABLEKS                       R10 R4 K35 ["Clipboard"]
      185 GETTABLEKS                       R10 R10 K37 ["DEPRECATED_Instance"]
      187 JUMPIFNOTEQKNIL                  R10 ; [+2]
      189 LOADB                            R9 0 +1
      190 LOADB                            R9 1
      191 GETUPVAL                         R10 18
      192 MOVE                             R11 R6
      193 NEWTABLE                         R12 0 8
      195 MOVE                             R13 R8
      196 DUPTABLE                         R14 K39 [{["Id"] = "ShowInExplorer", ["Text"], ["Icon"], ["OnItemClicked"]}]
      197 LOADK                            R17 K25 ["ContextMenu"]
      198 LOADK                            R18 K38 ["ShowInExplorer"]
      199 NAMECALL                         R15 R5 K27 ["getText"]
      201 CALL                             R15 3 1
      202 SETTABLEKS                       R15 R14 K20 ["Text"]
      204 GETUPVAL                         R15 3
      205 GETTABLEKS                       R15 R15 K40 ["getClassIcon"]
      207 LOADK                            R16 K41 ["ReplicatedStorage"]
      208 CALL                             R15 1 1
      209 SETTABLEKS                       R15 R14 K21 ["Icon"]
      211 NEWCLOSURE                       R15 P3
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U19
      214 CAPTURE                          UPVAL U0
      215 SETTABLEKS                       R15 R14 K23 ["OnItemClicked"]
      217 DUPTABLE                         R15 K43 [{["Id"] = "Copy", ["Text"], ["Icon"], ["OnItemClicked"]}]
      218 LOADK                            R18 K25 ["ContextMenu"]
      219 LOADK                            R19 K42 ["Copy"]
      220 NAMECALL                         R16 R5 K27 ["getText"]
      222 CALL                             R16 3 1
      223 SETTABLEKS                       R16 R15 K20 ["Text"]
      225 GETUPVAL                         R16 15
      226 GETTABLEKS                       R16 R16 K44 ["copy"]
      228 CALL                             R16 0 1
      229 SETTABLEKS                       R16 R15 K21 ["Icon"]
      231 NEWCLOSURE                       R16 P4
      232 CAPTURE                          UPVAL U1
      233 CAPTURE                          REF R2
      234 CAPTURE                          UPVAL U2
      235 CAPTURE                          UPVAL U0
      236 CAPTURE                          VAL R0
      237 CAPTURE                          UPVAL U20
      238 CAPTURE                          UPVAL U21
      239 SETTABLEKS                       R16 R15 K23 ["OnItemClicked"]
      241 DUPTABLE                         R16 K46 [{["Id"] = "PasteInto", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
      242 LOADK                            R19 K25 ["ContextMenu"]
      243 LOADK                            R20 K45 ["PasteInto"]
      244 NAMECALL                         R17 R5 K27 ["getText"]
      246 CALL                             R17 3 1
      247 SETTABLEKS                       R17 R16 K20 ["Text"]
      249 GETUPVAL                         R17 15
      250 GETTABLEKS                       R17 R17 K47 ["paste"]
      252 CALL                             R17 0 1
      253 SETTABLEKS                       R17 R16 K21 ["Icon"]
      255 SETTABLEKS                       R9 R16 K22 ["Enabled"]
      257 NEWCLOSURE                       R17 P5
      258 CAPTURE                          VAL R0
      259 CAPTURE                          UPVAL U22
      260 CAPTURE                          UPVAL U0
      261 SETTABLEKS                       R17 R16 K23 ["OnItemClicked"]
      263 DUPTABLE                         R17 K49 [{["Id"] = "Duplicate", ["Text"], ["Icon"], ["OnItemClicked"]}]
      264 LOADK                            R20 K25 ["ContextMenu"]
      265 LOADK                            R21 K48 ["Duplicate"]
      266 NAMECALL                         R18 R5 K27 ["getText"]
      268 CALL                             R18 3 1
      269 SETTABLEKS                       R18 R17 K20 ["Text"]
      271 GETUPVAL                         R18 15
      272 GETTABLEKS                       R18 R18 K50 ["duplicate"]
      274 CALL                             R18 0 1
      275 SETTABLEKS                       R18 R17 K21 ["Icon"]
      277 NEWCLOSURE                       R18 P6
      278 CAPTURE                          UPVAL U0
      279 CAPTURE                          UPVAL U1
      280 CAPTURE                          REF R2
      281 CAPTURE                          VAL R0
      282 CAPTURE                          UPVAL U23
      283 CAPTURE                          UPVAL U24
      284 SETTABLEKS                       R18 R17 K23 ["OnItemClicked"]
      286 DUPTABLE                         R18 K52 [{["Id"] = "IncreasePriority", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
      287 LOADK                            R21 K25 ["ContextMenu"]
      288 LOADK                            R22 K53 ["IncreaseStyleRulePriority"]
      289 NAMECALL                         R19 R5 K27 ["getText"]
      291 CALL                             R19 3 1
      292 SETTABLEKS                       R19 R18 K20 ["Text"]
      294 GETUPVAL                         R19 15
      295 GETTABLEKS                       R19 R19 K54 ["arrowUp"]
      297 CALL                             R19 0 1
      298 SETTABLEKS                       R19 R18 K21 ["Icon"]
      300 NOT                              R19 R3
      301 JUMPIFNOT                        R19 ; [+7]
      302 GETUPVAL                         R19 25
      303 GETTABLEKS                       R19 R19 K55 ["changeStyleRulePriority"]
      305 GETUPVAL                         R20 0
      306 LOADB                            R21 1
      307 LOADB                            R22 1
      308 CALL                             R19 3 1
      309 SETTABLEKS                       R19 R18 K22 ["Enabled"]
      311 NEWCLOSURE                       R19 P7
      312 CAPTURE                          VAL R0
      313 CAPTURE                          UPVAL U26
      314 CAPTURE                          UPVAL U0
      315 SETTABLEKS                       R19 R18 K23 ["OnItemClicked"]
      317 DUPTABLE                         R19 K57 [{["Id"] = "DecreasePriority", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
      318 LOADK                            R22 K25 ["ContextMenu"]
      319 LOADK                            R23 K58 ["DecreaseStyleRulePriority"]
      320 NAMECALL                         R20 R5 K27 ["getText"]
      322 CALL                             R20 3 1
      323 SETTABLEKS                       R20 R19 K20 ["Text"]
      325 GETUPVAL                         R20 15
      326 GETTABLEKS                       R20 R20 K59 ["arrowDown"]
      328 CALL                             R20 0 1
      329 SETTABLEKS                       R20 R19 K21 ["Icon"]
      331 NOT                              R20 R3
      332 JUMPIFNOT                        R20 ; [+7]
      333 GETUPVAL                         R20 25
      334 GETTABLEKS                       R20 R20 K55 ["changeStyleRulePriority"]
      336 GETUPVAL                         R21 0
      337 LOADB                            R22 0
      338 LOADB                            R23 1
      339 CALL                             R20 3 1
      340 SETTABLEKS                       R20 R19 K22 ["Enabled"]
      342 NEWCLOSURE                       R20 P8
      343 CAPTURE                          VAL R0
      344 CAPTURE                          UPVAL U26
      345 CAPTURE                          UPVAL U0
      346 SETTABLEKS                       R20 R19 K23 ["OnItemClicked"]
      348 DUPTABLE                         R20 K61 [{["Id"] = "Delete", ["Text"], ["Icon"], ["OnItemClicked"]}]
      349 LOADK                            R23 K25 ["ContextMenu"]
      350 LOADK                            R24 K60 ["Delete"]
      351 NAMECALL                         R21 R5 K27 ["getText"]
      353 CALL                             R21 3 1
      354 SETTABLEKS                       R21 R20 K20 ["Text"]
      356 GETUPVAL                         R21 15
      357 GETTABLEKS                       R21 R21 K62 ["delete"]
      359 CALL                             R21 0 1
      360 SETTABLEKS                       R21 R20 K21 ["Icon"]
      362 NEWCLOSURE                       R21 P9
      363 CAPTURE                          UPVAL U1
      364 CAPTURE                          REF R2
      365 CAPTURE                          VAL R0
      366 CAPTURE                          UPVAL U27
      367 CAPTURE                          UPVAL U0
      368 CAPTURE                          UPVAL U28
      369 SETTABLEKS                       R21 R20 K23 ["OnItemClicked"]
      371 SETLIST                          R12 R13 8 [1]
      373 CALL                             R10 2 1
      374 MOVE                             R6 R10
      375 DUPTABLE                         R10 K63 [{["Id"] = "StyleRule", ["Children"]}]
      376 SETTABLEKS                       R6 R10 K31 ["Children"]
      378 GETUPVAL                         R11 3
      379 GETTABLEKS                       R11 R11 K64 ["trackClicks"]
      381 MOVE                             R12 R10
      382 GETTABLEKS                       R13 R1 K65 ["Telemetry"]
      384 CALL                             R11 2 0
      385 GETUPVAL                         R11 3
      386 GETTABLEKS                       R11 R11 K66 ["showContextMenu"]
      388 GETTABLEKS                       R12 R1 K67 ["Plugin"]
      390 MOVE                             R13 R10
      391 CALL                             R11 2 0
      392 CLOSEUPVALS                      R2
      393 RETURN                           R0 0

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
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U15
       20 CAPTURE                          UPVAL U16
       21 CAPTURE                          UPVAL U17
       22 CAPTURE                          UPVAL U18
       23 CAPTURE                          UPVAL U19
       24 CAPTURE                          UPVAL U20
       25 CAPTURE                          UPVAL U21
       26 CAPTURE                          UPVAL U22
       27 CAPTURE                          UPVAL U23
       28 CAPTURE                          UPVAL U24
       29 CAPTURE                          UPVAL U25
       30 RETURN                           R3 1

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
       44 GETTABLEKS                       R5 R5 K12 ["StyleRuleHelpers"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R6 R0 K5 ["Src"]
       51 GETTABLEKS                       R6 R6 K8 ["Util"]
       53 GETTABLEKS                       R6 R6 K13 ["StyleQueryHelpers"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R7 R0 K5 ["Src"]
       60 GETTABLEKS                       R7 R7 K8 ["Util"]
       62 GETTABLEKS                       R7 R7 K14 ["TransitionParamUtil"]
       64 CALL                             R6 1 1
       65 GETTABLEKS                       R7 R0 K5 ["Src"]
       67 GETTABLEKS                       R7 R7 K15 ["Actions"]
       69 GETIMPORT                        R8 K4 [require]
       71 GETTABLEKS                       R9 R7 K16 ["Clipboard"]
       73 GETTABLEKS                       R9 R9 K17 ["CopyInstancesToClipboard"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K4 [require]
       78 GETTABLEKS                       R10 R7 K16 ["Clipboard"]
       80 GETTABLEKS                       R10 R10 K18 ["CopyInstanceToClipboard"]
       82 CALL                             R9 1 1
       83 GETTABLEKS                       R10 R0 K5 ["Src"]
       85 GETTABLEKS                       R10 R10 K19 ["Thunks"]
       87 GETIMPORT                        R11 K4 [require]
       89 GETTABLEKS                       R12 R10 K20 ["Change"]
       91 GETTABLEKS                       R12 R12 K21 ["CreateFolder"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K4 [require]
       96 GETTABLEKS                       R13 R10 K20 ["Change"]
       98 GETTABLEKS                       R13 R13 K22 ["CreateStyleRule"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K4 [require]
      103 GETTABLEKS                       R14 R10 K20 ["Change"]
      105 GETTABLEKS                       R14 R14 K23 ["CreateStyleQuery"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K4 [require]
      110 GETTABLEKS                       R15 R10 K20 ["Change"]
      112 GETTABLEKS                       R15 R15 K24 ["CreateBuiltinStyleQuery"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K4 [require]
      117 GETTABLEKS                       R16 R10 K20 ["Change"]
      119 GETTABLEKS                       R16 R16 K25 ["DeleteInstance"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K4 [require]
      124 GETTABLEKS                       R17 R10 K20 ["Change"]
      126 GETTABLEKS                       R17 R17 K26 ["DuplicateInstance"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K4 [require]
      131 GETTABLEKS                       R18 R10 K20 ["Change"]
      133 GETTABLEKS                       R18 R18 K27 ["PasteInstanceInto"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K4 [require]
      138 GETTABLEKS                       R19 R10 K20 ["Change"]
      140 GETTABLEKS                       R19 R19 K28 ["ShowInstanceInExplorer"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K4 [require]
      145 GETTABLEKS                       R20 R10 K20 ["Change"]
      147 GETTABLEKS                       R20 R20 K29 ["ChangeStyleRulePriority"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K4 [require]
      152 GETTABLEKS                       R21 R10 K20 ["Change"]
      154 GETTABLEKS                       R21 R21 K30 ["DeleteStyleQuery"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K4 [require]
      159 GETTABLEKS                       R22 R10 K20 ["Change"]
      161 GETTABLEKS                       R22 R22 K31 ["DuplicateStyleQuery"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K4 [require]
      166 GETTABLEKS                       R23 R10 K20 ["Change"]
      168 GETTABLEKS                       R23 R23 K32 ["SetStyleRulePropertyTransition"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K4 [require]
      173 GETTABLEKS                       R24 R0 K33 ["Packages"]
      175 GETTABLEKS                       R24 R24 K34 ["Dash"]
      177 CALL                             R23 1 1
      178 GETTABLEKS                       R24 R23 K35 ["append"]
      180 GETIMPORT                        R25 K4 [require]
      182 GETTABLEKS                       R26 R0 K5 ["Src"]
      184 GETTABLEKS                       R26 R26 K36 ["Flags"]
      186 GETTABLEKS                       R26 R26 K37 ["getFFlagStyleQuery"]
      188 CALL                             R25 1 1
      189 CALL                             R25 0 1
      190 GETIMPORT                        R26 K4 [require]
      192 GETTABLEKS                       R27 R0 K5 ["Src"]
      194 GETTABLEKS                       R27 R27 K36 ["Flags"]
      196 GETTABLEKS                       R27 R27 K38 ["getFFlagStyleEditorBuiltinStyleQuery"]
      198 CALL                             R26 1 1
      199 CALL                             R26 0 1
      200 GETIMPORT                        R27 K4 [require]
      202 GETTABLEKS                       R28 R0 K5 ["Src"]
      204 GETTABLEKS                       R28 R28 K36 ["Flags"]
      206 GETTABLEKS                       R28 R28 K39 ["getFFlagStyleEditorSupportTransitions"]
      208 CALL                             R27 1 1
      209 CALL                             R27 0 1
      210 GETIMPORT                        R28 K4 [require]
      212 GETTABLEKS                       R29 R0 K5 ["Src"]
      214 GETTABLEKS                       R29 R29 K36 ["Flags"]
      216 GETTABLEKS                       R29 R29 K40 ["getFFlagStyleEditorShowDefaultTransitions"]
      218 CALL                             R28 1 1
      219 CALL                             R28 0 1
      220 GETIMPORT                        R29 K4 [require]
      222 GETTABLEKS                       R30 R0 K5 ["Src"]
      224 GETTABLEKS                       R30 R30 K36 ["Flags"]
      226 GETTABLEKS                       R30 R30 K41 ["getFFlagStyleEditorCreateFolder"]
      228 CALL                             R29 1 1
      229 CALL                             R29 0 1
      230 GETIMPORT                        R30 K4 [require]
      232 GETTABLEKS                       R31 R0 K5 ["Src"]
      234 GETTABLEKS                       R31 R31 K36 ["Flags"]
      236 GETTABLEKS                       R31 R31 K42 ["getFFlagStyleEditorTransitionsIcon"]
      238 CALL                             R30 1 1
      239 GETIMPORT                        R31 K4 [require]
      241 GETTABLEKS                       R32 R0 K5 ["Src"]
      243 GETTABLEKS                       R32 R32 K43 ["Types"]
      245 CALL                             R31 1 1
      246 GETIMPORT                        R32 K4 [require]
      248 GETTABLEKS                       R33 R0 K5 ["Src"]
      250 GETTABLEKS                       R33 R33 K19 ["Thunks"]
      252 GETTABLEKS                       R33 R33 K43 ["Types"]
      254 CALL                             R32 1 1
      255 DUPCLOSURE                       R33 K44 [PROTO_11]
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R5
      258 CAPTURE                          VAL R2
      259 CAPTURE                          VAL R29
      260 CAPTURE                          VAL R11
      261 CAPTURE                          VAL R26
      262 CAPTURE                          VAL R14
      263 CAPTURE                          VAL R13
      264 CAPTURE                          VAL R12
      265 CAPTURE                          VAL R27
      266 CAPTURE                          VAL R28
      267 CAPTURE                          VAL R6
      268 CAPTURE                          VAL R30
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R22
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R18
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R17
      276 CAPTURE                          VAL R21
      277 CAPTURE                          VAL R16
      278 CAPTURE                          VAL R4
      279 CAPTURE                          VAL R19
      280 CAPTURE                          VAL R20
      281 CAPTURE                          VAL R15
      282 RETURN                           R33 1
