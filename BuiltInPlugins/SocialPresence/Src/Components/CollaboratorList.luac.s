PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetCollaboratorsList"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetCollaboratorsList"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetCollaboratorsList"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetCollaboratorsList"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCollaboratorsList"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["CollaboratorInstanceCreatedSignal"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R1 R1 K2 ["Connect"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K3 ["CollaboratorInstanceDestroyedSignal"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U0
       22 NAMECALL                         R2 R2 K2 ["Connect"]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["CollaboratorStatusUpdatedSignal"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U0
       31 NAMECALL                         R3 R3 K2 ["Connect"]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K5 ["CollaboratorIdleUpdate"]
       37 NEWCLOSURE                       R6 P3
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U0
       40 NAMECALL                         R4 R4 K2 ["Connect"]
       42 CALL                             R4 2 1
       43 NEWCLOSURE                       R5 P4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ToggleSelectionHighlightsSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UserId"]
        4 GETUPVAL                         R3 2
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 NOT                              R2 R3
        3 NAMECALL                         R0 R0 K0 ["ToggleSelectionHighlights"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R2 K1 ["highlightsToggled"]
        8 GETUPVAL                         R4 1
        9 NOT                              R3 R4
       10 NAMECALL                         R0 R0 K2 ["report"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R2 1
       15 NOT                              R1 R2
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 LOADB                            R2 1
        4 NAMECALL                         R0 R0 K0 ["ToggleTeamCreate"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 LOADB                            R2 0
       10 LOADB                            R3 0
       11 GETIMPORT                        R4 K4 [Enum.StudioCloseMode.None]
       13 NAMECALL                         R0 R0 K5 ["ShowSaveOrPublishPlaceToRoblox"]
       15 CALL                             R0 4 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K0 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 NAMECALL                         R3 R3 K0 ["use"]
       15 CALL                             R3 1 1
       16 NAMECALL                         R3 R3 K1 ["get"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 4
       20 NAMECALL                         R4 R4 K0 ["use"]
       22 CALL                             R4 1 1
       23 NAMECALL                         R4 R4 K1 ["get"]
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 5
       27 GETTABLEKS                       R5 R5 K2 ["useState"]
       29 NEWTABLE                         R6 0 0
       31 CALL                             R5 1 2
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R7 R7 K2 ["useState"]
       35 NAMECALL                         R8 R4 K3 ["GetSelectionHighlightsEnabled"]
       37 CALL                             R8 1 -1
       38 CALL                             R7 -1 2
       39 GETUPVAL                         R9 5
       40 GETTABLEKS                       R9 R9 K2 ["useState"]
       42 LOADB                            R10 0
       43 CALL                             R9 1 2
       44 GETIMPORT                        R12 K5 [game]
       46 GETTABLEKS                       R12 R12 K6 ["GameId"]
       48 LOADN                            R13 0
       49 JUMPIFLT                         R13 R12 ; [+2]
       51 LOADB                            R11 0 +1
       52 LOADB                            R11 1
       53 GETUPVAL                         R12 5
       54 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       56 NEWCLOSURE                       R13 P0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 NEWTABLE                         R14 0 0
       61 CALL                             R12 2 0
       62 GETUPVAL                         R12 5
       63 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       65 NEWCLOSURE                       R13 P1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 NEWTABLE                         R14 0 1
       70 MOVE                             R15 R8
       71 SETLIST                          R14 R15 1 [1]
       73 CALL                             R12 2 0
       74 GETUPVAL                         R13 6
       75 JUMPIFNOT                        R13 ; [+6]
       76 LOADK                            R14 K8 ["Settings"]
       77 LOADK                            R15 K9 ["EnableTeamCreateTextConnection"]
       78 NAMECALL                         R12 R0 K10 ["getText"]
       80 CALL                             R12 3 1
       81 JUMP                             ; [+5]
       82 LOADK                            R14 K8 ["Settings"]
       83 LOADK                            R15 K11 ["EnableTeamCreateText"]
       84 NAMECALL                         R12 R0 K10 ["getText"]
       86 CALL                             R12 3 1
       87 GETUPVAL                         R14 6
       88 JUMPIFNOT                        R14 ; [+6]
       89 LOADK                            R15 K8 ["Settings"]
       90 LOADK                            R16 K12 ["SaveToRobloxTextConnection"]
       91 NAMECALL                         R13 R0 K10 ["getText"]
       93 CALL                             R13 3 1
       94 JUMP                             ; [+5]
       95 LOADK                            R15 K8 ["Settings"]
       96 LOADK                            R16 K13 ["SaveToRobloxText"]
       97 NAMECALL                         R13 R0 K10 ["getText"]
       99 CALL                             R13 3 1
      100 LENGTH                           R14 R5
      101 JUMPIFEQKN                       R14 K14 [0] ; [+289]
      103 DUPTABLE                         R14 K16 [{"Layout"}]
      104 GETUPVAL                         R15 5
      105 GETTABLEKS                       R15 R15 K17 ["createElement"]
      107 LOADK                            R16 K18 ["UIListLayout"]
      108 DUPTABLE                         R17 K20 [{"FillDirection"}]
      109 GETIMPORT                        R18 K23 [Enum.FillDirection.Vertical]
      111 SETTABLEKS                       R18 R17 K19 ["FillDirection"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K15 ["Layout"]
      116 MOVE                             R15 R5
      117 LOADNIL                          R16
      118 LOADNIL                          R17
      119 FORGPREP                         R15
      120 GETTABLEKS                       R21 R19 K24 ["UserId"]
      122 GETUPVAL                         R22 7
      123 JUMPIFNOTEQ                      R21 R22 ; [+3]
      125 LOADN                            R20 -1
      126 JUMP                             ; [+1]
      127 MOVE                             R20 R18
      128 GETUPVAL                         R21 5
      129 GETTABLEKS                       R21 R21 K17 ["createElement"]
      131 GETUPVAL                         R22 8
      132 DUPTABLE                         R23 K33 [{"Id", "Username", "Color", "IsIdle", "Status", "CurDocGUID", "CanJumpBack", "OnJump"}]
      133 GETTABLEKS                       R24 R19 K24 ["UserId"]
      135 SETTABLEKS                       R24 R23 K25 ["Id"]
      137 GETTABLEKS                       R24 R19 K26 ["Username"]
      139 SETTABLEKS                       R24 R23 K26 ["Username"]
      141 GETTABLEKS                       R24 R19 K34 ["CollaboratorColor3"]
      143 SETTABLEKS                       R24 R23 K27 ["Color"]
      145 GETTABLEKS                       R24 R19 K28 ["IsIdle"]
      147 SETTABLEKS                       R24 R23 K28 ["IsIdle"]
      149 GETTABLEKS                       R25 R19 K29 ["Status"]
      151 FASTCALL1                        TOSTRING R25 ; [+2]
      152 GETIMPORT                        R24 K36 [tostring]
      154 CALL                             R24 1 1
      155 SETTABLEKS                       R24 R23 K29 ["Status"]
      157 GETTABLEKS                       R24 R19 K30 ["CurDocGUID"]
      159 SETTABLEKS                       R24 R23 K30 ["CurDocGUID"]
      161 LOADB                            R24 0
      162 GETTABLEKS                       R25 R19 K24 ["UserId"]
      164 GETUPVAL                         R26 7
      165 JUMPIFNOTEQ                      R25 R26 ; [+2]
      167 MOVE                             R24 R9
      168 SETTABLEKS                       R24 R23 K31 ["CanJumpBack"]
      170 NEWCLOSURE                       R24 P2
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R19
      173 CAPTURE                          UPVAL U7
      174 SETTABLEKS                       R24 R23 K32 ["OnJump"]
      176 CALL                             R21 2 1
      177 SETTABLE                         R21 R14 R20
      178 FORGLOOP                         R15 2 ; [-59]
      180 GETUPVAL                         R15 5
      181 GETTABLEKS                       R15 R15 K17 ["createElement"]
      183 GETUPVAL                         R16 9
      184 DUPTABLE                         R17 K38 [{"Size"}]
      185 GETIMPORT                        R18 K41 [UDim2.fromScale]
      187 LOADN                            R19 1
      188 LOADN                            R20 1
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K37 ["Size"]
      192 DUPTABLE                         R18 K45 [{"Body", "HighlightToggle", "Footer"}]
      193 GETUPVAL                         R19 5
      194 GETTABLEKS                       R19 R19 K17 ["createElement"]
      196 GETUPVAL                         R20 10
      197 DUPTABLE                         R21 K48 [{["Padding"] = 8, ["Size"]}]
      198 GETIMPORT                        R22 K50 [UDim2.new]
      200 LOADN                            R23 1
      201 LOADN                            R24 0
      202 LOADN                            R25 1
      203 GETTABLEKS                       R28 R1 K51 ["footer"]
      205 GETTABLEKS                       R28 R28 K52 ["height"]
      207 GETTABLEKS                       R29 R1 K53 ["highlightToggle"]
      209 GETTABLEKS                       R29 R29 K52 ["height"]
      211 ADD                              R27 R28 R29
      212 MINUS                            R26 R27
      213 CALL                             R22 4 1
      214 SETTABLEKS                       R22 R21 K37 ["Size"]
      216 MOVE                             R22 R14
      217 CALL                             R19 3 1
      218 SETTABLEKS                       R19 R18 K42 ["Body"]
      220 GETUPVAL                         R19 5
      221 GETTABLEKS                       R19 R19 K17 ["createElement"]
      223 LOADK                            R20 K54 ["TextButton"]
      224 NEWTABLE                         R21 16 0
      226 LOADK                            R24 K8 ["Settings"]
      227 LOADK                            R25 K55 ["ShowSelections"]
      228 NAMECALL                         R22 R0 K10 ["getText"]
      230 CALL                             R22 3 1
      231 SETTABLEKS                       R22 R21 K56 ["Text"]
      233 GETIMPORT                        R22 K59 [Enum.TextXAlignment.Left]
      235 SETTABLEKS                       R22 R21 K57 ["TextXAlignment"]
      237 GETTABLEKS                       R22 R1 K51 ["footer"]
      239 GETTABLEKS                       R22 R22 K60 ["iconColor"]
      241 SETTABLEKS                       R22 R21 K61 ["TextColor3"]
      243 LOADN                            R22 16
      244 SETTABLEKS                       R22 R21 K62 ["TextSize"]
      246 GETIMPORT                        R22 K65 [Font.fromEnum]
      248 GETIMPORT                        R23 K67 [Enum.Font.SourceSans]
      250 CALL                             R22 1 1
      251 SETTABLEKS                       R22 R21 K68 ["FontFace"]
      253 LOADB                            R22 0
      254 SETTABLEKS                       R22 R21 K69 ["AutoButtonColor"]
      256 GETTABLEKS                       R22 R1 K53 ["highlightToggle"]
      258 GETTABLEKS                       R22 R22 K70 ["background"]
      260 SETTABLEKS                       R22 R21 K71 ["BackgroundColor3"]
      262 GETTABLEKS                       R22 R1 K53 ["highlightToggle"]
      264 GETTABLEKS                       R22 R22 K72 ["border"]
      266 SETTABLEKS                       R22 R21 K73 ["BorderColor3"]
      268 GETIMPORT                        R22 K50 [UDim2.new]
      270 LOADN                            R23 1
      271 LOADN                            R24 0
      272 LOADN                            R25 0
      273 GETTABLEKS                       R26 R1 K53 ["highlightToggle"]
      275 GETTABLEKS                       R26 R26 K52 ["height"]
      277 CALL                             R22 4 1
      278 SETTABLEKS                       R22 R21 K37 ["Size"]
      280 GETIMPORT                        R22 K75 [Vector2.new]
      282 LOADN                            R23 0
      283 LOADN                            R24 1
      284 CALL                             R22 2 1
      285 SETTABLEKS                       R22 R21 K76 ["AnchorPoint"]
      287 GETIMPORT                        R22 K50 [UDim2.new]
      289 LOADN                            R23 0
      290 LOADN                            R24 0
      291 LOADN                            R25 1
      292 GETTABLEKS                       R28 R1 K51 ["footer"]
      294 GETTABLEKS                       R28 R28 K52 ["height"]
      296 MINUS                            R27 R28
      297 SUBK                             R26 R27 K77 [1]
      298 CALL                             R22 4 1
      299 SETTABLEKS                       R22 R21 K78 ["Position"]
      301 LOADN                            R22 2
      302 SETTABLEKS                       R22 R21 K79 ["ZIndex"]
      304 GETUPVAL                         R22 5
      305 GETTABLEKS                       R22 R22 K80 ["Tag"]
      307 LOADK                            R23 K81 ["data-testid=highlightsToggleCheckboxParent"]
      308 SETTABLE                         R23 R21 R22
      309 GETUPVAL                         R22 5
      310 GETTABLEKS                       R22 R22 K82 ["Event"]
      312 GETTABLEKS                       R22 R22 K83 ["Activated"]
      314 NEWCLOSURE                       R23 P3
      315 CAPTURE                          VAL R4
      316 CAPTURE                          VAL R7
      317 CAPTURE                          VAL R2
      318 CAPTURE                          VAL R8
      319 SETTABLE                         R23 R21 R22
      320 DUPTABLE                         R22 K85 [{"Padding", "Checkbox"}]
      321 GETUPVAL                         R23 5
      322 GETTABLEKS                       R23 R23 K17 ["createElement"]
      324 LOADK                            R24 K86 ["UIPadding"]
      325 DUPTABLE                         R25 K88 [{"PaddingLeft"}]
      326 GETIMPORT                        R26 K90 [UDim.new]
      328 LOADN                            R27 0
      329 LOADN                            R28 26
      330 CALL                             R26 2 1
      331 SETTABLEKS                       R26 R25 K87 ["PaddingLeft"]
      333 CALL                             R23 2 1
      334 SETTABLEKS                       R23 R22 K46 ["Padding"]
      336 GETUPVAL                         R23 5
      337 GETTABLEKS                       R23 R23 K17 ["createElement"]
      339 GETUPVAL                         R24 11
      340 DUPTABLE                         R25 K92 [{"Image", "Size", "Position", "AnchorPoint"}]
      341 JUMPIFNOT                        R7 ; [+5]
      342 GETTABLEKS                       R26 R1 K51 ["footer"]
      344 GETTABLEKS                       R26 R26 K93 ["checkedIcon"]
      346 JUMPIF                           R26 ; [+4]
      347 GETTABLEKS                       R26 R1 K51 ["footer"]
      349 GETTABLEKS                       R26 R26 K94 ["uncheckedIcon"]
      351 SETTABLEKS                       R26 R25 K91 ["Image"]
      353 GETIMPORT                        R26 K96 [UDim2.fromOffset]
      355 LOADN                            R27 16
      356 LOADN                            R28 16
      357 CALL                             R26 2 1
      358 SETTABLEKS                       R26 R25 K37 ["Size"]
      360 GETIMPORT                        R26 K50 [UDim2.new]
      362 LOADN                            R27 0
      363 LOADN                            R28 -6
      364 LOADK                            R29 K97 [0.5]
      365 LOADN                            R30 0
      366 CALL                             R26 4 1
      367 SETTABLEKS                       R26 R25 K78 ["Position"]
      369 GETIMPORT                        R26 K75 [Vector2.new]
      371 LOADN                            R27 1
      372 LOADK                            R28 K97 [0.5]
      373 CALL                             R26 2 1
      374 SETTABLEKS                       R26 R25 K76 ["AnchorPoint"]
      376 CALL                             R23 2 1
      377 SETTABLEKS                       R23 R22 K84 ["Checkbox"]
      379 CALL                             R19 3 1
      380 SETTABLEKS                       R19 R18 K43 ["HighlightToggle"]
      382 GETUPVAL                         R19 5
      383 GETTABLEKS                       R19 R19 K17 ["createElement"]
      385 GETUPVAL                         R20 12
      386 CALL                             R19 1 1
      387 SETTABLEKS                       R19 R18 K44 ["Footer"]
      389 CALL                             R15 3 -1
      390 RETURN                           R15 -1
      391 GETUPVAL                         R14 5
      392 GETTABLEKS                       R14 R14 K17 ["createElement"]
      394 GETUPVAL                         R15 9
      395 DUPTABLE                         R16 K100 [{["Size"], ["Style"] = "Box"}]
      396 GETIMPORT                        R17 K41 [UDim2.fromScale]
      398 LOADN                            R18 1
      399 LOADN                            R19 1
      400 CALL                             R17 2 1
      401 SETTABLEKS                       R17 R16 K37 ["Size"]
      403 DUPTABLE                         R17 K103 [{"TeamCreateText", "Button"}]
      404 GETUPVAL                         R18 5
      405 GETTABLEKS                       R18 R18 K17 ["createElement"]
      407 GETUPVAL                         R19 13
      408 DUPTABLE                         R20 K107 [{["Text"], ["Size"], ["Position"], ["AnchorPoint"], ["TextWrapped"] = True, ["Style"] = "Body", ["TextSize"] = 16}]
      409 JUMPIFNOT                        R11 ; [+2]
      410 MOVE                             R21 R12
      411 JUMPIF                           R21 ; [+1]
      412 MOVE                             R21 R13
      413 SETTABLEKS                       R21 R20 K56 ["Text"]
      415 GETIMPORT                        R21 K50 [UDim2.new]
      417 LOADN                            R22 1
      418 LOADN                            R23 0
      419 LOADN                            R24 0
      420 LOADN                            R25 48
      421 CALL                             R21 4 1
      422 SETTABLEKS                       R21 R20 K37 ["Size"]
      424 GETIMPORT                        R21 K50 [UDim2.new]
      426 LOADK                            R22 K97 [0.5]
      427 LOADN                            R23 0
      428 LOADK                            R24 K97 [0.5]
      429 LOADN                            R25 -8
      430 CALL                             R21 4 1
      431 SETTABLEKS                       R21 R20 K78 ["Position"]
      433 GETIMPORT                        R21 K75 [Vector2.new]
      435 LOADK                            R22 K97 [0.5]
      436 LOADN                            R23 1
      437 CALL                             R21 2 1
      438 SETTABLEKS                       R21 R20 K76 ["AnchorPoint"]
      440 CALL                             R18 2 1
      441 SETTABLEKS                       R18 R17 K101 ["TeamCreateText"]
      443 GETUPVAL                         R18 5
      444 GETTABLEKS                       R18 R18 K17 ["createElement"]
      446 GETUPVAL                         R19 14
      447 DUPTABLE                         R20 K110 [{["Style"] = "RoundPrimary", ["Text"], ["OnClick"], ["Position"], ["AnchorPoint"], ["Size"]}]
      448 JUMPIFNOT                        R11 ; [+6]
      449 LOADK                            R23 K8 ["Settings"]
      450 LOADK                            R24 K111 ["EnableTeamCreate"]
      451 NAMECALL                         R21 R0 K10 ["getText"]
      453 CALL                             R21 3 1
      454 JUMPIF                           R21 ; [+5]
      455 LOADK                            R23 K8 ["Settings"]
      456 LOADK                            R24 K112 ["SaveToRoblox"]
      457 NAMECALL                         R21 R0 K10 ["getText"]
      459 CALL                             R21 3 1
      460 SETTABLEKS                       R21 R20 K56 ["Text"]
      462 NEWCLOSURE                       R21 P4
      463 CAPTURE                          VAL R11
      464 CAPTURE                          VAL R4
      465 CAPTURE                          VAL R3
      466 SETTABLEKS                       R21 R20 K109 ["OnClick"]
      468 GETIMPORT                        R21 K41 [UDim2.fromScale]
      470 LOADK                            R22 K97 [0.5]
      471 LOADK                            R23 K97 [0.5]
      472 CALL                             R21 2 1
      473 SETTABLEKS                       R21 R20 K78 ["Position"]
      475 GETIMPORT                        R21 K75 [Vector2.new]
      477 LOADK                            R22 K97 [0.5]
      478 LOADN                            R23 0
      479 CALL                             R21 2 1
      480 SETTABLEKS                       R21 R20 K76 ["AnchorPoint"]
      482 GETIMPORT                        R21 K96 [UDim2.fromOffset]
      484 LOADN                            R22 142
      485 LOADN                            R23 40
      486 CALL                             R21 2 1
      487 SETTABLEKS                       R21 R20 K37 ["Size"]
      489 CALL                             R18 2 1
      490 SETTABLEKS                       R18 R17 K102 ["Button"]
      492 CALL                             R14 3 -1
      493 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["Localization"]
       27 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       29 GETTABLEKS                       R6 R2 K11 ["Style"]
       31 GETTABLEKS                       R6 R6 K12 ["Stylizer"]
       33 GETTABLEKS                       R7 R2 K13 ["UI"]
       35 GETTABLEKS                       R8 R7 K14 ["Pane"]
       37 GETTABLEKS                       R9 R7 K15 ["TextLabel"]
       39 GETTABLEKS                       R10 R7 K16 ["Button"]
       41 GETTABLEKS                       R11 R7 K17 ["Image"]
       43 GETTABLEKS                       R12 R7 K18 ["ScrollingFrame"]
       45 GETIMPORT                        R13 K4 [require]
       47 GETTABLEKS                       R14 R0 K19 ["Src"]
       49 GETTABLEKS                       R14 R14 K20 ["Components"]
       51 GETTABLEKS                       R14 R14 K21 ["CollaboratorItem"]
       53 CALL                             R13 1 1
       54 GETIMPORT                        R14 K4 [require]
       56 GETTABLEKS                       R15 R0 K19 ["Src"]
       58 GETTABLEKS                       R15 R15 K20 ["Components"]
       60 GETTABLEKS                       R15 R15 K22 ["CollaboratorListFooter"]
       62 CALL                             R14 1 1
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R16 R0 K19 ["Src"]
       67 GETTABLEKS                       R16 R16 K8 ["ContextServices"]
       69 GETTABLEKS                       R16 R16 K23 ["CollaboratorsServiceContext"]
       71 CALL                             R15 1 1
       72 GETIMPORT                        R16 K4 [require]
       74 GETTABLEKS                       R17 R0 K19 ["Src"]
       76 GETTABLEKS                       R17 R17 K8 ["ContextServices"]
       78 GETTABLEKS                       R17 R17 K24 ["StudioPublishServiceContext"]
       80 CALL                             R16 1 1
       81 GETIMPORT                        R17 K26 [game]
       83 LOADK                            R19 K27 ["StudioService"]
       84 NAMECALL                         R17 R17 K28 ["GetService"]
       86 CALL                             R17 2 1
       87 NAMECALL                         R18 R17 K29 ["GetUserId"]
       89 CALL                             R18 1 1
       90 GETIMPORT                        R19 K26 [game]
       92 LOADK                            R21 K30 ["StudioFriendToConnection"]
       93 NAMECALL                         R19 R19 K31 ["GetFastFlag"]
       95 CALL                             R19 2 1
       96 DUPCLOSURE                       R20 K32 [PROTO_12]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R10
      112 RETURN                           R20 1
