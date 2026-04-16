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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["autoSetupState"]
        3 GETTABLEKS                       R1 R2 K1 ["target"]
        5 GETTABLEKS                       R0 R1 K2 ["model"]
        7 NAMECALL                         R1 R0 K3 ["Clone"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K4 ["PrimaryPart"]
       12 GETIMPORT                        R3 K7 [CFrame.new]
       14 CALL                             R3 0 1
       15 SETTABLEKS                       R3 R2 K8 ["PivotOffset"]
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["autoSetupState"]
        3 GETTABLEKS                       R0 R1 K1 ["type"]
        5 JUMPIFNOTEQKS                    R0 K2 ["hasSelection"] ; [+3]
        7 LOADB                            R0 1
        8 RETURN                           R0 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["autoSetupState"]
       12 GETTABLEKS                       R0 R1 K1 ["type"]
       14 JUMPIFNOTEQKS                    R0 K3 ["error"] ; [+14]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K0 ["autoSetupState"]
       19 GETTABLEKS                       R0 R1 K3 ["error"]
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
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K4 ["SpinRate"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["autoSetupState"]
        3 GETTABLEKS                       R0 R1 K1 ["type"]
        5 JUMPIFEQKS                       R0 K2 ["inAutoSetup"] ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R0 K5 [os.clock]
       10 CALL                             R0 0 1
       11 GETIMPORT                        R1 K8 [CFrame.new]
       13 GETUPVAL                         R3 1
       14 NAMECALL                         R3 R3 K9 ["GetBoundingBox"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R2 R3 K10 ["Position"]
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
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R4 R5 K15 ["RenderStepped"]
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
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["SplitPane"]
        6 GETTABLEKS                       R1 R2 K1 ["DefaultSizes"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K0 ["SplitPane"]
       14 GETTABLEKS                       R1 R2 K2 ["CollapsedSizes"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["startAutoSetup"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["options"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["yes"] ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["cancelAutoSetup"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["disable"]
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
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K2 ["useContext"]
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K3 ["Context"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETTABLEKS                       R7 R0 K4 ["autoSetupState"]
       23 GETTABLEKS                       R6 R7 K5 ["type"]
       25 JUMPIFNOTEQKS                    R6 K6 ["none"] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 GETUPVAL                         R7 5
       30 GETTABLEKS                       R6 R7 K7 ["LUAU_ANALYZE_ERROR"]
       32 FASTCALL2                        ASSERT R5 R6 ; [+3]
       34 GETIMPORT                        R4 K9 [assert]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 6
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+12]
       40 GETUPVAL                         R4 7
       41 NAMECALL                         R4 R4 K0 ["use"]
       43 CALL                             R4 1 1
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K10 ["useEffect"]
       47 NEWCLOSURE                       R6 P0
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R7 0 0
       51 CALL                             R5 2 0
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R4 R5 K11 ["useMemo"]
       55 NEWCLOSURE                       R5 P1
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R6 0 1
       59 GETTABLEKS                       R8 R0 K4 ["autoSetupState"]
       61 GETTABLEKS                       R7 R8 K12 ["target"]
       63 JUMPIFNOT                        R7 ; [+6]
       64 GETTABLEKS                       R9 R0 K4 ["autoSetupState"]
       66 GETTABLEKS                       R8 R9 K12 ["target"]
       68 GETTABLEKS                       R7 R8 K13 ["model"]
       70 SETLIST                          R6 R7 1 [1]
       72 CALL                             R4 2 1
       73 GETUPVAL                         R6 3
       74 GETTABLEKS                       R5 R6 K11 ["useMemo"]
       76 NEWCLOSURE                       R6 P2
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U8
       79 NEWTABLE                         R7 0 1
       81 GETTABLEKS                       R8 R0 K4 ["autoSetupState"]
       83 SETLIST                          R7 R8 1 [1]
       85 CALL                             R5 2 1
       86 GETUPVAL                         R7 3
       87 GETTABLEKS                       R6 R7 K10 ["useEffect"]
       89 NEWCLOSURE                       R7 P3
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R4
       92 CAPTURE                          UPVAL U9
       93 CAPTURE                          VAL R2
       94 NEWTABLE                         R8 0 2
       96 GETTABLEKS                       R10 R0 K4 ["autoSetupState"]
       98 GETTABLEKS                       R9 R10 K5 ["type"]
      100 MOVE                             R10 R4
      101 SETLIST                          R8 R9 2 [1]
      103 CALL                             R6 2 0
      104 GETUPVAL                         R6 10
      105 LOADB                            R7 0
      106 CALL                             R6 1 1
      107 GETUPVAL                         R8 11
      108 GETTABLEKS                       R7 R8 K14 ["new"]
      110 CALL                             R7 0 1
      111 GETUPVAL                         R9 3
      112 GETTABLEKS                       R8 R9 K15 ["useState"]
      114 GETTABLEKS                       R10 R2 K16 ["SplitPane"]
      116 GETTABLEKS                       R9 R10 K17 ["DefaultSizes"]
      118 CALL                             R8 1 2
      119 GETTABLEN                        R12 R8 2
      120 GETTABLEKS                       R11 R12 K18 ["Scale"]
      122 GETTABLEKS                       R13 R2 K16 ["SplitPane"]
      124 GETTABLEKS                       R12 R13 K19 ["CollapsedTolerance"]
      126 JUMPIFLT                         R11 R12 ; [+2]
      128 LOADB                            R10 0 +1
      129 LOADB                            R10 1
      130 GETUPVAL                         R12 3
      131 GETTABLEKS                       R11 R12 K20 ["useCallback"]
      133 NEWCLOSURE                       R12 P4
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R2
      137 NEWTABLE                         R13 0 2
      139 MOVE                             R14 R10
      140 MOVE                             R15 R9
      141 SETLIST                          R13 R14 2 [1]
      143 CALL                             R11 2 1
      144 GETUPVAL                         R13 3
      145 GETTABLEKS                       R12 R13 K20 ["useCallback"]
      147 NEWCLOSURE                       R13 P5
      148 CAPTURE                          VAL R0
      149 CAPTURE                          UPVAL U2
      150 CAPTURE                          VAL R3
      151 NEWTABLE                         R14 0 1
      153 GETUPVAL                         R16 2
      154 CALL                             R16 0 1
      155 JUMPIFNOT                        R16 ; [+3]
      156 GETTABLEKS                       R15 R3 K21 ["options"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R15
      160 SETLIST                          R14 R15 1 [1]
      162 CALL                             R12 2 1
      163 GETUPVAL                         R14 3
      164 GETTABLEKS                       R13 R14 K22 ["createElement"]
      166 GETUPVAL                         R14 12
      167 NEWTABLE                         R15 0 0
      169 DUPTABLE                         R16 K31 [{"StageSelect", "Contents", "Background", "ModelPreview", "CancelDialog", "ErrorAlert", "GenerationCard", "Controls"}]
      170 GETUPVAL                         R17 2
      171 CALL                             R17 0 1
      172 JUMPIFNOT                        R17 ; [+11]
      173 MOVE                             R17 R5
      174 JUMPIFNOT                        R17 ; [+9]
      175 GETUPVAL                         R18 3
      176 GETTABLEKS                       R17 R18 K22 ["createElement"]
      178 GETUPVAL                         R18 13
      179 DUPTABLE                         R19 K32 [{"type"}]
      180 LOADK                            R20 K33 ["autosetup"]
      181 SETTABLEKS                       R20 R19 K5 ["type"]
      183 CALL                             R17 2 1
      184 SETTABLEKS                       R17 R16 K23 ["StageSelect"]
      186 GETUPVAL                         R17 14
      187 CALL                             R17 0 1
      188 JUMPIFNOT                        R17 ; [+476]
      189 GETUPVAL                         R18 3
      190 GETTABLEKS                       R17 R18 K22 ["createElement"]
      192 GETUPVAL                         R18 12
      193 DUPTABLE                         R19 K37 [{"AnchorPoint", "Position", "Size"}]
      194 GETUPVAL                         R21 2
      195 CALL                             R21 0 1
      196 JUMPIFNOT                        R21 ; [+6]
      197 GETIMPORT                        R20 K39 [Vector2.new]
      199 LOADN                            R21 1
      200 LOADN                            R22 0
      201 CALL                             R20 2 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R20
      204 SETTABLEKS                       R20 R19 K34 ["AnchorPoint"]
      206 GETUPVAL                         R21 2
      207 CALL                             R21 0 1
      208 JUMPIFNOT                        R21 ; [+6]
      209 GETIMPORT                        R20 K42 [UDim2.fromScale]
      211 LOADN                            R21 1
      212 LOADN                            R22 0
      213 CALL                             R20 2 1
      214 JUMP                             ; [+1]
      215 LOADNIL                          R20
      216 SETTABLEKS                       R20 R19 K35 ["Position"]
      218 JUMPIFNOT                        R5 ; [+17]
      219 GETIMPORT                        R20 K43 [UDim2.new]
      221 LOADN                            R21 1
      222 GETUPVAL                         R23 2
      223 CALL                             R23 0 1
      224 JUMPIFNOT                        R23 ; [+2]
      225 LOADN                            R22 191
      226 JUMP                             ; [+1]
      227 LOADN                            R22 0
      228 LOADN                            R23 1
      229 GETTABLEKS                       R26 R2 K30 ["Controls"]
      231 GETTABLEKS                       R25 R26 K44 ["PaneHeight"]
      233 MINUS                            R24 R25
      234 CALL                             R20 4 1
      235 JUMP                             ; [+5]
      236 GETIMPORT                        R20 K42 [UDim2.fromScale]
      238 LOADN                            R21 1
      239 LOADN                            R22 1
      240 CALL                             R20 2 1
      241 SETTABLEKS                       R20 R19 K36 ["Size"]
      243 DUPTABLE                         R20 K46 [{"SplitView"}]
      244 GETUPVAL                         R22 3
      245 GETTABLEKS                       R21 R22 K22 ["createElement"]
      247 GETUPVAL                         R22 15
      248 DUPTABLE                         R23 K55 [{"AutomaticSize", "MinSizes", "Layout", "Sizes", "OnSizesChange", "ClampSize", "UseScale", "HideBars"}]
      249 GETUPVAL                         R25 2
      250 CALL                             R25 0 1
      251 JUMPIFNOT                        R25 ; [+3]
      252 GETIMPORT                        R24 K58 [Enum.AutomaticSize.X]
      254 JUMP                             ; [+1]
      255 LOADNIL                          R24
      256 SETTABLEKS                       R24 R23 K47 ["AutomaticSize"]
      258 GETTABLEKS                       R25 R2 K16 ["SplitPane"]
      260 GETTABLEKS                       R24 R25 K59 ["MinimumSizes"]
      262 SETTABLEKS                       R24 R23 K48 ["MinSizes"]
      264 GETIMPORT                        R24 K62 [Enum.FillDirection.Vertical]
      266 SETTABLEKS                       R24 R23 K49 ["Layout"]
      268 JUMPIFNOT                        R5 ; [+2]
      269 MOVE                             R24 R8
      270 JUMP                             ; [+4]
      271 GETTABLEKS                       R25 R2 K16 ["SplitPane"]
      273 GETTABLEKS                       R24 R25 K63 ["HiddenSizes"]
      275 SETTABLEKS                       R24 R23 K50 ["Sizes"]
      277 JUMPIFNOT                        R5 ; [+2]
      278 MOVE                             R24 R9
      279 JUMP                             ; [+1]
      280 DUPCLOSURE                       R24 K64 [PROTO_10]
      281 SETTABLEKS                       R24 R23 K51 ["OnSizesChange"]
      283 LOADB                            R24 1
      284 SETTABLEKS                       R24 R23 K52 ["ClampSize"]
      286 LOADB                            R24 1
      287 SETTABLEKS                       R24 R23 K53 ["UseScale"]
      289 LOADB                            R24 1
      290 SETTABLEKS                       R24 R23 K54 ["HideBars"]
      292 NEWTABLE                         R24 0 2
      294 GETUPVAL                         R26 3
      295 GETTABLEKS                       R25 R26 K22 ["createElement"]
      297 GETUPVAL                         R26 12
      298 NEWTABLE                         R27 0 0
      300 DUPTABLE                         R28 K66 [{"Background", "ModelPreview", "ToggleBar"}]
      301 GETUPVAL                         R30 3
      302 GETTABLEKS                       R29 R30 K22 ["createElement"]
      304 GETUPVAL                         R30 16
      305 CALL                             R29 1 1
      306 SETTABLEKS                       R29 R28 K25 ["Background"]
      308 GETUPVAL                         R30 3
      309 GETTABLEKS                       R29 R30 K22 ["createElement"]
      311 GETUPVAL                         R30 12
      312 DUPTABLE                         R31 K69 [{"Size", "ZIndex", "LayoutOrder"}]
      313 JUMPIFNOT                        R5 ; [+10]
      314 GETIMPORT                        R32 K43 [UDim2.new]
      316 LOADN                            R33 1
      317 LOADN                            R34 0
      318 LOADN                            R35 1
      319 GETTABLEKS                       R37 R2 K70 ["ToggleBarHeight"]
      321 MINUS                            R36 R37
      322 CALL                             R32 4 1
      323 JUMP                             ; [+5]
      324 GETIMPORT                        R32 K42 [UDim2.fromScale]
      326 LOADN                            R33 1
      327 LOADN                            R34 1
      328 CALL                             R32 2 1
      329 SETTABLEKS                       R32 R31 K36 ["Size"]
      331 NAMECALL                         R32 R7 K71 ["getNextOrder"]
      333 CALL                             R32 1 1
      334 SETTABLEKS                       R32 R31 K67 ["ZIndex"]
      336 LOADN                            R32 1
      337 SETTABLEKS                       R32 R31 K68 ["LayoutOrder"]
      339 GETUPVAL                         R33 3
      340 GETTABLEKS                       R32 R33 K22 ["createElement"]
      342 GETUPVAL                         R33 17
      343 DUPTABLE                         R34 K76 [{"Model", "GetCameraModifications", "ShowResetCameraButton", "ShowAxisIndicator"}]
      344 SETTABLEKS                       R4 R34 K72 ["Model"]
      346 GETUPVAL                         R35 18
      347 SETTABLEKS                       R35 R34 K73 ["GetCameraModifications"]
      349 LOADB                            R35 1
      350 SETTABLEKS                       R35 R34 K74 ["ShowResetCameraButton"]
      352 GETUPVAL                         R36 2
      353 CALL                             R36 0 1
      354 JUMPIFNOT                        R36 ; [+11]
      355 GETTABLEKS                       R37 R0 K4 ["autoSetupState"]
      357 GETTABLEKS                       R36 R37 K5 ["type"]
      359 JUMPIFEQKS                       R36 K77 ["inAutoSetup"] ; [+6]
      361 GETTABLEKS                       R36 R3 K78 ["value"]
      363 GETTABLEKS                       R35 R36 K79 ["alignFrontAngle"]
      365 JUMP                             ; [+1]
      366 LOADNIL                          R35
      367 SETTABLEKS                       R35 R34 K75 ["ShowAxisIndicator"]
      369 CALL                             R32 2 -1
      370 CALL                             R29 -1 1
      371 SETTABLEKS                       R29 R28 K26 ["ModelPreview"]
      373 MOVE                             R29 R5
      374 JUMPIFNOT                        R29 ; [+23]
      375 GETUPVAL                         R30 3
      376 GETTABLEKS                       R29 R30 K22 ["createElement"]
      378 GETUPVAL                         R30 19
      379 DUPTABLE                         R31 K84 [{"LayoutOrder", "Toggle", "isTableHidden", "Height", "ButtonColor"}]
      380 LOADN                            R32 2
      381 SETTABLEKS                       R32 R31 K68 ["LayoutOrder"]
      383 SETTABLEKS                       R11 R31 K80 ["Toggle"]
      385 SETTABLEKS                       R10 R31 K81 ["isTableHidden"]
      387 GETTABLEKS                       R32 R2 K70 ["ToggleBarHeight"]
      389 SETTABLEKS                       R32 R31 K82 ["Height"]
      391 GETTABLEKS                       R33 R2 K30 ["Controls"]
      393 GETTABLEKS                       R32 R33 K83 ["ButtonColor"]
      395 SETTABLEKS                       R32 R31 K83 ["ButtonColor"]
      397 CALL                             R29 2 1
      398 SETTABLEKS                       R29 R28 K65 ["ToggleBar"]
      400 CALL                             R25 3 1
      401 GETUPVAL                         R27 3
      402 GETTABLEKS                       R26 R27 K22 ["createElement"]
      404 GETUPVAL                         R27 12
      405 DUPTABLE                         R28 K87 [{"AutomaticSize", "Layout", "Padding", "Size", "Spacing"}]
      406 GETIMPORT                        R29 K89 [Enum.AutomaticSize.XY]
      408 SETTABLEKS                       R29 R28 K47 ["AutomaticSize"]
      410 GETUPVAL                         R30 2
      411 CALL                             R30 0 1
      412 JUMPIFNOT                        R30 ; [+3]
      413 GETIMPORT                        R29 K62 [Enum.FillDirection.Vertical]
      415 JUMP                             ; [+1]
      416 LOADNIL                          R29
      417 SETTABLEKS                       R29 R28 K49 ["Layout"]
      419 GETTABLEKS                       R29 R2 K90 ["TablePadding"]
      421 SETTABLEKS                       R29 R28 K85 ["Padding"]
      423 GETUPVAL                         R30 2
      424 CALL                             R30 0 1
      425 JUMPIFNOT                        R30 ; [+6]
      426 GETIMPORT                        R29 K42 [UDim2.fromScale]
      428 LOADN                            R30 0
      429 LOADN                            R31 0
      430 CALL                             R29 2 1
      431 JUMP                             ; [+1]
      432 LOADNIL                          R29
      433 SETTABLEKS                       R29 R28 K36 ["Size"]
      435 GETUPVAL                         R30 2
      436 CALL                             R30 0 1
      437 JUMPIFNOT                        R30 ; [+2]
      438 LOADN                            R29 8
      439 JUMP                             ; [+1]
      440 LOADNIL                          R29
      441 SETTABLEKS                       R29 R28 K86 ["Spacing"]
      443 DUPTABLE                         R29 K93 [{"SetupType", "Table"}]
      444 GETUPVAL                         R31 2
      445 CALL                             R31 0 1
      446 JUMPIFNOT                        R31 ; [+192]
      447 GETUPVAL                         R31 3
      448 GETTABLEKS                       R30 R31 K22 ["createElement"]
      450 GETUPVAL                         R31 12
      451 DUPTABLE                         R32 K95 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "AutomaticSize"}]
      452 LOADN                            R33 1
      453 SETTABLEKS                       R33 R32 K68 ["LayoutOrder"]
      455 GETIMPORT                        R33 K97 [Enum.FillDirection.Horizontal]
      457 SETTABLEKS                       R33 R32 K49 ["Layout"]
      459 GETIMPORT                        R33 K99 [Enum.HorizontalAlignment.Left]
      461 SETTABLEKS                       R33 R32 K94 ["HorizontalAlignment"]
      463 GETIMPORT                        R33 K42 [UDim2.fromScale]
      465 LOADN                            R34 1
      466 LOADN                            R35 0
      467 CALL                             R33 2 1
      468 SETTABLEKS                       R33 R32 K36 ["Size"]
      470 GETIMPORT                        R33 K101 [Enum.AutomaticSize.Y]
      472 SETTABLEKS                       R33 R32 K47 ["AutomaticSize"]
      474 DUPTABLE                         R33 K105 [{"Label", "Platform", "Development"}]
      475 GETUPVAL                         R35 3
      476 GETTABLEKS                       R34 R35 K22 ["createElement"]
      478 GETUPVAL                         R35 12
      479 DUPTABLE                         R36 K106 [{"LayoutOrder", "AutomaticSize", "Padding"}]
      480 LOADN                            R37 0
      481 SETTABLEKS                       R37 R36 K68 ["LayoutOrder"]
      483 GETIMPORT                        R37 K89 [Enum.AutomaticSize.XY]
      485 SETTABLEKS                       R37 R36 K47 ["AutomaticSize"]
      487 DUPTABLE                         R37 K108 [{"Left", "Right"}]
      488 LOADN                            R38 20
      489 SETTABLEKS                       R38 R37 K98 ["Left"]
      491 LOADN                            R38 20
      492 SETTABLEKS                       R38 R37 K107 ["Right"]
      494 SETTABLEKS                       R37 R36 K85 ["Padding"]
      496 DUPTABLE                         R37 K110 [{"TextLabel"}]
      497 GETUPVAL                         R39 3
      498 GETTABLEKS                       R38 R39 K22 ["createElement"]
      500 GETUPVAL                         R39 20
      501 DUPTABLE                         R40 K112 [{"Text"}]
      502 LOADK                            R41 K113 ["Preset"]
      503 SETTABLEKS                       R41 R40 K111 ["Text"]
      505 CALL                             R38 2 1
      506 SETTABLEKS                       R38 R37 K109 ["TextLabel"]
      508 CALL                             R34 3 1
      509 SETTABLEKS                       R34 R33 K102 ["Label"]
      511 GETUPVAL                         R35 3
      512 GETTABLEKS                       R34 R35 K22 ["createElement"]
      514 GETUPVAL                         R35 21
      515 DUPTABLE                         R36 K118 [{"LayoutOrder", "title", "text", "side", "align"}]
      516 LOADN                            R37 1
      517 SETTABLEKS                       R37 R36 K68 ["LayoutOrder"]
      519 LOADK                            R37 K119 ["Platform Avatar"]
      520 SETTABLEKS                       R37 R36 K114 ["title"]
      522 LOADK                            R37 K120 ["Create marketplace compatible assets for avatars across Roblox"]
      523 SETTABLEKS                       R37 R36 K115 ["text"]
      525 GETUPVAL                         R40 22
      526 GETTABLEKS                       R39 R40 K121 ["Enums"]
      528 GETTABLEKS                       R38 R39 K122 ["PopoverSide"]
      530 GETTABLEKS                       R37 R38 K123 ["Bottom"]
      532 SETTABLEKS                       R37 R36 K116 ["side"]
      534 GETUPVAL                         R40 22
      535 GETTABLEKS                       R39 R40 K121 ["Enums"]
      537 GETTABLEKS                       R38 R39 K124 ["PopoverAlign"]
      539 GETTABLEKS                       R37 R38 K125 ["Start"]
      541 SETTABLEKS                       R37 R36 K117 ["align"]
      543 GETUPVAL                         R38 3
      544 GETTABLEKS                       R37 R38 K22 ["createElement"]
      546 GETUPVAL                         R38 23
      547 DUPTABLE                         R39 K129 [{"Key", "OnClick", "Selected", "Text"}]
      548 LOADN                            R40 1
      549 SETTABLEKS                       R40 R39 K126 ["Key"]
      551 GETTABLEKS                       R41 R3 K130 ["set"]
      553 GETTABLEKS                       R40 R41 K131 ["setupType"]
      555 SETTABLEKS                       R40 R39 K127 ["OnClick"]
      557 GETTABLEKS                       R42 R3 K78 ["value"]
      559 GETTABLEKS                       R41 R42 K131 ["setupType"]
      561 JUMPIFEQKN                       R41 K132 [1] ; [+2]
      563 LOADB                            R40 0 +1
      564 LOADB                            R40 1
      565 SETTABLEKS                       R40 R39 K128 ["Selected"]
      567 LOADK                            R40 K119 ["Platform Avatar"]
      568 SETTABLEKS                       R40 R39 K111 ["Text"]
      570 CALL                             R37 2 -1
      571 CALL                             R34 -1 1
      572 SETTABLEKS                       R34 R33 K103 ["Platform"]
      574 GETUPVAL                         R35 3
      575 GETTABLEKS                       R34 R35 K22 ["createElement"]
      577 GETUPVAL                         R35 21
      578 DUPTABLE                         R36 K118 [{"LayoutOrder", "title", "text", "side", "align"}]
      579 LOADN                            R37 2
      580 SETTABLEKS                       R37 R36 K68 ["LayoutOrder"]
      582 LOADK                            R37 K133 ["Development Avatar"]
      583 SETTABLEKS                       R37 R36 K114 ["title"]
      585 LOADK                            R37 K134 ["Create development assets for use within your experience"]
      586 SETTABLEKS                       R37 R36 K115 ["text"]
      588 GETUPVAL                         R40 22
      589 GETTABLEKS                       R39 R40 K121 ["Enums"]
      591 GETTABLEKS                       R38 R39 K122 ["PopoverSide"]
      593 GETTABLEKS                       R37 R38 K123 ["Bottom"]
      595 SETTABLEKS                       R37 R36 K116 ["side"]
      597 GETUPVAL                         R40 22
      598 GETTABLEKS                       R39 R40 K121 ["Enums"]
      600 GETTABLEKS                       R38 R39 K124 ["PopoverAlign"]
      602 GETTABLEKS                       R37 R38 K125 ["Start"]
      604 SETTABLEKS                       R37 R36 K117 ["align"]
      606 GETUPVAL                         R38 3
      607 GETTABLEKS                       R37 R38 K22 ["createElement"]
      609 GETUPVAL                         R38 23
      610 DUPTABLE                         R39 K129 [{"Key", "OnClick", "Selected", "Text"}]
      611 LOADN                            R40 2
      612 SETTABLEKS                       R40 R39 K126 ["Key"]
      614 GETTABLEKS                       R41 R3 K130 ["set"]
      616 GETTABLEKS                       R40 R41 K131 ["setupType"]
      618 SETTABLEKS                       R40 R39 K127 ["OnClick"]
      620 GETTABLEKS                       R42 R3 K78 ["value"]
      622 GETTABLEKS                       R41 R42 K131 ["setupType"]
      624 JUMPIFEQKN                       R41 K135 [2] ; [+2]
      626 LOADB                            R40 0 +1
      627 LOADB                            R40 1
      628 SETTABLEKS                       R40 R39 K128 ["Selected"]
      630 LOADK                            R40 K133 ["Development Avatar"]
      631 SETTABLEKS                       R40 R39 K111 ["Text"]
      633 CALL                             R37 2 -1
      634 CALL                             R34 -1 1
      635 SETTABLEKS                       R34 R33 K104 ["Development"]
      637 CALL                             R30 3 1
      638 JUMP                             ; [+1]
      639 LOADNIL                          R30
      640 SETTABLEKS                       R30 R29 K91 ["SetupType"]
      642 MOVE                             R30 R5
      643 JUMPIFNOT                        R30 ; [+12]
      644 GETUPVAL                         R31 3
      645 GETTABLEKS                       R30 R31 K22 ["createElement"]
      647 GETUPVAL                         R31 24
      648 DUPTABLE                         R32 K136 [{"target"}]
      649 GETTABLEKS                       R34 R0 K4 ["autoSetupState"]
      651 GETTABLEKS                       R33 R34 K12 ["target"]
      653 SETTABLEKS                       R33 R32 K12 ["target"]
      655 CALL                             R30 2 1
      656 SETTABLEKS                       R30 R29 K92 ["Table"]
      658 CALL                             R26 3 -1
      659 SETLIST                          R24 R25 -1 [1]
      661 CALL                             R21 3 1
      662 SETTABLEKS                       R21 R20 K45 ["SplitView"]
      664 CALL                             R17 3 1
      665 SETTABLEKS                       R17 R16 K24 ["Contents"]
      667 GETUPVAL                         R18 14
      668 CALL                             R18 0 1
      669 NOT                              R17 R18
      670 JUMPIFNOT                        R17 ; [+5]
      671 GETUPVAL                         R18 3
      672 GETTABLEKS                       R17 R18 K22 ["createElement"]
      674 GETUPVAL                         R18 16
      675 CALL                             R17 1 1
      676 SETTABLEKS                       R17 R16 K25 ["Background"]
      678 GETUPVAL                         R18 14
      679 CALL                             R18 0 1
      680 NOT                              R17 R18
      681 JUMPIFNOT                        R17 ; [+25]
      682 GETUPVAL                         R18 3
      683 GETTABLEKS                       R17 R18 K22 ["createElement"]
      685 GETUPVAL                         R18 12
      686 DUPTABLE                         R19 K137 [{"ZIndex"}]
      687 NAMECALL                         R20 R7 K71 ["getNextOrder"]
      689 CALL                             R20 1 1
      690 SETTABLEKS                       R20 R19 K67 ["ZIndex"]
      692 GETUPVAL                         R21 3
      693 GETTABLEKS                       R20 R21 K22 ["createElement"]
      695 GETUPVAL                         R21 17
      696 DUPTABLE                         R22 K138 [{"Model", "GetCameraModifications", "ShowResetCameraButton"}]
      697 SETTABLEKS                       R4 R22 K72 ["Model"]
      699 GETUPVAL                         R23 18
      700 SETTABLEKS                       R23 R22 K73 ["GetCameraModifications"]
      702 LOADB                            R23 1
      703 SETTABLEKS                       R23 R22 K74 ["ShowResetCameraButton"]
      705 CALL                             R20 2 -1
      706 CALL                             R17 -1 1
      707 SETTABLEKS                       R17 R16 K26 ["ModelPreview"]
      709 GETUPVAL                         R18 3
      710 GETTABLEKS                       R17 R18 K22 ["createElement"]
      712 GETUPVAL                         R18 25
      713 DUPTABLE                         R19 K148 [{"Style", "Enabled", "Modal", "Resizable", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
      714 LOADK                            R20 K149 ["AcceptCancel"]
      715 SETTABLEKS                       R20 R19 K139 ["Style"]
      717 GETTABLEKS                       R20 R6 K150 ["enabled"]
      719 SETTABLEKS                       R20 R19 K140 ["Enabled"]
      721 LOADB                            R20 1
      722 SETTABLEKS                       R20 R19 K141 ["Modal"]
      724 LOADB                            R20 0
      725 SETTABLEKS                       R20 R19 K142 ["Resizable"]
      727 LOADK                            R22 K151 ["AvatarScreen"]
      728 LOADK                            R23 K152 ["CancelPromptTitle"]
      729 NAMECALL                         R20 R1 K153 ["getText"]
      731 CALL                             R20 3 1
      732 SETTABLEKS                       R20 R19 K143 ["Title"]
      734 GETIMPORT                        R20 K39 [Vector2.new]
      736 LOADN                            R21 44
      737 LOADN                            R22 50
      738 CALL                             R20 2 1
      739 SETTABLEKS                       R20 R19 K144 ["MinContentSize"]
      741 NEWTABLE                         R20 0 2
      743 DUPTABLE                         R21 K154 [{"Key", "Text"}]
      744 LOADK                            R22 K155 ["yes"]
      745 SETTABLEKS                       R22 R21 K126 ["Key"]
      747 LOADK                            R24 K151 ["AvatarScreen"]
      748 LOADK                            R25 K156 ["CancelPromptYes"]
      749 NAMECALL                         R22 R1 K153 ["getText"]
      751 CALL                             R22 3 1
      752 SETTABLEKS                       R22 R21 K111 ["Text"]
      754 DUPTABLE                         R22 K154 [{"Key", "Text"}]
      755 LOADK                            R23 K157 ["no"]
      756 SETTABLEKS                       R23 R22 K126 ["Key"]
      758 LOADK                            R25 K151 ["AvatarScreen"]
      759 LOADK                            R26 K158 ["CancelPromptNo"]
      760 NAMECALL                         R23 R1 K153 ["getText"]
      762 CALL                             R23 3 1
      763 SETTABLEKS                       R23 R22 K111 ["Text"]
      765 SETLIST                          R20 R21 2 [1]
      767 SETTABLEKS                       R20 R19 K145 ["Buttons"]
      769 NEWCLOSURE                       R20 P7
      770 CAPTURE                          VAL R0
      771 CAPTURE                          VAL R6
      772 SETTABLEKS                       R20 R19 K146 ["OnButtonPressed"]
      774 GETTABLEKS                       R20 R6 K159 ["disable"]
      776 SETTABLEKS                       R20 R19 K147 ["OnClose"]
      778 DUPTABLE                         R20 K112 [{"Text"}]
      779 GETUPVAL                         R22 3
      780 GETTABLEKS                       R21 R22 K22 ["createElement"]
      782 GETUPVAL                         R22 20
      783 DUPTABLE                         R23 K161 [{"Text", "TextWrapped"}]
      784 LOADK                            R26 K151 ["AvatarScreen"]
      785 LOADK                            R27 K162 ["CancelPromptConfirmText"]
      786 NAMECALL                         R24 R1 K153 ["getText"]
      788 CALL                             R24 3 1
      789 SETTABLEKS                       R24 R23 K111 ["Text"]
      791 LOADB                            R24 1
      792 SETTABLEKS                       R24 R23 K160 ["TextWrapped"]
      794 CALL                             R21 2 1
      795 SETTABLEKS                       R21 R20 K111 ["Text"]
      797 CALL                             R17 3 1
      798 SETTABLEKS                       R17 R16 K27 ["CancelDialog"]
      800 GETUPVAL                         R18 3
      801 GETTABLEKS                       R17 R18 K22 ["createElement"]
      803 GETUPVAL                         R18 12
      804 DUPTABLE                         R19 K163 [{"AutomaticSize", "Size", "ZIndex"}]
      805 GETIMPORT                        R20 K101 [Enum.AutomaticSize.Y]
      807 SETTABLEKS                       R20 R19 K47 ["AutomaticSize"]
      809 GETIMPORT                        R20 K42 [UDim2.fromScale]
      811 LOADN                            R21 1
      812 LOADN                            R22 0
      813 CALL                             R20 2 1
      814 SETTABLEKS                       R20 R19 K36 ["Size"]
      816 LOADN                            R20 4
      817 SETTABLEKS                       R20 R19 K67 ["ZIndex"]
      819 DUPTABLE                         R20 K165 [{"Padding", "Alert"}]
      820 GETUPVAL                         R22 3
      821 GETTABLEKS                       R21 R22 K22 ["createElement"]
      823 LOADK                            R22 K166 ["UIPadding"]
      824 DUPTABLE                         R23 K170 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      825 GETTABLEKS                       R24 R2 K171 ["AlertPaddingHorizontal"]
      827 SETTABLEKS                       R24 R23 K167 ["PaddingLeft"]
      829 GETTABLEKS                       R24 R2 K171 ["AlertPaddingHorizontal"]
      831 SETTABLEKS                       R24 R23 K168 ["PaddingRight"]
      833 GETTABLEKS                       R24 R2 K172 ["AlertPaddingVertical"]
      835 SETTABLEKS                       R24 R23 K169 ["PaddingTop"]
      837 CALL                             R21 2 1
      838 SETTABLEKS                       R21 R20 K85 ["Padding"]
      840 GETUPVAL                         R22 3
      841 GETTABLEKS                       R21 R22 K22 ["createElement"]
      843 GETUPVAL                         R22 26
      844 DUPTABLE                         R23 K175 [{"autoSetupState", "clearError", "cancelDialogOpen"}]
      845 GETTABLEKS                       R24 R0 K4 ["autoSetupState"]
      847 SETTABLEKS                       R24 R23 K4 ["autoSetupState"]
      849 GETTABLEKS                       R24 R0 K173 ["clearError"]
      851 SETTABLEKS                       R24 R23 K173 ["clearError"]
      853 SETTABLEKS                       R6 R23 K174 ["cancelDialogOpen"]
      855 CALL                             R21 2 1
      856 SETTABLEKS                       R21 R20 K164 ["Alert"]
      858 CALL                             R17 3 1
      859 SETTABLEKS                       R17 R16 K28 ["ErrorAlert"]
      861 GETTABLEKS                       R19 R0 K4 ["autoSetupState"]
      863 GETTABLEKS                       R18 R19 K5 ["type"]
      865 JUMPIFNOTEQKS                    R18 K77 ["inAutoSetup"] ; [+14]
      867 GETUPVAL                         R18 3
      868 GETTABLEKS                       R17 R18 K22 ["createElement"]
      870 GETUPVAL                         R18 27
      871 DUPTABLE                         R19 K176 [{"autoSetupState", "cancelDialogOpen"}]
      872 GETTABLEKS                       R20 R0 K4 ["autoSetupState"]
      874 SETTABLEKS                       R20 R19 K4 ["autoSetupState"]
      876 SETTABLEKS                       R6 R19 K174 ["cancelDialogOpen"]
      878 CALL                             R17 2 1
      879 JUMP                             ; [+1]
      880 LOADNIL                          R17
      881 SETTABLEKS                       R17 R16 K29 ["GenerationCard"]
      883 GETUPVAL                         R18 14
      884 CALL                             R18 0 1
      885 JUMPIFNOT                        R18 ; [+26]
      886 GETTABLEKS                       R19 R0 K4 ["autoSetupState"]
      888 GETTABLEKS                       R18 R19 K5 ["type"]
      890 JUMPIFEQKS                       R18 K77 ["inAutoSetup"] ; [+21]
      892 GETUPVAL                         R18 3
      893 GETTABLEKS                       R17 R18 K22 ["createElement"]
      895 GETUPVAL                         R18 28
      896 DUPTABLE                         R19 K179 [{"stateType", "startAutoSetup", "ZIndex"}]
      897 GETTABLEKS                       R21 R0 K4 ["autoSetupState"]
      899 GETTABLEKS                       R20 R21 K5 ["type"]
      901 SETTABLEKS                       R20 R19 K177 ["stateType"]
      903 SETTABLEKS                       R12 R19 K178 ["startAutoSetup"]
      905 NAMECALL                         R20 R7 K71 ["getNextOrder"]
      907 CALL                             R20 1 1
      908 SETTABLEKS                       R20 R19 K67 ["ZIndex"]
      910 CALL                             R17 2 1
      911 JUMP                             ; [+68]
      912 MOVE                             R17 R5
      913 JUMPIFNOT                        R17 ; [+66]
      914 GETUPVAL                         R18 3
      915 GETTABLEKS                       R17 R18 K22 ["createElement"]
      917 GETUPVAL                         R18 12
      918 DUPTABLE                         R19 K180 [{"AnchorPoint", "AutomaticSize", "Position", "ZIndex"}]
      919 GETIMPORT                        R20 K39 [Vector2.new]
      921 LOADN                            R21 1
      922 LOADN                            R22 1
      923 CALL                             R20 2 1
      924 SETTABLEKS                       R20 R19 K34 ["AnchorPoint"]
      926 GETIMPORT                        R20 K89 [Enum.AutomaticSize.XY]
      928 SETTABLEKS                       R20 R19 K47 ["AutomaticSize"]
      930 GETTABLEKS                       R21 R2 K30 ["Controls"]
      932 GETTABLEKS                       R20 R21 K35 ["Position"]
      934 SETTABLEKS                       R20 R19 K35 ["Position"]
      936 GETUPVAL                         R21 2
      937 CALL                             R21 0 1
      938 JUMPIFNOT                        R21 ; [+2]
      939 LOADNIL                          R20
      940 JUMP                             ; [+3]
      941 NAMECALL                         R20 R7 K71 ["getNextOrder"]
      943 CALL                             R20 1 1
      944 SETTABLEKS                       R20 R19 K67 ["ZIndex"]
      946 DUPTABLE                         R20 K181 [{"Start"}]
      947 GETUPVAL                         R22 3
      948 GETTABLEKS                       R21 R22 K22 ["createElement"]
      950 GETUPVAL                         R22 29
      951 DUPTABLE                         R23 K182 [{"AutomaticSize", "OnClick", "Style", "Text", "ZIndex"}]
      952 GETIMPORT                        R24 K89 [Enum.AutomaticSize.XY]
      954 SETTABLEKS                       R24 R23 K47 ["AutomaticSize"]
      956 SETTABLEKS                       R12 R23 K127 ["OnClick"]
      958 LOADK                            R24 K183 ["PrimaryBrand"]
      959 SETTABLEKS                       R24 R23 K139 ["Style"]
      961 LOADK                            R26 K151 ["AvatarScreen"]
      962 LOADK                            R27 K184 ["StartAutoSetup"]
      963 NAMECALL                         R24 R1 K153 ["getText"]
      965 CALL                             R24 3 1
      966 SETTABLEKS                       R24 R23 K111 ["Text"]
      968 GETUPVAL                         R25 2
      969 CALL                             R25 0 1
      970 JUMPIFNOT                        R25 ; [+2]
      971 LOADNIL                          R24
      972 JUMP                             ; [+1]
      973 LOADN                            R24 2
      974 SETTABLEKS                       R24 R23 K67 ["ZIndex"]
      976 CALL                             R21 2 1
      977 SETTABLEKS                       R21 R20 K125 ["Start"]
      979 CALL                             R17 3 1
      980 SETTABLEKS                       R17 R16 K30 ["Controls"]
      982 CALL                             R13 3 -1
      983 RETURN                           R13 -1

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
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R10 R1 K14 ["Src"]
       38 GETTABLEKS                       R9 R10 K15 ["Components"]
       40 GETTABLEKS                       R8 R9 K16 ["Screens"]
       42 GETTABLEKS                       R7 R8 K17 ["AutoSetupScreen"]
       44 GETTABLEKS                       R6 R7 K18 ["AutoSetupAlert"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R9 R1 K14 ["Src"]
       51 GETTABLEKS                       R8 R9 K15 ["Components"]
       53 GETTABLEKS                       R7 R8 K19 ["AutoSetupOptionsContext"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R10 R1 K14 ["Src"]
       60 GETTABLEKS                       R9 R10 K15 ["Components"]
       62 GETTABLEKS                       R8 R9 K20 ["Background"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R13 R1 K14 ["Src"]
       69 GETTABLEKS                       R12 R13 K15 ["Components"]
       71 GETTABLEKS                       R11 R12 K16 ["Screens"]
       73 GETTABLEKS                       R10 R11 K17 ["AutoSetupScreen"]
       75 GETTABLEKS                       R9 R10 K21 ["ControlsBar"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K9 [require]
       80 GETTABLEKS                       R14 R1 K14 ["Src"]
       82 GETTABLEKS                       R13 R14 K15 ["Components"]
       84 GETTABLEKS                       R12 R13 K16 ["Screens"]
       86 GETTABLEKS                       R11 R12 K17 ["AutoSetupScreen"]
       88 GETTABLEKS                       R10 R11 K22 ["GenerationCard"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K9 [require]
       93 GETTABLEKS                       R13 R1 K14 ["Src"]
       95 GETTABLEKS                       R12 R13 K15 ["Components"]
       97 GETTABLEKS                       R11 R12 K23 ["ModelPreview"]
       99 CALL                             R10 1 1
      100 GETIMPORT                        R11 K9 [require]
      102 GETTABLEKS                       R16 R1 K14 ["Src"]
      104 GETTABLEKS                       R15 R16 K15 ["Components"]
      106 GETTABLEKS                       R14 R15 K16 ["Screens"]
      108 GETTABLEKS                       R13 R14 K17 ["AutoSetupScreen"]
      110 GETTABLEKS                       R12 R13 K24 ["SortClothingTable"]
      112 CALL                             R11 1 1
      113 GETIMPORT                        R12 K9 [require]
      115 GETTABLEKS                       R15 R1 K14 ["Src"]
      117 GETTABLEKS                       R14 R15 K15 ["Components"]
      119 GETTABLEKS                       R13 R14 K25 ["StageSelector"]
      121 CALL                             R12 1 1
      122 GETIMPORT                        R13 K9 [require]
      124 GETTABLEKS                       R18 R1 K14 ["Src"]
      126 GETTABLEKS                       R17 R18 K15 ["Components"]
      128 GETTABLEKS                       R16 R17 K16 ["Screens"]
      130 GETTABLEKS                       R15 R16 K17 ["AutoSetupScreen"]
      132 GETTABLEKS                       R14 R15 K26 ["ToggleBar"]
      134 CALL                             R13 1 1
      135 GETIMPORT                        R14 K9 [require]
      137 GETTABLEKS                       R17 R1 K14 ["Src"]
      139 GETTABLEKS                       R16 R17 K27 ["Util"]
      141 GETTABLEKS                       R15 R16 K28 ["Constants"]
      143 CALL                             R14 1 1
      144 GETIMPORT                        R15 K9 [require]
      146 GETTABLEKS                       R18 R1 K14 ["Src"]
      148 GETTABLEKS                       R17 R18 K29 ["Resources"]
      150 GETTABLEKS                       R16 R17 K30 ["Theme"]
      152 CALL                             R15 1 1
      153 GETIMPORT                        R16 K9 [require]
      155 GETTABLEKS                       R18 R1 K14 ["Src"]
      157 GETTABLEKS                       R17 R18 K31 ["Types"]
      159 CALL                             R16 1 1
      160 GETIMPORT                        R17 K9 [require]
      162 GETTABLEKS                       R20 R1 K14 ["Src"]
      164 GETTABLEKS                       R19 R20 K27 ["Util"]
      166 GETTABLEKS                       R18 R19 K32 ["exhaustiveMatch"]
      168 CALL                             R17 1 1
      169 GETIMPORT                        R18 K9 [require]
      171 GETTABLEKS                       R21 R1 K14 ["Src"]
      173 GETTABLEKS                       R20 R21 K33 ["Hooks"]
      175 GETTABLEKS                       R19 R20 K34 ["useToggleState"]
      177 CALL                             R18 1 1
      178 GETTABLEKS                       R19 R3 K35 ["UI"]
      180 GETTABLEKS                       R20 R19 K36 ["IconButton"]
      182 GETTABLEKS                       R21 R19 K37 ["Pane"]
      184 GETTABLEKS                       R22 R19 K38 ["RadioButton"]
      186 GETTABLEKS                       R23 R19 K39 ["SplitPane"]
      188 GETTABLEKS                       R24 R19 K40 ["StyledDialog"]
      190 GETTABLEKS                       R25 R19 K41 ["TextLabel"]
      192 GETTABLEKS                       R26 R2 K42 ["Tooltip"]
      194 GETTABLEKS                       R28 R3 K27 ["Util"]
      196 GETTABLEKS                       R27 R28 K43 ["LayoutOrderIterator"]
      198 GETTABLEKS                       R29 R3 K44 ["ContextServices"]
      200 GETTABLEKS                       R28 R29 K45 ["Analytics"]
      202 GETTABLEKS                       R30 R3 K44 ["ContextServices"]
      204 GETTABLEKS                       R29 R30 K46 ["Localization"]
      206 GETTABLEKS                       R31 R3 K44 ["ContextServices"]
      208 GETTABLEKS                       R30 R31 K47 ["Stylizer"]
      210 GETIMPORT                        R31 K9 [require]
      212 GETTABLEKS                       R34 R1 K14 ["Src"]
      214 GETTABLEKS                       R33 R34 K48 ["Flags"]
      216 GETTABLEKS                       R32 R33 K49 ["getFFlagAvatarAutosetupOptionsInput"]
      218 CALL                             R31 1 1
      219 GETIMPORT                        R32 K9 [require]
      221 GETTABLEKS                       R35 R1 K14 ["Src"]
      223 GETTABLEKS                       R34 R35 K48 ["Flags"]
      225 GETTABLEKS                       R33 R34 K50 ["getFFlagAvatarPreviewerAutoSetupOpenTelemetry"]
      227 CALL                             R32 1 1
      228 GETIMPORT                        R33 K9 [require]
      230 GETTABLEKS                       R36 R1 K14 ["Src"]
      232 GETTABLEKS                       R35 R36 K48 ["Flags"]
      234 GETTABLEKS                       R34 R35 K51 ["getFFlagAvatarPreviewerSortClothingUI"]
      236 CALL                             R33 1 1
      237 DUPCLOSURE                       R34 K52 [PROTO_0]
      238 DUPCLOSURE                       R35 K53 [PROTO_12]
      239 CAPTURE                          VAL R29
      240 CAPTURE                          VAL R30
      241 CAPTURE                          VAL R31
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R6
      244 CAPTURE                          VAL R14
      245 CAPTURE                          VAL R32
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R17
      248 CAPTURE                          VAL R0
      249 CAPTURE                          VAL R18
      250 CAPTURE                          VAL R27
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R33
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R10
      257 CAPTURE                          VAL R34
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R25
      260 CAPTURE                          VAL R26
      261 CAPTURE                          VAL R2
      262 CAPTURE                          VAL R22
      263 CAPTURE                          VAL R11
      264 CAPTURE                          VAL R24
      265 CAPTURE                          VAL R5
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R8
      268 CAPTURE                          VAL R20
      269 RETURN                           R35 1
