PROTO_0:
        0 DUPTABLE                         R0 K1 [{"fov"}]
        1 LOADN                            R1 70
        2 SETTABLEKS                       R1 R0 K0 ["fov"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["openAutoSetupScreen"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["autoSetupState"]
        3 GETTABLEKS                       R0 R0 K1 ["target"]
        5 GETTABLEKS                       R0 R0 K2 ["model"]
        7 NAMECALL                         R1 R0 K3 ["Clone"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K4 ["PrimaryPart"]
       12 GETIMPORT                        R3 K7 [CFrame.new]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K8 ["PivotOffset"]
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["autoSetupState"]
        3 GETTABLEKS                       R0 R0 K1 ["type"]
        5 JUMPIFNOTEQKS                    R0 K2 ["hasSelection"] ; [+3]
        7 LOADB                            R0 1
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["autoSetupState"]
       12 GETTABLEKS                       R0 R0 K1 ["type"]
       14 JUMPIFNOTEQKS                    R0 K3 ["error"] ; [+14]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["autoSetupState"]
       19 GETTABLEKS                       R0 R0 K3 ["error"]
       21 JUMPIFNOTEQKS                    R0 K4 ["ErrorSourceFail"] ; [+3]
       23 LOADB                            R1 1
       24 RETURN                           R1 1
       25 GETUPVAL                         R1 1
       26 MOVE                             R2 R0
       27 CALL                             R1 1 -1
       28 RETURN                           R1 -1
       29 LOADB                            R0 0
       30 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MUL                              R6 R0 R5
        5 SETTABLEKS                       R6 R4 K0 ["CFrame"]
        7 FORGLOOP                         R1 2 ; [-4]
        9 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R0 R1 R2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K4 ["SpinRate"]
        8 MUL                              R3 R0 R4
        9 MULK                             R2 R3 K3 [6.28318530717959]
       10 MODK                             R1 R2 K3 [6.28318530717959]
       11 GETUPVAL                         R3 2
       12 GETIMPORT                        R4 K7 [CFrame.Angles]
       14 LOADN                            R5 0
       15 MOVE                             R6 R1
       16 LOADN                            R7 0
       17 CALL                             R4 3 1
       18 MUL                              R2 R3 R4
       19 GETUPVAL                         R3 3
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 MUL                              R8 R2 R7
       24 SETTABLEKS                       R8 R6 K5 ["CFrame"]
       26 FORGLOOP                         R3 2 ; [-4]
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 MUL                              R6 R0 R5
       10 SETTABLEKS                       R6 R4 K1 ["CFrame"]
       12 FORGLOOP                         R1 2 ; [-4]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["autoSetupState"]
        3 GETTABLEKS                       R0 R0 K1 ["type"]
        5 JUMPIFEQKS                       R0 K2 ["inAutoSetup"] ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R0 K5 [os.clock]
       10 CALL                             R0 0 1
       11 GETIMPORT                        R1 K8 [CFrame.new]
       13 GETUPVAL                         R2 1
       14 NAMECALL                         R2 R2 K9 ["GetBoundingBox"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K10 ["Position"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 0 0
       22 GETUPVAL                         R3 1
       23 NAMECALL                         R3 R3 K11 ["GetDescendants"]
       25 CALL                             R3 1 3
       26 FORGPREP                         R3
       27 LOADK                            R10 K12 ["BasePart"]
       28 NAMECALL                         R8 R7 K13 ["IsA"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+6]
       32 GETTABLEKS                       R10 R7 K6 ["CFrame"]
       34 NAMECALL                         R8 R1 K14 ["ToObjectSpace"]
       36 CALL                             R8 2 1
       37 SETTABLE                         R8 R2 R7
       38 FORGLOOP                         R3 2 ; [-12]
       40 NEWCLOSURE                       R3 P0
       41 CAPTURE                          VAL R2
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K15 ["RenderStepped"]
       45 NEWCLOSURE                       R6 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 NAMECALL                         R4 R4 K16 ["Connect"]
       52 CALL                             R4 2 1
       53 NEWCLOSURE                       R5 P2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["SplitPane"]
        6 GETTABLEKS                       R1 R1 K1 ["DefaultSizes"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["SplitPane"]
       14 GETTABLEKS                       R1 R1 K2 ["CollapsedSizes"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["startAutoSetup"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["options"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["yes"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["cancelAutoSetup"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["disable"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["AutoSetupScreen"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["useContext"]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K3 ["Context"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETTABLEKS                       R6 R0 K4 ["autoSetupState"]
       23 GETTABLEKS                       R6 R6 K5 ["type"]
       25 JUMPIFNOTEQKS                    R6 K6 ["none"] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R6 R6 K7 ["LUAU_ANALYZE_ERROR"]
       32 FASTCALL2                        ASSERT R5 R6 ; [+3]
       34 GETIMPORT                        R4 K9 [assert]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 6
       38 NAMECALL                         R4 R4 K0 ["use"]
       40 CALL                             R4 1 1
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K10 ["useEffect"]
       44 NEWCLOSURE                       R6 P0
       45 CAPTURE                          VAL R4
       46 NEWTABLE                         R7 0 0
       48 CALL                             R5 2 0
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R5 R5 K11 ["useMemo"]
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R7 0 1
       56 GETTABLEKS                       R8 R0 K4 ["autoSetupState"]
       58 GETTABLEKS                       R8 R8 K12 ["target"]
       60 JUMPIFNOT                        R8 ; [+6]
       61 GETTABLEKS                       R8 R0 K4 ["autoSetupState"]
       63 GETTABLEKS                       R8 R8 K12 ["target"]
       65 GETTABLEKS                       R8 R8 K13 ["model"]
       67 SETLIST                          R7 R8 1 [1]
       69 CALL                             R5 2 1
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R6 R6 K11 ["useMemo"]
       73 NEWCLOSURE                       R7 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U7
       76 NEWTABLE                         R8 0 1
       78 GETTABLEKS                       R9 R0 K4 ["autoSetupState"]
       80 SETLIST                          R8 R9 1 [1]
       82 CALL                             R6 2 1
       83 GETUPVAL                         R7 3
       84 GETTABLEKS                       R7 R7 K10 ["useEffect"]
       86 NEWCLOSURE                       R8 P3
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R5
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          VAL R2
       91 NEWTABLE                         R9 0 2
       93 GETTABLEKS                       R10 R0 K4 ["autoSetupState"]
       95 GETTABLEKS                       R10 R10 K5 ["type"]
       97 MOVE                             R11 R5
       98 SETLIST                          R9 R10 2 [1]
      100 CALL                             R7 2 0
      101 GETUPVAL                         R7 9
      102 LOADB                            R8 0
      103 CALL                             R7 1 1
      104 GETUPVAL                         R8 10
      105 GETTABLEKS                       R8 R8 K14 ["new"]
      107 CALL                             R8 0 1
      108 GETUPVAL                         R9 3
      109 GETTABLEKS                       R9 R9 K15 ["useState"]
      111 GETTABLEKS                       R10 R2 K16 ["SplitPane"]
      113 GETTABLEKS                       R10 R10 K17 ["DefaultSizes"]
      115 CALL                             R9 1 2
      116 GETTABLEN                        R12 R9 2
      117 GETTABLEKS                       R12 R12 K18 ["Scale"]
      119 GETTABLEKS                       R13 R2 K16 ["SplitPane"]
      121 GETTABLEKS                       R13 R13 K19 ["CollapsedTolerance"]
      123 JUMPIFLT                         R12 R13 ; [+2]
      125 LOADB                            R11 0 +1
      126 LOADB                            R11 1
      127 GETUPVAL                         R12 3
      128 GETTABLEKS                       R12 R12 K20 ["useCallback"]
      130 NEWCLOSURE                       R13 P4
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R2
      134 NEWTABLE                         R14 0 2
      136 MOVE                             R15 R11
      137 MOVE                             R16 R10
      138 SETLIST                          R14 R15 2 [1]
      140 CALL                             R12 2 1
      141 GETUPVAL                         R13 3
      142 GETTABLEKS                       R13 R13 K20 ["useCallback"]
      144 NEWCLOSURE                       R14 P5
      145 CAPTURE                          VAL R0
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          VAL R3
      148 NEWTABLE                         R15 0 1
      150 GETUPVAL                         R17 2
      151 CALL                             R17 0 1
      152 JUMPIFNOT                        R17 ; [+3]
      153 GETTABLEKS                       R16 R3 K21 ["options"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R16
      157 SETLIST                          R15 R16 1 [1]
      159 CALL                             R13 2 1
      160 GETUPVAL                         R14 3
      161 GETTABLEKS                       R14 R14 K22 ["createElement"]
      163 GETUPVAL                         R15 11
      164 NEWTABLE                         R16 0 0
      166 DUPTABLE                         R17 K31 [{"StageSelect", "Contents", "Background", "ModelPreview", "CancelDialog", "ErrorAlert", "GenerationCard", "Controls"}]
      167 GETUPVAL                         R18 2
      168 CALL                             R18 0 1
      169 JUMPIFNOT                        R18 ; [+11]
      170 MOVE                             R18 R6
      171 JUMPIFNOT                        R18 ; [+9]
      172 GETUPVAL                         R18 3
      173 GETTABLEKS                       R18 R18 K22 ["createElement"]
      175 GETUPVAL                         R19 12
      176 DUPTABLE                         R20 K32 [{"type"}]
      177 LOADK                            R21 K33 ["autosetup"]
      178 SETTABLEKS                       R21 R20 K5 ["type"]
      180 CALL                             R18 2 1
      181 SETTABLEKS                       R18 R17 K23 ["StageSelect"]
      183 GETUPVAL                         R18 13
      184 CALL                             R18 0 1
      185 JUMPIFNOT                        R18 ; [+476]
      186 GETUPVAL                         R18 3
      187 GETTABLEKS                       R18 R18 K22 ["createElement"]
      189 GETUPVAL                         R19 11
      190 DUPTABLE                         R20 K37 [{"AnchorPoint", "Position", "Size"}]
      191 GETUPVAL                         R22 2
      192 CALL                             R22 0 1
      193 JUMPIFNOT                        R22 ; [+6]
      194 GETIMPORT                        R21 K39 [Vector2.new]
      196 LOADN                            R22 1
      197 LOADN                            R23 0
      198 CALL                             R21 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R21
      201 SETTABLEKS                       R21 R20 K34 ["AnchorPoint"]
      203 GETUPVAL                         R22 2
      204 CALL                             R22 0 1
      205 JUMPIFNOT                        R22 ; [+6]
      206 GETIMPORT                        R21 K42 [UDim2.fromScale]
      208 LOADN                            R22 1
      209 LOADN                            R23 0
      210 CALL                             R21 2 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R21
      213 SETTABLEKS                       R21 R20 K35 ["Position"]
      215 JUMPIFNOT                        R6 ; [+17]
      216 GETIMPORT                        R21 K43 [UDim2.new]
      218 LOADN                            R22 1
      219 GETUPVAL                         R24 2
      220 CALL                             R24 0 1
      221 JUMPIFNOT                        R24 ; [+2]
      222 LOADN                            R23 191
      223 JUMP                             ; [+1]
      224 LOADN                            R23 0
      225 LOADN                            R24 1
      226 GETTABLEKS                       R26 R2 K30 ["Controls"]
      228 GETTABLEKS                       R26 R26 K44 ["PaneHeight"]
      230 MINUS                            R25 R26
      231 CALL                             R21 4 1
      232 JUMP                             ; [+5]
      233 GETIMPORT                        R21 K42 [UDim2.fromScale]
      235 LOADN                            R22 1
      236 LOADN                            R23 1
      237 CALL                             R21 2 1
      238 SETTABLEKS                       R21 R20 K36 ["Size"]
      240 DUPTABLE                         R21 K46 [{"SplitView"}]
      241 GETUPVAL                         R22 3
      242 GETTABLEKS                       R22 R22 K22 ["createElement"]
      244 GETUPVAL                         R23 14
      245 DUPTABLE                         R24 K55 [{"AutomaticSize", "MinSizes", "Layout", "Sizes", "OnSizesChange", "ClampSize", "UseScale", "HideBars"}]
      246 GETUPVAL                         R26 2
      247 CALL                             R26 0 1
      248 JUMPIFNOT                        R26 ; [+3]
      249 GETIMPORT                        R25 K58 [Enum.AutomaticSize.X]
      251 JUMP                             ; [+1]
      252 LOADNIL                          R25
      253 SETTABLEKS                       R25 R24 K47 ["AutomaticSize"]
      255 GETTABLEKS                       R25 R2 K16 ["SplitPane"]
      257 GETTABLEKS                       R25 R25 K59 ["MinimumSizes"]
      259 SETTABLEKS                       R25 R24 K48 ["MinSizes"]
      261 GETIMPORT                        R25 K62 [Enum.FillDirection.Vertical]
      263 SETTABLEKS                       R25 R24 K49 ["Layout"]
      265 JUMPIFNOT                        R6 ; [+2]
      266 MOVE                             R25 R9
      267 JUMP                             ; [+4]
      268 GETTABLEKS                       R25 R2 K16 ["SplitPane"]
      270 GETTABLEKS                       R25 R25 K63 ["HiddenSizes"]
      272 SETTABLEKS                       R25 R24 K50 ["Sizes"]
      274 JUMPIFNOT                        R6 ; [+2]
      275 MOVE                             R25 R10
      276 JUMP                             ; [+1]
      277 DUPCLOSURE                       R25 K64 [PROTO_10]
      278 SETTABLEKS                       R25 R24 K51 ["OnSizesChange"]
      280 LOADB                            R25 1
      281 SETTABLEKS                       R25 R24 K52 ["ClampSize"]
      283 LOADB                            R25 1
      284 SETTABLEKS                       R25 R24 K53 ["UseScale"]
      286 LOADB                            R25 1
      287 SETTABLEKS                       R25 R24 K54 ["HideBars"]
      289 NEWTABLE                         R25 0 2
      291 GETUPVAL                         R26 3
      292 GETTABLEKS                       R26 R26 K22 ["createElement"]
      294 GETUPVAL                         R27 11
      295 NEWTABLE                         R28 0 0
      297 DUPTABLE                         R29 K66 [{"Background", "ModelPreview", "ToggleBar"}]
      298 GETUPVAL                         R30 3
      299 GETTABLEKS                       R30 R30 K22 ["createElement"]
      301 GETUPVAL                         R31 15
      302 CALL                             R30 1 1
      303 SETTABLEKS                       R30 R29 K25 ["Background"]
      305 GETUPVAL                         R30 3
      306 GETTABLEKS                       R30 R30 K22 ["createElement"]
      308 GETUPVAL                         R31 11
      309 DUPTABLE                         R32 K69 [{"Size", "ZIndex", "LayoutOrder"}]
      310 JUMPIFNOT                        R6 ; [+10]
      311 GETIMPORT                        R33 K43 [UDim2.new]
      313 LOADN                            R34 1
      314 LOADN                            R35 0
      315 LOADN                            R36 1
      316 GETTABLEKS                       R38 R2 K70 ["ToggleBarHeight"]
      318 MINUS                            R37 R38
      319 CALL                             R33 4 1
      320 JUMP                             ; [+5]
      321 GETIMPORT                        R33 K42 [UDim2.fromScale]
      323 LOADN                            R34 1
      324 LOADN                            R35 1
      325 CALL                             R33 2 1
      326 SETTABLEKS                       R33 R32 K36 ["Size"]
      328 NAMECALL                         R33 R8 K71 ["getNextOrder"]
      330 CALL                             R33 1 1
      331 SETTABLEKS                       R33 R32 K67 ["ZIndex"]
      333 LOADN                            R33 1
      334 SETTABLEKS                       R33 R32 K68 ["LayoutOrder"]
      336 GETUPVAL                         R33 3
      337 GETTABLEKS                       R33 R33 K22 ["createElement"]
      339 GETUPVAL                         R34 16
      340 DUPTABLE                         R35 K76 [{"Model", "GetCameraModifications", "ShowResetCameraButton", "ShowAxisIndicator"}]
      341 SETTABLEKS                       R5 R35 K72 ["Model"]
      343 GETUPVAL                         R36 17
      344 SETTABLEKS                       R36 R35 K73 ["GetCameraModifications"]
      346 LOADB                            R36 1
      347 SETTABLEKS                       R36 R35 K74 ["ShowResetCameraButton"]
      349 GETUPVAL                         R37 2
      350 CALL                             R37 0 1
      351 JUMPIFNOT                        R37 ; [+11]
      352 GETTABLEKS                       R37 R0 K4 ["autoSetupState"]
      354 GETTABLEKS                       R37 R37 K5 ["type"]
      356 JUMPIFEQKS                       R37 K77 ["inAutoSetup"] ; [+6]
      358 GETTABLEKS                       R36 R3 K78 ["value"]
      360 GETTABLEKS                       R36 R36 K79 ["alignFrontAngle"]
      362 JUMP                             ; [+1]
      363 LOADNIL                          R36
      364 SETTABLEKS                       R36 R35 K75 ["ShowAxisIndicator"]
      366 CALL                             R33 2 -1
      367 CALL                             R30 -1 1
      368 SETTABLEKS                       R30 R29 K26 ["ModelPreview"]
      370 MOVE                             R30 R6
      371 JUMPIFNOT                        R30 ; [+23]
      372 GETUPVAL                         R30 3
      373 GETTABLEKS                       R30 R30 K22 ["createElement"]
      375 GETUPVAL                         R31 18
      376 DUPTABLE                         R32 K84 [{"LayoutOrder", "Toggle", "isTableHidden", "Height", "ButtonColor"}]
      377 LOADN                            R33 2
      378 SETTABLEKS                       R33 R32 K68 ["LayoutOrder"]
      380 SETTABLEKS                       R12 R32 K80 ["Toggle"]
      382 SETTABLEKS                       R11 R32 K81 ["isTableHidden"]
      384 GETTABLEKS                       R33 R2 K70 ["ToggleBarHeight"]
      386 SETTABLEKS                       R33 R32 K82 ["Height"]
      388 GETTABLEKS                       R33 R2 K30 ["Controls"]
      390 GETTABLEKS                       R33 R33 K83 ["ButtonColor"]
      392 SETTABLEKS                       R33 R32 K83 ["ButtonColor"]
      394 CALL                             R30 2 1
      395 SETTABLEKS                       R30 R29 K65 ["ToggleBar"]
      397 CALL                             R26 3 1
      398 GETUPVAL                         R27 3
      399 GETTABLEKS                       R27 R27 K22 ["createElement"]
      401 GETUPVAL                         R28 11
      402 DUPTABLE                         R29 K87 [{"AutomaticSize", "Layout", "Padding", "Size", "Spacing"}]
      403 GETIMPORT                        R30 K89 [Enum.AutomaticSize.XY]
      405 SETTABLEKS                       R30 R29 K47 ["AutomaticSize"]
      407 GETUPVAL                         R31 2
      408 CALL                             R31 0 1
      409 JUMPIFNOT                        R31 ; [+3]
      410 GETIMPORT                        R30 K62 [Enum.FillDirection.Vertical]
      412 JUMP                             ; [+1]
      413 LOADNIL                          R30
      414 SETTABLEKS                       R30 R29 K49 ["Layout"]
      416 GETTABLEKS                       R30 R2 K90 ["TablePadding"]
      418 SETTABLEKS                       R30 R29 K85 ["Padding"]
      420 GETUPVAL                         R31 2
      421 CALL                             R31 0 1
      422 JUMPIFNOT                        R31 ; [+6]
      423 GETIMPORT                        R30 K42 [UDim2.fromScale]
      425 LOADN                            R31 0
      426 LOADN                            R32 0
      427 CALL                             R30 2 1
      428 JUMP                             ; [+1]
      429 LOADNIL                          R30
      430 SETTABLEKS                       R30 R29 K36 ["Size"]
      432 GETUPVAL                         R31 2
      433 CALL                             R31 0 1
      434 JUMPIFNOT                        R31 ; [+2]
      435 LOADN                            R30 8
      436 JUMP                             ; [+1]
      437 LOADNIL                          R30
      438 SETTABLEKS                       R30 R29 K86 ["Spacing"]
      440 DUPTABLE                         R30 K93 [{"SetupType", "Table"}]
      441 GETUPVAL                         R32 2
      442 CALL                             R32 0 1
      443 JUMPIFNOT                        R32 ; [+192]
      444 GETUPVAL                         R31 3
      445 GETTABLEKS                       R31 R31 K22 ["createElement"]
      447 GETUPVAL                         R32 11
      448 DUPTABLE                         R33 K95 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "AutomaticSize"}]
      449 LOADN                            R34 1
      450 SETTABLEKS                       R34 R33 K68 ["LayoutOrder"]
      452 GETIMPORT                        R34 K97 [Enum.FillDirection.Horizontal]
      454 SETTABLEKS                       R34 R33 K49 ["Layout"]
      456 GETIMPORT                        R34 K99 [Enum.HorizontalAlignment.Left]
      458 SETTABLEKS                       R34 R33 K94 ["HorizontalAlignment"]
      460 GETIMPORT                        R34 K42 [UDim2.fromScale]
      462 LOADN                            R35 1
      463 LOADN                            R36 0
      464 CALL                             R34 2 1
      465 SETTABLEKS                       R34 R33 K36 ["Size"]
      467 GETIMPORT                        R34 K101 [Enum.AutomaticSize.Y]
      469 SETTABLEKS                       R34 R33 K47 ["AutomaticSize"]
      471 DUPTABLE                         R34 K105 [{"Label", "Platform", "Development"}]
      472 GETUPVAL                         R35 3
      473 GETTABLEKS                       R35 R35 K22 ["createElement"]
      475 GETUPVAL                         R36 11
      476 DUPTABLE                         R37 K106 [{"LayoutOrder", "AutomaticSize", "Padding"}]
      477 LOADN                            R38 0
      478 SETTABLEKS                       R38 R37 K68 ["LayoutOrder"]
      480 GETIMPORT                        R38 K89 [Enum.AutomaticSize.XY]
      482 SETTABLEKS                       R38 R37 K47 ["AutomaticSize"]
      484 DUPTABLE                         R38 K108 [{"Left", "Right"}]
      485 LOADN                            R39 20
      486 SETTABLEKS                       R39 R38 K98 ["Left"]
      488 LOADN                            R39 20
      489 SETTABLEKS                       R39 R38 K107 ["Right"]
      491 SETTABLEKS                       R38 R37 K85 ["Padding"]
      493 DUPTABLE                         R38 K110 [{"TextLabel"}]
      494 GETUPVAL                         R39 3
      495 GETTABLEKS                       R39 R39 K22 ["createElement"]
      497 GETUPVAL                         R40 19
      498 DUPTABLE                         R41 K112 [{"Text"}]
      499 LOADK                            R42 K113 ["Preset"]
      500 SETTABLEKS                       R42 R41 K111 ["Text"]
      502 CALL                             R39 2 1
      503 SETTABLEKS                       R39 R38 K109 ["TextLabel"]
      505 CALL                             R35 3 1
      506 SETTABLEKS                       R35 R34 K102 ["Label"]
      508 GETUPVAL                         R35 3
      509 GETTABLEKS                       R35 R35 K22 ["createElement"]
      511 GETUPVAL                         R36 20
      512 DUPTABLE                         R37 K118 [{"LayoutOrder", "title", "text", "side", "align"}]
      513 LOADN                            R38 1
      514 SETTABLEKS                       R38 R37 K68 ["LayoutOrder"]
      516 LOADK                            R38 K119 ["Platform Avatar"]
      517 SETTABLEKS                       R38 R37 K114 ["title"]
      519 LOADK                            R38 K120 ["Create marketplace compatible assets for avatars across Roblox"]
      520 SETTABLEKS                       R38 R37 K115 ["text"]
      522 GETUPVAL                         R38 21
      523 GETTABLEKS                       R38 R38 K121 ["Enums"]
      525 GETTABLEKS                       R38 R38 K122 ["PopoverSide"]
      527 GETTABLEKS                       R38 R38 K123 ["Bottom"]
      529 SETTABLEKS                       R38 R37 K116 ["side"]
      531 GETUPVAL                         R38 21
      532 GETTABLEKS                       R38 R38 K121 ["Enums"]
      534 GETTABLEKS                       R38 R38 K124 ["PopoverAlign"]
      536 GETTABLEKS                       R38 R38 K125 ["Start"]
      538 SETTABLEKS                       R38 R37 K117 ["align"]
      540 GETUPVAL                         R38 3
      541 GETTABLEKS                       R38 R38 K22 ["createElement"]
      543 GETUPVAL                         R39 22
      544 DUPTABLE                         R40 K129 [{"Key", "OnClick", "Selected", "Text"}]
      545 LOADN                            R41 1
      546 SETTABLEKS                       R41 R40 K126 ["Key"]
      548 GETTABLEKS                       R41 R3 K130 ["set"]
      550 GETTABLEKS                       R41 R41 K131 ["setupType"]
      552 SETTABLEKS                       R41 R40 K127 ["OnClick"]
      554 GETTABLEKS                       R42 R3 K78 ["value"]
      556 GETTABLEKS                       R42 R42 K131 ["setupType"]
      558 JUMPIFEQKN                       R42 K132 [1] ; [+2]
      560 LOADB                            R41 0 +1
      561 LOADB                            R41 1
      562 SETTABLEKS                       R41 R40 K128 ["Selected"]
      564 LOADK                            R41 K119 ["Platform Avatar"]
      565 SETTABLEKS                       R41 R40 K111 ["Text"]
      567 CALL                             R38 2 -1
      568 CALL                             R35 -1 1
      569 SETTABLEKS                       R35 R34 K103 ["Platform"]
      571 GETUPVAL                         R35 3
      572 GETTABLEKS                       R35 R35 K22 ["createElement"]
      574 GETUPVAL                         R36 20
      575 DUPTABLE                         R37 K118 [{"LayoutOrder", "title", "text", "side", "align"}]
      576 LOADN                            R38 2
      577 SETTABLEKS                       R38 R37 K68 ["LayoutOrder"]
      579 LOADK                            R38 K133 ["Development Avatar"]
      580 SETTABLEKS                       R38 R37 K114 ["title"]
      582 LOADK                            R38 K134 ["Create development assets for use within your experience"]
      583 SETTABLEKS                       R38 R37 K115 ["text"]
      585 GETUPVAL                         R38 21
      586 GETTABLEKS                       R38 R38 K121 ["Enums"]
      588 GETTABLEKS                       R38 R38 K122 ["PopoverSide"]
      590 GETTABLEKS                       R38 R38 K123 ["Bottom"]
      592 SETTABLEKS                       R38 R37 K116 ["side"]
      594 GETUPVAL                         R38 21
      595 GETTABLEKS                       R38 R38 K121 ["Enums"]
      597 GETTABLEKS                       R38 R38 K124 ["PopoverAlign"]
      599 GETTABLEKS                       R38 R38 K125 ["Start"]
      601 SETTABLEKS                       R38 R37 K117 ["align"]
      603 GETUPVAL                         R38 3
      604 GETTABLEKS                       R38 R38 K22 ["createElement"]
      606 GETUPVAL                         R39 22
      607 DUPTABLE                         R40 K129 [{"Key", "OnClick", "Selected", "Text"}]
      608 LOADN                            R41 2
      609 SETTABLEKS                       R41 R40 K126 ["Key"]
      611 GETTABLEKS                       R41 R3 K130 ["set"]
      613 GETTABLEKS                       R41 R41 K131 ["setupType"]
      615 SETTABLEKS                       R41 R40 K127 ["OnClick"]
      617 GETTABLEKS                       R42 R3 K78 ["value"]
      619 GETTABLEKS                       R42 R42 K131 ["setupType"]
      621 JUMPIFEQKN                       R42 K135 [2] ; [+2]
      623 LOADB                            R41 0 +1
      624 LOADB                            R41 1
      625 SETTABLEKS                       R41 R40 K128 ["Selected"]
      627 LOADK                            R41 K133 ["Development Avatar"]
      628 SETTABLEKS                       R41 R40 K111 ["Text"]
      630 CALL                             R38 2 -1
      631 CALL                             R35 -1 1
      632 SETTABLEKS                       R35 R34 K104 ["Development"]
      634 CALL                             R31 3 1
      635 JUMP                             ; [+1]
      636 LOADNIL                          R31
      637 SETTABLEKS                       R31 R30 K91 ["SetupType"]
      639 MOVE                             R31 R6
      640 JUMPIFNOT                        R31 ; [+12]
      641 GETUPVAL                         R31 3
      642 GETTABLEKS                       R31 R31 K22 ["createElement"]
      644 GETUPVAL                         R32 23
      645 DUPTABLE                         R33 K136 [{"target"}]
      646 GETTABLEKS                       R34 R0 K4 ["autoSetupState"]
      648 GETTABLEKS                       R34 R34 K12 ["target"]
      650 SETTABLEKS                       R34 R33 K12 ["target"]
      652 CALL                             R31 2 1
      653 SETTABLEKS                       R31 R30 K92 ["Table"]
      655 CALL                             R27 3 -1
      656 SETLIST                          R25 R26 -1 [1]
      658 CALL                             R22 3 1
      659 SETTABLEKS                       R22 R21 K45 ["SplitView"]
      661 CALL                             R18 3 1
      662 SETTABLEKS                       R18 R17 K24 ["Contents"]
      664 GETUPVAL                         R19 13
      665 CALL                             R19 0 1
      666 NOT                              R18 R19
      667 JUMPIFNOT                        R18 ; [+5]
      668 GETUPVAL                         R18 3
      669 GETTABLEKS                       R18 R18 K22 ["createElement"]
      671 GETUPVAL                         R19 15
      672 CALL                             R18 1 1
      673 SETTABLEKS                       R18 R17 K25 ["Background"]
      675 GETUPVAL                         R19 13
      676 CALL                             R19 0 1
      677 NOT                              R18 R19
      678 JUMPIFNOT                        R18 ; [+25]
      679 GETUPVAL                         R18 3
      680 GETTABLEKS                       R18 R18 K22 ["createElement"]
      682 GETUPVAL                         R19 11
      683 DUPTABLE                         R20 K137 [{"ZIndex"}]
      684 NAMECALL                         R21 R8 K71 ["getNextOrder"]
      686 CALL                             R21 1 1
      687 SETTABLEKS                       R21 R20 K67 ["ZIndex"]
      689 GETUPVAL                         R21 3
      690 GETTABLEKS                       R21 R21 K22 ["createElement"]
      692 GETUPVAL                         R22 16
      693 DUPTABLE                         R23 K138 [{"Model", "GetCameraModifications", "ShowResetCameraButton"}]
      694 SETTABLEKS                       R5 R23 K72 ["Model"]
      696 GETUPVAL                         R24 17
      697 SETTABLEKS                       R24 R23 K73 ["GetCameraModifications"]
      699 LOADB                            R24 1
      700 SETTABLEKS                       R24 R23 K74 ["ShowResetCameraButton"]
      702 CALL                             R21 2 -1
      703 CALL                             R18 -1 1
      704 SETTABLEKS                       R18 R17 K26 ["ModelPreview"]
      706 GETUPVAL                         R18 3
      707 GETTABLEKS                       R18 R18 K22 ["createElement"]
      709 GETUPVAL                         R19 24
      710 DUPTABLE                         R20 K148 [{"Style", "Enabled", "Modal", "Resizable", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
      711 LOADK                            R21 K149 ["AcceptCancel"]
      712 SETTABLEKS                       R21 R20 K139 ["Style"]
      714 GETTABLEKS                       R21 R7 K150 ["enabled"]
      716 SETTABLEKS                       R21 R20 K140 ["Enabled"]
      718 LOADB                            R21 1
      719 SETTABLEKS                       R21 R20 K141 ["Modal"]
      721 LOADB                            R21 0
      722 SETTABLEKS                       R21 R20 K142 ["Resizable"]
      724 LOADK                            R23 K151 ["AvatarScreen"]
      725 LOADK                            R24 K152 ["CancelPromptTitle"]
      726 NAMECALL                         R21 R1 K153 ["getText"]
      728 CALL                             R21 3 1
      729 SETTABLEKS                       R21 R20 K143 ["Title"]
      731 GETIMPORT                        R21 K39 [Vector2.new]
      733 LOADN                            R22 44
      734 LOADN                            R23 50
      735 CALL                             R21 2 1
      736 SETTABLEKS                       R21 R20 K144 ["MinContentSize"]
      738 NEWTABLE                         R21 0 2
      740 DUPTABLE                         R22 K154 [{"Key", "Text"}]
      741 LOADK                            R23 K155 ["yes"]
      742 SETTABLEKS                       R23 R22 K126 ["Key"]
      744 LOADK                            R25 K151 ["AvatarScreen"]
      745 LOADK                            R26 K156 ["CancelPromptYes"]
      746 NAMECALL                         R23 R1 K153 ["getText"]
      748 CALL                             R23 3 1
      749 SETTABLEKS                       R23 R22 K111 ["Text"]
      751 DUPTABLE                         R23 K154 [{"Key", "Text"}]
      752 LOADK                            R24 K157 ["no"]
      753 SETTABLEKS                       R24 R23 K126 ["Key"]
      755 LOADK                            R26 K151 ["AvatarScreen"]
      756 LOADK                            R27 K158 ["CancelPromptNo"]
      757 NAMECALL                         R24 R1 K153 ["getText"]
      759 CALL                             R24 3 1
      760 SETTABLEKS                       R24 R23 K111 ["Text"]
      762 SETLIST                          R21 R22 2 [1]
      764 SETTABLEKS                       R21 R20 K145 ["Buttons"]
      766 NEWCLOSURE                       R21 P7
      767 CAPTURE                          VAL R0
      768 CAPTURE                          VAL R7
      769 SETTABLEKS                       R21 R20 K146 ["OnButtonPressed"]
      771 GETTABLEKS                       R21 R7 K159 ["disable"]
      773 SETTABLEKS                       R21 R20 K147 ["OnClose"]
      775 DUPTABLE                         R21 K112 [{"Text"}]
      776 GETUPVAL                         R22 3
      777 GETTABLEKS                       R22 R22 K22 ["createElement"]
      779 GETUPVAL                         R23 19
      780 DUPTABLE                         R24 K161 [{"Text", "TextWrapped"}]
      781 LOADK                            R27 K151 ["AvatarScreen"]
      782 LOADK                            R28 K162 ["CancelPromptConfirmText"]
      783 NAMECALL                         R25 R1 K153 ["getText"]
      785 CALL                             R25 3 1
      786 SETTABLEKS                       R25 R24 K111 ["Text"]
      788 LOADB                            R25 1
      789 SETTABLEKS                       R25 R24 K160 ["TextWrapped"]
      791 CALL                             R22 2 1
      792 SETTABLEKS                       R22 R21 K111 ["Text"]
      794 CALL                             R18 3 1
      795 SETTABLEKS                       R18 R17 K27 ["CancelDialog"]
      797 GETUPVAL                         R18 3
      798 GETTABLEKS                       R18 R18 K22 ["createElement"]
      800 GETUPVAL                         R19 11
      801 DUPTABLE                         R20 K163 [{"AutomaticSize", "Size", "ZIndex"}]
      802 GETIMPORT                        R21 K101 [Enum.AutomaticSize.Y]
      804 SETTABLEKS                       R21 R20 K47 ["AutomaticSize"]
      806 GETIMPORT                        R21 K42 [UDim2.fromScale]
      808 LOADN                            R22 1
      809 LOADN                            R23 0
      810 CALL                             R21 2 1
      811 SETTABLEKS                       R21 R20 K36 ["Size"]
      813 LOADN                            R21 4
      814 SETTABLEKS                       R21 R20 K67 ["ZIndex"]
      816 DUPTABLE                         R21 K165 [{"Padding", "Alert"}]
      817 GETUPVAL                         R22 3
      818 GETTABLEKS                       R22 R22 K22 ["createElement"]
      820 LOADK                            R23 K166 ["UIPadding"]
      821 DUPTABLE                         R24 K170 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      822 GETTABLEKS                       R25 R2 K171 ["AlertPaddingHorizontal"]
      824 SETTABLEKS                       R25 R24 K167 ["PaddingLeft"]
      826 GETTABLEKS                       R25 R2 K171 ["AlertPaddingHorizontal"]
      828 SETTABLEKS                       R25 R24 K168 ["PaddingRight"]
      830 GETTABLEKS                       R25 R2 K172 ["AlertPaddingVertical"]
      832 SETTABLEKS                       R25 R24 K169 ["PaddingTop"]
      834 CALL                             R22 2 1
      835 SETTABLEKS                       R22 R21 K85 ["Padding"]
      837 GETUPVAL                         R22 3
      838 GETTABLEKS                       R22 R22 K22 ["createElement"]
      840 GETUPVAL                         R23 25
      841 DUPTABLE                         R24 K175 [{"autoSetupState", "clearError", "cancelDialogOpen"}]
      842 GETTABLEKS                       R25 R0 K4 ["autoSetupState"]
      844 SETTABLEKS                       R25 R24 K4 ["autoSetupState"]
      846 GETTABLEKS                       R25 R0 K173 ["clearError"]
      848 SETTABLEKS                       R25 R24 K173 ["clearError"]
      850 SETTABLEKS                       R7 R24 K174 ["cancelDialogOpen"]
      852 CALL                             R22 2 1
      853 SETTABLEKS                       R22 R21 K164 ["Alert"]
      855 CALL                             R18 3 1
      856 SETTABLEKS                       R18 R17 K28 ["ErrorAlert"]
      858 GETTABLEKS                       R19 R0 K4 ["autoSetupState"]
      860 GETTABLEKS                       R19 R19 K5 ["type"]
      862 JUMPIFNOTEQKS                    R19 K77 ["inAutoSetup"] ; [+14]
      864 GETUPVAL                         R18 3
      865 GETTABLEKS                       R18 R18 K22 ["createElement"]
      867 GETUPVAL                         R19 26
      868 DUPTABLE                         R20 K176 [{"autoSetupState", "cancelDialogOpen"}]
      869 GETTABLEKS                       R21 R0 K4 ["autoSetupState"]
      871 SETTABLEKS                       R21 R20 K4 ["autoSetupState"]
      873 SETTABLEKS                       R7 R20 K174 ["cancelDialogOpen"]
      875 CALL                             R18 2 1
      876 JUMP                             ; [+1]
      877 LOADNIL                          R18
      878 SETTABLEKS                       R18 R17 K29 ["GenerationCard"]
      880 GETUPVAL                         R19 13
      881 CALL                             R19 0 1
      882 JUMPIFNOT                        R19 ; [+26]
      883 GETTABLEKS                       R19 R0 K4 ["autoSetupState"]
      885 GETTABLEKS                       R19 R19 K5 ["type"]
      887 JUMPIFEQKS                       R19 K77 ["inAutoSetup"] ; [+21]
      889 GETUPVAL                         R18 3
      890 GETTABLEKS                       R18 R18 K22 ["createElement"]
      892 GETUPVAL                         R19 27
      893 DUPTABLE                         R20 K179 [{"stateType", "startAutoSetup", "ZIndex"}]
      894 GETTABLEKS                       R21 R0 K4 ["autoSetupState"]
      896 GETTABLEKS                       R21 R21 K5 ["type"]
      898 SETTABLEKS                       R21 R20 K177 ["stateType"]
      900 SETTABLEKS                       R13 R20 K178 ["startAutoSetup"]
      902 NAMECALL                         R21 R8 K71 ["getNextOrder"]
      904 CALL                             R21 1 1
      905 SETTABLEKS                       R21 R20 K67 ["ZIndex"]
      907 CALL                             R18 2 1
      908 JUMP                             ; [+68]
      909 MOVE                             R18 R6
      910 JUMPIFNOT                        R18 ; [+66]
      911 GETUPVAL                         R18 3
      912 GETTABLEKS                       R18 R18 K22 ["createElement"]
      914 GETUPVAL                         R19 11
      915 DUPTABLE                         R20 K180 [{"AnchorPoint", "AutomaticSize", "Position", "ZIndex"}]
      916 GETIMPORT                        R21 K39 [Vector2.new]
      918 LOADN                            R22 1
      919 LOADN                            R23 1
      920 CALL                             R21 2 1
      921 SETTABLEKS                       R21 R20 K34 ["AnchorPoint"]
      923 GETIMPORT                        R21 K89 [Enum.AutomaticSize.XY]
      925 SETTABLEKS                       R21 R20 K47 ["AutomaticSize"]
      927 GETTABLEKS                       R21 R2 K30 ["Controls"]
      929 GETTABLEKS                       R21 R21 K35 ["Position"]
      931 SETTABLEKS                       R21 R20 K35 ["Position"]
      933 GETUPVAL                         R22 2
      934 CALL                             R22 0 1
      935 JUMPIFNOT                        R22 ; [+2]
      936 LOADNIL                          R21
      937 JUMP                             ; [+3]
      938 NAMECALL                         R21 R8 K71 ["getNextOrder"]
      940 CALL                             R21 1 1
      941 SETTABLEKS                       R21 R20 K67 ["ZIndex"]
      943 DUPTABLE                         R21 K181 [{"Start"}]
      944 GETUPVAL                         R22 3
      945 GETTABLEKS                       R22 R22 K22 ["createElement"]
      947 GETUPVAL                         R23 28
      948 DUPTABLE                         R24 K182 [{"AutomaticSize", "OnClick", "Style", "Text", "ZIndex"}]
      949 GETIMPORT                        R25 K89 [Enum.AutomaticSize.XY]
      951 SETTABLEKS                       R25 R24 K47 ["AutomaticSize"]
      953 SETTABLEKS                       R13 R24 K127 ["OnClick"]
      955 LOADK                            R25 K183 ["PrimaryBrand"]
      956 SETTABLEKS                       R25 R24 K139 ["Style"]
      958 LOADK                            R27 K151 ["AvatarScreen"]
      959 LOADK                            R28 K184 ["StartAutoSetup"]
      960 NAMECALL                         R25 R1 K153 ["getText"]
      962 CALL                             R25 3 1
      963 SETTABLEKS                       R25 R24 K111 ["Text"]
      965 GETUPVAL                         R26 2
      966 CALL                             R26 0 1
      967 JUMPIFNOT                        R26 ; [+2]
      968 LOADNIL                          R25
      969 JUMP                             ; [+1]
      970 LOADN                            R25 2
      971 SETTABLEKS                       R25 R24 K67 ["ZIndex"]
      973 CALL                             R22 2 1
      974 SETTABLEKS                       R22 R21 K125 ["Start"]
      976 CALL                             R18 3 1
      977 SETTABLEKS                       R18 R17 K30 ["Controls"]
      979 CALL                             R14 3 -1
      980 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Components"]
       40 GETTABLEKS                       R6 R6 K16 ["Screens"]
       42 GETTABLEKS                       R6 R6 K17 ["AutoSetupScreen"]
       44 GETTABLEKS                       R6 R6 K18 ["AutoSetupAlert"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R1 K14 ["Src"]
       51 GETTABLEKS                       R7 R7 K15 ["Components"]
       53 GETTABLEKS                       R7 R7 K19 ["AutoSetupOptionsContext"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R1 K14 ["Src"]
       60 GETTABLEKS                       R8 R8 K15 ["Components"]
       62 GETTABLEKS                       R8 R8 K20 ["Background"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R1 K14 ["Src"]
       69 GETTABLEKS                       R9 R9 K15 ["Components"]
       71 GETTABLEKS                       R9 R9 K16 ["Screens"]
       73 GETTABLEKS                       R9 R9 K17 ["AutoSetupScreen"]
       75 GETTABLEKS                       R9 R9 K21 ["ControlsBar"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K9 [require]
       80 GETTABLEKS                       R10 R1 K14 ["Src"]
       82 GETTABLEKS                       R10 R10 K15 ["Components"]
       84 GETTABLEKS                       R10 R10 K16 ["Screens"]
       86 GETTABLEKS                       R10 R10 K17 ["AutoSetupScreen"]
       88 GETTABLEKS                       R10 R10 K22 ["GenerationCard"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K9 [require]
       93 GETTABLEKS                       R11 R1 K14 ["Src"]
       95 GETTABLEKS                       R11 R11 K15 ["Components"]
       97 GETTABLEKS                       R11 R11 K23 ["ModelPreview"]
       99 CALL                             R10 1 1
      100 GETIMPORT                        R11 K9 [require]
      102 GETTABLEKS                       R12 R1 K14 ["Src"]
      104 GETTABLEKS                       R12 R12 K15 ["Components"]
      106 GETTABLEKS                       R12 R12 K16 ["Screens"]
      108 GETTABLEKS                       R12 R12 K17 ["AutoSetupScreen"]
      110 GETTABLEKS                       R12 R12 K24 ["SortClothingTable"]
      112 CALL                             R11 1 1
      113 GETIMPORT                        R12 K9 [require]
      115 GETTABLEKS                       R13 R1 K14 ["Src"]
      117 GETTABLEKS                       R13 R13 K15 ["Components"]
      119 GETTABLEKS                       R13 R13 K25 ["StageSelector"]
      121 CALL                             R12 1 1
      122 GETIMPORT                        R13 K9 [require]
      124 GETTABLEKS                       R14 R1 K14 ["Src"]
      126 GETTABLEKS                       R14 R14 K15 ["Components"]
      128 GETTABLEKS                       R14 R14 K16 ["Screens"]
      130 GETTABLEKS                       R14 R14 K17 ["AutoSetupScreen"]
      132 GETTABLEKS                       R14 R14 K26 ["ToggleBar"]
      134 CALL                             R13 1 1
      135 GETIMPORT                        R14 K9 [require]
      137 GETTABLEKS                       R15 R1 K14 ["Src"]
      139 GETTABLEKS                       R15 R15 K27 ["Util"]
      141 GETTABLEKS                       R15 R15 K28 ["Constants"]
      143 CALL                             R14 1 1
      144 GETIMPORT                        R15 K9 [require]
      146 GETTABLEKS                       R16 R1 K14 ["Src"]
      148 GETTABLEKS                       R16 R16 K29 ["Resources"]
      150 GETTABLEKS                       R16 R16 K30 ["Theme"]
      152 CALL                             R15 1 1
      153 GETIMPORT                        R16 K9 [require]
      155 GETTABLEKS                       R17 R1 K14 ["Src"]
      157 GETTABLEKS                       R17 R17 K31 ["Types"]
      159 CALL                             R16 1 1
      160 GETIMPORT                        R17 K9 [require]
      162 GETTABLEKS                       R18 R1 K14 ["Src"]
      164 GETTABLEKS                       R18 R18 K27 ["Util"]
      166 GETTABLEKS                       R18 R18 K32 ["exhaustiveMatch"]
      168 CALL                             R17 1 1
      169 GETIMPORT                        R18 K9 [require]
      171 GETTABLEKS                       R19 R1 K14 ["Src"]
      173 GETTABLEKS                       R19 R19 K33 ["Hooks"]
      175 GETTABLEKS                       R19 R19 K34 ["useToggleState"]
      177 CALL                             R18 1 1
      178 GETTABLEKS                       R19 R3 K35 ["UI"]
      180 GETTABLEKS                       R20 R19 K36 ["IconButton"]
      182 GETTABLEKS                       R21 R19 K37 ["Pane"]
      184 GETTABLEKS                       R22 R19 K38 ["RadioButton"]
      186 GETTABLEKS                       R23 R19 K39 ["SplitPane"]
      188 GETTABLEKS                       R24 R19 K40 ["StyledDialog"]
      190 GETTABLEKS                       R25 R19 K41 ["TextLabel"]
      192 GETTABLEKS                       R26 R2 K42 ["Tooltip"]
      194 GETTABLEKS                       R27 R3 K27 ["Util"]
      196 GETTABLEKS                       R27 R27 K43 ["LayoutOrderIterator"]
      198 GETTABLEKS                       R28 R3 K44 ["ContextServices"]
      200 GETTABLEKS                       R28 R28 K45 ["Analytics"]
      202 GETTABLEKS                       R29 R3 K44 ["ContextServices"]
      204 GETTABLEKS                       R29 R29 K46 ["Localization"]
      206 GETTABLEKS                       R30 R3 K44 ["ContextServices"]
      208 GETTABLEKS                       R30 R30 K47 ["Stylizer"]
      210 GETIMPORT                        R31 K9 [require]
      212 GETTABLEKS                       R32 R1 K14 ["Src"]
      214 GETTABLEKS                       R32 R32 K48 ["Flags"]
      216 GETTABLEKS                       R32 R32 K49 ["getFFlagAvatarAutosetupOptionsInput"]
      218 CALL                             R31 1 1
      219 GETIMPORT                        R32 K9 [require]
      221 GETTABLEKS                       R33 R1 K14 ["Src"]
      223 GETTABLEKS                       R33 R33 K48 ["Flags"]
      225 GETTABLEKS                       R33 R33 K50 ["getFFlagAvatarPreviewerSortClothingUI"]
      227 CALL                             R32 1 1
      228 DUPCLOSURE                       R33 K51 [PROTO_0]
      229 DUPCLOSURE                       R34 K52 [PROTO_12]
      230 CAPTURE                          VAL R29
      231 CAPTURE                          VAL R30
      232 CAPTURE                          VAL R31
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R6
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R28
      237 CAPTURE                          VAL R17
      238 CAPTURE                          VAL R0
      239 CAPTURE                          VAL R18
      240 CAPTURE                          VAL R27
      241 CAPTURE                          VAL R21
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R32
      244 CAPTURE                          VAL R23
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R10
      247 CAPTURE                          VAL R33
      248 CAPTURE                          VAL R13
      249 CAPTURE                          VAL R25
      250 CAPTURE                          VAL R26
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R22
      253 CAPTURE                          VAL R11
      254 CAPTURE                          VAL R24
      255 CAPTURE                          VAL R5
      256 CAPTURE                          VAL R9
      257 CAPTURE                          VAL R8
      258 CAPTURE                          VAL R20
      259 RETURN                           R34 1
