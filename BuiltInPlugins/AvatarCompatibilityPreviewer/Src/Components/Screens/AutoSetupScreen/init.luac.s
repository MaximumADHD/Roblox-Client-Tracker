PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["openAutoSetupScreen"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetBoundingBox"]
        2 CALL                             R1 1 2
        3 DUPTABLE                         R3 K3 [{"cframe", "fov"}]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+23]
        7 GETUPVAL                         R5 1
        8 JUMPIFNOT                        R5 ; [+21]
        9 GETIMPORT                        R4 K6 [CFrame.lookAt]
       11 GETTABLEKS                       R7 R1 K7 ["Position"]
       13 GETTABLEKS                       R9 R2 K8 ["Magnitude"]
       15 GETTABLEKS                       R10 R1 K9 ["LookVector"]
       17 MUL                              R8 R9 R10
       18 ADD                              R6 R7 R8
       19 GETTABLEKS                       R9 R2 K8 ["Magnitude"]
       21 GETTABLEKS                       R10 R1 K11 ["UpVector"]
       23 MUL                              R8 R9 R10
       24 MULK                             R7 R8 K10 [0.5]
       25 ADD                              R5 R6 R7
       26 GETTABLEKS                       R6 R1 K7 ["Position"]
       28 CALL                             R4 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 SETTABLEKS                       R4 R3 K1 ["cframe"]
       33 LOADN                            R4 70
       34 SETTABLEKS                       R4 R3 K2 ["fov"]
       36 RETURN                           R3 1

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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["options"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKS                    R0 K0 ["yes"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["cancelAutoSetup"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["disable"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["AutoSetupScreen"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 NAMECALL                         R3 R3 K0 ["use"]
       12 CALL                             R3 1 1
       13 NAMECALL                         R3 R3 K2 ["get"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K3 ["useContext"]
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R5 R5 K4 ["Context"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R7 R0 K5 ["autoSetupState"]
       25 GETTABLEKS                       R7 R7 K6 ["type"]
       27 JUMPIFNOTEQKS                    R7 K7 ["none"] ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R7 R7 K8 ["LUAU_ANALYZE_ERROR"]
       34 FASTCALL2                        ASSERT R6 R7 ; [+3]
       36 GETIMPORT                        R5 K10 [assert]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 6
       40 NAMECALL                         R5 R5 K0 ["use"]
       42 CALL                             R5 1 1
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R6 R6 K11 ["useEffect"]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          VAL R5
       48 NEWTABLE                         R8 0 0
       50 CALL                             R6 2 0
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K12 ["useMemo"]
       54 NEWCLOSURE                       R7 P1
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R8 0 1
       58 GETTABLEKS                       R9 R0 K5 ["autoSetupState"]
       60 GETTABLEKS                       R9 R9 K13 ["target"]
       62 JUMPIFNOT                        R9 ; [+6]
       63 GETTABLEKS                       R9 R0 K5 ["autoSetupState"]
       65 GETTABLEKS                       R9 R9 K13 ["target"]
       67 GETTABLEKS                       R9 R9 K14 ["model"]
       69 SETLIST                          R8 R9 1 [1]
       71 CALL                             R6 2 1
       72 GETTABLEKS                       R7 R4 K15 ["value"]
       74 GETTABLEKS                       R7 R7 K16 ["alignFrontAngle"]
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R8 R8 K17 ["useCallback"]
       79 NEWCLOSURE                       R9 P2
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          VAL R7
       82 NEWTABLE                         R10 0 1
       84 MOVE                             R11 R7
       85 SETLIST                          R10 R11 1 [1]
       87 CALL                             R8 2 1
       88 GETUPVAL                         R9 3
       89 GETTABLEKS                       R9 R9 K12 ["useMemo"]
       91 NEWCLOSURE                       R10 P3
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U8
       94 NEWTABLE                         R11 0 1
       96 GETTABLEKS                       R12 R0 K5 ["autoSetupState"]
       98 SETLIST                          R11 R12 1 [1]
      100 CALL                             R9 2 1
      101 GETUPVAL                         R10 3
      102 GETTABLEKS                       R10 R10 K11 ["useEffect"]
      104 NEWCLOSURE                       R11 P4
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R6
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          VAL R2
      109 NEWTABLE                         R12 0 2
      111 GETTABLEKS                       R13 R0 K5 ["autoSetupState"]
      113 GETTABLEKS                       R13 R13 K6 ["type"]
      115 MOVE                             R14 R6
      116 SETLIST                          R12 R13 2 [1]
      118 CALL                             R10 2 0
      119 GETUPVAL                         R10 10
      120 LOADB                            R11 0
      121 CALL                             R10 1 1
      122 GETUPVAL                         R11 11
      123 GETTABLEKS                       R11 R11 K18 ["new"]
      125 CALL                             R11 0 1
      126 GETUPVAL                         R12 3
      127 GETTABLEKS                       R12 R12 K19 ["useState"]
      129 GETTABLEKS                       R13 R2 K20 ["SplitPane"]
      131 GETTABLEKS                       R13 R13 K21 ["DefaultSizes"]
      133 CALL                             R12 1 2
      134 GETTABLEN                        R15 R12 2
      135 GETTABLEKS                       R15 R15 K22 ["Scale"]
      137 GETTABLEKS                       R16 R2 K20 ["SplitPane"]
      139 GETTABLEKS                       R16 R16 K23 ["CollapsedTolerance"]
      141 JUMPIFLT                         R15 R16 ; [+2]
      143 LOADB                            R14 0 +1
      144 LOADB                            R14 1
      145 GETUPVAL                         R15 3
      146 GETTABLEKS                       R15 R15 K17 ["useCallback"]
      148 NEWCLOSURE                       R16 P5
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R2
      152 NEWTABLE                         R17 0 2
      154 MOVE                             R18 R14
      155 MOVE                             R19 R13
      156 SETLIST                          R17 R18 2 [1]
      158 CALL                             R15 2 1
      159 GETUPVAL                         R16 3
      160 GETTABLEKS                       R16 R16 K17 ["useCallback"]
      162 NEWCLOSURE                       R17 P6
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R4
      165 NEWTABLE                         R18 0 1
      167 GETTABLEKS                       R19 R4 K24 ["options"]
      169 SETLIST                          R18 R19 1 [1]
      171 CALL                             R16 2 1
      172 GETUPVAL                         R17 3
      173 GETTABLEKS                       R17 R17 K25 ["createElement"]
      175 GETUPVAL                         R18 12
      176 NEWTABLE                         R19 0 0
      178 DUPTABLE                         R20 K32 [{"StageSelect", "Contents", "CancelDialog", "ErrorAlert", "GenerationCard", "Controls"}]
      179 MOVE                             R21 R9
      180 JUMPIFNOT                        R21 ; [+18]
      181 GETUPVAL                         R21 3
      182 GETTABLEKS                       R21 R21 K25 ["createElement"]
      184 GETUPVAL                         R22 13
      185 DUPTABLE                         R23 K34 [{"type", "onBack"}]
      186 LOADK                            R24 K35 ["autosetup"]
      187 SETTABLEKS                       R24 R23 K6 ["type"]
      189 GETUPVAL                         R25 14
      190 CALL                             R25 0 1
      191 JUMPIFNOT                        R25 ; [+3]
      192 NEWCLOSURE                       R24 P7
      193 CAPTURE                          VAL R3
      194 JUMP                             ; [+1]
      195 LOADNIL                          R24
      196 SETTABLEKS                       R24 R23 K33 ["onBack"]
      198 CALL                             R21 2 1
      199 SETTABLEKS                       R21 R20 K26 ["StageSelect"]
      201 GETUPVAL                         R21 3
      202 GETTABLEKS                       R21 R21 K25 ["createElement"]
      204 GETUPVAL                         R22 12
      205 DUPTABLE                         R23 K39 [{"AnchorPoint", "Position", "Size"}]
      206 GETIMPORT                        R24 K41 [Vector2.new]
      208 LOADN                            R25 1
      209 LOADN                            R26 0
      210 CALL                             R24 2 1
      211 SETTABLEKS                       R24 R23 K36 ["AnchorPoint"]
      213 GETIMPORT                        R24 K44 [UDim2.fromScale]
      215 LOADN                            R25 1
      216 LOADN                            R26 0
      217 CALL                             R24 2 1
      218 SETTABLEKS                       R24 R23 K37 ["Position"]
      220 JUMPIFNOT                        R9 ; [+12]
      221 GETIMPORT                        R24 K45 [UDim2.new]
      223 LOADN                            R25 1
      224 LOADN                            R26 191
      225 LOADN                            R27 1
      226 GETTABLEKS                       R29 R2 K31 ["Controls"]
      228 GETTABLEKS                       R29 R29 K46 ["PaneHeight"]
      230 MINUS                            R28 R29
      231 CALL                             R24 4 1
      232 JUMP                             ; [+5]
      233 GETIMPORT                        R24 K44 [UDim2.fromScale]
      235 LOADN                            R25 1
      236 LOADN                            R26 1
      237 CALL                             R24 2 1
      238 SETTABLEKS                       R24 R23 K38 ["Size"]
      240 DUPTABLE                         R24 K48 [{"SplitView"}]
      241 GETUPVAL                         R25 3
      242 GETTABLEKS                       R25 R25 K25 ["createElement"]
      244 GETUPVAL                         R26 15
      245 DUPTABLE                         R27 K57 [{"AutomaticSize", "MinSizes", "Layout", "Sizes", "OnSizesChange", "ClampSize", "UseScale", "HideBars"}]
      246 GETIMPORT                        R28 K60 [Enum.AutomaticSize.X]
      248 SETTABLEKS                       R28 R27 K49 ["AutomaticSize"]
      250 GETTABLEKS                       R28 R2 K20 ["SplitPane"]
      252 GETTABLEKS                       R28 R28 K61 ["MinimumSizes"]
      254 SETTABLEKS                       R28 R27 K50 ["MinSizes"]
      256 GETIMPORT                        R28 K64 [Enum.FillDirection.Vertical]
      258 SETTABLEKS                       R28 R27 K51 ["Layout"]
      260 JUMPIFNOT                        R9 ; [+2]
      261 MOVE                             R28 R12
      262 JUMP                             ; [+4]
      263 GETTABLEKS                       R28 R2 K20 ["SplitPane"]
      265 GETTABLEKS                       R28 R28 K65 ["HiddenSizes"]
      267 SETTABLEKS                       R28 R27 K52 ["Sizes"]
      269 JUMPIFNOT                        R9 ; [+2]
      270 MOVE                             R28 R13
      271 JUMP                             ; [+1]
      272 DUPCLOSURE                       R28 K66 [PROTO_11]
      273 SETTABLEKS                       R28 R27 K53 ["OnSizesChange"]
      275 LOADB                            R28 1
      276 SETTABLEKS                       R28 R27 K54 ["ClampSize"]
      278 LOADB                            R28 1
      279 SETTABLEKS                       R28 R27 K55 ["UseScale"]
      281 LOADB                            R28 1
      282 SETTABLEKS                       R28 R27 K56 ["HideBars"]
      284 NEWTABLE                         R28 0 2
      286 GETUPVAL                         R29 3
      287 GETTABLEKS                       R29 R29 K25 ["createElement"]
      289 GETUPVAL                         R30 12
      290 NEWTABLE                         R31 0 0
      292 DUPTABLE                         R32 K70 [{"Background", "ModelPreview", "ToggleBar"}]
      293 GETUPVAL                         R33 3
      294 GETTABLEKS                       R33 R33 K25 ["createElement"]
      296 GETUPVAL                         R34 16
      297 CALL                             R33 1 1
      298 SETTABLEKS                       R33 R32 K67 ["Background"]
      300 GETUPVAL                         R33 3
      301 GETTABLEKS                       R33 R33 K25 ["createElement"]
      303 GETUPVAL                         R34 12
      304 DUPTABLE                         R35 K73 [{"Size", "ZIndex", "LayoutOrder"}]
      305 JUMPIFNOT                        R9 ; [+10]
      306 GETIMPORT                        R36 K45 [UDim2.new]
      308 LOADN                            R37 1
      309 LOADN                            R38 0
      310 LOADN                            R39 1
      311 GETTABLEKS                       R41 R2 K74 ["ToggleBarHeight"]
      313 MINUS                            R40 R41
      314 CALL                             R36 4 1
      315 JUMP                             ; [+5]
      316 GETIMPORT                        R36 K44 [UDim2.fromScale]
      318 LOADN                            R37 1
      319 LOADN                            R38 1
      320 CALL                             R36 2 1
      321 SETTABLEKS                       R36 R35 K38 ["Size"]
      323 NAMECALL                         R36 R11 K75 ["getNextOrder"]
      325 CALL                             R36 1 1
      326 SETTABLEKS                       R36 R35 K71 ["ZIndex"]
      328 LOADN                            R36 1
      329 SETTABLEKS                       R36 R35 K72 ["LayoutOrder"]
      331 GETUPVAL                         R36 3
      332 GETTABLEKS                       R36 R36 K25 ["createElement"]
      334 GETUPVAL                         R37 17
      335 DUPTABLE                         R38 K81 [{"Model", "GetCameraModifications", "ShowResetCameraButton", "ShowAxisIndicator", "ShowFrontIndicator"}]
      336 SETTABLEKS                       R6 R38 K76 ["Model"]
      338 SETTABLEKS                       R8 R38 K77 ["GetCameraModifications"]
      340 LOADB                            R39 1
      341 SETTABLEKS                       R39 R38 K78 ["ShowResetCameraButton"]
      343 GETUPVAL                         R40 7
      344 CALL                             R40 0 1
      345 JUMPIF                           R40 ; [+8]
      346 GETTABLEKS                       R40 R0 K5 ["autoSetupState"]
      348 GETTABLEKS                       R40 R40 K6 ["type"]
      350 JUMPIFEQKS                       R40 K82 ["inAutoSetup"] ; [+3]
      352 MOVE                             R39 R7
      353 JUMP                             ; [+1]
      354 LOADNIL                          R39
      355 SETTABLEKS                       R39 R38 K79 ["ShowAxisIndicator"]
      357 GETUPVAL                         R40 7
      358 CALL                             R40 0 1
      359 JUMPIFNOT                        R40 ; [+8]
      360 GETTABLEKS                       R40 R0 K5 ["autoSetupState"]
      362 GETTABLEKS                       R40 R40 K6 ["type"]
      364 JUMPIFEQKS                       R40 K82 ["inAutoSetup"] ; [+3]
      366 MOVE                             R39 R7
      367 JUMP                             ; [+1]
      368 LOADNIL                          R39
      369 SETTABLEKS                       R39 R38 K80 ["ShowFrontIndicator"]
      371 CALL                             R36 2 -1
      372 CALL                             R33 -1 1
      373 SETTABLEKS                       R33 R32 K68 ["ModelPreview"]
      375 MOVE                             R33 R9
      376 JUMPIFNOT                        R33 ; [+23]
      377 GETUPVAL                         R33 3
      378 GETTABLEKS                       R33 R33 K25 ["createElement"]
      380 GETUPVAL                         R34 18
      381 DUPTABLE                         R35 K87 [{"LayoutOrder", "Toggle", "isTableHidden", "Height", "ButtonColor"}]
      382 LOADN                            R36 2
      383 SETTABLEKS                       R36 R35 K72 ["LayoutOrder"]
      385 SETTABLEKS                       R15 R35 K83 ["Toggle"]
      387 SETTABLEKS                       R14 R35 K84 ["isTableHidden"]
      389 GETTABLEKS                       R36 R2 K74 ["ToggleBarHeight"]
      391 SETTABLEKS                       R36 R35 K85 ["Height"]
      393 GETTABLEKS                       R36 R2 K31 ["Controls"]
      395 GETTABLEKS                       R36 R36 K86 ["ButtonColor"]
      397 SETTABLEKS                       R36 R35 K86 ["ButtonColor"]
      399 CALL                             R33 2 1
      400 SETTABLEKS                       R33 R32 K69 ["ToggleBar"]
      402 CALL                             R29 3 1
      403 GETUPVAL                         R30 3
      404 GETTABLEKS                       R30 R30 K25 ["createElement"]
      406 GETUPVAL                         R31 12
      407 DUPTABLE                         R32 K90 [{"AutomaticSize", "Layout", "Padding", "Size", "Spacing"}]
      408 GETIMPORT                        R33 K92 [Enum.AutomaticSize.XY]
      410 SETTABLEKS                       R33 R32 K49 ["AutomaticSize"]
      412 GETIMPORT                        R33 K64 [Enum.FillDirection.Vertical]
      414 SETTABLEKS                       R33 R32 K51 ["Layout"]
      416 GETTABLEKS                       R33 R2 K93 ["TablePadding"]
      418 SETTABLEKS                       R33 R32 K88 ["Padding"]
      420 GETIMPORT                        R33 K44 [UDim2.fromScale]
      422 LOADN                            R34 0
      423 LOADN                            R35 0
      424 CALL                             R33 2 1
      425 SETTABLEKS                       R33 R32 K38 ["Size"]
      427 LOADN                            R33 8
      428 SETTABLEKS                       R33 R32 K89 ["Spacing"]
      430 DUPTABLE                         R33 K96 [{"SetupType", "Table"}]
      431 GETUPVAL                         R34 3
      432 GETTABLEKS                       R34 R34 K25 ["createElement"]
      434 GETUPVAL                         R35 12
      435 DUPTABLE                         R36 K98 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "AutomaticSize"}]
      436 LOADN                            R37 1
      437 SETTABLEKS                       R37 R36 K72 ["LayoutOrder"]
      439 GETIMPORT                        R37 K100 [Enum.FillDirection.Horizontal]
      441 SETTABLEKS                       R37 R36 K51 ["Layout"]
      443 GETIMPORT                        R37 K102 [Enum.HorizontalAlignment.Left]
      445 SETTABLEKS                       R37 R36 K97 ["HorizontalAlignment"]
      447 GETIMPORT                        R37 K44 [UDim2.fromScale]
      449 LOADN                            R38 1
      450 LOADN                            R39 0
      451 CALL                             R37 2 1
      452 SETTABLEKS                       R37 R36 K38 ["Size"]
      454 GETIMPORT                        R37 K104 [Enum.AutomaticSize.Y]
      456 SETTABLEKS                       R37 R36 K49 ["AutomaticSize"]
      458 DUPTABLE                         R37 K108 [{"Label", "Platform", "Development"}]
      459 GETUPVAL                         R38 3
      460 GETTABLEKS                       R38 R38 K25 ["createElement"]
      462 GETUPVAL                         R39 12
      463 DUPTABLE                         R40 K109 [{"LayoutOrder", "AutomaticSize", "Padding"}]
      464 LOADN                            R41 0
      465 SETTABLEKS                       R41 R40 K72 ["LayoutOrder"]
      467 GETIMPORT                        R41 K92 [Enum.AutomaticSize.XY]
      469 SETTABLEKS                       R41 R40 K49 ["AutomaticSize"]
      471 DUPTABLE                         R41 K111 [{"Left", "Right"}]
      472 LOADN                            R42 20
      473 SETTABLEKS                       R42 R41 K101 ["Left"]
      475 LOADN                            R42 20
      476 SETTABLEKS                       R42 R41 K110 ["Right"]
      478 SETTABLEKS                       R41 R40 K88 ["Padding"]
      480 DUPTABLE                         R41 K113 [{"TextLabel"}]
      481 GETUPVAL                         R42 3
      482 GETTABLEKS                       R42 R42 K25 ["createElement"]
      484 GETUPVAL                         R43 19
      485 DUPTABLE                         R44 K115 [{"Text"}]
      486 LOADK                            R45 K116 ["Preset"]
      487 SETTABLEKS                       R45 R44 K114 ["Text"]
      489 CALL                             R42 2 1
      490 SETTABLEKS                       R42 R41 K112 ["TextLabel"]
      492 CALL                             R38 3 1
      493 SETTABLEKS                       R38 R37 K105 ["Label"]
      495 GETUPVAL                         R38 3
      496 GETTABLEKS                       R38 R38 K25 ["createElement"]
      498 GETUPVAL                         R39 20
      499 DUPTABLE                         R40 K121 [{"LayoutOrder", "title", "text", "side", "align"}]
      500 LOADN                            R41 1
      501 SETTABLEKS                       R41 R40 K72 ["LayoutOrder"]
      503 LOADK                            R41 K122 ["Platform Avatar"]
      504 SETTABLEKS                       R41 R40 K117 ["title"]
      506 LOADK                            R41 K123 ["Create marketplace compatible assets for avatars across Roblox"]
      507 SETTABLEKS                       R41 R40 K118 ["text"]
      509 GETUPVAL                         R41 21
      510 GETTABLEKS                       R41 R41 K124 ["Enums"]
      512 GETTABLEKS                       R41 R41 K125 ["PopoverSide"]
      514 GETTABLEKS                       R41 R41 K126 ["Bottom"]
      516 SETTABLEKS                       R41 R40 K119 ["side"]
      518 GETUPVAL                         R41 21
      519 GETTABLEKS                       R41 R41 K124 ["Enums"]
      521 GETTABLEKS                       R41 R41 K127 ["PopoverAlign"]
      523 GETTABLEKS                       R41 R41 K128 ["Start"]
      525 SETTABLEKS                       R41 R40 K120 ["align"]
      527 GETUPVAL                         R41 3
      528 GETTABLEKS                       R41 R41 K25 ["createElement"]
      530 GETUPVAL                         R42 22
      531 DUPTABLE                         R43 K132 [{"Key", "OnClick", "Selected", "Text"}]
      532 LOADN                            R44 1
      533 SETTABLEKS                       R44 R43 K129 ["Key"]
      535 GETTABLEKS                       R44 R4 K133 ["set"]
      537 GETTABLEKS                       R44 R44 K134 ["setupType"]
      539 SETTABLEKS                       R44 R43 K130 ["OnClick"]
      541 GETTABLEKS                       R45 R4 K15 ["value"]
      543 GETTABLEKS                       R45 R45 K134 ["setupType"]
      545 JUMPIFEQKN                       R45 K135 [1] ; [+2]
      547 LOADB                            R44 0 +1
      548 LOADB                            R44 1
      549 SETTABLEKS                       R44 R43 K131 ["Selected"]
      551 LOADK                            R44 K122 ["Platform Avatar"]
      552 SETTABLEKS                       R44 R43 K114 ["Text"]
      554 CALL                             R41 2 -1
      555 CALL                             R38 -1 1
      556 SETTABLEKS                       R38 R37 K106 ["Platform"]
      558 GETUPVAL                         R38 3
      559 GETTABLEKS                       R38 R38 K25 ["createElement"]
      561 GETUPVAL                         R39 20
      562 DUPTABLE                         R40 K121 [{"LayoutOrder", "title", "text", "side", "align"}]
      563 LOADN                            R41 2
      564 SETTABLEKS                       R41 R40 K72 ["LayoutOrder"]
      566 LOADK                            R41 K136 ["Development Avatar"]
      567 SETTABLEKS                       R41 R40 K117 ["title"]
      569 LOADK                            R41 K137 ["Create development assets for use within your experience"]
      570 SETTABLEKS                       R41 R40 K118 ["text"]
      572 GETUPVAL                         R41 21
      573 GETTABLEKS                       R41 R41 K124 ["Enums"]
      575 GETTABLEKS                       R41 R41 K125 ["PopoverSide"]
      577 GETTABLEKS                       R41 R41 K126 ["Bottom"]
      579 SETTABLEKS                       R41 R40 K119 ["side"]
      581 GETUPVAL                         R41 21
      582 GETTABLEKS                       R41 R41 K124 ["Enums"]
      584 GETTABLEKS                       R41 R41 K127 ["PopoverAlign"]
      586 GETTABLEKS                       R41 R41 K128 ["Start"]
      588 SETTABLEKS                       R41 R40 K120 ["align"]
      590 GETUPVAL                         R41 3
      591 GETTABLEKS                       R41 R41 K25 ["createElement"]
      593 GETUPVAL                         R42 22
      594 DUPTABLE                         R43 K132 [{"Key", "OnClick", "Selected", "Text"}]
      595 LOADN                            R44 2
      596 SETTABLEKS                       R44 R43 K129 ["Key"]
      598 GETTABLEKS                       R44 R4 K133 ["set"]
      600 GETTABLEKS                       R44 R44 K134 ["setupType"]
      602 SETTABLEKS                       R44 R43 K130 ["OnClick"]
      604 GETTABLEKS                       R45 R4 K15 ["value"]
      606 GETTABLEKS                       R45 R45 K134 ["setupType"]
      608 JUMPIFEQKN                       R45 K138 [2] ; [+2]
      610 LOADB                            R44 0 +1
      611 LOADB                            R44 1
      612 SETTABLEKS                       R44 R43 K131 ["Selected"]
      614 LOADK                            R44 K136 ["Development Avatar"]
      615 SETTABLEKS                       R44 R43 K114 ["Text"]
      617 CALL                             R41 2 -1
      618 CALL                             R38 -1 1
      619 SETTABLEKS                       R38 R37 K107 ["Development"]
      621 CALL                             R34 3 1
      622 SETTABLEKS                       R34 R33 K94 ["SetupType"]
      624 MOVE                             R34 R9
      625 JUMPIFNOT                        R34 ; [+12]
      626 GETUPVAL                         R34 3
      627 GETTABLEKS                       R34 R34 K25 ["createElement"]
      629 GETUPVAL                         R35 23
      630 DUPTABLE                         R36 K139 [{"target"}]
      631 GETTABLEKS                       R37 R0 K5 ["autoSetupState"]
      633 GETTABLEKS                       R37 R37 K13 ["target"]
      635 SETTABLEKS                       R37 R36 K13 ["target"]
      637 CALL                             R34 2 1
      638 SETTABLEKS                       R34 R33 K95 ["Table"]
      640 CALL                             R30 3 -1
      641 SETLIST                          R28 R29 -1 [1]
      643 CALL                             R25 3 1
      644 SETTABLEKS                       R25 R24 K47 ["SplitView"]
      646 CALL                             R21 3 1
      647 SETTABLEKS                       R21 R20 K27 ["Contents"]
      649 GETUPVAL                         R21 3
      650 GETTABLEKS                       R21 R21 K25 ["createElement"]
      652 GETUPVAL                         R22 24
      653 DUPTABLE                         R23 K149 [{"Style", "Enabled", "Modal", "Resizable", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
      654 LOADK                            R24 K150 ["AcceptCancel"]
      655 SETTABLEKS                       R24 R23 K140 ["Style"]
      657 GETTABLEKS                       R24 R10 K151 ["enabled"]
      659 SETTABLEKS                       R24 R23 K141 ["Enabled"]
      661 LOADB                            R24 1
      662 SETTABLEKS                       R24 R23 K142 ["Modal"]
      664 LOADB                            R24 0
      665 SETTABLEKS                       R24 R23 K143 ["Resizable"]
      667 LOADK                            R26 K152 ["AvatarScreen"]
      668 LOADK                            R27 K153 ["CancelPromptTitle"]
      669 NAMECALL                         R24 R1 K154 ["getText"]
      671 CALL                             R24 3 1
      672 SETTABLEKS                       R24 R23 K144 ["Title"]
      674 GETIMPORT                        R24 K41 [Vector2.new]
      676 LOADN                            R25 44
      677 LOADN                            R26 50
      678 CALL                             R24 2 1
      679 SETTABLEKS                       R24 R23 K145 ["MinContentSize"]
      681 NEWTABLE                         R24 0 2
      683 DUPTABLE                         R25 K155 [{"Key", "Text"}]
      684 LOADK                            R26 K156 ["yes"]
      685 SETTABLEKS                       R26 R25 K129 ["Key"]
      687 LOADK                            R28 K152 ["AvatarScreen"]
      688 LOADK                            R29 K157 ["CancelPromptYes"]
      689 NAMECALL                         R26 R1 K154 ["getText"]
      691 CALL                             R26 3 1
      692 SETTABLEKS                       R26 R25 K114 ["Text"]
      694 DUPTABLE                         R26 K155 [{"Key", "Text"}]
      695 LOADK                            R27 K158 ["no"]
      696 SETTABLEKS                       R27 R26 K129 ["Key"]
      698 LOADK                            R29 K152 ["AvatarScreen"]
      699 LOADK                            R30 K159 ["CancelPromptNo"]
      700 NAMECALL                         R27 R1 K154 ["getText"]
      702 CALL                             R27 3 1
      703 SETTABLEKS                       R27 R26 K114 ["Text"]
      705 SETLIST                          R24 R25 2 [1]
      707 SETTABLEKS                       R24 R23 K146 ["Buttons"]
      709 NEWCLOSURE                       R24 P9
      710 CAPTURE                          VAL R0
      711 CAPTURE                          VAL R10
      712 SETTABLEKS                       R24 R23 K147 ["OnButtonPressed"]
      714 GETTABLEKS                       R24 R10 K160 ["disable"]
      716 SETTABLEKS                       R24 R23 K148 ["OnClose"]
      718 DUPTABLE                         R24 K115 [{"Text"}]
      719 GETUPVAL                         R25 3
      720 GETTABLEKS                       R25 R25 K25 ["createElement"]
      722 GETUPVAL                         R26 19
      723 DUPTABLE                         R27 K162 [{"Text", "TextWrapped"}]
      724 LOADK                            R30 K152 ["AvatarScreen"]
      725 LOADK                            R31 K163 ["CancelPromptConfirmText"]
      726 NAMECALL                         R28 R1 K154 ["getText"]
      728 CALL                             R28 3 1
      729 SETTABLEKS                       R28 R27 K114 ["Text"]
      731 LOADB                            R28 1
      732 SETTABLEKS                       R28 R27 K161 ["TextWrapped"]
      734 CALL                             R25 2 1
      735 SETTABLEKS                       R25 R24 K114 ["Text"]
      737 CALL                             R21 3 1
      738 SETTABLEKS                       R21 R20 K28 ["CancelDialog"]
      740 GETUPVAL                         R21 3
      741 GETTABLEKS                       R21 R21 K25 ["createElement"]
      743 GETUPVAL                         R22 12
      744 DUPTABLE                         R23 K164 [{"AutomaticSize", "Size", "ZIndex"}]
      745 GETIMPORT                        R24 K104 [Enum.AutomaticSize.Y]
      747 SETTABLEKS                       R24 R23 K49 ["AutomaticSize"]
      749 GETIMPORT                        R24 K44 [UDim2.fromScale]
      751 LOADN                            R25 1
      752 LOADN                            R26 0
      753 CALL                             R24 2 1
      754 SETTABLEKS                       R24 R23 K38 ["Size"]
      756 LOADN                            R24 4
      757 SETTABLEKS                       R24 R23 K71 ["ZIndex"]
      759 DUPTABLE                         R24 K166 [{"Padding", "Alert"}]
      760 GETUPVAL                         R25 3
      761 GETTABLEKS                       R25 R25 K25 ["createElement"]
      763 LOADK                            R26 K167 ["UIPadding"]
      764 DUPTABLE                         R27 K171 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      765 GETTABLEKS                       R28 R2 K172 ["AlertPaddingHorizontal"]
      767 SETTABLEKS                       R28 R27 K168 ["PaddingLeft"]
      769 GETTABLEKS                       R28 R2 K172 ["AlertPaddingHorizontal"]
      771 SETTABLEKS                       R28 R27 K169 ["PaddingRight"]
      773 GETTABLEKS                       R28 R2 K173 ["AlertPaddingVertical"]
      775 SETTABLEKS                       R28 R27 K170 ["PaddingTop"]
      777 CALL                             R25 2 1
      778 SETTABLEKS                       R25 R24 K88 ["Padding"]
      780 GETUPVAL                         R25 3
      781 GETTABLEKS                       R25 R25 K25 ["createElement"]
      783 GETUPVAL                         R26 25
      784 DUPTABLE                         R27 K176 [{"autoSetupState", "clearError", "cancelDialogOpen"}]
      785 GETTABLEKS                       R28 R0 K5 ["autoSetupState"]
      787 SETTABLEKS                       R28 R27 K5 ["autoSetupState"]
      789 GETTABLEKS                       R28 R0 K174 ["clearError"]
      791 SETTABLEKS                       R28 R27 K174 ["clearError"]
      793 SETTABLEKS                       R10 R27 K175 ["cancelDialogOpen"]
      795 CALL                             R25 2 1
      796 SETTABLEKS                       R25 R24 K165 ["Alert"]
      798 CALL                             R21 3 1
      799 SETTABLEKS                       R21 R20 K29 ["ErrorAlert"]
      801 GETTABLEKS                       R22 R0 K5 ["autoSetupState"]
      803 GETTABLEKS                       R22 R22 K6 ["type"]
      805 JUMPIFNOTEQKS                    R22 K82 ["inAutoSetup"] ; [+14]
      807 GETUPVAL                         R21 3
      808 GETTABLEKS                       R21 R21 K25 ["createElement"]
      810 GETUPVAL                         R22 26
      811 DUPTABLE                         R23 K177 [{"autoSetupState", "cancelDialogOpen"}]
      812 GETTABLEKS                       R24 R0 K5 ["autoSetupState"]
      814 SETTABLEKS                       R24 R23 K5 ["autoSetupState"]
      816 SETTABLEKS                       R10 R23 K175 ["cancelDialogOpen"]
      818 CALL                             R21 2 1
      819 JUMP                             ; [+1]
      820 LOADNIL                          R21
      821 SETTABLEKS                       R21 R20 K30 ["GenerationCard"]
      823 GETTABLEKS                       R22 R0 K5 ["autoSetupState"]
      825 GETTABLEKS                       R22 R22 K6 ["type"]
      827 JUMPIFEQKS                       R22 K82 ["inAutoSetup"] ; [+21]
      829 GETUPVAL                         R21 3
      830 GETTABLEKS                       R21 R21 K25 ["createElement"]
      832 GETUPVAL                         R22 27
      833 DUPTABLE                         R23 K180 [{"stateType", "startAutoSetup", "ZIndex"}]
      834 GETTABLEKS                       R24 R0 K5 ["autoSetupState"]
      836 GETTABLEKS                       R24 R24 K6 ["type"]
      838 SETTABLEKS                       R24 R23 K178 ["stateType"]
      840 SETTABLEKS                       R16 R23 K179 ["startAutoSetup"]
      842 NAMECALL                         R24 R11 K75 ["getNextOrder"]
      844 CALL                             R24 1 1
      845 SETTABLEKS                       R24 R23 K71 ["ZIndex"]
      847 CALL                             R21 2 1
      848 JUMP                             ; [+50]
      849 MOVE                             R21 R9
      850 JUMPIFNOT                        R21 ; [+48]
      851 GETUPVAL                         R21 3
      852 GETTABLEKS                       R21 R21 K25 ["createElement"]
      854 GETUPVAL                         R22 12
      855 DUPTABLE                         R23 K181 [{"AnchorPoint", "AutomaticSize", "Position"}]
      856 GETIMPORT                        R24 K41 [Vector2.new]
      858 LOADN                            R25 1
      859 LOADN                            R26 1
      860 CALL                             R24 2 1
      861 SETTABLEKS                       R24 R23 K36 ["AnchorPoint"]
      863 GETIMPORT                        R24 K92 [Enum.AutomaticSize.XY]
      865 SETTABLEKS                       R24 R23 K49 ["AutomaticSize"]
      867 GETTABLEKS                       R24 R2 K31 ["Controls"]
      869 GETTABLEKS                       R24 R24 K37 ["Position"]
      871 SETTABLEKS                       R24 R23 K37 ["Position"]
      873 DUPTABLE                         R24 K182 [{"Start"}]
      874 GETUPVAL                         R25 3
      875 GETTABLEKS                       R25 R25 K25 ["createElement"]
      877 GETUPVAL                         R26 28
      878 DUPTABLE                         R27 K183 [{"AutomaticSize", "OnClick", "Style", "Text"}]
      879 GETIMPORT                        R28 K92 [Enum.AutomaticSize.XY]
      881 SETTABLEKS                       R28 R27 K49 ["AutomaticSize"]
      883 SETTABLEKS                       R16 R27 K130 ["OnClick"]
      885 LOADK                            R28 K184 ["PrimaryBrand"]
      886 SETTABLEKS                       R28 R27 K140 ["Style"]
      888 LOADK                            R30 K152 ["AvatarScreen"]
      889 LOADK                            R31 K185 ["StartAutoSetup"]
      890 NAMECALL                         R28 R1 K154 ["getText"]
      892 CALL                             R28 3 1
      893 SETTABLEKS                       R28 R27 K114 ["Text"]
      895 CALL                             R25 2 1
      896 SETTABLEKS                       R25 R24 K128 ["Start"]
      898 CALL                             R21 3 1
      899 SETTABLEKS                       R21 R20 K31 ["Controls"]
      901 CALL                             R17 3 -1
      902 RETURN                           R17 -1

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
      166 GETTABLEKS                       R18 R18 K32 ["SelectionWrapper"]
      168 CALL                             R17 1 1
      169 GETIMPORT                        R18 K9 [require]
      171 GETTABLEKS                       R19 R1 K14 ["Src"]
      173 GETTABLEKS                       R19 R19 K27 ["Util"]
      175 GETTABLEKS                       R19 R19 K33 ["exhaustiveMatch"]
      177 CALL                             R18 1 1
      178 GETIMPORT                        R19 K9 [require]
      180 GETTABLEKS                       R20 R1 K14 ["Src"]
      182 GETTABLEKS                       R20 R20 K34 ["Hooks"]
      184 GETTABLEKS                       R20 R20 K35 ["useToggleState"]
      186 CALL                             R19 1 1
      187 GETTABLEKS                       R20 R3 K36 ["UI"]
      189 GETTABLEKS                       R21 R20 K37 ["IconButton"]
      191 GETTABLEKS                       R22 R20 K38 ["Pane"]
      193 GETTABLEKS                       R23 R20 K39 ["RadioButton"]
      195 GETTABLEKS                       R24 R20 K40 ["SplitPane"]
      197 GETTABLEKS                       R25 R20 K41 ["StyledDialog"]
      199 GETTABLEKS                       R26 R20 K42 ["TextLabel"]
      201 GETTABLEKS                       R27 R2 K43 ["Tooltip"]
      203 GETTABLEKS                       R28 R3 K27 ["Util"]
      205 GETTABLEKS                       R28 R28 K44 ["LayoutOrderIterator"]
      207 GETTABLEKS                       R29 R3 K45 ["ContextServices"]
      209 GETTABLEKS                       R29 R29 K46 ["Analytics"]
      211 GETTABLEKS                       R30 R3 K45 ["ContextServices"]
      213 GETTABLEKS                       R30 R30 K47 ["Localization"]
      215 GETTABLEKS                       R31 R3 K45 ["ContextServices"]
      217 GETTABLEKS                       R31 R31 K48 ["Stylizer"]
      219 GETIMPORT                        R32 K9 [require]
      221 GETTABLEKS                       R33 R1 K14 ["Src"]
      223 GETTABLEKS                       R33 R33 K49 ["Flags"]
      225 GETTABLEKS                       R33 R33 K50 ["getFFlagAvatarPreviewerAvatarScreenBack"]
      227 CALL                             R32 1 1
      228 GETIMPORT                        R33 K9 [require]
      230 GETTABLEKS                       R34 R1 K14 ["Src"]
      232 GETTABLEKS                       R34 R34 K49 ["Flags"]
      234 GETTABLEKS                       R34 R34 K51 ["getFFlagAvatarPreviewerPedestalFrontIndicator"]
      236 CALL                             R33 1 1
      237 DUPCLOSURE                       R34 K52 [PROTO_13]
      238 CAPTURE                          VAL R30
      239 CAPTURE                          VAL R31
      240 CAPTURE                          VAL R17
      241 CAPTURE                          VAL R4
      242 CAPTURE                          VAL R6
      243 CAPTURE                          VAL R14
      244 CAPTURE                          VAL R29
      245 CAPTURE                          VAL R33
      246 CAPTURE                          VAL R18
      247 CAPTURE                          VAL R0
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R28
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R32
      253 CAPTURE                          VAL R24
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R26
      258 CAPTURE                          VAL R27
      259 CAPTURE                          VAL R2
      260 CAPTURE                          VAL R23
      261 CAPTURE                          VAL R11
      262 CAPTURE                          VAL R25
      263 CAPTURE                          VAL R5
      264 CAPTURE                          VAL R9
      265 CAPTURE                          VAL R8
      266 CAPTURE                          VAL R21
      267 RETURN                           R34 1
