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
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["CollaboratorInstanceCreatedSignal"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R1 R1 K2 ["Connect"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K3 ["CollaboratorInstanceDestroyedSignal"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U0
       22 NAMECALL                         R2 R2 K2 ["Connect"]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K4 ["CollaboratorStatusUpdatedSignal"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U0
       31 NAMECALL                         R3 R3 K2 ["Connect"]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K5 ["CollaboratorIdleUpdate"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ToggleSelectionHighlightsSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["UserId"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
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
       26 GETUPVAL                         R6 5
       27 GETTABLEKS                       R5 R6 K2 ["useState"]
       29 NEWTABLE                         R6 0 0
       31 CALL                             R5 1 2
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R7 R8 K2 ["useState"]
       35 NAMECALL                         R8 R4 K3 ["GetSelectionHighlightsEnabled"]
       37 CALL                             R8 1 -1
       38 CALL                             R7 -1 2
       39 GETUPVAL                         R10 5
       40 GETTABLEKS                       R9 R10 K2 ["useState"]
       42 LOADB                            R10 0
       43 CALL                             R9 1 2
       44 GETIMPORT                        R13 K5 [game]
       46 GETTABLEKS                       R12 R13 K6 ["GameId"]
       48 LOADN                            R13 0
       49 JUMPIFLT                         R13 R12 ; [+2]
       51 LOADB                            R11 0 +1
       52 LOADB                            R11 1
       53 GETUPVAL                         R13 5
       54 GETTABLEKS                       R12 R13 K7 ["useEffect"]
       56 NEWCLOSURE                       R13 P0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 NEWTABLE                         R14 0 0
       61 CALL                             R12 2 0
       62 GETUPVAL                         R13 5
       63 GETTABLEKS                       R12 R13 K7 ["useEffect"]
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
      101 JUMPIFEQKN                       R14 K14 [0] ; [+292]
      103 DUPTABLE                         R14 K16 [{"Layout"}]
      104 GETUPVAL                         R16 5
      105 GETTABLEKS                       R15 R16 K17 ["createElement"]
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
      125 LOADN                            R20 255
      126 JUMP                             ; [+1]
      127 MOVE                             R20 R18
      128 GETUPVAL                         R22 5
      129 GETTABLEKS                       R21 R22 K17 ["createElement"]
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
      180 GETUPVAL                         R16 5
      181 GETTABLEKS                       R15 R16 K17 ["createElement"]
      183 GETUPVAL                         R16 9
      184 DUPTABLE                         R17 K38 [{"Size"}]
      185 GETIMPORT                        R18 K41 [UDim2.fromScale]
      187 LOADN                            R19 1
      188 LOADN                            R20 1
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K37 ["Size"]
      192 DUPTABLE                         R18 K45 [{"Body", "HighlightToggle", "Footer"}]
      193 GETUPVAL                         R20 5
      194 GETTABLEKS                       R19 R20 K17 ["createElement"]
      196 GETUPVAL                         R20 10
      197 DUPTABLE                         R21 K47 [{"Padding", "Size"}]
      198 LOADN                            R22 8
      199 SETTABLEKS                       R22 R21 K46 ["Padding"]
      201 GETIMPORT                        R22 K49 [UDim2.new]
      203 LOADN                            R23 1
      204 LOADN                            R24 0
      205 LOADN                            R25 1
      206 GETTABLEKS                       R29 R1 K50 ["footer"]
      208 GETTABLEKS                       R28 R29 K51 ["height"]
      210 GETTABLEKS                       R30 R1 K52 ["highlightToggle"]
      212 GETTABLEKS                       R29 R30 K51 ["height"]
      214 ADD                              R27 R28 R29
      215 MINUS                            R26 R27
      216 CALL                             R22 4 1
      217 SETTABLEKS                       R22 R21 K37 ["Size"]
      219 MOVE                             R22 R14
      220 CALL                             R19 3 1
      221 SETTABLEKS                       R19 R18 K42 ["Body"]
      223 GETUPVAL                         R20 5
      224 GETTABLEKS                       R19 R20 K17 ["createElement"]
      226 LOADK                            R20 K53 ["TextButton"]
      227 NEWTABLE                         R21 16 0
      229 LOADK                            R24 K8 ["Settings"]
      230 LOADK                            R25 K54 ["ShowSelections"]
      231 NAMECALL                         R22 R0 K10 ["getText"]
      233 CALL                             R22 3 1
      234 SETTABLEKS                       R22 R21 K55 ["Text"]
      236 GETIMPORT                        R22 K58 [Enum.TextXAlignment.Left]
      238 SETTABLEKS                       R22 R21 K56 ["TextXAlignment"]
      240 GETTABLEKS                       R23 R1 K50 ["footer"]
      242 GETTABLEKS                       R22 R23 K59 ["iconColor"]
      244 SETTABLEKS                       R22 R21 K60 ["TextColor3"]
      246 LOADN                            R22 16
      247 SETTABLEKS                       R22 R21 K61 ["TextSize"]
      249 GETIMPORT                        R22 K64 [Font.fromEnum]
      251 GETIMPORT                        R23 K66 [Enum.Font.SourceSans]
      253 CALL                             R22 1 1
      254 SETTABLEKS                       R22 R21 K67 ["FontFace"]
      256 LOADB                            R22 0
      257 SETTABLEKS                       R22 R21 K68 ["AutoButtonColor"]
      259 GETTABLEKS                       R23 R1 K52 ["highlightToggle"]
      261 GETTABLEKS                       R22 R23 K69 ["background"]
      263 SETTABLEKS                       R22 R21 K70 ["BackgroundColor3"]
      265 GETTABLEKS                       R23 R1 K52 ["highlightToggle"]
      267 GETTABLEKS                       R22 R23 K71 ["border"]
      269 SETTABLEKS                       R22 R21 K72 ["BorderColor3"]
      271 GETIMPORT                        R22 K49 [UDim2.new]
      273 LOADN                            R23 1
      274 LOADN                            R24 0
      275 LOADN                            R25 0
      276 GETTABLEKS                       R27 R1 K52 ["highlightToggle"]
      278 GETTABLEKS                       R26 R27 K51 ["height"]
      280 CALL                             R22 4 1
      281 SETTABLEKS                       R22 R21 K37 ["Size"]
      283 GETIMPORT                        R22 K74 [Vector2.new]
      285 LOADN                            R23 0
      286 LOADN                            R24 1
      287 CALL                             R22 2 1
      288 SETTABLEKS                       R22 R21 K75 ["AnchorPoint"]
      290 GETIMPORT                        R22 K49 [UDim2.new]
      292 LOADN                            R23 0
      293 LOADN                            R24 0
      294 LOADN                            R25 1
      295 GETTABLEKS                       R29 R1 K50 ["footer"]
      297 GETTABLEKS                       R28 R29 K51 ["height"]
      299 MINUS                            R27 R28
      300 SUBK                             R26 R27 K76 [1]
      301 CALL                             R22 4 1
      302 SETTABLEKS                       R22 R21 K77 ["Position"]
      304 LOADN                            R22 2
      305 SETTABLEKS                       R22 R21 K78 ["ZIndex"]
      307 GETUPVAL                         R23 5
      308 GETTABLEKS                       R22 R23 K79 ["Tag"]
      310 LOADK                            R23 K80 ["data-testid=highlightsToggleCheckboxParent"]
      311 SETTABLE                         R23 R21 R22
      312 GETUPVAL                         R24 5
      313 GETTABLEKS                       R23 R24 K81 ["Event"]
      315 GETTABLEKS                       R22 R23 K82 ["Activated"]
      317 NEWCLOSURE                       R23 P3
      318 CAPTURE                          VAL R4
      319 CAPTURE                          VAL R7
      320 CAPTURE                          VAL R2
      321 CAPTURE                          VAL R8
      322 SETTABLE                         R23 R21 R22
      323 DUPTABLE                         R22 K84 [{"Padding", "Checkbox"}]
      324 GETUPVAL                         R24 5
      325 GETTABLEKS                       R23 R24 K17 ["createElement"]
      327 LOADK                            R24 K85 ["UIPadding"]
      328 DUPTABLE                         R25 K87 [{"PaddingLeft"}]
      329 GETIMPORT                        R26 K89 [UDim.new]
      331 LOADN                            R27 0
      332 LOADN                            R28 26
      333 CALL                             R26 2 1
      334 SETTABLEKS                       R26 R25 K86 ["PaddingLeft"]
      336 CALL                             R23 2 1
      337 SETTABLEKS                       R23 R22 K46 ["Padding"]
      339 GETUPVAL                         R24 5
      340 GETTABLEKS                       R23 R24 K17 ["createElement"]
      342 GETUPVAL                         R24 11
      343 DUPTABLE                         R25 K91 [{"Image", "Size", "Position", "AnchorPoint"}]
      344 JUMPIFNOT                        R7 ; [+5]
      345 GETTABLEKS                       R27 R1 K50 ["footer"]
      347 GETTABLEKS                       R26 R27 K92 ["checkedIcon"]
      349 JUMPIF                           R26 ; [+4]
      350 GETTABLEKS                       R27 R1 K50 ["footer"]
      352 GETTABLEKS                       R26 R27 K93 ["uncheckedIcon"]
      354 SETTABLEKS                       R26 R25 K90 ["Image"]
      356 GETIMPORT                        R26 K95 [UDim2.fromOffset]
      358 LOADN                            R27 16
      359 LOADN                            R28 16
      360 CALL                             R26 2 1
      361 SETTABLEKS                       R26 R25 K37 ["Size"]
      363 GETIMPORT                        R26 K49 [UDim2.new]
      365 LOADN                            R27 0
      366 LOADN                            R28 250
      367 LOADK                            R29 K96 [0.5]
      368 LOADN                            R30 0
      369 CALL                             R26 4 1
      370 SETTABLEKS                       R26 R25 K77 ["Position"]
      372 GETIMPORT                        R26 K74 [Vector2.new]
      374 LOADN                            R27 1
      375 LOADK                            R28 K96 [0.5]
      376 CALL                             R26 2 1
      377 SETTABLEKS                       R26 R25 K75 ["AnchorPoint"]
      379 CALL                             R23 2 1
      380 SETTABLEKS                       R23 R22 K83 ["Checkbox"]
      382 CALL                             R19 3 1
      383 SETTABLEKS                       R19 R18 K43 ["HighlightToggle"]
      385 GETUPVAL                         R20 5
      386 GETTABLEKS                       R19 R20 K17 ["createElement"]
      388 GETUPVAL                         R20 12
      389 CALL                             R19 1 1
      390 SETTABLEKS                       R19 R18 K44 ["Footer"]
      392 CALL                             R15 3 -1
      393 RETURN                           R15 -1
      394 GETUPVAL                         R15 5
      395 GETTABLEKS                       R14 R15 K17 ["createElement"]
      397 GETUPVAL                         R15 9
      398 DUPTABLE                         R16 K98 [{"Size", "Style"}]
      399 GETIMPORT                        R17 K41 [UDim2.fromScale]
      401 LOADN                            R18 1
      402 LOADN                            R19 1
      403 CALL                             R17 2 1
      404 SETTABLEKS                       R17 R16 K37 ["Size"]
      406 LOADK                            R17 K99 ["Box"]
      407 SETTABLEKS                       R17 R16 K97 ["Style"]
      409 DUPTABLE                         R17 K102 [{"TeamCreateText", "Button"}]
      410 GETUPVAL                         R19 5
      411 GETTABLEKS                       R18 R19 K17 ["createElement"]
      413 GETUPVAL                         R19 13
      414 DUPTABLE                         R20 K104 [{"Text", "Size", "Position", "AnchorPoint", "TextWrapped", "Style", "TextSize"}]
      415 JUMPIFNOT                        R11 ; [+2]
      416 MOVE                             R21 R12
      417 JUMPIF                           R21 ; [+1]
      418 MOVE                             R21 R13
      419 SETTABLEKS                       R21 R20 K55 ["Text"]
      421 GETIMPORT                        R21 K49 [UDim2.new]
      423 LOADN                            R22 1
      424 LOADN                            R23 0
      425 LOADN                            R24 0
      426 LOADN                            R25 48
      427 CALL                             R21 4 1
      428 SETTABLEKS                       R21 R20 K37 ["Size"]
      430 GETIMPORT                        R21 K49 [UDim2.new]
      432 LOADK                            R22 K96 [0.5]
      433 LOADN                            R23 0
      434 LOADK                            R24 K96 [0.5]
      435 LOADN                            R25 248
      436 CALL                             R21 4 1
      437 SETTABLEKS                       R21 R20 K77 ["Position"]
      439 GETIMPORT                        R21 K74 [Vector2.new]
      441 LOADK                            R22 K96 [0.5]
      442 LOADN                            R23 1
      443 CALL                             R21 2 1
      444 SETTABLEKS                       R21 R20 K75 ["AnchorPoint"]
      446 LOADB                            R21 1
      447 SETTABLEKS                       R21 R20 K103 ["TextWrapped"]
      449 LOADK                            R21 K42 ["Body"]
      450 SETTABLEKS                       R21 R20 K97 ["Style"]
      452 LOADN                            R21 16
      453 SETTABLEKS                       R21 R20 K61 ["TextSize"]
      455 CALL                             R18 2 1
      456 SETTABLEKS                       R18 R17 K100 ["TeamCreateText"]
      458 GETUPVAL                         R19 5
      459 GETTABLEKS                       R18 R19 K17 ["createElement"]
      461 GETUPVAL                         R19 14
      462 DUPTABLE                         R20 K106 [{"Style", "Text", "OnClick", "Position", "AnchorPoint", "Size"}]
      463 LOADK                            R21 K107 ["RoundPrimary"]
      464 SETTABLEKS                       R21 R20 K97 ["Style"]
      466 JUMPIFNOT                        R11 ; [+6]
      467 LOADK                            R23 K8 ["Settings"]
      468 LOADK                            R24 K108 ["EnableTeamCreate"]
      469 NAMECALL                         R21 R0 K10 ["getText"]
      471 CALL                             R21 3 1
      472 JUMPIF                           R21 ; [+5]
      473 LOADK                            R23 K8 ["Settings"]
      474 LOADK                            R24 K109 ["SaveToRoblox"]
      475 NAMECALL                         R21 R0 K10 ["getText"]
      477 CALL                             R21 3 1
      478 SETTABLEKS                       R21 R20 K55 ["Text"]
      480 NEWCLOSURE                       R21 P4
      481 CAPTURE                          VAL R11
      482 CAPTURE                          VAL R4
      483 CAPTURE                          VAL R3
      484 SETTABLEKS                       R21 R20 K105 ["OnClick"]
      486 GETIMPORT                        R21 K41 [UDim2.fromScale]
      488 LOADK                            R22 K96 [0.5]
      489 LOADK                            R23 K96 [0.5]
      490 CALL                             R21 2 1
      491 SETTABLEKS                       R21 R20 K77 ["Position"]
      493 GETIMPORT                        R21 K74 [Vector2.new]
      495 LOADK                            R22 K96 [0.5]
      496 LOADN                            R23 0
      497 CALL                             R21 2 1
      498 SETTABLEKS                       R21 R20 K75 ["AnchorPoint"]
      500 GETIMPORT                        R21 K95 [UDim2.fromOffset]
      502 LOADN                            R22 142
      503 LOADN                            R23 40
      504 CALL                             R21 2 1
      505 SETTABLEKS                       R21 R20 K37 ["Size"]
      507 CALL                             R18 2 1
      508 SETTABLEKS                       R18 R17 K101 ["Button"]
      510 CALL                             R14 3 -1
      511 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["Localization"]
       27 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       29 GETTABLEKS                       R7 R2 K11 ["Style"]
       31 GETTABLEKS                       R6 R7 K12 ["Stylizer"]
       33 GETTABLEKS                       R7 R2 K13 ["UI"]
       35 GETTABLEKS                       R8 R7 K14 ["Pane"]
       37 GETTABLEKS                       R9 R7 K15 ["TextLabel"]
       39 GETTABLEKS                       R10 R7 K16 ["Button"]
       41 GETTABLEKS                       R11 R7 K17 ["Image"]
       43 GETTABLEKS                       R12 R7 K18 ["ScrollingFrame"]
       45 GETIMPORT                        R13 K4 [require]
       47 GETTABLEKS                       R16 R0 K19 ["Src"]
       49 GETTABLEKS                       R15 R16 K20 ["Components"]
       51 GETTABLEKS                       R14 R15 K21 ["CollaboratorItem"]
       53 CALL                             R13 1 1
       54 GETIMPORT                        R14 K4 [require]
       56 GETTABLEKS                       R17 R0 K19 ["Src"]
       58 GETTABLEKS                       R16 R17 K20 ["Components"]
       60 GETTABLEKS                       R15 R16 K22 ["CollaboratorListFooter"]
       62 CALL                             R14 1 1
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R18 R0 K19 ["Src"]
       67 GETTABLEKS                       R17 R18 K8 ["ContextServices"]
       69 GETTABLEKS                       R16 R17 K23 ["CollaboratorsServiceContext"]
       71 CALL                             R15 1 1
       72 GETIMPORT                        R16 K4 [require]
       74 GETTABLEKS                       R19 R0 K19 ["Src"]
       76 GETTABLEKS                       R18 R19 K8 ["ContextServices"]
       78 GETTABLEKS                       R17 R18 K24 ["StudioPublishServiceContext"]
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
