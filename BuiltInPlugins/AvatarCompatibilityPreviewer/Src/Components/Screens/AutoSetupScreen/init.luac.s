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
        3 DUPTABLE                         R3 K4 [{["cframe"], ["fov"] = 70}]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+23]
        7 GETUPVAL                         R5 1
        8 JUMPIFNOT                        R5 ; [+21]
        9 GETIMPORT                        R4 K7 [CFrame.lookAt]
       11 GETTABLEKS                       R7 R1 K8 ["Position"]
       13 GETTABLEKS                       R9 R2 K9 ["Magnitude"]
       15 GETTABLEKS                       R10 R1 K10 ["LookVector"]
       17 MUL                              R8 R9 R10
       18 ADD                              R6 R7 R8
       19 GETTABLEKS                       R9 R2 K9 ["Magnitude"]
       21 GETTABLEKS                       R10 R1 K12 ["UpVector"]
       23 MUL                              R8 R9 R10
       24 MULK                             R7 R8 K11 [0.5]
       25 ADD                              R5 R6 R7
       26 GETTABLEKS                       R6 R1 K8 ["Position"]
       28 CALL                             R4 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 SETTABLEKS                       R4 R3 K1 ["cframe"]
       33 RETURN                           R3 1

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
      180 JUMPIFNOT                        R21 ; [+15]
      181 GETUPVAL                         R21 3
      182 GETTABLEKS                       R21 R21 K25 ["createElement"]
      184 GETUPVAL                         R22 13
      185 DUPTABLE                         R23 K35 [{["type"] = "autosetup", ["onBack"]}]
      186 GETUPVAL                         R25 14
      187 CALL                             R25 0 1
      188 JUMPIFNOT                        R25 ; [+3]
      189 NEWCLOSURE                       R24 P7
      190 CAPTURE                          VAL R3
      191 JUMP                             ; [+1]
      192 LOADNIL                          R24
      193 SETTABLEKS                       R24 R23 K34 ["onBack"]
      195 CALL                             R21 2 1
      196 SETTABLEKS                       R21 R20 K26 ["StageSelect"]
      198 GETUPVAL                         R21 3
      199 GETTABLEKS                       R21 R21 K25 ["createElement"]
      201 GETUPVAL                         R22 12
      202 DUPTABLE                         R23 K39 [{"AnchorPoint", "Position", "Size"}]
      203 GETIMPORT                        R24 K41 [Vector2.new]
      205 LOADN                            R25 1
      206 LOADN                            R26 0
      207 CALL                             R24 2 1
      208 SETTABLEKS                       R24 R23 K36 ["AnchorPoint"]
      210 GETIMPORT                        R24 K44 [UDim2.fromScale]
      212 LOADN                            R25 1
      213 LOADN                            R26 0
      214 CALL                             R24 2 1
      215 SETTABLEKS                       R24 R23 K37 ["Position"]
      217 JUMPIFNOT                        R9 ; [+12]
      218 GETIMPORT                        R24 K45 [UDim2.new]
      220 LOADN                            R25 1
      221 LOADN                            R26 -65
      222 LOADN                            R27 1
      223 GETTABLEKS                       R29 R2 K31 ["Controls"]
      225 GETTABLEKS                       R29 R29 K46 ["PaneHeight"]
      227 MINUS                            R28 R29
      228 CALL                             R24 4 1
      229 JUMP                             ; [+5]
      230 GETIMPORT                        R24 K44 [UDim2.fromScale]
      232 LOADN                            R25 1
      233 LOADN                            R26 1
      234 CALL                             R24 2 1
      235 SETTABLEKS                       R24 R23 K38 ["Size"]
      237 DUPTABLE                         R24 K48 [{"SplitView"}]
      238 GETUPVAL                         R25 3
      239 GETTABLEKS                       R25 R25 K25 ["createElement"]
      241 GETUPVAL                         R26 15
      242 DUPTABLE                         R27 K58 [{["AutomaticSize"], ["MinSizes"], ["Layout"], ["Sizes"], ["OnSizesChange"], ["ClampSize"] = True, ["UseScale"] = True, ["HideBars"] = True}]
      243 GETIMPORT                        R28 K61 [Enum.AutomaticSize.X]
      245 SETTABLEKS                       R28 R27 K49 ["AutomaticSize"]
      247 GETTABLEKS                       R28 R2 K20 ["SplitPane"]
      249 GETTABLEKS                       R28 R28 K62 ["MinimumSizes"]
      251 SETTABLEKS                       R28 R27 K50 ["MinSizes"]
      253 GETIMPORT                        R28 K65 [Enum.FillDirection.Vertical]
      255 SETTABLEKS                       R28 R27 K51 ["Layout"]
      257 JUMPIFNOT                        R9 ; [+2]
      258 MOVE                             R28 R12
      259 JUMP                             ; [+4]
      260 GETTABLEKS                       R28 R2 K20 ["SplitPane"]
      262 GETTABLEKS                       R28 R28 K66 ["HiddenSizes"]
      264 SETTABLEKS                       R28 R27 K52 ["Sizes"]
      266 JUMPIFNOT                        R9 ; [+2]
      267 MOVE                             R28 R13
      268 JUMP                             ; [+1]
      269 DUPCLOSURE                       R28 K67 [PROTO_11]
      270 SETTABLEKS                       R28 R27 K53 ["OnSizesChange"]
      272 NEWTABLE                         R28 0 2
      274 GETUPVAL                         R29 3
      275 GETTABLEKS                       R29 R29 K25 ["createElement"]
      277 GETUPVAL                         R30 12
      278 NEWTABLE                         R31 0 0
      280 DUPTABLE                         R32 K71 [{"Background", "ModelPreview", "ToggleBar"}]
      281 GETUPVAL                         R33 3
      282 GETTABLEKS                       R33 R33 K25 ["createElement"]
      284 GETUPVAL                         R34 16
      285 CALL                             R33 1 1
      286 SETTABLEKS                       R33 R32 K68 ["Background"]
      288 GETUPVAL                         R33 3
      289 GETTABLEKS                       R33 R33 K25 ["createElement"]
      291 GETUPVAL                         R34 12
      292 DUPTABLE                         R35 K75 [{["Size"], ["ZIndex"], ["LayoutOrder"] = 1}]
      293 JUMPIFNOT                        R9 ; [+10]
      294 GETIMPORT                        R36 K45 [UDim2.new]
      296 LOADN                            R37 1
      297 LOADN                            R38 0
      298 LOADN                            R39 1
      299 GETTABLEKS                       R41 R2 K76 ["ToggleBarHeight"]
      301 MINUS                            R40 R41
      302 CALL                             R36 4 1
      303 JUMP                             ; [+5]
      304 GETIMPORT                        R36 K44 [UDim2.fromScale]
      306 LOADN                            R37 1
      307 LOADN                            R38 1
      308 CALL                             R36 2 1
      309 SETTABLEKS                       R36 R35 K38 ["Size"]
      311 NAMECALL                         R36 R11 K77 ["getNextOrder"]
      313 CALL                             R36 1 1
      314 SETTABLEKS                       R36 R35 K72 ["ZIndex"]
      316 GETUPVAL                         R36 3
      317 GETTABLEKS                       R36 R36 K25 ["createElement"]
      319 GETUPVAL                         R37 17
      320 DUPTABLE                         R38 K83 [{["Model"], ["GetCameraModifications"], ["ShowResetCameraButton"] = True, ["ShowAxisIndicator"], ["ShowFrontIndicator"]}]
      321 SETTABLEKS                       R6 R38 K78 ["Model"]
      323 SETTABLEKS                       R8 R38 K79 ["GetCameraModifications"]
      325 GETUPVAL                         R40 7
      326 CALL                             R40 0 1
      327 JUMPIF                           R40 ; [+8]
      328 GETTABLEKS                       R40 R0 K5 ["autoSetupState"]
      330 GETTABLEKS                       R40 R40 K6 ["type"]
      332 JUMPIFEQKS                       R40 K84 ["inAutoSetup"] ; [+3]
      334 MOVE                             R39 R7
      335 JUMP                             ; [+1]
      336 LOADNIL                          R39
      337 SETTABLEKS                       R39 R38 K81 ["ShowAxisIndicator"]
      339 GETUPVAL                         R40 7
      340 CALL                             R40 0 1
      341 JUMPIFNOT                        R40 ; [+8]
      342 GETTABLEKS                       R40 R0 K5 ["autoSetupState"]
      344 GETTABLEKS                       R40 R40 K6 ["type"]
      346 JUMPIFEQKS                       R40 K84 ["inAutoSetup"] ; [+3]
      348 MOVE                             R39 R7
      349 JUMP                             ; [+1]
      350 LOADNIL                          R39
      351 SETTABLEKS                       R39 R38 K82 ["ShowFrontIndicator"]
      353 CALL                             R36 2 -1
      354 CALL                             R33 -1 1
      355 SETTABLEKS                       R33 R32 K69 ["ModelPreview"]
      357 MOVE                             R33 R9
      358 JUMPIFNOT                        R33 ; [+20]
      359 GETUPVAL                         R33 3
      360 GETTABLEKS                       R33 R33 K25 ["createElement"]
      362 GETUPVAL                         R34 18
      363 DUPTABLE                         R35 K90 [{["LayoutOrder"] = 2, ["Toggle"], ["isTableHidden"], ["Height"], ["ButtonColor"]}]
      364 SETTABLEKS                       R15 R35 K86 ["Toggle"]
      366 SETTABLEKS                       R14 R35 K87 ["isTableHidden"]
      368 GETTABLEKS                       R36 R2 K76 ["ToggleBarHeight"]
      370 SETTABLEKS                       R36 R35 K88 ["Height"]
      372 GETTABLEKS                       R36 R2 K31 ["Controls"]
      374 GETTABLEKS                       R36 R36 K89 ["ButtonColor"]
      376 SETTABLEKS                       R36 R35 K89 ["ButtonColor"]
      378 CALL                             R33 2 1
      379 SETTABLEKS                       R33 R32 K70 ["ToggleBar"]
      381 CALL                             R29 3 1
      382 GETUPVAL                         R30 3
      383 GETTABLEKS                       R30 R30 K25 ["createElement"]
      385 GETUPVAL                         R31 12
      386 DUPTABLE                         R32 K94 [{["AutomaticSize"], ["Layout"], ["Padding"], ["Size"], ["Spacing"] = 8}]
      387 GETIMPORT                        R33 K96 [Enum.AutomaticSize.XY]
      389 SETTABLEKS                       R33 R32 K49 ["AutomaticSize"]
      391 GETIMPORT                        R33 K65 [Enum.FillDirection.Vertical]
      393 SETTABLEKS                       R33 R32 K51 ["Layout"]
      395 GETTABLEKS                       R33 R2 K97 ["TablePadding"]
      397 SETTABLEKS                       R33 R32 K91 ["Padding"]
      399 GETIMPORT                        R33 K44 [UDim2.fromScale]
      401 LOADN                            R34 0
      402 LOADN                            R35 0
      403 CALL                             R33 2 1
      404 SETTABLEKS                       R33 R32 K38 ["Size"]
      406 DUPTABLE                         R33 K100 [{"SetupType", "Table"}]
      407 GETUPVAL                         R34 3
      408 GETTABLEKS                       R34 R34 K25 ["createElement"]
      410 GETUPVAL                         R35 12
      411 DUPTABLE                         R36 K102 [{["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"], ["Size"], ["AutomaticSize"]}]
      412 GETIMPORT                        R37 K104 [Enum.FillDirection.Horizontal]
      414 SETTABLEKS                       R37 R36 K51 ["Layout"]
      416 GETIMPORT                        R37 K106 [Enum.HorizontalAlignment.Left]
      418 SETTABLEKS                       R37 R36 K101 ["HorizontalAlignment"]
      420 GETIMPORT                        R37 K44 [UDim2.fromScale]
      422 LOADN                            R38 1
      423 LOADN                            R39 0
      424 CALL                             R37 2 1
      425 SETTABLEKS                       R37 R36 K38 ["Size"]
      427 GETIMPORT                        R37 K108 [Enum.AutomaticSize.Y]
      429 SETTABLEKS                       R37 R36 K49 ["AutomaticSize"]
      431 DUPTABLE                         R37 K112 [{"Label", "Platform", "Development"}]
      432 GETUPVAL                         R38 3
      433 GETTABLEKS                       R38 R38 K25 ["createElement"]
      435 GETUPVAL                         R39 12
      436 DUPTABLE                         R40 K114 [{["LayoutOrder"] = 0, ["AutomaticSize"], ["Padding"]}]
      437 GETIMPORT                        R41 K96 [Enum.AutomaticSize.XY]
      439 SETTABLEKS                       R41 R40 K49 ["AutomaticSize"]
      441 DUPTABLE                         R41 K117 [{["Left"] = 20, ["Right"] = 20}]
      442 SETTABLEKS                       R41 R40 K91 ["Padding"]
      444 DUPTABLE                         R41 K119 [{"TextLabel"}]
      445 GETUPVAL                         R42 3
      446 GETTABLEKS                       R42 R42 K25 ["createElement"]
      448 GETUPVAL                         R43 19
      449 DUPTABLE                         R44 K122 [{["Text"] = "Preset"}]
      450 CALL                             R42 2 1
      451 SETTABLEKS                       R42 R41 K118 ["TextLabel"]
      453 CALL                             R38 3 1
      454 SETTABLEKS                       R38 R37 K109 ["Label"]
      456 GETUPVAL                         R38 3
      457 GETTABLEKS                       R38 R38 K25 ["createElement"]
      459 GETUPVAL                         R39 20
      460 DUPTABLE                         R40 K129 [{["LayoutOrder"] = 1, ["title"] = "Platform Avatar", ["text"] = "Create marketplace compatible assets for avatars across Roblox", ["side"], ["align"]}]
      461 GETUPVAL                         R41 21
      462 GETTABLEKS                       R41 R41 K130 ["Enums"]
      464 GETTABLEKS                       R41 R41 K131 ["PopoverSide"]
      466 GETTABLEKS                       R41 R41 K132 ["Bottom"]
      468 SETTABLEKS                       R41 R40 K127 ["side"]
      470 GETUPVAL                         R41 21
      471 GETTABLEKS                       R41 R41 K130 ["Enums"]
      473 GETTABLEKS                       R41 R41 K133 ["PopoverAlign"]
      475 GETTABLEKS                       R41 R41 K134 ["Start"]
      477 SETTABLEKS                       R41 R40 K128 ["align"]
      479 GETUPVAL                         R41 3
      480 GETTABLEKS                       R41 R41 K25 ["createElement"]
      482 GETUPVAL                         R42 22
      483 DUPTABLE                         R43 K138 [{["Key"] = 1, ["OnClick"], ["Selected"], ["Text"] = "Platform Avatar"}]
      484 GETTABLEKS                       R44 R4 K139 ["set"]
      486 GETTABLEKS                       R44 R44 K140 ["setupType"]
      488 SETTABLEKS                       R44 R43 K136 ["OnClick"]
      490 GETTABLEKS                       R45 R4 K15 ["value"]
      492 GETTABLEKS                       R45 R45 K140 ["setupType"]
      494 JUMPIFEQKN                       R45 K74 [1] ; [+2]
      496 LOADB                            R44 0 +1
      497 LOADB                            R44 1
      498 SETTABLEKS                       R44 R43 K137 ["Selected"]
      500 CALL                             R41 2 -1
      501 CALL                             R38 -1 1
      502 SETTABLEKS                       R38 R37 K110 ["Platform"]
      504 GETUPVAL                         R38 3
      505 GETTABLEKS                       R38 R38 K25 ["createElement"]
      507 GETUPVAL                         R39 20
      508 DUPTABLE                         R40 K143 [{["LayoutOrder"] = 2, ["title"] = "Development Avatar", ["text"] = "Create development assets for use within your experience", ["side"], ["align"]}]
      509 GETUPVAL                         R41 21
      510 GETTABLEKS                       R41 R41 K130 ["Enums"]
      512 GETTABLEKS                       R41 R41 K131 ["PopoverSide"]
      514 GETTABLEKS                       R41 R41 K132 ["Bottom"]
      516 SETTABLEKS                       R41 R40 K127 ["side"]
      518 GETUPVAL                         R41 21
      519 GETTABLEKS                       R41 R41 K130 ["Enums"]
      521 GETTABLEKS                       R41 R41 K133 ["PopoverAlign"]
      523 GETTABLEKS                       R41 R41 K134 ["Start"]
      525 SETTABLEKS                       R41 R40 K128 ["align"]
      527 GETUPVAL                         R41 3
      528 GETTABLEKS                       R41 R41 K25 ["createElement"]
      530 GETUPVAL                         R42 22
      531 DUPTABLE                         R43 K144 [{["Key"] = 2, ["OnClick"], ["Selected"], ["Text"] = "Development Avatar"}]
      532 GETTABLEKS                       R44 R4 K139 ["set"]
      534 GETTABLEKS                       R44 R44 K140 ["setupType"]
      536 SETTABLEKS                       R44 R43 K136 ["OnClick"]
      538 GETTABLEKS                       R45 R4 K15 ["value"]
      540 GETTABLEKS                       R45 R45 K140 ["setupType"]
      542 JUMPIFEQKN                       R45 K85 [2] ; [+2]
      544 LOADB                            R44 0 +1
      545 LOADB                            R44 1
      546 SETTABLEKS                       R44 R43 K137 ["Selected"]
      548 CALL                             R41 2 -1
      549 CALL                             R38 -1 1
      550 SETTABLEKS                       R38 R37 K111 ["Development"]
      552 CALL                             R34 3 1
      553 SETTABLEKS                       R34 R33 K98 ["SetupType"]
      555 MOVE                             R34 R9
      556 JUMPIFNOT                        R34 ; [+12]
      557 GETUPVAL                         R34 3
      558 GETTABLEKS                       R34 R34 K25 ["createElement"]
      560 GETUPVAL                         R35 23
      561 DUPTABLE                         R36 K145 [{"target"}]
      562 GETTABLEKS                       R37 R0 K5 ["autoSetupState"]
      564 GETTABLEKS                       R37 R37 K13 ["target"]
      566 SETTABLEKS                       R37 R36 K13 ["target"]
      568 CALL                             R34 2 1
      569 SETTABLEKS                       R34 R33 K99 ["Table"]
      571 CALL                             R30 3 -1
      572 SETLIST                          R28 R29 -1 [1]
      574 CALL                             R25 3 1
      575 SETTABLEKS                       R25 R24 K47 ["SplitView"]
      577 CALL                             R21 3 1
      578 SETTABLEKS                       R21 R20 K27 ["Contents"]
      580 GETUPVAL                         R21 3
      581 GETTABLEKS                       R21 R21 K25 ["createElement"]
      583 GETUPVAL                         R22 24
      584 DUPTABLE                         R23 K157 [{["Style"] = "AcceptCancel", ["Enabled"], ["Modal"] = True, ["Resizable"] = False, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
      585 GETTABLEKS                       R24 R10 K158 ["enabled"]
      587 SETTABLEKS                       R24 R23 K148 ["Enabled"]
      589 LOADK                            R26 K159 ["AvatarScreen"]
      590 LOADK                            R27 K160 ["CancelPromptTitle"]
      591 NAMECALL                         R24 R1 K161 ["getText"]
      593 CALL                             R24 3 1
      594 SETTABLEKS                       R24 R23 K152 ["Title"]
      596 GETIMPORT                        R24 K41 [Vector2.new]
      598 LOADN                            R25 300
      599 LOADN                            R26 50
      600 CALL                             R24 2 1
      601 SETTABLEKS                       R24 R23 K153 ["MinContentSize"]
      603 NEWTABLE                         R24 0 2
      605 DUPTABLE                         R25 K163 [{["Key"] = "yes", ["Text"]}]
      606 LOADK                            R28 K159 ["AvatarScreen"]
      607 LOADK                            R29 K164 ["CancelPromptYes"]
      608 NAMECALL                         R26 R1 K161 ["getText"]
      610 CALL                             R26 3 1
      611 SETTABLEKS                       R26 R25 K120 ["Text"]
      613 DUPTABLE                         R26 K166 [{["Key"] = "no", ["Text"]}]
      614 LOADK                            R29 K159 ["AvatarScreen"]
      615 LOADK                            R30 K167 ["CancelPromptNo"]
      616 NAMECALL                         R27 R1 K161 ["getText"]
      618 CALL                             R27 3 1
      619 SETTABLEKS                       R27 R26 K120 ["Text"]
      621 SETLIST                          R24 R25 2 [1]
      623 SETTABLEKS                       R24 R23 K154 ["Buttons"]
      625 NEWCLOSURE                       R24 P9
      626 CAPTURE                          VAL R0
      627 CAPTURE                          VAL R10
      628 SETTABLEKS                       R24 R23 K155 ["OnButtonPressed"]
      630 GETTABLEKS                       R24 R10 K168 ["disable"]
      632 SETTABLEKS                       R24 R23 K156 ["OnClose"]
      634 DUPTABLE                         R24 K169 [{"Text"}]
      635 GETUPVAL                         R25 3
      636 GETTABLEKS                       R25 R25 K25 ["createElement"]
      638 GETUPVAL                         R26 19
      639 DUPTABLE                         R27 K171 [{["Text"], ["TextWrapped"] = True}]
      640 LOADK                            R30 K159 ["AvatarScreen"]
      641 LOADK                            R31 K172 ["CancelPromptConfirmText"]
      642 NAMECALL                         R28 R1 K161 ["getText"]
      644 CALL                             R28 3 1
      645 SETTABLEKS                       R28 R27 K120 ["Text"]
      647 CALL                             R25 2 1
      648 SETTABLEKS                       R25 R24 K120 ["Text"]
      650 CALL                             R21 3 1
      651 SETTABLEKS                       R21 R20 K28 ["CancelDialog"]
      653 GETUPVAL                         R21 3
      654 GETTABLEKS                       R21 R21 K25 ["createElement"]
      656 GETUPVAL                         R22 12
      657 DUPTABLE                         R23 K174 [{["AutomaticSize"], ["Size"], ["ZIndex"] = 4}]
      658 GETIMPORT                        R24 K108 [Enum.AutomaticSize.Y]
      660 SETTABLEKS                       R24 R23 K49 ["AutomaticSize"]
      662 GETIMPORT                        R24 K44 [UDim2.fromScale]
      664 LOADN                            R25 1
      665 LOADN                            R26 0
      666 CALL                             R24 2 1
      667 SETTABLEKS                       R24 R23 K38 ["Size"]
      669 DUPTABLE                         R24 K176 [{"Padding", "Alert"}]
      670 GETUPVAL                         R25 3
      671 GETTABLEKS                       R25 R25 K25 ["createElement"]
      673 LOADK                            R26 K177 ["UIPadding"]
      674 DUPTABLE                         R27 K181 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      675 GETTABLEKS                       R28 R2 K182 ["AlertPaddingHorizontal"]
      677 SETTABLEKS                       R28 R27 K178 ["PaddingLeft"]
      679 GETTABLEKS                       R28 R2 K182 ["AlertPaddingHorizontal"]
      681 SETTABLEKS                       R28 R27 K179 ["PaddingRight"]
      683 GETTABLEKS                       R28 R2 K183 ["AlertPaddingVertical"]
      685 SETTABLEKS                       R28 R27 K180 ["PaddingTop"]
      687 CALL                             R25 2 1
      688 SETTABLEKS                       R25 R24 K91 ["Padding"]
      690 GETUPVAL                         R25 3
      691 GETTABLEKS                       R25 R25 K25 ["createElement"]
      693 GETUPVAL                         R26 25
      694 DUPTABLE                         R27 K186 [{"autoSetupState", "clearError", "cancelDialogOpen"}]
      695 GETTABLEKS                       R28 R0 K5 ["autoSetupState"]
      697 SETTABLEKS                       R28 R27 K5 ["autoSetupState"]
      699 GETTABLEKS                       R28 R0 K184 ["clearError"]
      701 SETTABLEKS                       R28 R27 K184 ["clearError"]
      703 SETTABLEKS                       R10 R27 K185 ["cancelDialogOpen"]
      705 CALL                             R25 2 1
      706 SETTABLEKS                       R25 R24 K175 ["Alert"]
      708 CALL                             R21 3 1
      709 SETTABLEKS                       R21 R20 K29 ["ErrorAlert"]
      711 GETTABLEKS                       R22 R0 K5 ["autoSetupState"]
      713 GETTABLEKS                       R22 R22 K6 ["type"]
      715 JUMPIFNOTEQKS                    R22 K84 ["inAutoSetup"] ; [+14]
      717 GETUPVAL                         R21 3
      718 GETTABLEKS                       R21 R21 K25 ["createElement"]
      720 GETUPVAL                         R22 26
      721 DUPTABLE                         R23 K187 [{"autoSetupState", "cancelDialogOpen"}]
      722 GETTABLEKS                       R24 R0 K5 ["autoSetupState"]
      724 SETTABLEKS                       R24 R23 K5 ["autoSetupState"]
      726 SETTABLEKS                       R10 R23 K185 ["cancelDialogOpen"]
      728 CALL                             R21 2 1
      729 JUMP                             ; [+1]
      730 LOADNIL                          R21
      731 SETTABLEKS                       R21 R20 K30 ["GenerationCard"]
      733 GETTABLEKS                       R22 R0 K5 ["autoSetupState"]
      735 GETTABLEKS                       R22 R22 K6 ["type"]
      737 JUMPIFEQKS                       R22 K84 ["inAutoSetup"] ; [+21]
      739 GETUPVAL                         R21 3
      740 GETTABLEKS                       R21 R21 K25 ["createElement"]
      742 GETUPVAL                         R22 27
      743 DUPTABLE                         R23 K190 [{"stateType", "startAutoSetup", "ZIndex"}]
      744 GETTABLEKS                       R24 R0 K5 ["autoSetupState"]
      746 GETTABLEKS                       R24 R24 K6 ["type"]
      748 SETTABLEKS                       R24 R23 K188 ["stateType"]
      750 SETTABLEKS                       R16 R23 K189 ["startAutoSetup"]
      752 NAMECALL                         R24 R11 K77 ["getNextOrder"]
      754 CALL                             R24 1 1
      755 SETTABLEKS                       R24 R23 K72 ["ZIndex"]
      757 CALL                             R21 2 1
      758 JUMP                             ; [+47]
      759 MOVE                             R21 R9
      760 JUMPIFNOT                        R21 ; [+45]
      761 GETUPVAL                         R21 3
      762 GETTABLEKS                       R21 R21 K25 ["createElement"]
      764 GETUPVAL                         R22 12
      765 DUPTABLE                         R23 K191 [{"AnchorPoint", "AutomaticSize", "Position"}]
      766 GETIMPORT                        R24 K41 [Vector2.new]
      768 LOADN                            R25 1
      769 LOADN                            R26 1
      770 CALL                             R24 2 1
      771 SETTABLEKS                       R24 R23 K36 ["AnchorPoint"]
      773 GETIMPORT                        R24 K96 [Enum.AutomaticSize.XY]
      775 SETTABLEKS                       R24 R23 K49 ["AutomaticSize"]
      777 GETTABLEKS                       R24 R2 K31 ["Controls"]
      779 GETTABLEKS                       R24 R24 K37 ["Position"]
      781 SETTABLEKS                       R24 R23 K37 ["Position"]
      783 DUPTABLE                         R24 K192 [{"Start"}]
      784 GETUPVAL                         R25 3
      785 GETTABLEKS                       R25 R25 K25 ["createElement"]
      787 GETUPVAL                         R26 28
      788 DUPTABLE                         R27 K194 [{["AutomaticSize"], ["OnClick"], ["Style"] = "PrimaryBrand", ["Text"]}]
      789 GETIMPORT                        R28 K96 [Enum.AutomaticSize.XY]
      791 SETTABLEKS                       R28 R27 K49 ["AutomaticSize"]
      793 SETTABLEKS                       R16 R27 K136 ["OnClick"]
      795 LOADK                            R30 K159 ["AvatarScreen"]
      796 LOADK                            R31 K195 ["StartAutoSetup"]
      797 NAMECALL                         R28 R1 K161 ["getText"]
      799 CALL                             R28 3 1
      800 SETTABLEKS                       R28 R27 K120 ["Text"]
      802 CALL                             R25 2 1
      803 SETTABLEKS                       R25 R24 K134 ["Start"]
      805 CALL                             R21 3 1
      806 SETTABLEKS                       R21 R20 K31 ["Controls"]
      808 CALL                             R17 3 -1
      809 RETURN                           R17 -1

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
