PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PluginActions"]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K1 ["StatusTip"]
        4 CONCAT                           R4 R5 R6
        5 NAMECALL                         R1 R1 K2 ["getText"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PluginActions"]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K1 ["Text"]
        4 CONCAT                           R4 R5 R6
        5 NAMECALL                         R1 R1 K2 ["getText"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_mouseDown"]
        3 JUMPIF                           R0 ; [+15]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["_mouseDown"]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K1 ["isMouseDownReserved"]
       11 CALL                             R0 1 1
       12 JUMPIF                           R0 ; [+6]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K2 ["MouseDownAction"]
       16 NAMECALL                         R0 R0 K3 ["Fire"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_mouseDown"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["_mouseDown"]
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isMouseMoveReserved"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["MouseMoveAction"]
        8 NAMECALL                         R0 R0 K2 ["Fire"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 ["ShortcutController.new() requires a plugin"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R1
       11 DUPTABLE                         R4 K11 [{"EditPlane", "CopySelected", "CutSelected", "DeleteSelected", "PasteSelected", "DuplicateSelected", "Apply", "Cancel"}]
       12 DUPTABLE                         R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
       13 LOADB                            R6 0
       14 SETTABLEKS                       R6 R5 K12 ["allowBinding"]
       16 LOADK                            R6 K18 ["ctrl+shift+space"]
       17 SETTABLEKS                       R6 R5 K13 ["defaultShortcut"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K3 ["EditPlane"]
       22 SETTABLEKS                       R6 R5 K14 ["id"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K3 ["EditPlane"]
       27 LOADK                            R10 K19 ["PluginActions"]
       28 MOVE                             R12 R7
       29 LOADK                            R13 K20 ["StatusTip"]
       30 CONCAT                           R11 R12 R13
       31 NAMECALL                         R8 R1 K21 ["getText"]
       33 CALL                             R8 3 1
       34 MOVE                             R6 R8
       35 SETTABLEKS                       R6 R5 K15 ["statusTip"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K3 ["EditPlane"]
       40 LOADK                            R10 K19 ["PluginActions"]
       41 MOVE                             R12 R7
       42 LOADK                            R13 K22 ["Text"]
       43 CONCAT                           R11 R12 R13
       44 NAMECALL                         R8 R1 K21 ["getText"]
       46 CALL                             R8 3 1
       47 MOVE                             R6 R8
       48 SETTABLEKS                       R6 R5 K16 ["text"]
       50 SETTABLEKS                       R5 R4 K3 ["EditPlane"]
       52 DUPTABLE                         R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
       53 LOADB                            R6 0
       54 SETTABLEKS                       R6 R5 K12 ["allowBinding"]
       56 LOADK                            R6 K23 ["ctrl+c"]
       57 SETTABLEKS                       R6 R5 K13 ["defaultShortcut"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K4 ["CopySelected"]
       62 SETTABLEKS                       R6 R5 K14 ["id"]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K4 ["CopySelected"]
       67 LOADK                            R10 K19 ["PluginActions"]
       68 MOVE                             R12 R7
       69 LOADK                            R13 K20 ["StatusTip"]
       70 CONCAT                           R11 R12 R13
       71 NAMECALL                         R8 R1 K21 ["getText"]
       73 CALL                             R8 3 1
       74 MOVE                             R6 R8
       75 SETTABLEKS                       R6 R5 K15 ["statusTip"]
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R7 R7 K4 ["CopySelected"]
       80 LOADK                            R10 K19 ["PluginActions"]
       81 MOVE                             R12 R7
       82 LOADK                            R13 K22 ["Text"]
       83 CONCAT                           R11 R12 R13
       84 NAMECALL                         R8 R1 K21 ["getText"]
       86 CALL                             R8 3 1
       87 MOVE                             R6 R8
       88 SETTABLEKS                       R6 R5 K16 ["text"]
       90 SETTABLEKS                       R5 R4 K4 ["CopySelected"]
       92 DUPTABLE                         R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
       93 LOADB                            R6 0
       94 SETTABLEKS                       R6 R5 K12 ["allowBinding"]
       96 LOADK                            R6 K24 ["ctrl+x"]
       97 SETTABLEKS                       R6 R5 K13 ["defaultShortcut"]
       99 GETUPVAL                         R6 0
      100 GETTABLEKS                       R6 R6 K5 ["CutSelected"]
      102 SETTABLEKS                       R6 R5 K14 ["id"]
      104 GETUPVAL                         R7 0
      105 GETTABLEKS                       R7 R7 K5 ["CutSelected"]
      107 LOADK                            R10 K19 ["PluginActions"]
      108 MOVE                             R12 R7
      109 LOADK                            R13 K20 ["StatusTip"]
      110 CONCAT                           R11 R12 R13
      111 NAMECALL                         R8 R1 K21 ["getText"]
      113 CALL                             R8 3 1
      114 MOVE                             R6 R8
      115 SETTABLEKS                       R6 R5 K15 ["statusTip"]
      117 GETUPVAL                         R7 0
      118 GETTABLEKS                       R7 R7 K5 ["CutSelected"]
      120 LOADK                            R10 K19 ["PluginActions"]
      121 MOVE                             R12 R7
      122 LOADK                            R13 K22 ["Text"]
      123 CONCAT                           R11 R12 R13
      124 NAMECALL                         R8 R1 K21 ["getText"]
      126 CALL                             R8 3 1
      127 MOVE                             R6 R8
      128 SETTABLEKS                       R6 R5 K16 ["text"]
      130 SETTABLEKS                       R5 R4 K5 ["CutSelected"]
      132 DUPTABLE                         R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
      133 LOADB                            R6 0
      134 SETTABLEKS                       R6 R5 K12 ["allowBinding"]
      136 LOADK                            R6 K25 ["delete"]
      137 SETTABLEKS                       R6 R5 K13 ["defaultShortcut"]
      139 GETUPVAL                         R6 0
      140 GETTABLEKS                       R6 R6 K6 ["DeleteSelected"]
      142 SETTABLEKS                       R6 R5 K14 ["id"]
      144 GETUPVAL                         R7 0
      145 GETTABLEKS                       R7 R7 K6 ["DeleteSelected"]
      147 LOADK                            R10 K19 ["PluginActions"]
      148 MOVE                             R12 R7
      149 LOADK                            R13 K20 ["StatusTip"]
      150 CONCAT                           R11 R12 R13
      151 NAMECALL                         R8 R1 K21 ["getText"]
      153 CALL                             R8 3 1
      154 MOVE                             R6 R8
      155 SETTABLEKS                       R6 R5 K15 ["statusTip"]
      157 GETUPVAL                         R7 0
      158 GETTABLEKS                       R7 R7 K6 ["DeleteSelected"]
      160 LOADK                            R10 K19 ["PluginActions"]
      161 MOVE                             R12 R7
      162 LOADK                            R13 K22 ["Text"]
      163 CONCAT                           R11 R12 R13
      164 NAMECALL                         R8 R1 K21 ["getText"]
      166 CALL                             R8 3 1
      167 MOVE                             R6 R8
      168 SETTABLEKS                       R6 R5 K16 ["text"]
      170 SETTABLEKS                       R5 R4 K6 ["DeleteSelected"]
      172 DUPTABLE                         R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
      173 LOADB                            R6 0
      174 SETTABLEKS                       R6 R5 K12 ["allowBinding"]
      176 LOADK                            R6 K26 ["ctrl+v"]
      177 SETTABLEKS                       R6 R5 K13 ["defaultShortcut"]
      179 GETUPVAL                         R6 0
      180 GETTABLEKS                       R6 R6 K7 ["PasteSelected"]
      182 SETTABLEKS                       R6 R5 K14 ["id"]
      184 GETUPVAL                         R7 0
      185 GETTABLEKS                       R7 R7 K7 ["PasteSelected"]
      187 LOADK                            R10 K19 ["PluginActions"]
      188 MOVE                             R12 R7
      189 LOADK                            R13 K20 ["StatusTip"]
      190 CONCAT                           R11 R12 R13
      191 NAMECALL                         R8 R1 K21 ["getText"]
      193 CALL                             R8 3 1
      194 MOVE                             R6 R8
      195 SETTABLEKS                       R6 R5 K15 ["statusTip"]
      197 GETUPVAL                         R7 0
      198 GETTABLEKS                       R7 R7 K7 ["PasteSelected"]
      200 LOADK                            R10 K19 ["PluginActions"]
      201 MOVE                             R12 R7
      202 LOADK                            R13 K22 ["Text"]
      203 CONCAT                           R11 R12 R13
      204 NAMECALL                         R8 R1 K21 ["getText"]
      206 CALL                             R8 3 1
      207 MOVE                             R6 R8
      208 SETTABLEKS                       R6 R5 K16 ["text"]
      210 SETTABLEKS                       R5 R4 K7 ["PasteSelected"]
      212 DUPTABLE                         R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
      213 LOADB                            R6 0
      214 SETTABLEKS                       R6 R5 K12 ["allowBinding"]
      216 LOADK                            R6 K27 ["ctrl+d"]
      217 SETTABLEKS                       R6 R5 K13 ["defaultShortcut"]
      219 GETUPVAL                         R6 0
      220 GETTABLEKS                       R6 R6 K8 ["DuplicateSelected"]
      222 SETTABLEKS                       R6 R5 K14 ["id"]
      224 GETUPVAL                         R7 0
      225 GETTABLEKS                       R7 R7 K8 ["DuplicateSelected"]
      227 LOADK                            R10 K19 ["PluginActions"]
      228 MOVE                             R12 R7
      229 LOADK                            R13 K20 ["StatusTip"]
      230 CONCAT                           R11 R12 R13
      231 NAMECALL                         R8 R1 K21 ["getText"]
      233 CALL                             R8 3 1
      234 MOVE                             R6 R8
      235 SETTABLEKS                       R6 R5 K15 ["statusTip"]
      237 GETUPVAL                         R7 0
      238 GETTABLEKS                       R7 R7 K8 ["DuplicateSelected"]
      240 LOADK                            R10 K19 ["PluginActions"]
      241 MOVE                             R12 R7
      242 LOADK                            R13 K22 ["Text"]
      243 CONCAT                           R11 R12 R13
      244 NAMECALL                         R8 R1 K21 ["getText"]
      246 CALL                             R8 3 1
      247 MOVE                             R6 R8
      248 SETTABLEKS                       R6 R5 K16 ["text"]
      250 SETTABLEKS                       R5 R4 K8 ["DuplicateSelected"]
      252 DUPTABLE                         R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
      253 LOADB                            R6 0
      254 SETTABLEKS                       R6 R5 K12 ["allowBinding"]
      256 LOADK                            R6 K28 ["return"]
      257 SETTABLEKS                       R6 R5 K13 ["defaultShortcut"]
      259 GETUPVAL                         R6 0
      260 GETTABLEKS                       R6 R6 K9 ["Apply"]
      262 SETTABLEKS                       R6 R5 K14 ["id"]
      264 GETUPVAL                         R7 0
      265 GETTABLEKS                       R7 R7 K9 ["Apply"]
      267 LOADK                            R10 K19 ["PluginActions"]
      268 MOVE                             R12 R7
      269 LOADK                            R13 K20 ["StatusTip"]
      270 CONCAT                           R11 R12 R13
      271 NAMECALL                         R8 R1 K21 ["getText"]
      273 CALL                             R8 3 1
      274 MOVE                             R6 R8
      275 SETTABLEKS                       R6 R5 K15 ["statusTip"]
      277 GETUPVAL                         R7 0
      278 GETTABLEKS                       R7 R7 K9 ["Apply"]
      280 LOADK                            R10 K19 ["PluginActions"]
      281 MOVE                             R12 R7
      282 LOADK                            R13 K22 ["Text"]
      283 CONCAT                           R11 R12 R13
      284 NAMECALL                         R8 R1 K21 ["getText"]
      286 CALL                             R8 3 1
      287 MOVE                             R6 R8
      288 SETTABLEKS                       R6 R5 K16 ["text"]
      290 SETTABLEKS                       R5 R4 K9 ["Apply"]
      292 DUPTABLE                         R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
      293 LOADB                            R6 0
      294 SETTABLEKS                       R6 R5 K12 ["allowBinding"]
      296 LOADK                            R6 K29 ["escape"]
      297 SETTABLEKS                       R6 R5 K13 ["defaultShortcut"]
      299 GETUPVAL                         R6 0
      300 GETTABLEKS                       R6 R6 K30 ["Quit"]
      302 SETTABLEKS                       R6 R5 K14 ["id"]
      304 GETUPVAL                         R7 0
      305 GETTABLEKS                       R7 R7 K30 ["Quit"]
      307 LOADK                            R10 K19 ["PluginActions"]
      308 MOVE                             R12 R7
      309 LOADK                            R13 K20 ["StatusTip"]
      310 CONCAT                           R11 R12 R13
      311 NAMECALL                         R8 R1 K21 ["getText"]
      313 CALL                             R8 3 1
      314 MOVE                             R6 R8
      315 SETTABLEKS                       R6 R5 K15 ["statusTip"]
      317 GETUPVAL                         R7 0
      318 GETTABLEKS                       R7 R7 K30 ["Quit"]
      320 LOADK                            R10 K19 ["PluginActions"]
      321 MOVE                             R12 R7
      322 LOADK                            R13 K22 ["Text"]
      323 CONCAT                           R11 R12 R13
      324 NAMECALL                         R8 R1 K21 ["getText"]
      326 CALL                             R8 3 1
      327 MOVE                             R6 R8
      328 SETTABLEKS                       R6 R5 K16 ["text"]
      330 SETTABLEKS                       R5 R4 K10 ["Cancel"]
      332 DUPTABLE                         R6 K43 [{"_mouse", "_pluginActions", "_cachedValues", "_originalValues", "_userInputService", "_workspace", "_reservedMouseMove", "_reservedMouseDown", "_brushMouse", "_brushScrollWheel", "MouseDownAction", "MouseMoveAction"}]
      333 NAMECALL                         R7 R0 K44 ["GetMouse"]
      335 CALL                             R7 1 1
      336 SETTABLEKS                       R7 R6 K31 ["_mouse"]
      338 GETUPVAL                         R7 1
      339 GETTABLEKS                       R7 R7 K45 ["new"]
      341 MOVE                             R8 R0
      342 MOVE                             R9 R4
      343 CALL                             R7 2 1
      344 SETTABLEKS                       R7 R6 K32 ["_pluginActions"]
      346 NEWTABLE                         R7 0 0
      348 SETTABLEKS                       R7 R6 K33 ["_cachedValues"]
      350 NEWTABLE                         R7 0 0
      352 SETTABLEKS                       R7 R6 K34 ["_originalValues"]
      354 GETIMPORT                        R7 K47 [game]
      356 LOADK                            R9 K48 ["UserInputService"]
      357 NAMECALL                         R7 R7 K49 ["GetService"]
      359 CALL                             R7 2 1
      360 SETTABLEKS                       R7 R6 K35 ["_userInputService"]
      362 GETIMPORT                        R7 K47 [game]
      364 LOADK                            R9 K50 ["Workspace"]
      365 NAMECALL                         R7 R7 K49 ["GetService"]
      367 CALL                             R7 2 1
      368 SETTABLEKS                       R7 R6 K36 ["_workspace"]
      370 NEWTABLE                         R7 0 0
      372 SETTABLEKS                       R7 R6 K37 ["_reservedMouseMove"]
      374 NEWTABLE                         R7 0 0
      376 SETTABLEKS                       R7 R6 K38 ["_reservedMouseDown"]
      378 NEWTABLE                         R7 0 0
      380 SETTABLEKS                       R7 R6 K39 ["_brushMouse"]
      382 NEWTABLE                         R7 0 0
      384 SETTABLEKS                       R7 R6 K40 ["_brushScrollWheel"]
      386 GETUPVAL                         R7 2
      387 GETTABLEKS                       R7 R7 K45 ["new"]
      389 CALL                             R7 0 1
      390 SETTABLEKS                       R7 R6 K41 ["MouseDownAction"]
      392 GETUPVAL                         R7 2
      393 GETTABLEKS                       R7 R7 K45 ["new"]
      395 CALL                             R7 0 1
      396 SETTABLEKS                       R7 R6 K42 ["MouseMoveAction"]
      398 GETUPVAL                         R7 3
      399 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
      401 GETIMPORT                        R5 K52 [setmetatable]
      403 CALL                             R5 2 1
      404 GETTABLEKS                       R6 R5 K31 ["_mouse"]
      406 GETTABLEKS                       R6 R6 K53 ["Button1Down"]
      408 NEWCLOSURE                       R8 P2
      409 CAPTURE                          VAL R5
      410 NAMECALL                         R6 R6 K54 ["Connect"]
      412 CALL                             R6 2 0
      413 GETTABLEKS                       R6 R5 K31 ["_mouse"]
      415 GETTABLEKS                       R6 R6 K55 ["Button1Up"]
      417 NEWCLOSURE                       R8 P3
      418 CAPTURE                          VAL R5
      419 NAMECALL                         R6 R6 K54 ["Connect"]
      421 CALL                             R6 2 0
      422 GETTABLEKS                       R6 R5 K31 ["_mouse"]
      424 GETTABLEKS                       R6 R6 K56 ["Move"]
      426 NEWCLOSURE                       R8 P4
      427 CAPTURE                          VAL R5
      428 NAMECALL                         R6 R6 K54 ["Connect"]
      430 CALL                             R6 2 0
      431 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_reservedMouseMove"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_reservedMouseDown"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.LeftAlt]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+7]
        8 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
       10 GETIMPORT                        R3 K7 [Enum.KeyCode.RightAlt]
       12 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.LeftShift]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+7]
        8 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
       10 GETIMPORT                        R3 K7 [Enum.KeyCode.RightShift]
       12 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.LeftControl]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+7]
        8 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
       10 GETIMPORT                        R3 K7 [Enum.KeyCode.RightControl]
       12 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_userInputService"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.B]
        4 NAMECALL                         R1 R1 K5 ["IsKeyDown"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R7 R7 K1 ["_originalValues"]
        4 GETUPVAL                         R8 2
        5 GETTABLE                         R6 R7 R8
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R8 R8 K2 ["_cachedValues"]
        9 GETUPVAL                         R9 2
       10 GETTABLE                         R7 R8 R9
       11 ADD                              R5 R6 R7
       12 MULK                             R4 R5 K0 [100]
       13 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       14 GETIMPORT                        R3 K5 [math.floor]
       16 CALL                             R3 1 1
       17 DIVK                             R2 R3 K0 [100]
       18 LOADN                            R3 0
       19 LOADN                            R4 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R1 K7 [math.clamp]
       23 CALL                             R1 3 1
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K3 ["_originalValues"]
        7 GETUPVAL                         R6 2
        8 GETTABLE                         R4 R5 R6
        9 GETTABLEKS                       R4 R4 K4 ["Size"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["_cachedValues"]
       14 GETUPVAL                         R7 2
       15 GETTABLE                         R5 R6 R7
       16 GETTABLEKS                       R5 R5 K4 ["Size"]
       18 ADD                              R3 R4 R5
       19 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       20 GETIMPORT                        R2 K8 [math.floor]
       22 CALL                             R2 1 1
       23 LOADN                            R3 1
       24 LOADN                            R4 64
       25 FASTCALL                         MATH_CLAMP ; [+2]
       26 GETIMPORT                        R1 K10 [math.clamp]
       28 CALL                             R1 3 1
       29 SETTABLEKS                       R1 R0 K4 ["Size"]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K3 ["_originalValues"]
       34 GETUPVAL                         R6 2
       35 GETTABLE                         R4 R5 R6
       36 GETTABLEKS                       R4 R4 K11 ["Height"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K5 ["_cachedValues"]
       41 GETUPVAL                         R7 2
       42 GETTABLE                         R5 R6 R7
       43 GETTABLEKS                       R5 R5 K11 ["Height"]
       45 ADD                              R3 R4 R5
       46 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       47 GETIMPORT                        R2 K8 [math.floor]
       49 CALL                             R2 1 1
       50 LOADN                            R3 1
       51 LOADN                            R4 64
       52 FASTCALL                         MATH_CLAMP ; [+2]
       53 GETIMPORT                        R1 K10 [math.clamp]
       55 CALL                             R1 3 1
       56 SETTABLEKS                       R1 R0 K11 ["Height"]
       58 GETUPVAL                         R1 3
       59 MOVE                             R2 R0
       60 CALL                             R1 1 -1
       61 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["_workspace"]
        5 GETTABLEKS                       R0 R0 K1 ["CurrentCamera"]
        7 GETUPVAL                         R3 2
        8 MINUS                            R2 R3
        9 NAMECALL                         R0 R0 K2 ["Zoom"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R3 R3 K0 ["isShiftDown"]
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+50]
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K1 ["Strength"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+45]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K2 ["_cachedValues"]
       18 GETUPVAL                         R4 1
       19 GETTABLE                         R5 R3 R4
       20 DIVK                             R6 R0 K3 [100]
       21 ADD                              R5 R5 R6
       22 SETTABLE                         R5 R3 R4
       23 JUMPIFNOT                        R1 ; [+9]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K4 ["_workspace"]
       27 GETTABLEKS                       R3 R3 K5 ["CurrentCamera"]
       29 MINUS                            R5 R0
       30 NAMECALL                         R3 R3 K6 ["Zoom"]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R3 3
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R10 R10 K7 ["_originalValues"]
       37 GETUPVAL                         R11 1
       38 GETTABLE                         R9 R10 R11
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K2 ["_cachedValues"]
       42 GETUPVAL                         R12 1
       43 GETTABLE                         R10 R11 R12
       44 ADD                              R8 R9 R10
       45 MULK                             R7 R8 K3 [100]
       46 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       47 GETIMPORT                        R6 K10 [math.floor]
       49 CALL                             R6 1 1
       50 DIVK                             R5 R6 K3 [100]
       51 LOADN                            R6 0
       52 LOADN                            R7 1
       53 FASTCALL                         MATH_CLAMP ; [+2]
       54 GETIMPORT                        R4 K12 [math.clamp]
       56 CALL                             R4 3 1
       57 CALL                             R3 1 1
       58 RETURN                           R0 0
       59 GETUPVAL                         R3 0
       60 NAMECALL                         R3 R3 K13 ["isControlDown"]
       62 CALL                             R3 1 1
       63 JUMPIFNOT                        R3 ; [+37]
       64 GETUPVAL                         R3 1
       65 GETUPVAL                         R4 2
       66 GETTABLEKS                       R4 R4 K14 ["BrushSize"]
       68 JUMPIFNOTEQ                      R3 R4 ; [+32]
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K2 ["_cachedValues"]
       73 GETUPVAL                         R5 1
       74 GETTABLE                         R3 R4 R5
       75 GETTABLEKS                       R4 R3 K15 ["Height"]
       77 ADD                              R4 R4 R0
       78 SETTABLEKS                       R4 R3 K15 ["Height"]
       80 GETUPVAL                         R3 4
       81 GETTABLEKS                       R3 R3 K16 ["Locked"]
       83 JUMPIFNOT                        R3 ; [+14]
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R4 R4 K2 ["_cachedValues"]
       87 GETUPVAL                         R5 1
       88 GETTABLE                         R3 R4 R5
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R5 R5 K2 ["_cachedValues"]
       92 GETUPVAL                         R6 1
       93 GETTABLE                         R4 R5 R6
       94 GETTABLEKS                       R4 R4 K15 ["Height"]
       96 SETTABLEKS                       R4 R3 K17 ["Size"]
       98 GETUPVAL                         R3 5
       99 CALL                             R3 0 0
      100 RETURN                           R0 0
      101 GETUPVAL                         R3 0
      102 NAMECALL                         R3 R3 K0 ["isShiftDown"]
      104 CALL                             R3 1 1
      105 JUMPIF                           R3 ; [+51]
      106 GETUPVAL                         R3 0
      107 NAMECALL                         R3 R3 K13 ["isControlDown"]
      109 CALL                             R3 1 1
      110 JUMPIF                           R3 ; [+46]
      111 GETUPVAL                         R3 1
      112 GETUPVAL                         R4 2
      113 GETTABLEKS                       R4 R4 K14 ["BrushSize"]
      115 JUMPIFNOTEQ                      R3 R4 ; [+41]
      117 GETUPVAL                         R4 0
      118 GETTABLEKS                       R4 R4 K2 ["_cachedValues"]
      120 GETUPVAL                         R5 1
      121 GETTABLE                         R3 R4 R5
      122 GETTABLEKS                       R4 R3 K17 ["Size"]
      124 ADD                              R4 R4 R0
      125 SETTABLEKS                       R4 R3 K17 ["Size"]
      127 GETUPVAL                         R3 4
      128 GETTABLEKS                       R3 R3 K16 ["Locked"]
      130 JUMPIFNOT                        R3 ; [+14]
      131 GETUPVAL                         R4 0
      132 GETTABLEKS                       R4 R4 K2 ["_cachedValues"]
      134 GETUPVAL                         R5 1
      135 GETTABLE                         R3 R4 R5
      136 GETUPVAL                         R5 0
      137 GETTABLEKS                       R5 R5 K2 ["_cachedValues"]
      139 GETUPVAL                         R6 1
      140 GETTABLE                         R4 R5 R6
      141 GETTABLEKS                       R4 R4 K17 ["Size"]
      143 SETTABLEKS                       R4 R3 K15 ["Height"]
      145 JUMPIFNOT                        R1 ; [+9]
      146 GETUPVAL                         R3 0
      147 GETTABLEKS                       R3 R3 K4 ["_workspace"]
      149 GETTABLEKS                       R3 R3 K5 ["CurrentCamera"]
      151 MINUS                            R5 R0
      152 NAMECALL                         R3 R3 K6 ["Zoom"]
      154 CALL                             R3 2 0
      155 GETUPVAL                         R3 5
      156 CALL                             R3 0 0
      157 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isBDown"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K3 [table.find]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["_reservedMouseMove"]
       11 GETUPVAL                         R3 1
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETIMPORT                        R2 K6 [table.remove]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["_reservedMouseDown"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K8 ["_brushScrollWheel"]
       24 GETUPVAL                         R3 1
       25 LOADB                            R4 1
       26 SETTABLE                         R4 R2 R3
       27 GETUPVAL                         R2 2
       28 MOVE                             R3 R0
       29 LOADB                            R4 1
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isBDown"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["_brushScrollWheel"]
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFNOT                        R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R0 K4 [Vector2.new]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["_mouse"]
       17 GETTABLEKS                       R1 R1 K6 ["X"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K5 ["_mouse"]
       22 GETTABLEKS                       R2 R2 K7 ["Y"]
       24 CALL                             R0 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K8 ["_brushMouse"]
       28 GETUPVAL                         R4 1
       29 GETTABLE                         R2 R3 R4
       30 SUB                              R1 R0 R2
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K8 ["_brushMouse"]
       34 GETUPVAL                         R3 1
       35 SETTABLE                         R0 R2 R3
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R4 R1 K6 ["X"]
       39 DIVK                             R3 R4 K9 [10]
       40 LOADB                            R4 0
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+4]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0
        9 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       11 GETIMPORT                        R2 K5 [Enum.UserInputType.MouseWheel]
       13 JUMPIFNOTEQ                      R1 R2 ; [+7]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R2 R0 K6 ["Position"]
       18 GETTABLEKS                       R2 R2 K7 ["Z"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.B]
        4 JUMPIFNOTEQ                      R1 R2 ; [+116]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["_cachedValues"]
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R1 R2 R3
       11 JUMPIF                           R1 ; [+47]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K5 ["BrushSize"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+30]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["_originalValues"]
       21 GETUPVAL                         R2 1
       22 DUPTABLE                         R3 K9 [{"Height", "Size"}]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K7 ["Height"]
       26 SETTABLEKS                       R4 R3 K7 ["Height"]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K8 ["Size"]
       31 SETTABLEKS                       R4 R3 K8 ["Size"]
       33 SETTABLE                         R3 R1 R2
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K4 ["_cachedValues"]
       37 GETUPVAL                         R2 1
       38 DUPTABLE                         R3 K9 [{"Height", "Size"}]
       39 LOADN                            R4 0
       40 SETTABLEKS                       R4 R3 K7 ["Height"]
       42 LOADN                            R4 0
       43 SETTABLEKS                       R4 R3 K8 ["Size"]
       45 SETTABLE                         R3 R1 R2
       46 JUMP                             ; [+12]
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K6 ["_originalValues"]
       50 GETUPVAL                         R2 1
       51 GETUPVAL                         R3 3
       52 SETTABLE                         R3 R1 R2
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K4 ["_cachedValues"]
       56 GETUPVAL                         R2 1
       57 LOADN                            R3 0
       58 SETTABLE                         R3 R1 R2
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K10 ["_brushScrollWheel"]
       62 GETUPVAL                         R2 1
       63 LOADB                            R3 0
       64 SETTABLE                         R3 R1 R2
       65 GETUPVAL                         R1 0
       66 GETTABLEKS                       R1 R1 K11 ["_brushMouse"]
       68 GETUPVAL                         R2 1
       69 GETIMPORT                        R3 K14 [Vector2.new]
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R4 R4 K15 ["_mouse"]
       74 GETTABLEKS                       R4 R4 K16 ["X"]
       76 GETUPVAL                         R5 0
       77 GETTABLEKS                       R5 R5 K15 ["_mouse"]
       79 GETTABLEKS                       R5 R5 K17 ["Y"]
       81 CALL                             R3 2 1
       82 SETTABLE                         R3 R1 R2
       83 GETUPVAL                         R1 0
       84 GETUPVAL                         R2 0
       85 GETTABLEKS                       R2 R2 K18 ["_workspace"]
       87 GETTABLEKS                       R2 R2 K19 ["CurrentCamera"]
       89 GETTABLEKS                       R2 R2 K20 ["CFrame"]
       91 SETTABLEKS                       R2 R1 K21 ["_cameraPosition"]
       93 GETUPVAL                         R1 0
       94 GETTABLEKS                       R1 R1 K22 ["_mouseDown"]
       96 JUMPIFNOT                        R1 ; [+7]
       97 GETUPVAL                         R1 0
       98 GETTABLEKS                       R1 R1 K10 ["_brushScrollWheel"]
      100 GETUPVAL                         R2 1
      101 LOADB                            R3 1
      102 SETTABLE                         R3 R1 R2
      103 RETURN                           R0 0
      104 GETIMPORT                        R1 K25 [table.find]
      106 GETUPVAL                         R2 0
      107 GETTABLEKS                       R2 R2 K26 ["_reservedMouseMove"]
      109 GETUPVAL                         R3 1
      110 CALL                             R1 2 1
      111 JUMPIF                           R1 ; [+9]
      112 GETUPVAL                         R3 0
      113 GETTABLEKS                       R3 R3 K26 ["_reservedMouseMove"]
      115 GETUPVAL                         R4 1
      116 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
      118 GETIMPORT                        R2 K28 [table.insert]
      120 CALL                             R2 2 0
      121 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.B]
        4 JUMPIFNOTEQ                      R1 R2 ; [+24]
        6 GETIMPORT                        R1 K6 [table.find]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K7 ["_reservedMouseMove"]
       11 GETUPVAL                         R3 1
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETIMPORT                        R2 K9 [table.remove]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["_reservedMouseMove"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K10 ["_cachedValues"]
       24 GETUPVAL                         R3 1
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R2 R3
       27 GETUPVAL                         R2 2
       28 CALL                             R2 0 0
       29 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R6 P1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R3
        9 NEWCLOSURE                       R7 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R6
       16 NEWCLOSURE                       R8 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R7
       20 NEWCLOSURE                       R9 P4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R7
       24 NEWCLOSURE                       R10 P5
       25 CAPTURE                          VAL R9
       26 CAPTURE                          VAL R8
       27 NEWCLOSURE                       R11 P6
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R2
       32 NEWCLOSURE                       R12 P7
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R13 0 3
       38 GETTABLEKS                       R14 R0 K0 ["_userInputService"]
       40 GETTABLEKS                       R14 R14 K1 ["InputChanged"]
       42 MOVE                             R16 R10
       43 NAMECALL                         R14 R14 K2 ["Connect"]
       45 CALL                             R14 2 1
       46 GETTABLEKS                       R15 R0 K0 ["_userInputService"]
       48 GETTABLEKS                       R15 R15 K3 ["InputBegan"]
       50 MOVE                             R17 R11
       51 NAMECALL                         R15 R15 K2 ["Connect"]
       53 CALL                             R15 2 1
       54 GETTABLEKS                       R16 R0 K0 ["_userInputService"]
       56 GETTABLEKS                       R16 R16 K4 ["InputEnded"]
       58 MOVE                             R18 R12
       59 NAMECALL                         R16 R16 K2 ["Connect"]
       61 CALL                             R16 2 -1
       62 SETLIST                          R13 R14 -1 [1]
       64 RETURN                           R13 1

PROTO_22:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        3 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftControl]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        9 GETIMPORT                        R3 K5 [Enum.KeyCode.RightControl]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_23:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        3 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftControl]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        9 GETIMPORT                        R3 K5 [Enum.KeyCode.RightControl]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["_reservedMouseDown"]
       19 GETUPVAL                         R3 1
       20 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       22 GETIMPORT                        R1 K9 [table.insert]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_24:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        3 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftControl]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        9 GETIMPORT                        R3 K5 [Enum.KeyCode.RightControl]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+15]
       16 GETIMPORT                        R1 K8 [table.find]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K9 ["_reservedMouseDown"]
       21 GETUPVAL                         R3 1
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+7]
       24 GETIMPORT                        R2 K11 [table.remove]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K9 ["_reservedMouseDown"]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isControlDown"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+71]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["_mouse"]
        8 GETTABLEKS                       R0 R0 K2 ["Origin"]
       10 GETTABLEKS                       R0 R0 K3 ["Position"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["_mouse"]
       15 GETTABLEKS                       R1 R1 K4 ["UnitRay"]
       17 GETTABLEKS                       R1 R1 K5 ["Direction"]
       19 GETIMPORT                        R2 K8 [RaycastParams.new]
       21 CALL                             R2 0 1
       22 LOADK                            R3 K9 ["StudioSelectable"]
       23 SETTABLEKS                       R3 R2 K10 ["CollisionGroup"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K11 ["_workspace"]
       28 MOVE                             R5 R0
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K12 ["RayLength"]
       32 MUL                              R6 R1 R7
       33 MOVE                             R7 R2
       34 NAMECALL                         R3 R3 K13 ["Raycast"]
       36 CALL                             R3 4 1
       37 JUMPIFNOT                        R3 ; [+38]
       38 GETTABLEKS                       R4 R3 K14 ["Material"]
       40 JUMPIFNOT                        R4 ; [+35]
       41 GETIMPORT                        R4 K17 [table.find]
       43 GETUPVAL                         R5 2
       44 CALL                             R5 0 1
       45 GETTABLEKS                       R6 R3 K14 ["Material"]
       47 CALL                             R4 2 1
       48 JUMPIF                           R4 ; [+1]
       49 RETURN                           R0 0
       50 GETUPVAL                         R4 0
       51 NAMECALL                         R4 R4 K18 ["isShiftDown"]
       53 CALL                             R4 1 1
       54 JUMPIFNOT                        R4 ; [+6]
       55 GETUPVAL                         R4 3
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K19 ["TargetMaterial"]
       59 JUMPIFEQ                         R4 R5 ; [+12]
       61 GETUPVAL                         R4 0
       62 NAMECALL                         R4 R4 K18 ["isShiftDown"]
       64 CALL                             R4 1 1
       65 JUMPIF                           R4 ; [+10]
       66 GETUPVAL                         R4 3
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K20 ["SourceMaterial"]
       70 JUMPIFNOTEQ                      R4 R5 ; [+5]
       72 GETUPVAL                         R4 5
       73 GETTABLEKS                       R5 R3 K14 ["Material"]
       75 CALL                             R4 1 0
       76 RETURN                           R0 0

PROTO_26:
        0 DUPCLOSURE                       R3 K0 [PROTO_22]
        1 NEWCLOSURE                       R4 P1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R5 P2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R6 P3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R7 0 3
       16 GETTABLEKS                       R8 R0 K1 ["_mouse"]
       18 GETTABLEKS                       R8 R8 K2 ["Button1Down"]
       20 MOVE                             R10 R6
       21 NAMECALL                         R8 R8 K3 ["Connect"]
       23 CALL                             R8 2 1
       24 GETTABLEKS                       R9 R0 K4 ["_userInputService"]
       26 GETTABLEKS                       R9 R9 K5 ["InputBegan"]
       28 MOVE                             R11 R4
       29 NAMECALL                         R9 R9 K3 ["Connect"]
       31 CALL                             R9 2 1
       32 GETTABLEKS                       R10 R0 K4 ["_userInputService"]
       34 GETTABLEKS                       R10 R10 K6 ["InputEnded"]
       36 MOVE                             R12 R5
       37 NAMECALL                         R10 R10 K3 ["Connect"]
       39 CALL                             R10 2 -1
       40 SETLIST                          R7 R8 -1 [1]
       42 RETURN                           R7 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
        4 JUMPIFEQ                         R1 R2 ; [+7]
        6 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        8 GETIMPORT                        R2 K5 [Enum.KeyCode.RightAlt]
       10 JUMPIFNOTEQ                      R1 R2 ; [+46]
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K6 ["isAltDown"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+24]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K7 ["_altWasDown"]
       20 JUMPIF                           R1 ; [+20]
       21 GETUPVAL                         R1 1
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K8 ["Add"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+5]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K9 ["Subtract"]
       31 JUMP                             ; [+3]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K8 ["Add"]
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 0
       37 LOADB                            R2 1
       38 SETTABLEKS                       R2 R1 K7 ["_altWasDown"]
       40 RETURN                           R0 0
       41 GETUPVAL                         R1 0
       42 NAMECALL                         R1 R1 K6 ["isAltDown"]
       44 CALL                             R1 1 1
       45 JUMPIF                           R1 ; [+11]
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K7 ["_altWasDown"]
       49 JUMPIFNOT                        R1 ; [+7]
       50 GETUPVAL                         R1 1
       51 GETUPVAL                         R2 2
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 0
       54 LOADB                            R2 0
       55 SETTABLEKS                       R2 R1 K7 ["_altWasDown"]
       57 RETURN                           R0 0

PROTO_28:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 NEWTABLE                         R4 0 2
        7 GETTABLEKS                       R5 R0 K0 ["_userInputService"]
        9 GETTABLEKS                       R5 R5 K1 ["InputBegan"]
       11 MOVE                             R7 R3
       12 NAMECALL                         R5 R5 K2 ["Connect"]
       14 CALL                             R5 2 1
       15 GETTABLEKS                       R6 R0 K0 ["_userInputService"]
       17 GETTABLEKS                       R6 R6 K3 ["InputEnded"]
       19 MOVE                             R8 R3
       20 NAMECALL                         R6 R6 K2 ["Connect"]
       22 CALL                             R6 2 -1
       23 SETLIST                          R4 R5 -1 [1]
       25 RETURN                           R4 1

PROTO_29:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        3 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftAlt]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        9 GETIMPORT                        R3 K5 [Enum.KeyCode.RightAlt]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_30:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        3 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftAlt]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        9 GETIMPORT                        R3 K5 [Enum.KeyCode.RightAlt]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["_reservedMouseDown"]
       19 GETUPVAL                         R3 1
       20 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       22 GETIMPORT                        R1 K9 [table.insert]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_31:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        3 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftAlt]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        9 GETIMPORT                        R3 K5 [Enum.KeyCode.RightAlt]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+15]
       16 GETIMPORT                        R1 K8 [table.find]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K9 ["_reservedMouseDown"]
       21 GETUPVAL                         R3 1
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+7]
       24 GETIMPORT                        R2 K11 [table.remove]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K9 ["_reservedMouseDown"]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isAltDown"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+71]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["_mouse"]
        8 GETTABLEKS                       R0 R0 K2 ["Origin"]
       10 GETTABLEKS                       R0 R0 K3 ["Position"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["_mouse"]
       15 GETTABLEKS                       R1 R1 K4 ["UnitRay"]
       17 GETTABLEKS                       R1 R1 K5 ["Direction"]
       19 GETIMPORT                        R2 K8 [RaycastParams.new]
       21 CALL                             R2 0 1
       22 LOADB                            R3 1
       23 SETTABLEKS                       R3 R2 K9 ["BruteForceAllSlow"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K10 ["_workspace"]
       28 MOVE                             R5 R0
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K11 ["RayLength"]
       32 MUL                              R6 R1 R7
       33 MOVE                             R7 R2
       34 NAMECALL                         R3 R3 K12 ["Raycast"]
       36 CALL                             R3 4 1
       37 JUMPIFNOT                        R3 ; [+38]
       38 GETTABLEKS                       R4 R3 K13 ["Material"]
       40 JUMPIFNOT                        R4 ; [+35]
       41 GETIMPORT                        R4 K16 [table.find]
       43 GETUPVAL                         R5 2
       44 CALL                             R5 0 1
       45 GETTABLEKS                       R6 R3 K13 ["Material"]
       47 CALL                             R4 2 1
       48 JUMPIF                           R4 ; [+1]
       49 RETURN                           R0 0
       50 GETUPVAL                         R4 0
       51 NAMECALL                         R4 R4 K17 ["isShiftDown"]
       53 CALL                             R4 1 1
       54 JUMPIFNOT                        R4 ; [+11]
       55 GETUPVAL                         R4 3
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K18 ["TargetMaterial"]
       59 JUMPIFNOTEQ                      R4 R5 ; [+6]
       61 GETUPVAL                         R4 5
       62 GETTABLEKS                       R5 R3 K13 ["Material"]
       64 CALL                             R4 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R4 3
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K19 ["SourceMaterial"]
       70 JUMPIFNOTEQ                      R4 R5 ; [+5]
       72 GETUPVAL                         R4 5
       73 GETTABLEKS                       R5 R3 K13 ["Material"]
       75 CALL                             R4 1 0
       76 RETURN                           R0 0

PROTO_33:
        0 DUPCLOSURE                       R3 K0 [PROTO_29]
        1 NEWCLOSURE                       R4 P1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R5 P2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R6 P3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R7 0 3
       16 GETTABLEKS                       R8 R0 K1 ["_mouse"]
       18 GETTABLEKS                       R8 R8 K2 ["Button1Down"]
       20 MOVE                             R10 R6
       21 NAMECALL                         R8 R8 K3 ["Connect"]
       23 CALL                             R8 2 1
       24 GETTABLEKS                       R9 R0 K4 ["_userInputService"]
       26 GETTABLEKS                       R9 R9 K5 ["InputBegan"]
       28 MOVE                             R11 R4
       29 NAMECALL                         R9 R9 K3 ["Connect"]
       31 CALL                             R9 2 1
       32 GETTABLEKS                       R10 R0 K4 ["_userInputService"]
       34 GETTABLEKS                       R10 R10 K6 ["InputEnded"]
       36 MOVE                             R12 R5
       37 NAMECALL                         R10 R10 K3 ["Connect"]
       39 CALL                             R10 2 -1
       40 SETLIST                          R7 R8 -1 [1]
       42 RETURN                           R7 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftControl]
        4 JUMPIFEQ                         R1 R2 ; [+7]
        6 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        8 GETIMPORT                        R2 K5 [Enum.KeyCode.RightControl]
       10 JUMPIFNOTEQ                      R1 R2 ; [+46]
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K6 ["isControlDown"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+24]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K7 ["_controlWasDown"]
       20 JUMPIF                           R1 ; [+20]
       21 GETUPVAL                         R1 1
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K8 ["Add"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+5]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K9 ["Subtract"]
       31 JUMP                             ; [+3]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K8 ["Add"]
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 0
       37 LOADB                            R2 1
       38 SETTABLEKS                       R2 R1 K7 ["_controlWasDown"]
       40 RETURN                           R0 0
       41 GETUPVAL                         R1 0
       42 NAMECALL                         R1 R1 K6 ["isControlDown"]
       44 CALL                             R1 1 1
       45 JUMPIF                           R1 ; [+11]
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K7 ["_controlWasDown"]
       49 JUMPIFNOT                        R1 ; [+7]
       50 GETUPVAL                         R1 1
       51 GETUPVAL                         R2 2
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 0
       54 LOADB                            R2 0
       55 SETTABLEKS                       R2 R1 K7 ["_controlWasDown"]
       57 RETURN                           R0 0

PROTO_35:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 NEWTABLE                         R4 0 2
        7 GETTABLEKS                       R5 R0 K0 ["_userInputService"]
        9 GETTABLEKS                       R5 R5 K1 ["InputBegan"]
       11 MOVE                             R7 R3
       12 NAMECALL                         R5 R5 K2 ["Connect"]
       14 CALL                             R5 2 1
       15 GETTABLEKS                       R6 R0 K0 ["_userInputService"]
       17 GETTABLEKS                       R6 R6 K3 ["InputEnded"]
       19 MOVE                             R8 R3
       20 NAMECALL                         R6 R6 K2 ["Connect"]
       22 CALL                             R6 2 -1
       23 SETLIST                          R4 R5 -1 [1]
       25 RETURN                           R4 1

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R1 R2 ; [+7]
        6 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        8 GETIMPORT                        R2 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R1 R2 ; [+7]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 1
       14 NAMECALL                         R2 R2 K6 ["isShiftDown"]
       16 CALL                             R2 1 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

PROTO_37:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R3 0 2
        5 GETTABLEKS                       R4 R0 K0 ["_userInputService"]
        7 GETTABLEKS                       R4 R4 K1 ["InputBegan"]
        9 MOVE                             R6 R2
       10 NAMECALL                         R4 R4 K2 ["Connect"]
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R5 R0 K0 ["_userInputService"]
       15 GETTABLEKS                       R5 R5 K3 ["InputEnded"]
       17 MOVE                             R7 R2
       18 NAMECALL                         R5 R5 K2 ["Connect"]
       20 CALL                             R5 2 -1
       21 SETLIST                          R3 R4 -1 [1]
       23 RETURN                           R3 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_manualPlaneLock"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["_manualPlaneLock"]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["_manualPlaneLock"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["EditPlane"]
        4 NAMECALL                         R0 R0 K1 ["Disable"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["_toggleEditEnabled"]
       11 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R3 R0 K0 ["_toggleEditEnabled"]
        2 JUMPIF                           R3 ; [+9]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["EditPlane"]
        6 NAMECALL                         R3 R0 K2 ["Enable"]
        8 CALL                             R3 2 0
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R0 K0 ["_toggleEditEnabled"]
       12 SETTABLEKS                       R1 R0 K3 ["_manualPlaneLock"]
       14 GETTABLEKS                       R3 R0 K4 ["_pluginActions"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K1 ["EditPlane"]
       19 NAMECALL                         R3 R3 K5 ["get"]
       21 CALL                             R3 2 1
       22 GETTABLEKS                       R3 R3 K6 ["Triggered"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 NAMECALL                         R3 R3 K7 ["Connect"]
       29 CALL                             R3 2 1
       30 NEWTABLE                         R4 0 2
       32 MOVE                             R5 R3
       33 DUPTABLE                         R6 K9 [{"Disconnect"}]
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R7 R6 K8 ["Disconnect"]
       39 SETLIST                          R4 R5 2 [1]
       41 RETURN                           R4 1

PROTO_41:
        0 MOVE                             R7 R1
        1 NAMECALL                         R5 R0 K0 ["supportsShortcut"]
        3 CALL                             R5 2 1
        4 JUMPIF                           R5 ; [+9]
        5 GETIMPORT                        R5 K2 [error]
        7 LOADK                            R7 K3 ["Cannot register unsupported shortcut for property %*."]
        8 MOVE                             R9 R1
        9 NAMECALL                         R7 R7 K4 ["format"]
       11 CALL                             R7 2 1
       12 MOVE                             R6 R7
       13 CALL                             R5 1 0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["BrushSize"]
       17 JUMPIFEQ                         R1 R5 ; [+6]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K6 ["Strength"]
       22 JUMPIFNOTEQ                      R1 R5 ; [+9]
       24 MOVE                             R7 R1
       25 MOVE                             R8 R2
       26 MOVE                             R9 R3
       27 MOVE                             R10 R4
       28 NAMECALL                         R5 R0 K7 ["onBrushChanged"]
       30 CALL                             R5 5 -1
       31 RETURN                           R5 -1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K8 ["SourceMaterial"]
       35 JUMPIFEQ                         R1 R5 ; [+6]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K9 ["TargetMaterial"]
       40 JUMPIFNOTEQ                      R1 R5 ; [+7]
       42 MOVE                             R7 R1
       43 MOVE                             R8 R3
       44 NAMECALL                         R5 R0 K10 ["onMaterialPicked"]
       46 CALL                             R5 3 -1
       47 RETURN                           R5 -1
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K11 ["BrushMode"]
       51 JUMPIFNOTEQ                      R1 R5 ; [+7]
       53 MOVE                             R7 R3
       54 MOVE                             R8 R2
       55 NAMECALL                         R5 R0 K12 ["onBrushMode"]
       57 CALL                             R5 3 -1
       58 RETURN                           R5 -1
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K13 ["TemporarySmooth"]
       62 JUMPIFNOTEQ                      R1 R5 ; [+6]
       64 MOVE                             R7 R3
       65 NAMECALL                         R5 R0 K14 ["onTemporarySmooth"]
       67 CALL                             R5 2 -1
       68 RETURN                           R5 -1
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K15 ["ManualPlaneLock"]
       72 JUMPIFNOTEQ                      R1 R5 ; [+7]
       74 MOVE                             R7 R2
       75 MOVE                             R8 R3
       76 NAMECALL                         R5 R0 K16 ["onToggleEdit"]
       78 CALL                             R5 3 -1
       79 RETURN                           R5 -1
       80 RETURN                           R0 0

PROTO_42:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["BrushSize"]
        5 LOADB                            R4 1
        6 SETTABLE                         R4 R2 R3
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["BrushMode"]
       10 LOADB                            R4 1
       11 SETTABLE                         R4 R2 R3
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["ManualPlaneLock"]
       15 LOADB                            R4 1
       16 SETTABLE                         R4 R2 R3
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["Strength"]
       20 LOADB                            R4 1
       21 SETTABLE                         R4 R2 R3
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["TemporarySmooth"]
       25 LOADB                            R4 1
       26 SETTABLE                         R4 R2 R3
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K5 ["SourceMaterial"]
       30 LOADB                            R4 1
       31 SETTABLE                         R4 R2 R3
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K6 ["TargetMaterial"]
       35 LOADB                            R4 1
       36 SETTABLE                         R4 R2 R3
       37 GETTABLE                         R3 R2 R1
       38 RETURN                           R3 1

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["_mouse"]
        2 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseDown"]
        2 RETURN                           R1 1

PROTO_45:
        0 MOVE                             R4 R1
        1 LOADB                            R5 1
        2 NAMECALL                         R2 R0 K0 ["SetEnabled"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_46:
        0 MOVE                             R4 R1
        1 LOADB                            R5 0
        2 NAMECALL                         R2 R0 K0 ["SetEnabled"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginActions"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["get"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R2 R3 K2 ["Enabled"]
        8 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginActions"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["get"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R3 R3 K2 ["Triggered"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K3 ["Connect"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETTABLEKS                       R4 R2 K10 ["PluginActions"]
       20 GETTABLEKS                       R5 R1 K11 ["Util"]
       22 GETTABLEKS                       R6 R5 K12 ["Signal"]
       24 GETIMPORT                        R7 K5 [require]
       26 GETTABLEKS                       R8 R0 K13 ["Src"]
       28 GETTABLEKS                       R8 R8 K14 ["Resources"]
       30 GETTABLEKS                       R8 R8 K15 ["Constants"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R9 R0 K13 ["Src"]
       37 GETTABLEKS                       R9 R9 K11 ["Util"]
       39 GETTABLEKS                       R9 R9 K16 ["getMaterials"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K13 ["Src"]
       46 GETTABLEKS                       R10 R10 K17 ["Flags"]
       48 GETTABLEKS                       R10 R10 K18 ["getFFlagTerrainEditorUpdateShortcuts"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K13 ["Src"]
       55 GETTABLEKS                       R11 R11 K19 ["Types"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R10 K20 ["BrushMode"]
       60 GETTABLEKS                       R12 R10 K21 ["BrushSettings"]
       62 GETTABLEKS                       R13 R10 K22 ["MaterialSettings"]
       64 GETTABLEKS                       R14 R10 K23 ["PluginAction"]
       66 LOADK                            R17 K24 ["ShortcutController"]
       67 NAMECALL                         R15 R3 K25 ["extend"]
       69 CALL                             R15 2 1
       70 DUPCLOSURE                       R16 K26 [PROTO_5]
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R15
       75 SETTABLEKS                       R16 R15 K27 ["new"]
       77 DUPCLOSURE                       R16 K28 [PROTO_6]
       78 SETTABLEKS                       R16 R15 K29 ["isMouseMoveReserved"]
       80 DUPCLOSURE                       R16 K30 [PROTO_7]
       81 SETTABLEKS                       R16 R15 K31 ["isMouseDownReserved"]
       83 DUPCLOSURE                       R16 K32 [PROTO_8]
       84 SETTABLEKS                       R16 R15 K33 ["isAltDown"]
       86 DUPCLOSURE                       R16 K34 [PROTO_9]
       87 SETTABLEKS                       R16 R15 K35 ["isShiftDown"]
       89 DUPCLOSURE                       R16 K36 [PROTO_10]
       90 SETTABLEKS                       R16 R15 K37 ["isControlDown"]
       92 DUPCLOSURE                       R16 K38 [PROTO_11]
       93 SETTABLEKS                       R16 R15 K39 ["isBDown"]
       95 DUPCLOSURE                       R16 K40 [PROTO_21]
       96 CAPTURE                          VAL R12
       97 SETTABLEKS                       R16 R15 K41 ["onBrushChanged"]
       99 MOVE                             R16 R9
      100 CALL                             R16 0 1
      101 JUMPIFNOT                        R16 ; [+11]
      102 DUPCLOSURE                       R16 K42 [PROTO_26]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R13
      106 SETTABLEKS                       R16 R15 K43 ["onMaterialPicked"]
      108 DUPCLOSURE                       R16 K44 [PROTO_28]
      109 CAPTURE                          VAL R11
      110 SETTABLEKS                       R16 R15 K45 ["onBrushMode"]
      112 JUMP                             ; [+10]
      113 DUPCLOSURE                       R16 K46 [PROTO_33]
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R13
      117 SETTABLEKS                       R16 R15 K43 ["onMaterialPicked"]
      119 DUPCLOSURE                       R16 K47 [PROTO_35]
      120 CAPTURE                          VAL R11
      121 SETTABLEKS                       R16 R15 K45 ["onBrushMode"]
      123 DUPCLOSURE                       R16 K48 [PROTO_37]
      124 SETTABLEKS                       R16 R15 K49 ["onTemporarySmooth"]
      126 DUPCLOSURE                       R16 K50 [PROTO_40]
      127 CAPTURE                          VAL R14
      128 SETTABLEKS                       R16 R15 K51 ["onToggleEdit"]
      130 DUPCLOSURE                       R16 K52 [PROTO_41]
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 SETTABLEKS                       R16 R15 K53 ["registerShortcut"]
      135 DUPCLOSURE                       R16 K54 [PROTO_42]
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R13
      138 SETTABLEKS                       R16 R15 K55 ["supportsShortcut"]
      140 DUPCLOSURE                       R16 K56 [PROTO_43]
      141 SETTABLEKS                       R16 R15 K57 ["getMouse"]
      143 DUPCLOSURE                       R16 K58 [PROTO_44]
      144 SETTABLEKS                       R16 R15 K59 ["IsMouseDown"]
      146 DUPCLOSURE                       R16 K60 [PROTO_45]
      147 SETTABLEKS                       R16 R15 K61 ["Enable"]
      149 DUPCLOSURE                       R16 K62 [PROTO_46]
      150 SETTABLEKS                       R16 R15 K63 ["Disable"]
      152 DUPCLOSURE                       R16 K64 [PROTO_47]
      153 SETTABLEKS                       R16 R15 K65 ["SetEnabled"]
      155 DUPCLOSURE                       R16 K66 [PROTO_48]
      156 SETTABLEKS                       R16 R15 K67 ["Connect"]
      158 RETURN                           R15 1
