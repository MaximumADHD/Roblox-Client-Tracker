PROTO_0:
        0 JUMPIFNOT                        R0 ; [+4]
        1 NAMECALL                         R1 R0 K0 ["lower"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["plugin_id"]
        2 NAMECALL                         R2 R2 K1 ["lower"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R1 K2 ["item_id"]
        7 NAMECALL                         R3 R3 K1 ["lower"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R5 R1 K3 ["data_model"]
       12 JUMPIFNOT                        R5 ; [+5]
       13 NAMECALL                         R6 R5 K1 ["lower"]
       15 CALL                             R6 1 1
       16 MOVE                             R4 R6
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 GETTABLEKS                       R6 R1 K4 ["plugin_type"]
       21 JUMPIFNOT                        R6 ; [+5]
       22 NAMECALL                         R7 R6 K1 ["lower"]
       24 CALL                             R7 1 1
       25 MOVE                             R5 R7
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 NEWTABLE                         R6 0 0
       30 MOVE                             R7 R0
       31 LOADNIL                          R8
       32 LOADNIL                          R9
       33 FORGPREP                         R7
       34 GETTABLEKS                       R12 R11 K5 ["Uri"]
       36 JUMPIFNOT                        R12 ; [+56]
       37 GETTABLEKS                       R13 R12 K6 ["PluginId"]
       39 JUMPIFNOT                        R13 ; [+53]
       40 GETTABLEKS                       R13 R12 K7 ["ItemId"]
       42 JUMPIFNOT                        R13 ; [+50]
       43 GETTABLEKS                       R13 R12 K6 ["PluginId"]
       45 NAMECALL                         R13 R13 K1 ["lower"]
       47 CALL                             R13 1 1
       48 JUMPIFNOTEQ                      R13 R2 ; [+44]
       50 GETTABLEKS                       R13 R12 K7 ["ItemId"]
       52 NAMECALL                         R13 R13 K1 ["lower"]
       54 CALL                             R13 1 1
       55 JUMPIFNOTEQ                      R13 R3 ; [+37]
       57 JUMPIFNOT                        R4 ; [+11]
       58 GETTABLEKS                       R14 R12 K8 ["DataModel"]
       60 JUMPIFNOT                        R14 ; [+5]
       61 NAMECALL                         R15 R14 K1 ["lower"]
       63 CALL                             R15 1 1
       64 MOVE                             R13 R15
       65 JUMP                             ; [+1]
       66 LOADNIL                          R13
       67 JUMPIFNOTEQ                      R13 R4 ; [+25]
       69 JUMPIFNOT                        R5 ; [+16]
       70 GETTABLEKS                       R14 R12 K9 ["PluginType"]
       72 JUMPIFNOT                        R14 ; [+5]
       73 NAMECALL                         R15 R14 K1 ["lower"]
       75 CALL                             R15 1 1
       76 MOVE                             R13 R15
       77 JUMP                             ; [+1]
       78 LOADNIL                          R13
       79 JUMPIF                           R13 ; [+4]
       80 LOADK                            R13 K10 ["Feature"]
       81 NAMECALL                         R13 R13 K1 ["lower"]
       83 CALL                             R13 1 1
       84 JUMPIFNOTEQ                      R13 R5 ; [+8]
       86 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       88 MOVE                             R14 R6
       89 MOVE                             R15 R11
       90 GETIMPORT                        R13 K13 [table.insert]
       92 CALL                             R13 2 0
       93 FORGLOOP                         R7 2 ; [-60]
       95 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Uri"]
        2 LOADK                            R3 K1 ["dataModel: %* | pluginType: %* "]
        3 GETTABLEKS                       R6 R1 K3 ["DataModel"]
        5 ORK                              R5 R6 K2 ["<unknown>"]
        6 GETTABLEKS                       R7 R1 K5 ["PluginType"]
        8 ORK                              R6 R7 K4 ["Feature"]
        9 NAMECALL                         R3 R3 K6 ["format"]
       11 CALL                             R3 3 1
       12 LOADK                            R4 K7 ["| pluginId: %* | itemId: %* "]
       13 GETTABLEKS                       R7 R1 K8 ["PluginId"]
       15 ORK                              R6 R7 K2 ["<unknown>"]
       16 GETTABLEKS                       R8 R1 K9 ["ItemId"]
       18 ORK                              R7 R8 K2 ["<unknown>"]
       19 NAMECALL                         R4 R4 K6 ["format"]
       21 CALL                             R4 3 1
       22 LOADK                            R5 K10 ["| text: %*"]
       23 GETTABLEKS                       R8 R0 K12 ["Text"]
       25 ORK                              R7 R8 K11 ["<unnamed>"]
       26 NAMECALL                         R5 R5 K6 ["format"]
       28 CALL                             R5 2 1
       29 CONCAT                           R2 R3 R5
       30 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R1 K0 ["action \"%*\" (pluginId: %* | itemId: %*)"]
        1 GETTABLEKS                       R4 R0 K2 ["Text"]
        3 ORK                              R3 R4 K1 ["<unnamed>"]
        4 GETTABLEKS                       R5 R0 K4 ["Uri"]
        6 GETTABLEKS                       R5 R5 K5 ["PluginId"]
        8 ORK                              R4 R5 K3 ["<unknown>"]
        9 GETTABLEKS                       R6 R0 K4 ["Uri"]
       11 GETTABLEKS                       R6 R6 K6 ["ItemId"]
       13 ORK                              R5 R6 K3 ["<unknown>"]
       14 NAMECALL                         R1 R1 K7 ["format"]
       16 CALL                             R1 4 1
       17 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["plugin_id"]
        2 FASTCALL1                        TYPE R2 ; [+2]
        3 GETIMPORT                        R1 K2 [type]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+5]
        8 GETTABLEKS                       R1 R0 K0 ["plugin_id"]
       10 JUMPIFNOTEQKS                    R1 K4 [""] ; [+6]
       12 GETIMPORT                        R1 K6 [error]
       14 LOADK                            R2 K7 ["plugin_id must be a non-empty string"]
       15 LOADN                            R3 0
       16 CALL                             R1 2 0
       17 GETTABLEKS                       R2 R0 K8 ["item_id"]
       19 FASTCALL1                        TYPE R2 ; [+2]
       20 GETIMPORT                        R1 K2 [type]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+5]
       25 GETTABLEKS                       R1 R0 K8 ["item_id"]
       27 JUMPIFNOTEQKS                    R1 K4 [""] ; [+6]
       29 GETIMPORT                        R1 K6 [error]
       31 LOADK                            R2 K9 ["item_id must be a non-empty string"]
       32 LOADN                            R3 0
       33 CALL                             R1 2 0
       34 GETTABLEKS                       R1 R0 K10 ["data_model"]
       36 JUMPIFEQKNIL                     R1 ; [+14]
       38 GETTABLEKS                       R2 R0 K10 ["data_model"]
       40 FASTCALL1                        TYPE R2 ; [+2]
       41 GETIMPORT                        R1 K2 [type]
       43 CALL                             R1 1 1
       44 JUMPIFEQKS                       R1 K3 ["string"] ; [+6]
       46 GETIMPORT                        R1 K6 [error]
       48 LOADK                            R2 K11 ["data_model must be a string"]
       49 LOADN                            R3 0
       50 CALL                             R1 2 0
       51 GETTABLEKS                       R1 R0 K12 ["plugin_type"]
       53 JUMPIFEQKNIL                     R1 ; [+14]
       55 GETTABLEKS                       R2 R0 K12 ["plugin_type"]
       57 FASTCALL1                        TYPE R2 ; [+2]
       58 GETIMPORT                        R1 K2 [type]
       60 CALL                             R1 1 1
       61 JUMPIFEQKS                       R1 K3 ["string"] ; [+6]
       63 GETIMPORT                        R1 K6 [error]
       65 LOADK                            R2 K13 ["plugin_type must be a string"]
       66 LOADN                            R3 0
       67 CALL                             R1 2 0
       68 GETTABLEKS                       R1 R0 K14 ["open"]
       70 JUMPIFEQKNIL                     R1 ; [+14]
       72 GETTABLEKS                       R2 R0 K14 ["open"]
       74 FASTCALL1                        TYPE R2 ; [+2]
       75 GETIMPORT                        R1 K2 [type]
       77 CALL                             R1 1 1
       78 JUMPIFEQKS                       R1 K15 ["boolean"] ; [+6]
       80 GETIMPORT                        R1 K6 [error]
       82 LOADK                            R2 K16 ["open must be a boolean"]
       83 LOADN                            R3 0
       84 CALL                             R1 2 0
       85 GETTABLEKS                       R2 R0 K14 ["open"]
       87 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
       89 LOADB                            R1 0 +1
       90 LOADB                            R1 1
       91 GETUPVAL                         R2 0
       92 GETTABLEKS                       R2 R2 K17 ["tools"]
       94 GETTABLEKS                       R2 R2 K18 ["pluginActivation"]
       96 GETTABLEKS                       R2 R2 K19 ["listActionsAsync"]
       98 CALL                             R2 0 1
       99 GETUPVAL                         R3 1
      100 MOVE                             R4 R2
      101 MOVE                             R5 R0
      102 CALL                             R3 2 1
      103 LENGTH                           R4 R3
      104 JUMPIFNOTEQKN                    R4 K20 [0] ; [+30]
      106 GETIMPORT                        R4 K6 [error]
      108 LOADK                            R6 K21 ["No action found with pluginId \"%*\" and itemId \"%*\". Take both ids "]
      109 GETTABLEKS                       R8 R0 K0 ["plugin_id"]
      111 GETTABLEKS                       R9 R0 K8 ["item_id"]
      113 NAMECALL                         R6 R6 K22 ["format"]
      115 CALL                             R6 3 1
      116 LOADK                            R7 K23 ["from the %* tool; a built-in plugin is usually opened by a Feature "]
      117 GETUPVAL                         R9 2
      118 GETTABLEKS                       R9 R9 K24 ["ListPluginActions"]
      120 NAMECALL                         R7 R7 K22 ["format"]
      122 CALL                             R7 2 1
      123 LOADK                            R8 K25 ["action under an unrelated legacy name. This tool only opens built-in plugins -- for a cloud or "]
      124 LOADK                            R9 K26 ["local plugin, use %* to set its PluginGuiService widget's Enabled, e.g. "]
      125 GETUPVAL                         R11 2
      126 GETTABLEKS                       R11 R11 K27 ["ExecuteLuau"]
      128 NAMECALL                         R9 R9 K22 ["format"]
      130 CALL                             R9 2 1
      131 LOADK                            R10 K28 ["game:GetService(\"PluginGuiService\"):FindFirstChild(\"<name>\").Enabled = true"]
      132 CONCAT                           R5 R6 R10
      133 LOADN                            R6 0
      134 CALL                             R4 2 0
      135 LENGTH                           R4 R3
      136 LOADN                            R5 1
      137 JUMPIFNOTLT                      R5 R4 ; [+72]
      139 NEWTABLE                         R4 0 0
      141 MOVE                             R5 R3
      142 LOADNIL                          R6
      143 LOADNIL                          R7
      144 FORGPREP                         R5
      145 LOADK                            R12 K29 ["  - %*"]
      146 GETTABLEKS                       R15 R9 K30 ["Uri"]
      148 LOADK                            R16 K31 ["dataModel: %* | pluginType: %* "]
      149 GETTABLEKS                       R19 R15 K33 ["DataModel"]
      151 ORK                              R18 R19 K32 ["<unknown>"]
      152 GETTABLEKS                       R20 R15 K35 ["PluginType"]
      154 ORK                              R19 R20 K34 ["Feature"]
      155 NAMECALL                         R16 R16 K22 ["format"]
      157 CALL                             R16 3 1
      158 LOADK                            R17 K36 ["| pluginId: %* | itemId: %* "]
      159 GETTABLEKS                       R20 R15 K37 ["PluginId"]
      161 ORK                              R19 R20 K32 ["<unknown>"]
      162 GETTABLEKS                       R21 R15 K38 ["ItemId"]
      164 ORK                              R20 R21 K32 ["<unknown>"]
      165 NAMECALL                         R17 R17 K22 ["format"]
      167 CALL                             R17 3 1
      168 LOADK                            R18 K39 ["| text: %*"]
      169 GETTABLEKS                       R21 R9 K41 ["Text"]
      171 ORK                              R20 R21 K40 ["<unnamed>"]
      172 NAMECALL                         R18 R18 K22 ["format"]
      174 CALL                             R18 2 1
      175 CONCAT                           R14 R16 R18
      176 NAMECALL                         R12 R12 K22 ["format"]
      178 CALL                             R12 2 1
      179 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      181 MOVE                             R11 R4
      182 GETIMPORT                        R10 K44 [table.insert]
      184 CALL                             R10 2 0
      185 FORGLOOP                         R5 2 ; [-41]
      187 GETIMPORT                        R5 K6 [error]
      189 LOADK                            R7 K45 ["%* actions share pluginId \"%*\" and itemId \"%*\". Pass data_model "]
      190 LENGTH                           R9 R3
      191 GETTABLEKS                       R10 R0 K0 ["plugin_id"]
      193 GETTABLEKS                       R11 R0 K8 ["item_id"]
      195 NAMECALL                         R7 R7 K22 ["format"]
      197 CALL                             R7 4 1
      198 LOADK                            R8 K46 ["and plugin_type to pick one:\n%*"]
      199 GETIMPORT                        R10 K48 [table.concat]
      201 MOVE                             R11 R4
      202 LOADK                            R12 K49 ["\n"]
      203 CALL                             R10 2 1
      204 NAMECALL                         R8 R8 K22 ["format"]
      206 CALL                             R8 2 1
      207 CONCAT                           R6 R7 R8
      208 LOADN                            R7 0
      209 CALL                             R5 2 0
      210 GETTABLEN                        R4 R3 1
      211 GETTABLEKS                       R5 R4 K50 ["Enabled"]
      213 JUMPIFEQKB                       R5 FALSE ; [+5]
      215 GETTABLEKS                       R5 R4 K51 ["Visible"]
      217 JUMPIFNOTEQKB                    R5 FALSE ; [+35]
      219 GETIMPORT                        R5 K6 [error]
      221 LOADK                            R7 K52 ["The %* is currently %*, "]
      222 LOADK                            R9 K53 ["action \"%*\" (pluginId: %* | itemId: %*)"]
      223 GETTABLEKS                       R12 R4 K41 ["Text"]
      225 ORK                              R11 R12 K40 ["<unnamed>"]
      226 GETTABLEKS                       R13 R4 K30 ["Uri"]
      228 GETTABLEKS                       R13 R13 K37 ["PluginId"]
      230 ORK                              R12 R13 K32 ["<unknown>"]
      231 GETTABLEKS                       R14 R4 K30 ["Uri"]
      233 GETTABLEKS                       R14 R14 K38 ["ItemId"]
      235 ORK                              R13 R14 K32 ["<unknown>"]
      236 NAMECALL                         R9 R9 K22 ["format"]
      238 CALL                             R9 4 1
      239 GETTABLEKS                       R11 R4 K50 ["Enabled"]
      241 JUMPIFNOTEQKB                    R11 FALSE ; [+3]
      243 LOADK                            R10 K54 ["disabled"]
      244 JUMP                             ; [+1]
      245 LOADK                            R10 K55 ["hidden"]
      246 NAMECALL                         R7 R7 K22 ["format"]
      248 CALL                             R7 3 1
      249 LOADK                            R8 K56 ["so it cannot be triggered."]
      250 CONCAT                           R6 R7 R8
      251 LOADN                            R7 0
      252 CALL                             R5 2 0
      253 GETTABLEKS                       R5 R4 K57 ["Checkable"]
      255 JUMPIF                           R5 ; [+34]
      256 GETIMPORT                        R5 K6 [error]
      258 LOADK                            R7 K58 ["The %* is not a toggle, so it does not report whether the plugin is open and "]
      259 LOADK                            R9 K53 ["action \"%*\" (pluginId: %* | itemId: %*)"]
      260 GETTABLEKS                       R12 R4 K41 ["Text"]
      262 ORK                              R11 R12 K40 ["<unnamed>"]
      263 GETTABLEKS                       R13 R4 K30 ["Uri"]
      265 GETTABLEKS                       R13 R13 K37 ["PluginId"]
      267 ORK                              R12 R13 K32 ["<unknown>"]
      268 GETTABLEKS                       R14 R4 K30 ["Uri"]
      270 GETTABLEKS                       R14 R14 K38 ["ItemId"]
      272 ORK                              R13 R14 K32 ["<unknown>"]
      273 NAMECALL                         R9 R9 K22 ["format"]
      275 CALL                             R9 4 1
      276 NAMECALL                         R7 R7 K22 ["format"]
      278 CALL                             R7 2 1
      279 LOADK                            R8 K59 ["triggering it may do something other than opening a plugin. Use the "]
      280 LOADK                            R9 K60 ["%* tool to find the plugin's toggle action."]
      281 GETUPVAL                         R11 2
      282 GETTABLEKS                       R11 R11 K24 ["ListPluginActions"]
      284 NAMECALL                         R9 R9 K22 ["format"]
      286 CALL                             R9 2 1
      287 CONCAT                           R6 R7 R9
      288 LOADN                            R7 0
      289 CALL                             R5 2 0
      290 GETUPVAL                         R7 0
      291 GETTABLEKS                       R7 R7 K17 ["tools"]
      293 GETTABLEKS                       R7 R7 K18 ["pluginActivation"]
      295 GETTABLEKS                       R7 R7 K61 ["getActionStatesAsync"]
      297 NEWTABLE                         R8 0 1
      299 GETTABLEKS                       R9 R4 K30 ["Uri"]
      301 SETLIST                          R8 R9 1 [1]
      303 CALL                             R7 1 1
      304 GETTABLEN                        R6 R7 1
      305 OR                               R5 R6 R4
      306 GETTABLEKS                       R7 R5 K62 ["Checked"]
      308 JUMPIFEQKB                       R7 TRUE ; [+2]
      310 LOADB                            R6 0 +1
      311 LOADB                            R6 1
      312 JUMPIFNOTEQ                      R6 R1 ; [+34]
      314 LOADK                            R8 K63 ["Plugin \"%*\" is already %*, so nothing was "]
      315 GETTABLEKS                       R10 R0 K0 ["plugin_id"]
      317 JUMPIFNOT                        R1 ; [+2]
      318 LOADK                            R11 K14 ["open"]
      319 JUMP                             ; [+1]
      320 LOADK                            R11 K64 ["closed"]
      321 NAMECALL                         R8 R8 K22 ["format"]
      323 CALL                             R8 3 1
      324 LOADK                            R9 K65 ["changed (%*)."]
      325 LOADK                            R11 K53 ["action \"%*\" (pluginId: %* | itemId: %*)"]
      326 GETTABLEKS                       R14 R4 K41 ["Text"]
      328 ORK                              R13 R14 K40 ["<unnamed>"]
      329 GETTABLEKS                       R15 R4 K30 ["Uri"]
      331 GETTABLEKS                       R15 R15 K37 ["PluginId"]
      333 ORK                              R14 R15 K32 ["<unknown>"]
      334 GETTABLEKS                       R16 R4 K30 ["Uri"]
      336 GETTABLEKS                       R16 R16 K38 ["ItemId"]
      338 ORK                              R15 R16 K32 ["<unknown>"]
      339 NAMECALL                         R11 R11 K22 ["format"]
      341 CALL                             R11 4 1
      342 NAMECALL                         R9 R9 K22 ["format"]
      344 CALL                             R9 2 1
      345 CONCAT                           R7 R8 R9
      346 RETURN                           R7 1
      347 GETUPVAL                         R7 0
      348 GETTABLEKS                       R7 R7 K17 ["tools"]
      350 GETTABLEKS                       R7 R7 K18 ["pluginActivation"]
      352 GETTABLEKS                       R7 R7 K66 ["activateActionAsync"]
      354 GETTABLEKS                       R8 R4 K30 ["Uri"]
      356 CALL                             R7 1 0
      357 LOADK                            R8 K67 ["%* plugin \"%*\" by triggering "]
      358 JUMPIFNOT                        R1 ; [+2]
      359 LOADK                            R10 K68 ["Opened"]
      360 JUMP                             ; [+1]
      361 LOADK                            R10 K69 ["Closed"]
      362 GETTABLEKS                       R11 R0 K0 ["plugin_id"]
      364 NAMECALL                         R8 R8 K22 ["format"]
      366 CALL                             R8 3 1
      367 LOADK                            R9 K70 ["%*."]
      368 LOADK                            R11 K53 ["action \"%*\" (pluginId: %* | itemId: %*)"]
      369 GETTABLEKS                       R14 R4 K41 ["Text"]
      371 ORK                              R13 R14 K40 ["<unnamed>"]
      372 GETTABLEKS                       R15 R4 K30 ["Uri"]
      374 GETTABLEKS                       R15 R15 K37 ["PluginId"]
      376 ORK                              R14 R15 K32 ["<unknown>"]
      377 GETTABLEKS                       R16 R4 K30 ["Uri"]
      379 GETTABLEKS                       R16 R16 K38 ["ItemId"]
      381 ORK                              R15 R16 K32 ["<unknown>"]
      382 NAMECALL                         R11 R11 K22 ["format"]
      384 CALL                             R11 4 1
      385 NAMECALL                         R9 R9 K22 ["format"]
      387 CALL                             R9 2 1
      388 CONCAT                           R7 R8 R9
      389 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Identity"]
        4 GETTABLEKS                       R3 R3 K1 ["Edit"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K3 ["addText"]
       15 CALL                             R2 2 1
       16 NAMECALL                         R2 R2 K4 ["build"]
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_8:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K3 ["invoke"]
       13 MOVE                             R6 R2
       14 LOADK                            R7 K4 ["OpenPluginTool.Activate"]
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K5 ["new"]
       19 CALL                             R6 0 1
       20 NAMECALL                         R7 R2 K6 ["GetIdentity"]
       22 CALL                             R7 1 1
       23 GETUPVAL                         R8 4
       24 GETTABLEKS                       R8 R8 K7 ["Identity"]
       26 GETTABLEKS                       R8 R8 K8 ["Standalone"]
       28 JUMPIFEQ                         R7 R8 ; [+9]
       30 NEWCLOSURE                       R11 P1
       31 CAPTURE                          VAL R4
       32 NAMECALL                         R9 R5 K9 ["Connect"]
       34 CALL                             R9 2 -1
       35 NAMECALL                         R7 R6 K10 ["Add"]
       37 CALL                             R7 -1 0
       38 NEWCLOSURE                       R9 P2
       39 CAPTURE                          VAL R6
       40 NAMECALL                         R7 R3 K11 ["Once"]
       42 CALL                             R7 2 0
       43 NEWCLOSURE                       R7 P3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R8 R8 K12 ["define"]
       50 CALL                             R8 0 1
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K13 ["OpenPlugin"]
       54 NAMECALL                         R8 R8 K14 ["setName"]
       56 CALL                             R8 2 1
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R10 R10 K15 ["replaceTokens"]
       60 LOADK                            R11 K16 ["Turn a Studio toggle action on or off, like clicking its toolbar button -- typically opening or closing a plugin window. Pass all four ids from {ToolNames.ListPluginActions}. No-op if already in the requested state. Built-in plugins only; open a cloud or local plugin by setting its PluginGuiService widget's Enabled via {ToolNames.ExecuteLuau}."]
       61 CALL                             R10 1 -1
       62 NAMECALL                         R8 R8 K17 ["setDescription"]
       64 CALL                             R8 -1 1
       65 LOADK                            R10 K18 ["plugin_id"]
       66 DUPTABLE                         R11 K22 [{["type"] = "string", ["description"]}]
       67 GETUPVAL                         R12 1
       68 GETTABLEKS                       R12 R12 K15 ["replaceTokens"]
       70 LOADK                            R13 K23 ["pluginId from the {ToolNames.ListPluginActions} tool."]
       71 CALL                             R12 1 1
       72 SETTABLEKS                       R12 R11 K21 ["description"]
       74 NAMECALL                         R8 R8 K24 ["addArgument"]
       76 CALL                             R8 3 1
       77 LOADK                            R10 K25 ["item_id"]
       78 DUPTABLE                         R11 K27 [{["type"] = "string", ["description"] = "itemId from the same row, usually `Toggle`."}]
       79 NAMECALL                         R8 R8 K24 ["addArgument"]
       81 CALL                             R8 3 1
       82 LOADK                            R10 K28 ["data_model"]
       83 DUPTABLE                         R11 K30 [{["type"] = "string", ["description"] = "dataModel from the same row, e.g. `Edit`. Omitted matches any."}]
       84 NAMECALL                         R8 R8 K31 ["addOptionalArgument"]
       86 CALL                             R8 3 1
       87 LOADK                            R10 K32 ["plugin_type"]
       88 DUPTABLE                         R11 K34 [{["type"] = "string", ["description"] = "pluginType from the same row, e.g. `Feature`. Omitted matches any."}]
       89 NAMECALL                         R8 R8 K31 ["addOptionalArgument"]
       91 CALL                             R8 3 1
       92 LOADK                            R10 K35 ["open"]
       93 DUPTABLE                         R11 K38 [{["type"] = "boolean", ["description"] = "True (default) to open, false to close."}]
       94 NAMECALL                         R8 R8 K31 ["addOptionalArgument"]
       96 CALL                             R8 3 1
       97 LOADK                            R10 K39 ["Open Plugin"]
       98 NAMECALL                         R8 R8 K40 ["setTitle"]
      100 CALL                             R8 2 1
      101 DUPTABLE                         R10 K48 [{["title"] = "Open Plugin", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      102 NAMECALL                         R8 R8 K49 ["setAnnotations"]
      104 CALL                             R8 2 1
      105 MOVE                             R10 R7
      106 NAMECALL                         R8 R8 K50 ["setHandler"]
      108 CALL                             R8 2 1
      109 NAMECALL                         R8 R8 K51 ["build"]
      111 CALL                             R8 1 1
      112 DUPTABLE                         R9 K54 [{"definition", "getPreExecuteWarning"}]
      113 SETTABLEKS                       R8 R9 K52 ["definition"]
      115 DUPCLOSURE                       R10 K55 [PROTO_8]
      116 SETTABLEKS                       R10 R9 K53 ["getPreExecuteWarning"]
      118 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Tools"]
       35 GETTABLEKS                       R7 R7 K13 ["ToolTypes"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K14 ["Remote"]
       40 GETTABLEKS                       R8 R4 K15 ["Util"]
       42 GETTABLEKS                       R8 R8 K16 ["ToolBuilder"]
       44 GETTABLEKS                       R9 R4 K15 ["Util"]
       46 GETTABLEKS                       R9 R9 K17 ["ToolResult"]
       48 GETTABLEKS                       R10 R6 K18 ["ToolNames"]
       50 DUPCLOSURE                       R11 K19 [PROTO_0]
       51 DUPCLOSURE                       R12 K20 [PROTO_1]
       52 DUPCLOSURE                       R13 K21 [PROTO_2]
       53 DUPCLOSURE                       R14 K22 [PROTO_3]
       54 DUPCLOSURE                       R15 K23 [PROTO_9]
       55 CAPTURE                          VAL R12
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R8
       62 RETURN                           R15 1
