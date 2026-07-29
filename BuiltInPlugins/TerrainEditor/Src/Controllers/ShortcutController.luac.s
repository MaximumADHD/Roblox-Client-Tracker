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
       12 DUPTABLE                         R5 K19 [{["allowBinding"] = False, ["defaultShortcut"] = "ctrl+shift+space", ["id"], ["statusTip"], ["text"]}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K3 ["EditPlane"]
       16 SETTABLEKS                       R6 R5 K16 ["id"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K3 ["EditPlane"]
       21 LOADK                            R10 K20 ["PluginActions"]
       22 MOVE                             R12 R7
       23 LOADK                            R13 K21 ["StatusTip"]
       24 CONCAT                           R11 R12 R13
       25 NAMECALL                         R8 R1 K22 ["getText"]
       27 CALL                             R8 3 1
       28 MOVE                             R6 R8
       29 SETTABLEKS                       R6 R5 K17 ["statusTip"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K3 ["EditPlane"]
       34 LOADK                            R10 K20 ["PluginActions"]
       35 MOVE                             R12 R7
       36 LOADK                            R13 K23 ["Text"]
       37 CONCAT                           R11 R12 R13
       38 NAMECALL                         R8 R1 K22 ["getText"]
       40 CALL                             R8 3 1
       41 MOVE                             R6 R8
       42 SETTABLEKS                       R6 R5 K18 ["text"]
       44 SETTABLEKS                       R5 R4 K3 ["EditPlane"]
       46 DUPTABLE                         R5 K25 [{["allowBinding"] = False, ["defaultShortcut"] = "ctrl+c", ["id"], ["statusTip"], ["text"]}]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K4 ["CopySelected"]
       50 SETTABLEKS                       R6 R5 K16 ["id"]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K4 ["CopySelected"]
       55 LOADK                            R10 K20 ["PluginActions"]
       56 MOVE                             R12 R7
       57 LOADK                            R13 K21 ["StatusTip"]
       58 CONCAT                           R11 R12 R13
       59 NAMECALL                         R8 R1 K22 ["getText"]
       61 CALL                             R8 3 1
       62 MOVE                             R6 R8
       63 SETTABLEKS                       R6 R5 K17 ["statusTip"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K4 ["CopySelected"]
       68 LOADK                            R10 K20 ["PluginActions"]
       69 MOVE                             R12 R7
       70 LOADK                            R13 K23 ["Text"]
       71 CONCAT                           R11 R12 R13
       72 NAMECALL                         R8 R1 K22 ["getText"]
       74 CALL                             R8 3 1
       75 MOVE                             R6 R8
       76 SETTABLEKS                       R6 R5 K18 ["text"]
       78 SETTABLEKS                       R5 R4 K4 ["CopySelected"]
       80 DUPTABLE                         R5 K27 [{["allowBinding"] = False, ["defaultShortcut"] = "ctrl+x", ["id"], ["statusTip"], ["text"]}]
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R6 R6 K5 ["CutSelected"]
       84 SETTABLEKS                       R6 R5 K16 ["id"]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K5 ["CutSelected"]
       89 LOADK                            R10 K20 ["PluginActions"]
       90 MOVE                             R12 R7
       91 LOADK                            R13 K21 ["StatusTip"]
       92 CONCAT                           R11 R12 R13
       93 NAMECALL                         R8 R1 K22 ["getText"]
       95 CALL                             R8 3 1
       96 MOVE                             R6 R8
       97 SETTABLEKS                       R6 R5 K17 ["statusTip"]
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R7 R7 K5 ["CutSelected"]
      102 LOADK                            R10 K20 ["PluginActions"]
      103 MOVE                             R12 R7
      104 LOADK                            R13 K23 ["Text"]
      105 CONCAT                           R11 R12 R13
      106 NAMECALL                         R8 R1 K22 ["getText"]
      108 CALL                             R8 3 1
      109 MOVE                             R6 R8
      110 SETTABLEKS                       R6 R5 K18 ["text"]
      112 SETTABLEKS                       R5 R4 K5 ["CutSelected"]
      114 DUPTABLE                         R5 K29 [{["allowBinding"] = False, ["defaultShortcut"] = "delete", ["id"], ["statusTip"], ["text"]}]
      115 GETUPVAL                         R6 0
      116 GETTABLEKS                       R6 R6 K6 ["DeleteSelected"]
      118 SETTABLEKS                       R6 R5 K16 ["id"]
      120 GETUPVAL                         R7 0
      121 GETTABLEKS                       R7 R7 K6 ["DeleteSelected"]
      123 LOADK                            R10 K20 ["PluginActions"]
      124 MOVE                             R12 R7
      125 LOADK                            R13 K21 ["StatusTip"]
      126 CONCAT                           R11 R12 R13
      127 NAMECALL                         R8 R1 K22 ["getText"]
      129 CALL                             R8 3 1
      130 MOVE                             R6 R8
      131 SETTABLEKS                       R6 R5 K17 ["statusTip"]
      133 GETUPVAL                         R7 0
      134 GETTABLEKS                       R7 R7 K6 ["DeleteSelected"]
      136 LOADK                            R10 K20 ["PluginActions"]
      137 MOVE                             R12 R7
      138 LOADK                            R13 K23 ["Text"]
      139 CONCAT                           R11 R12 R13
      140 NAMECALL                         R8 R1 K22 ["getText"]
      142 CALL                             R8 3 1
      143 MOVE                             R6 R8
      144 SETTABLEKS                       R6 R5 K18 ["text"]
      146 SETTABLEKS                       R5 R4 K6 ["DeleteSelected"]
      148 DUPTABLE                         R5 K31 [{["allowBinding"] = False, ["defaultShortcut"] = "ctrl+v", ["id"], ["statusTip"], ["text"]}]
      149 GETUPVAL                         R6 0
      150 GETTABLEKS                       R6 R6 K7 ["PasteSelected"]
      152 SETTABLEKS                       R6 R5 K16 ["id"]
      154 GETUPVAL                         R7 0
      155 GETTABLEKS                       R7 R7 K7 ["PasteSelected"]
      157 LOADK                            R10 K20 ["PluginActions"]
      158 MOVE                             R12 R7
      159 LOADK                            R13 K21 ["StatusTip"]
      160 CONCAT                           R11 R12 R13
      161 NAMECALL                         R8 R1 K22 ["getText"]
      163 CALL                             R8 3 1
      164 MOVE                             R6 R8
      165 SETTABLEKS                       R6 R5 K17 ["statusTip"]
      167 GETUPVAL                         R7 0
      168 GETTABLEKS                       R7 R7 K7 ["PasteSelected"]
      170 LOADK                            R10 K20 ["PluginActions"]
      171 MOVE                             R12 R7
      172 LOADK                            R13 K23 ["Text"]
      173 CONCAT                           R11 R12 R13
      174 NAMECALL                         R8 R1 K22 ["getText"]
      176 CALL                             R8 3 1
      177 MOVE                             R6 R8
      178 SETTABLEKS                       R6 R5 K18 ["text"]
      180 SETTABLEKS                       R5 R4 K7 ["PasteSelected"]
      182 DUPTABLE                         R5 K33 [{["allowBinding"] = False, ["defaultShortcut"] = "ctrl+d", ["id"], ["statusTip"], ["text"]}]
      183 GETUPVAL                         R6 0
      184 GETTABLEKS                       R6 R6 K8 ["DuplicateSelected"]
      186 SETTABLEKS                       R6 R5 K16 ["id"]
      188 GETUPVAL                         R7 0
      189 GETTABLEKS                       R7 R7 K8 ["DuplicateSelected"]
      191 LOADK                            R10 K20 ["PluginActions"]
      192 MOVE                             R12 R7
      193 LOADK                            R13 K21 ["StatusTip"]
      194 CONCAT                           R11 R12 R13
      195 NAMECALL                         R8 R1 K22 ["getText"]
      197 CALL                             R8 3 1
      198 MOVE                             R6 R8
      199 SETTABLEKS                       R6 R5 K17 ["statusTip"]
      201 GETUPVAL                         R7 0
      202 GETTABLEKS                       R7 R7 K8 ["DuplicateSelected"]
      204 LOADK                            R10 K20 ["PluginActions"]
      205 MOVE                             R12 R7
      206 LOADK                            R13 K23 ["Text"]
      207 CONCAT                           R11 R12 R13
      208 NAMECALL                         R8 R1 K22 ["getText"]
      210 CALL                             R8 3 1
      211 MOVE                             R6 R8
      212 SETTABLEKS                       R6 R5 K18 ["text"]
      214 SETTABLEKS                       R5 R4 K8 ["DuplicateSelected"]
      216 DUPTABLE                         R5 K35 [{["allowBinding"] = False, ["defaultShortcut"] = "return", ["id"], ["statusTip"], ["text"]}]
      217 GETUPVAL                         R6 0
      218 GETTABLEKS                       R6 R6 K9 ["Apply"]
      220 SETTABLEKS                       R6 R5 K16 ["id"]
      222 GETUPVAL                         R7 0
      223 GETTABLEKS                       R7 R7 K9 ["Apply"]
      225 LOADK                            R10 K20 ["PluginActions"]
      226 MOVE                             R12 R7
      227 LOADK                            R13 K21 ["StatusTip"]
      228 CONCAT                           R11 R12 R13
      229 NAMECALL                         R8 R1 K22 ["getText"]
      231 CALL                             R8 3 1
      232 MOVE                             R6 R8
      233 SETTABLEKS                       R6 R5 K17 ["statusTip"]
      235 GETUPVAL                         R7 0
      236 GETTABLEKS                       R7 R7 K9 ["Apply"]
      238 LOADK                            R10 K20 ["PluginActions"]
      239 MOVE                             R12 R7
      240 LOADK                            R13 K23 ["Text"]
      241 CONCAT                           R11 R12 R13
      242 NAMECALL                         R8 R1 K22 ["getText"]
      244 CALL                             R8 3 1
      245 MOVE                             R6 R8
      246 SETTABLEKS                       R6 R5 K18 ["text"]
      248 SETTABLEKS                       R5 R4 K9 ["Apply"]
      250 DUPTABLE                         R5 K37 [{["allowBinding"] = False, ["defaultShortcut"] = "escape", ["id"], ["statusTip"], ["text"]}]
      251 GETUPVAL                         R6 0
      252 GETTABLEKS                       R6 R6 K38 ["Quit"]
      254 SETTABLEKS                       R6 R5 K16 ["id"]
      256 GETUPVAL                         R7 0
      257 GETTABLEKS                       R7 R7 K38 ["Quit"]
      259 LOADK                            R10 K20 ["PluginActions"]
      260 MOVE                             R12 R7
      261 LOADK                            R13 K21 ["StatusTip"]
      262 CONCAT                           R11 R12 R13
      263 NAMECALL                         R8 R1 K22 ["getText"]
      265 CALL                             R8 3 1
      266 MOVE                             R6 R8
      267 SETTABLEKS                       R6 R5 K17 ["statusTip"]
      269 GETUPVAL                         R7 0
      270 GETTABLEKS                       R7 R7 K38 ["Quit"]
      272 LOADK                            R10 K20 ["PluginActions"]
      273 MOVE                             R12 R7
      274 LOADK                            R13 K23 ["Text"]
      275 CONCAT                           R11 R12 R13
      276 NAMECALL                         R8 R1 K22 ["getText"]
      278 CALL                             R8 3 1
      279 MOVE                             R6 R8
      280 SETTABLEKS                       R6 R5 K18 ["text"]
      282 SETTABLEKS                       R5 R4 K10 ["Cancel"]
      284 DUPTABLE                         R6 K51 [{"_mouse", "_pluginActions", "_cachedValues", "_originalValues", "_userInputService", "_workspace", "_reservedMouseMove", "_reservedMouseDown", "_brushMouse", "_brushScrollWheel", "MouseDownAction", "MouseMoveAction"}]
      285 NAMECALL                         R7 R0 K52 ["GetMouse"]
      287 CALL                             R7 1 1
      288 SETTABLEKS                       R7 R6 K39 ["_mouse"]
      290 GETUPVAL                         R7 1
      291 GETTABLEKS                       R7 R7 K53 ["new"]
      293 MOVE                             R8 R0
      294 MOVE                             R9 R4
      295 CALL                             R7 2 1
      296 SETTABLEKS                       R7 R6 K40 ["_pluginActions"]
      298 NEWTABLE                         R7 0 0
      300 SETTABLEKS                       R7 R6 K41 ["_cachedValues"]
      302 NEWTABLE                         R7 0 0
      304 SETTABLEKS                       R7 R6 K42 ["_originalValues"]
      306 GETIMPORT                        R7 K55 [game]
      308 LOADK                            R9 K56 ["UserInputService"]
      309 NAMECALL                         R7 R7 K57 ["GetService"]
      311 CALL                             R7 2 1
      312 SETTABLEKS                       R7 R6 K43 ["_userInputService"]
      314 GETIMPORT                        R7 K55 [game]
      316 LOADK                            R9 K58 ["Workspace"]
      317 NAMECALL                         R7 R7 K57 ["GetService"]
      319 CALL                             R7 2 1
      320 SETTABLEKS                       R7 R6 K44 ["_workspace"]
      322 NEWTABLE                         R7 0 0
      324 SETTABLEKS                       R7 R6 K45 ["_reservedMouseMove"]
      326 NEWTABLE                         R7 0 0
      328 SETTABLEKS                       R7 R6 K46 ["_reservedMouseDown"]
      330 NEWTABLE                         R7 0 0
      332 SETTABLEKS                       R7 R6 K47 ["_brushMouse"]
      334 NEWTABLE                         R7 0 0
      336 SETTABLEKS                       R7 R6 K48 ["_brushScrollWheel"]
      338 GETUPVAL                         R7 2
      339 GETTABLEKS                       R7 R7 K53 ["new"]
      341 CALL                             R7 0 1
      342 SETTABLEKS                       R7 R6 K49 ["MouseDownAction"]
      344 GETUPVAL                         R7 2
      345 GETTABLEKS                       R7 R7 K53 ["new"]
      347 CALL                             R7 0 1
      348 SETTABLEKS                       R7 R6 K50 ["MouseMoveAction"]
      350 GETUPVAL                         R7 3
      351 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
      353 GETIMPORT                        R5 K60 [setmetatable]
      355 CALL                             R5 2 1
      356 GETTABLEKS                       R6 R5 K39 ["_mouse"]
      358 GETTABLEKS                       R6 R6 K61 ["Button1Down"]
      360 NEWCLOSURE                       R8 P2
      361 CAPTURE                          VAL R5
      362 NAMECALL                         R6 R6 K62 ["Connect"]
      364 CALL                             R6 2 0
      365 GETTABLEKS                       R6 R5 K39 ["_mouse"]
      367 GETTABLEKS                       R6 R6 K63 ["Button1Up"]
      369 NEWCLOSURE                       R8 P3
      370 CAPTURE                          VAL R5
      371 NAMECALL                         R6 R6 K62 ["Connect"]
      373 CALL                             R6 2 0
      374 GETTABLEKS                       R6 R5 K39 ["_mouse"]
      376 GETTABLEKS                       R6 R6 K64 ["Move"]
      378 NEWCLOSURE                       R8 P4
      379 CAPTURE                          VAL R5
      380 NAMECALL                         R6 R6 K62 ["Connect"]
      382 CALL                             R6 2 0
      383 RETURN                           R5 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["BrushSize"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+54]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K1 ["_originalValues"]
        9 GETTABLE                         R5 R6 R0
       10 GETTABLEKS                       R5 R5 K2 ["Size"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K3 ["_cachedValues"]
       15 GETTABLE                         R6 R7 R0
       16 GETTABLEKS                       R6 R6 K2 ["Size"]
       18 ADD                              R4 R5 R6
       19 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       20 GETIMPORT                        R3 K6 [math.floor]
       22 CALL                             R3 1 1
       23 LOADN                            R4 1
       24 LOADN                            R5 64
       25 FASTCALL                         MATH_CLAMP ; [+2]
       26 GETIMPORT                        R2 K8 [math.clamp]
       28 CALL                             R2 3 1
       29 SETTABLEKS                       R2 R1 K2 ["Size"]
       31 GETUPVAL                         R1 1
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K1 ["_originalValues"]
       35 GETTABLE                         R5 R6 R0
       36 GETTABLEKS                       R5 R5 K9 ["Height"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K3 ["_cachedValues"]
       41 GETTABLE                         R6 R7 R0
       42 GETTABLEKS                       R6 R6 K9 ["Height"]
       44 ADD                              R4 R5 R6
       45 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       46 GETIMPORT                        R3 K6 [math.floor]
       48 CALL                             R3 1 1
       49 LOADN                            R4 1
       50 LOADN                            R5 64
       51 FASTCALL                         MATH_CLAMP ; [+2]
       52 GETIMPORT                        R2 K8 [math.clamp]
       54 CALL                             R2 3 1
       55 SETTABLEKS                       R2 R1 K9 ["Height"]
       57 JUMP                             ; [+27]
       58 GETUPVAL                         R1 0
       59 GETTABLEKS                       R1 R1 K10 ["Strength"]
       61 JUMPIFNOTEQ                      R0 R1 ; [+23]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K1 ["_originalValues"]
       66 GETTABLE                         R6 R7 R0
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R8 R8 K3 ["_cachedValues"]
       70 GETTABLE                         R7 R8 R0
       71 ADD                              R5 R6 R7
       72 MULK                             R4 R5 K11 [100]
       73 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       74 GETIMPORT                        R3 K6 [math.floor]
       76 CALL                             R3 1 1
       77 DIVK                             R2 R3 K11 [100]
       78 LOADN                            R3 0
       79 LOADN                            R4 1
       80 FASTCALL                         MATH_CLAMP ; [+2]
       81 GETIMPORT                        R1 K8 [math.clamp]
       83 CALL                             R1 3 1
       84 SETUPVAL                         R1 1
       85 GETUPVAL                         R1 2
       86 GETTABLEKS                       R1 R1 K3 ["_cachedValues"]
       88 GETUPVAL                         R2 3
       89 LOADNIL                          R3
       90 SETTABLE                         R3 R1 R2
       91 GETUPVAL                         R1 2
       92 GETTABLEKS                       R1 R1 K1 ["_originalValues"]
       94 GETUPVAL                         R2 3
       95 LOADNIL                          R3
       96 SETTABLE                         R3 R1 R2
       97 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.B]
        4 JUMPIFNOTEQ                      R1 R2 ; [+110]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["_cachedValues"]
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R1 R2 R3
       11 JUMPIF                           R1 ; [+41]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K5 ["BrushSize"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+24]
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
       38 DUPTABLE                         R3 K11 [{["Height"] = 0, ["Size"] = 0}]
       39 SETTABLE                         R3 R1 R2
       40 JUMP                             ; [+12]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K6 ["_originalValues"]
       44 GETUPVAL                         R2 1
       45 GETUPVAL                         R3 3
       46 SETTABLE                         R3 R1 R2
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K4 ["_cachedValues"]
       50 GETUPVAL                         R2 1
       51 LOADN                            R3 0
       52 SETTABLE                         R3 R1 R2
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K12 ["_brushScrollWheel"]
       56 GETUPVAL                         R2 1
       57 LOADB                            R3 0
       58 SETTABLE                         R3 R1 R2
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K13 ["_brushMouse"]
       62 GETUPVAL                         R2 1
       63 GETIMPORT                        R3 K16 [Vector2.new]
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R4 R4 K17 ["_mouse"]
       68 GETTABLEKS                       R4 R4 K18 ["X"]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K17 ["_mouse"]
       73 GETTABLEKS                       R5 R5 K19 ["Y"]
       75 CALL                             R3 2 1
       76 SETTABLE                         R3 R1 R2
       77 GETUPVAL                         R1 0
       78 GETUPVAL                         R2 0
       79 GETTABLEKS                       R2 R2 K20 ["_workspace"]
       81 GETTABLEKS                       R2 R2 K21 ["CurrentCamera"]
       83 GETTABLEKS                       R2 R2 K22 ["CFrame"]
       85 SETTABLEKS                       R2 R1 K23 ["_cameraPosition"]
       87 GETUPVAL                         R1 0
       88 GETTABLEKS                       R1 R1 K24 ["_mouseDown"]
       90 JUMPIFNOT                        R1 ; [+7]
       91 GETUPVAL                         R1 0
       92 GETTABLEKS                       R1 R1 K12 ["_brushScrollWheel"]
       94 GETUPVAL                         R2 1
       95 LOADB                            R3 1
       96 SETTABLE                         R3 R1 R2
       97 RETURN                           R0 0
       98 GETIMPORT                        R1 K27 [table.find]
      100 GETUPVAL                         R2 0
      101 GETTABLEKS                       R2 R2 K28 ["_reservedMouseMove"]
      103 GETUPVAL                         R3 1
      104 CALL                             R1 2 1
      105 JUMPIF                           R1 ; [+9]
      106 GETUPVAL                         R3 0
      107 GETTABLEKS                       R3 R3 K28 ["_reservedMouseMove"]
      109 GETUPVAL                         R4 1
      110 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
      112 GETIMPORT                        R2 K30 [table.insert]
      114 CALL                             R2 2 0
      115 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.B]
        4 JUMPIFNOTEQ                      R1 R2 ; [+31]
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
       21 GETUPVAL                         R2 2
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETUPVAL                         R2 3
       25 GETUPVAL                         R3 1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K10 ["_cachedValues"]
       31 GETUPVAL                         R3 1
       32 LOADNIL                          R4
       33 SETTABLE                         R4 R2 R3
       34 GETUPVAL                         R2 4
       35 CALL                             R2 0 0
       36 RETURN                           R0 0

PROTO_22:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 NEWCLOSURE                       R6 P1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 NEWCLOSURE                       R7 P2
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R3
       14 NEWCLOSURE                       R8 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          REF R2
       20 CAPTURE                          VAL R7
       21 NEWCLOSURE                       R9 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R8
       25 NEWCLOSURE                       R10 P5
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R8
       29 NEWCLOSURE                       R11 P6
       30 CAPTURE                          VAL R10
       31 CAPTURE                          VAL R9
       32 NEWCLOSURE                       R12 P7
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          REF R2
       37 NEWCLOSURE                       R13 P8
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R14 0 3
       45 GETTABLEKS                       R15 R0 K0 ["_userInputService"]
       47 GETTABLEKS                       R15 R15 K1 ["InputChanged"]
       49 MOVE                             R17 R11
       50 NAMECALL                         R15 R15 K2 ["Connect"]
       52 CALL                             R15 2 1
       53 GETTABLEKS                       R16 R0 K0 ["_userInputService"]
       55 GETTABLEKS                       R16 R16 K3 ["InputBegan"]
       57 MOVE                             R18 R12
       58 NAMECALL                         R16 R16 K2 ["Connect"]
       60 CALL                             R16 2 1
       61 GETTABLEKS                       R17 R0 K0 ["_userInputService"]
       63 GETTABLEKS                       R17 R17 K4 ["InputEnded"]
       65 MOVE                             R19 R13
       66 NAMECALL                         R17 R17 K2 ["Connect"]
       68 CALL                             R17 2 -1
       69 SETLIST                          R14 R15 -1 [1]
       71 CLOSEUPVALS                      R2
       72 RETURN                           R14 1

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
       15 RETURN                           R1 1

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
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["_reservedMouseDown"]
       19 GETUPVAL                         R3 1
       20 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       22 GETIMPORT                        R1 K9 [table.insert]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 DUPCLOSURE                       R3 K0 [PROTO_23]
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

PROTO_28:
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

PROTO_29:
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
       15 RETURN                           R1 1

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
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["_reservedMouseDown"]
       19 GETUPVAL                         R3 1
       20 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       22 GETIMPORT                        R1 K9 [table.insert]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 DUPCLOSURE                       R3 K0 [PROTO_30]
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["EditPlane"]
        4 NAMECALL                         R0 R0 K1 ["Disable"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["_toggleEditEnabled"]
       11 RETURN                           R0 0

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_mouse"]
        2 RETURN                           R1 1

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseDown"]
        2 RETURN                           R1 1

PROTO_46:
        0 MOVE                             R4 R1
        1 LOADB                            R5 1
        2 NAMECALL                         R2 R0 K0 ["SetEnabled"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_47:
        0 MOVE                             R4 R1
        1 LOADB                            R5 0
        2 NAMECALL                         R2 R0 K0 ["SetEnabled"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginActions"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["get"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R2 R3 K2 ["Enabled"]
        8 RETURN                           R0 0

PROTO_49:
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
       55 GETTABLEKS                       R11 R11 K17 ["Flags"]
       57 GETTABLEKS                       R11 R11 K19 ["getFFlagTerrainEditorCommitBrushSettings"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R0 K13 ["Src"]
       64 GETTABLEKS                       R12 R12 K20 ["Types"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R11 K21 ["BrushMode"]
       69 GETTABLEKS                       R13 R11 K22 ["BrushSettings"]
       71 GETTABLEKS                       R14 R11 K23 ["MaterialSettings"]
       73 GETTABLEKS                       R15 R11 K24 ["PluginAction"]
       75 LOADK                            R18 K25 ["ShortcutController"]
       76 NAMECALL                         R16 R3 K26 ["extend"]
       78 CALL                             R16 2 1
       79 DUPCLOSURE                       R17 K27 [PROTO_5]
       80 CAPTURE                          VAL R15
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R16
       84 SETTABLEKS                       R17 R16 K28 ["new"]
       86 DUPCLOSURE                       R17 K29 [PROTO_6]
       87 SETTABLEKS                       R17 R16 K30 ["isMouseMoveReserved"]
       89 DUPCLOSURE                       R17 K31 [PROTO_7]
       90 SETTABLEKS                       R17 R16 K32 ["isMouseDownReserved"]
       92 DUPCLOSURE                       R17 K33 [PROTO_8]
       93 SETTABLEKS                       R17 R16 K34 ["isAltDown"]
       95 DUPCLOSURE                       R17 K35 [PROTO_9]
       96 SETTABLEKS                       R17 R16 K36 ["isShiftDown"]
       98 DUPCLOSURE                       R17 K37 [PROTO_10]
       99 SETTABLEKS                       R17 R16 K38 ["isControlDown"]
      101 DUPCLOSURE                       R17 K39 [PROTO_11]
      102 SETTABLEKS                       R17 R16 K40 ["isBDown"]
      104 DUPCLOSURE                       R17 K41 [PROTO_22]
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R10
      107 SETTABLEKS                       R17 R16 K42 ["onBrushChanged"]
      109 MOVE                             R17 R9
      110 CALL                             R17 0 1
      111 JUMPIFNOT                        R17 ; [+11]
      112 DUPCLOSURE                       R17 K43 [PROTO_27]
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R14
      116 SETTABLEKS                       R17 R16 K44 ["onMaterialPicked"]
      118 DUPCLOSURE                       R17 K45 [PROTO_29]
      119 CAPTURE                          VAL R12
      120 SETTABLEKS                       R17 R16 K46 ["onBrushMode"]
      122 JUMP                             ; [+10]
      123 DUPCLOSURE                       R17 K47 [PROTO_34]
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R14
      127 SETTABLEKS                       R17 R16 K44 ["onMaterialPicked"]
      129 DUPCLOSURE                       R17 K48 [PROTO_36]
      130 CAPTURE                          VAL R12
      131 SETTABLEKS                       R17 R16 K46 ["onBrushMode"]
      133 DUPCLOSURE                       R17 K49 [PROTO_38]
      134 SETTABLEKS                       R17 R16 K50 ["onTemporarySmooth"]
      136 DUPCLOSURE                       R17 K51 [PROTO_41]
      137 CAPTURE                          VAL R15
      138 SETTABLEKS                       R17 R16 K52 ["onToggleEdit"]
      140 DUPCLOSURE                       R17 K53 [PROTO_42]
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R14
      143 SETTABLEKS                       R17 R16 K54 ["registerShortcut"]
      145 DUPCLOSURE                       R17 K55 [PROTO_43]
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R14
      148 SETTABLEKS                       R17 R16 K56 ["supportsShortcut"]
      150 DUPCLOSURE                       R17 K57 [PROTO_44]
      151 SETTABLEKS                       R17 R16 K58 ["getMouse"]
      153 DUPCLOSURE                       R17 K59 [PROTO_45]
      154 SETTABLEKS                       R17 R16 K60 ["IsMouseDown"]
      156 DUPCLOSURE                       R17 K61 [PROTO_46]
      157 SETTABLEKS                       R17 R16 K62 ["Enable"]
      159 DUPCLOSURE                       R17 K63 [PROTO_47]
      160 SETTABLEKS                       R17 R16 K64 ["Disable"]
      162 DUPCLOSURE                       R17 K65 [PROTO_48]
      163 SETTABLEKS                       R17 R16 K66 ["SetEnabled"]
      165 DUPCLOSURE                       R17 K67 [PROTO_49]
      166 SETTABLEKS                       R17 R16 K68 ["Connect"]
      168 RETURN                           R16 1
