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
       16 GETUPVAL                         R5 3
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+8]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K3 ["useContext"]
       22 GETUPVAL                         R5 5
       23 GETTABLEKS                       R5 R5 K4 ["Context"]
       25 CALL                             R4 1 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 GETTABLEKS                       R7 R0 K5 ["autoSetupState"]
       30 GETTABLEKS                       R7 R7 K6 ["type"]
       32 JUMPIFNOTEQKS                    R7 K7 ["none"] ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 GETUPVAL                         R7 6
       37 GETTABLEKS                       R7 R7 K8 ["LUAU_ANALYZE_ERROR"]
       39 FASTCALL2                        ASSERT R6 R7 ; [+3]
       41 GETIMPORT                        R5 K10 [assert]
       43 CALL                             R5 2 0
       44 GETUPVAL                         R5 7
       45 NAMECALL                         R5 R5 K0 ["use"]
       47 CALL                             R5 1 1
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K11 ["useEffect"]
       51 NEWCLOSURE                       R7 P0
       52 CAPTURE                          VAL R5
       53 NEWTABLE                         R8 0 0
       55 CALL                             R6 2 0
       56 GETUPVAL                         R6 4
       57 GETTABLEKS                       R6 R6 K12 ["useMemo"]
       59 NEWCLOSURE                       R7 P1
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R8 0 1
       63 GETTABLEKS                       R9 R0 K5 ["autoSetupState"]
       65 GETTABLEKS                       R9 R9 K13 ["target"]
       67 JUMPIFNOT                        R9 ; [+6]
       68 GETTABLEKS                       R9 R0 K5 ["autoSetupState"]
       70 GETTABLEKS                       R9 R9 K13 ["target"]
       72 GETTABLEKS                       R9 R9 K14 ["model"]
       74 SETLIST                          R8 R9 1 [1]
       76 CALL                             R6 2 1
       77 MOVE                             R7 R4
       78 JUMPIFNOT                        R7 ; [+4]
       79 GETTABLEKS                       R7 R4 K15 ["value"]
       81 GETTABLEKS                       R7 R7 K16 ["alignFrontAngle"]
       83 GETUPVAL                         R8 4
       84 GETTABLEKS                       R8 R8 K17 ["useCallback"]
       86 NEWCLOSURE                       R9 P2
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          VAL R7
       89 NEWTABLE                         R10 0 1
       91 MOVE                             R11 R7
       92 SETLIST                          R10 R11 1 [1]
       94 CALL                             R8 2 1
       95 GETUPVAL                         R9 4
       96 GETTABLEKS                       R9 R9 K12 ["useMemo"]
       98 NEWCLOSURE                       R10 P3
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U9
      101 NEWTABLE                         R11 0 1
      103 GETTABLEKS                       R12 R0 K5 ["autoSetupState"]
      105 SETLIST                          R11 R12 1 [1]
      107 CALL                             R9 2 1
      108 GETUPVAL                         R10 4
      109 GETTABLEKS                       R10 R10 K11 ["useEffect"]
      111 NEWCLOSURE                       R11 P4
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R6
      114 CAPTURE                          UPVAL U10
      115 CAPTURE                          VAL R2
      116 NEWTABLE                         R12 0 2
      118 GETTABLEKS                       R13 R0 K5 ["autoSetupState"]
      120 GETTABLEKS                       R13 R13 K6 ["type"]
      122 MOVE                             R14 R6
      123 SETLIST                          R12 R13 2 [1]
      125 CALL                             R10 2 0
      126 GETUPVAL                         R10 11
      127 LOADB                            R11 0
      128 CALL                             R10 1 1
      129 GETUPVAL                         R11 12
      130 GETTABLEKS                       R11 R11 K18 ["new"]
      132 CALL                             R11 0 1
      133 GETUPVAL                         R12 4
      134 GETTABLEKS                       R12 R12 K19 ["useState"]
      136 GETTABLEKS                       R13 R2 K20 ["SplitPane"]
      138 GETTABLEKS                       R13 R13 K21 ["DefaultSizes"]
      140 CALL                             R12 1 2
      141 GETTABLEN                        R15 R12 2
      142 GETTABLEKS                       R15 R15 K22 ["Scale"]
      144 GETTABLEKS                       R16 R2 K20 ["SplitPane"]
      146 GETTABLEKS                       R16 R16 K23 ["CollapsedTolerance"]
      148 JUMPIFLT                         R15 R16 ; [+2]
      150 LOADB                            R14 0 +1
      151 LOADB                            R14 1
      152 GETUPVAL                         R15 4
      153 GETTABLEKS                       R15 R15 K17 ["useCallback"]
      155 NEWCLOSURE                       R16 P5
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R2
      159 NEWTABLE                         R17 0 2
      161 MOVE                             R18 R14
      162 MOVE                             R19 R13
      163 SETLIST                          R17 R18 2 [1]
      165 CALL                             R15 2 1
      166 GETUPVAL                         R16 4
      167 GETTABLEKS                       R16 R16 K17 ["useCallback"]
      169 NEWCLOSURE                       R17 P6
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U3
      172 CAPTURE                          VAL R4
      173 NEWTABLE                         R18 0 1
      175 GETUPVAL                         R20 3
      176 CALL                             R20 0 1
      177 JUMPIFNOT                        R20 ; [+3]
      178 GETTABLEKS                       R19 R4 K24 ["options"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R19
      182 SETLIST                          R18 R19 1 [1]
      184 CALL                             R16 2 1
      185 GETUPVAL                         R17 4
      186 GETTABLEKS                       R17 R17 K25 ["createElement"]
      188 GETUPVAL                         R18 13
      189 NEWTABLE                         R19 0 0
      191 DUPTABLE                         R20 K32 [{"StageSelect", "Contents", "CancelDialog", "ErrorAlert", "GenerationCard", "Controls"}]
      192 GETUPVAL                         R21 3
      193 CALL                             R21 0 1
      194 JUMPIFNOT                        R21 ; [+20]
      195 MOVE                             R21 R9
      196 JUMPIFNOT                        R21 ; [+18]
      197 GETUPVAL                         R21 4
      198 GETTABLEKS                       R21 R21 K25 ["createElement"]
      200 GETUPVAL                         R22 14
      201 DUPTABLE                         R23 K34 [{"type", "onBack"}]
      202 LOADK                            R24 K35 ["autosetup"]
      203 SETTABLEKS                       R24 R23 K6 ["type"]
      205 GETUPVAL                         R25 15
      206 CALL                             R25 0 1
      207 JUMPIFNOT                        R25 ; [+3]
      208 NEWCLOSURE                       R24 P7
      209 CAPTURE                          VAL R3
      210 JUMP                             ; [+1]
      211 LOADNIL                          R24
      212 SETTABLEKS                       R24 R23 K33 ["onBack"]
      214 CALL                             R21 2 1
      215 SETTABLEKS                       R21 R20 K26 ["StageSelect"]
      217 GETUPVAL                         R21 4
      218 GETTABLEKS                       R21 R21 K25 ["createElement"]
      220 GETUPVAL                         R22 13
      221 DUPTABLE                         R23 K39 [{"AnchorPoint", "Position", "Size"}]
      222 GETUPVAL                         R25 3
      223 CALL                             R25 0 1
      224 JUMPIFNOT                        R25 ; [+6]
      225 GETIMPORT                        R24 K41 [Vector2.new]
      227 LOADN                            R25 1
      228 LOADN                            R26 0
      229 CALL                             R24 2 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R24
      232 SETTABLEKS                       R24 R23 K36 ["AnchorPoint"]
      234 GETUPVAL                         R25 3
      235 CALL                             R25 0 1
      236 JUMPIFNOT                        R25 ; [+6]
      237 GETIMPORT                        R24 K44 [UDim2.fromScale]
      239 LOADN                            R25 1
      240 LOADN                            R26 0
      241 CALL                             R24 2 1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R24
      244 SETTABLEKS                       R24 R23 K37 ["Position"]
      246 JUMPIFNOT                        R9 ; [+17]
      247 GETIMPORT                        R24 K45 [UDim2.new]
      249 LOADN                            R25 1
      250 GETUPVAL                         R27 3
      251 CALL                             R27 0 1
      252 JUMPIFNOT                        R27 ; [+2]
      253 LOADN                            R26 191
      254 JUMP                             ; [+1]
      255 LOADN                            R26 0
      256 LOADN                            R27 1
      257 GETTABLEKS                       R29 R2 K31 ["Controls"]
      259 GETTABLEKS                       R29 R29 K46 ["PaneHeight"]
      261 MINUS                            R28 R29
      262 CALL                             R24 4 1
      263 JUMP                             ; [+5]
      264 GETIMPORT                        R24 K44 [UDim2.fromScale]
      266 LOADN                            R25 1
      267 LOADN                            R26 1
      268 CALL                             R24 2 1
      269 SETTABLEKS                       R24 R23 K38 ["Size"]
      271 DUPTABLE                         R24 K48 [{"SplitView"}]
      272 GETUPVAL                         R25 4
      273 GETTABLEKS                       R25 R25 K25 ["createElement"]
      275 GETUPVAL                         R26 16
      276 DUPTABLE                         R27 K57 [{"AutomaticSize", "MinSizes", "Layout", "Sizes", "OnSizesChange", "ClampSize", "UseScale", "HideBars"}]
      277 GETUPVAL                         R29 3
      278 CALL                             R29 0 1
      279 JUMPIFNOT                        R29 ; [+3]
      280 GETIMPORT                        R28 K60 [Enum.AutomaticSize.X]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R28
      284 SETTABLEKS                       R28 R27 K49 ["AutomaticSize"]
      286 GETTABLEKS                       R28 R2 K20 ["SplitPane"]
      288 GETTABLEKS                       R28 R28 K61 ["MinimumSizes"]
      290 SETTABLEKS                       R28 R27 K50 ["MinSizes"]
      292 GETIMPORT                        R28 K64 [Enum.FillDirection.Vertical]
      294 SETTABLEKS                       R28 R27 K51 ["Layout"]
      296 JUMPIFNOT                        R9 ; [+2]
      297 MOVE                             R28 R12
      298 JUMP                             ; [+4]
      299 GETTABLEKS                       R28 R2 K20 ["SplitPane"]
      301 GETTABLEKS                       R28 R28 K65 ["HiddenSizes"]
      303 SETTABLEKS                       R28 R27 K52 ["Sizes"]
      305 JUMPIFNOT                        R9 ; [+2]
      306 MOVE                             R28 R13
      307 JUMP                             ; [+1]
      308 DUPCLOSURE                       R28 K66 [PROTO_11]
      309 SETTABLEKS                       R28 R27 K53 ["OnSizesChange"]
      311 LOADB                            R28 1
      312 SETTABLEKS                       R28 R27 K54 ["ClampSize"]
      314 LOADB                            R28 1
      315 SETTABLEKS                       R28 R27 K55 ["UseScale"]
      317 LOADB                            R28 1
      318 SETTABLEKS                       R28 R27 K56 ["HideBars"]
      320 NEWTABLE                         R28 0 2
      322 GETUPVAL                         R29 4
      323 GETTABLEKS                       R29 R29 K25 ["createElement"]
      325 GETUPVAL                         R30 13
      326 NEWTABLE                         R31 0 0
      328 DUPTABLE                         R32 K70 [{"Background", "ModelPreview", "ToggleBar"}]
      329 GETUPVAL                         R33 4
      330 GETTABLEKS                       R33 R33 K25 ["createElement"]
      332 GETUPVAL                         R34 17
      333 CALL                             R33 1 1
      334 SETTABLEKS                       R33 R32 K67 ["Background"]
      336 GETUPVAL                         R33 4
      337 GETTABLEKS                       R33 R33 K25 ["createElement"]
      339 GETUPVAL                         R34 13
      340 DUPTABLE                         R35 K73 [{"Size", "ZIndex", "LayoutOrder"}]
      341 JUMPIFNOT                        R9 ; [+10]
      342 GETIMPORT                        R36 K45 [UDim2.new]
      344 LOADN                            R37 1
      345 LOADN                            R38 0
      346 LOADN                            R39 1
      347 GETTABLEKS                       R41 R2 K74 ["ToggleBarHeight"]
      349 MINUS                            R40 R41
      350 CALL                             R36 4 1
      351 JUMP                             ; [+5]
      352 GETIMPORT                        R36 K44 [UDim2.fromScale]
      354 LOADN                            R37 1
      355 LOADN                            R38 1
      356 CALL                             R36 2 1
      357 SETTABLEKS                       R36 R35 K38 ["Size"]
      359 NAMECALL                         R36 R11 K75 ["getNextOrder"]
      361 CALL                             R36 1 1
      362 SETTABLEKS                       R36 R35 K71 ["ZIndex"]
      364 LOADN                            R36 1
      365 SETTABLEKS                       R36 R35 K72 ["LayoutOrder"]
      367 GETUPVAL                         R36 4
      368 GETTABLEKS                       R36 R36 K25 ["createElement"]
      370 GETUPVAL                         R37 18
      371 DUPTABLE                         R38 K81 [{"Model", "GetCameraModifications", "ShowResetCameraButton", "ShowAxisIndicator", "ShowFrontIndicator"}]
      372 SETTABLEKS                       R6 R38 K76 ["Model"]
      374 SETTABLEKS                       R8 R38 K77 ["GetCameraModifications"]
      376 LOADB                            R39 1
      377 SETTABLEKS                       R39 R38 K78 ["ShowResetCameraButton"]
      379 GETUPVAL                         R40 3
      380 CALL                             R40 0 1
      381 JUMPIFNOT                        R40 ; [+11]
      382 GETUPVAL                         R40 8
      383 CALL                             R40 0 1
      384 JUMPIF                           R40 ; [+8]
      385 GETTABLEKS                       R40 R0 K5 ["autoSetupState"]
      387 GETTABLEKS                       R40 R40 K6 ["type"]
      389 JUMPIFEQKS                       R40 K82 ["inAutoSetup"] ; [+3]
      391 MOVE                             R39 R7
      392 JUMP                             ; [+1]
      393 LOADNIL                          R39
      394 SETTABLEKS                       R39 R38 K79 ["ShowAxisIndicator"]
      396 GETUPVAL                         R40 8
      397 CALL                             R40 0 1
      398 JUMPIFNOT                        R40 ; [+8]
      399 GETTABLEKS                       R40 R0 K5 ["autoSetupState"]
      401 GETTABLEKS                       R40 R40 K6 ["type"]
      403 JUMPIFEQKS                       R40 K82 ["inAutoSetup"] ; [+3]
      405 MOVE                             R39 R7
      406 JUMP                             ; [+1]
      407 LOADNIL                          R39
      408 SETTABLEKS                       R39 R38 K80 ["ShowFrontIndicator"]
      410 CALL                             R36 2 -1
      411 CALL                             R33 -1 1
      412 SETTABLEKS                       R33 R32 K68 ["ModelPreview"]
      414 MOVE                             R33 R9
      415 JUMPIFNOT                        R33 ; [+23]
      416 GETUPVAL                         R33 4
      417 GETTABLEKS                       R33 R33 K25 ["createElement"]
      419 GETUPVAL                         R34 19
      420 DUPTABLE                         R35 K87 [{"LayoutOrder", "Toggle", "isTableHidden", "Height", "ButtonColor"}]
      421 LOADN                            R36 2
      422 SETTABLEKS                       R36 R35 K72 ["LayoutOrder"]
      424 SETTABLEKS                       R15 R35 K83 ["Toggle"]
      426 SETTABLEKS                       R14 R35 K84 ["isTableHidden"]
      428 GETTABLEKS                       R36 R2 K74 ["ToggleBarHeight"]
      430 SETTABLEKS                       R36 R35 K85 ["Height"]
      432 GETTABLEKS                       R36 R2 K31 ["Controls"]
      434 GETTABLEKS                       R36 R36 K86 ["ButtonColor"]
      436 SETTABLEKS                       R36 R35 K86 ["ButtonColor"]
      438 CALL                             R33 2 1
      439 SETTABLEKS                       R33 R32 K69 ["ToggleBar"]
      441 CALL                             R29 3 1
      442 GETUPVAL                         R30 4
      443 GETTABLEKS                       R30 R30 K25 ["createElement"]
      445 GETUPVAL                         R31 13
      446 DUPTABLE                         R32 K90 [{"AutomaticSize", "Layout", "Padding", "Size", "Spacing"}]
      447 GETIMPORT                        R33 K92 [Enum.AutomaticSize.XY]
      449 SETTABLEKS                       R33 R32 K49 ["AutomaticSize"]
      451 GETUPVAL                         R34 3
      452 CALL                             R34 0 1
      453 JUMPIFNOT                        R34 ; [+3]
      454 GETIMPORT                        R33 K64 [Enum.FillDirection.Vertical]
      456 JUMP                             ; [+1]
      457 LOADNIL                          R33
      458 SETTABLEKS                       R33 R32 K51 ["Layout"]
      460 GETTABLEKS                       R33 R2 K93 ["TablePadding"]
      462 SETTABLEKS                       R33 R32 K88 ["Padding"]
      464 GETUPVAL                         R34 3
      465 CALL                             R34 0 1
      466 JUMPIFNOT                        R34 ; [+6]
      467 GETIMPORT                        R33 K44 [UDim2.fromScale]
      469 LOADN                            R34 0
      470 LOADN                            R35 0
      471 CALL                             R33 2 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R33
      474 SETTABLEKS                       R33 R32 K38 ["Size"]
      476 GETUPVAL                         R34 3
      477 CALL                             R34 0 1
      478 JUMPIFNOT                        R34 ; [+2]
      479 LOADN                            R33 8
      480 JUMP                             ; [+1]
      481 LOADNIL                          R33
      482 SETTABLEKS                       R33 R32 K89 ["Spacing"]
      484 DUPTABLE                         R33 K96 [{"SetupType", "Table"}]
      485 GETUPVAL                         R35 3
      486 CALL                             R35 0 1
      487 JUMPIFNOT                        R35 ; [+192]
      488 GETUPVAL                         R34 4
      489 GETTABLEKS                       R34 R34 K25 ["createElement"]
      491 GETUPVAL                         R35 13
      492 DUPTABLE                         R36 K98 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "AutomaticSize"}]
      493 LOADN                            R37 1
      494 SETTABLEKS                       R37 R36 K72 ["LayoutOrder"]
      496 GETIMPORT                        R37 K100 [Enum.FillDirection.Horizontal]
      498 SETTABLEKS                       R37 R36 K51 ["Layout"]
      500 GETIMPORT                        R37 K102 [Enum.HorizontalAlignment.Left]
      502 SETTABLEKS                       R37 R36 K97 ["HorizontalAlignment"]
      504 GETIMPORT                        R37 K44 [UDim2.fromScale]
      506 LOADN                            R38 1
      507 LOADN                            R39 0
      508 CALL                             R37 2 1
      509 SETTABLEKS                       R37 R36 K38 ["Size"]
      511 GETIMPORT                        R37 K104 [Enum.AutomaticSize.Y]
      513 SETTABLEKS                       R37 R36 K49 ["AutomaticSize"]
      515 DUPTABLE                         R37 K108 [{"Label", "Platform", "Development"}]
      516 GETUPVAL                         R38 4
      517 GETTABLEKS                       R38 R38 K25 ["createElement"]
      519 GETUPVAL                         R39 13
      520 DUPTABLE                         R40 K109 [{"LayoutOrder", "AutomaticSize", "Padding"}]
      521 LOADN                            R41 0
      522 SETTABLEKS                       R41 R40 K72 ["LayoutOrder"]
      524 GETIMPORT                        R41 K92 [Enum.AutomaticSize.XY]
      526 SETTABLEKS                       R41 R40 K49 ["AutomaticSize"]
      528 DUPTABLE                         R41 K111 [{"Left", "Right"}]
      529 LOADN                            R42 20
      530 SETTABLEKS                       R42 R41 K101 ["Left"]
      532 LOADN                            R42 20
      533 SETTABLEKS                       R42 R41 K110 ["Right"]
      535 SETTABLEKS                       R41 R40 K88 ["Padding"]
      537 DUPTABLE                         R41 K113 [{"TextLabel"}]
      538 GETUPVAL                         R42 4
      539 GETTABLEKS                       R42 R42 K25 ["createElement"]
      541 GETUPVAL                         R43 20
      542 DUPTABLE                         R44 K115 [{"Text"}]
      543 LOADK                            R45 K116 ["Preset"]
      544 SETTABLEKS                       R45 R44 K114 ["Text"]
      546 CALL                             R42 2 1
      547 SETTABLEKS                       R42 R41 K112 ["TextLabel"]
      549 CALL                             R38 3 1
      550 SETTABLEKS                       R38 R37 K105 ["Label"]
      552 GETUPVAL                         R38 4
      553 GETTABLEKS                       R38 R38 K25 ["createElement"]
      555 GETUPVAL                         R39 21
      556 DUPTABLE                         R40 K121 [{"LayoutOrder", "title", "text", "side", "align"}]
      557 LOADN                            R41 1
      558 SETTABLEKS                       R41 R40 K72 ["LayoutOrder"]
      560 LOADK                            R41 K122 ["Platform Avatar"]
      561 SETTABLEKS                       R41 R40 K117 ["title"]
      563 LOADK                            R41 K123 ["Create marketplace compatible assets for avatars across Roblox"]
      564 SETTABLEKS                       R41 R40 K118 ["text"]
      566 GETUPVAL                         R41 22
      567 GETTABLEKS                       R41 R41 K124 ["Enums"]
      569 GETTABLEKS                       R41 R41 K125 ["PopoverSide"]
      571 GETTABLEKS                       R41 R41 K126 ["Bottom"]
      573 SETTABLEKS                       R41 R40 K119 ["side"]
      575 GETUPVAL                         R41 22
      576 GETTABLEKS                       R41 R41 K124 ["Enums"]
      578 GETTABLEKS                       R41 R41 K127 ["PopoverAlign"]
      580 GETTABLEKS                       R41 R41 K128 ["Start"]
      582 SETTABLEKS                       R41 R40 K120 ["align"]
      584 GETUPVAL                         R41 4
      585 GETTABLEKS                       R41 R41 K25 ["createElement"]
      587 GETUPVAL                         R42 23
      588 DUPTABLE                         R43 K132 [{"Key", "OnClick", "Selected", "Text"}]
      589 LOADN                            R44 1
      590 SETTABLEKS                       R44 R43 K129 ["Key"]
      592 GETTABLEKS                       R44 R4 K133 ["set"]
      594 GETTABLEKS                       R44 R44 K134 ["setupType"]
      596 SETTABLEKS                       R44 R43 K130 ["OnClick"]
      598 GETTABLEKS                       R45 R4 K15 ["value"]
      600 GETTABLEKS                       R45 R45 K134 ["setupType"]
      602 JUMPIFEQKN                       R45 K135 [1] ; [+2]
      604 LOADB                            R44 0 +1
      605 LOADB                            R44 1
      606 SETTABLEKS                       R44 R43 K131 ["Selected"]
      608 LOADK                            R44 K122 ["Platform Avatar"]
      609 SETTABLEKS                       R44 R43 K114 ["Text"]
      611 CALL                             R41 2 -1
      612 CALL                             R38 -1 1
      613 SETTABLEKS                       R38 R37 K106 ["Platform"]
      615 GETUPVAL                         R38 4
      616 GETTABLEKS                       R38 R38 K25 ["createElement"]
      618 GETUPVAL                         R39 21
      619 DUPTABLE                         R40 K121 [{"LayoutOrder", "title", "text", "side", "align"}]
      620 LOADN                            R41 2
      621 SETTABLEKS                       R41 R40 K72 ["LayoutOrder"]
      623 LOADK                            R41 K136 ["Development Avatar"]
      624 SETTABLEKS                       R41 R40 K117 ["title"]
      626 LOADK                            R41 K137 ["Create development assets for use within your experience"]
      627 SETTABLEKS                       R41 R40 K118 ["text"]
      629 GETUPVAL                         R41 22
      630 GETTABLEKS                       R41 R41 K124 ["Enums"]
      632 GETTABLEKS                       R41 R41 K125 ["PopoverSide"]
      634 GETTABLEKS                       R41 R41 K126 ["Bottom"]
      636 SETTABLEKS                       R41 R40 K119 ["side"]
      638 GETUPVAL                         R41 22
      639 GETTABLEKS                       R41 R41 K124 ["Enums"]
      641 GETTABLEKS                       R41 R41 K127 ["PopoverAlign"]
      643 GETTABLEKS                       R41 R41 K128 ["Start"]
      645 SETTABLEKS                       R41 R40 K120 ["align"]
      647 GETUPVAL                         R41 4
      648 GETTABLEKS                       R41 R41 K25 ["createElement"]
      650 GETUPVAL                         R42 23
      651 DUPTABLE                         R43 K132 [{"Key", "OnClick", "Selected", "Text"}]
      652 LOADN                            R44 2
      653 SETTABLEKS                       R44 R43 K129 ["Key"]
      655 GETTABLEKS                       R44 R4 K133 ["set"]
      657 GETTABLEKS                       R44 R44 K134 ["setupType"]
      659 SETTABLEKS                       R44 R43 K130 ["OnClick"]
      661 GETTABLEKS                       R45 R4 K15 ["value"]
      663 GETTABLEKS                       R45 R45 K134 ["setupType"]
      665 JUMPIFEQKN                       R45 K138 [2] ; [+2]
      667 LOADB                            R44 0 +1
      668 LOADB                            R44 1
      669 SETTABLEKS                       R44 R43 K131 ["Selected"]
      671 LOADK                            R44 K136 ["Development Avatar"]
      672 SETTABLEKS                       R44 R43 K114 ["Text"]
      674 CALL                             R41 2 -1
      675 CALL                             R38 -1 1
      676 SETTABLEKS                       R38 R37 K107 ["Development"]
      678 CALL                             R34 3 1
      679 JUMP                             ; [+1]
      680 LOADNIL                          R34
      681 SETTABLEKS                       R34 R33 K94 ["SetupType"]
      683 MOVE                             R34 R9
      684 JUMPIFNOT                        R34 ; [+12]
      685 GETUPVAL                         R34 4
      686 GETTABLEKS                       R34 R34 K25 ["createElement"]
      688 GETUPVAL                         R35 24
      689 DUPTABLE                         R36 K139 [{"target"}]
      690 GETTABLEKS                       R37 R0 K5 ["autoSetupState"]
      692 GETTABLEKS                       R37 R37 K13 ["target"]
      694 SETTABLEKS                       R37 R36 K13 ["target"]
      696 CALL                             R34 2 1
      697 SETTABLEKS                       R34 R33 K95 ["Table"]
      699 CALL                             R30 3 -1
      700 SETLIST                          R28 R29 -1 [1]
      702 CALL                             R25 3 1
      703 SETTABLEKS                       R25 R24 K47 ["SplitView"]
      705 CALL                             R21 3 1
      706 SETTABLEKS                       R21 R20 K27 ["Contents"]
      708 GETUPVAL                         R21 4
      709 GETTABLEKS                       R21 R21 K25 ["createElement"]
      711 GETUPVAL                         R22 25
      712 DUPTABLE                         R23 K149 [{"Style", "Enabled", "Modal", "Resizable", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
      713 LOADK                            R24 K150 ["AcceptCancel"]
      714 SETTABLEKS                       R24 R23 K140 ["Style"]
      716 GETTABLEKS                       R24 R10 K151 ["enabled"]
      718 SETTABLEKS                       R24 R23 K141 ["Enabled"]
      720 LOADB                            R24 1
      721 SETTABLEKS                       R24 R23 K142 ["Modal"]
      723 LOADB                            R24 0
      724 SETTABLEKS                       R24 R23 K143 ["Resizable"]
      726 LOADK                            R26 K152 ["AvatarScreen"]
      727 LOADK                            R27 K153 ["CancelPromptTitle"]
      728 NAMECALL                         R24 R1 K154 ["getText"]
      730 CALL                             R24 3 1
      731 SETTABLEKS                       R24 R23 K144 ["Title"]
      733 GETIMPORT                        R24 K41 [Vector2.new]
      735 LOADN                            R25 44
      736 LOADN                            R26 50
      737 CALL                             R24 2 1
      738 SETTABLEKS                       R24 R23 K145 ["MinContentSize"]
      740 NEWTABLE                         R24 0 2
      742 DUPTABLE                         R25 K155 [{"Key", "Text"}]
      743 LOADK                            R26 K156 ["yes"]
      744 SETTABLEKS                       R26 R25 K129 ["Key"]
      746 LOADK                            R28 K152 ["AvatarScreen"]
      747 LOADK                            R29 K157 ["CancelPromptYes"]
      748 NAMECALL                         R26 R1 K154 ["getText"]
      750 CALL                             R26 3 1
      751 SETTABLEKS                       R26 R25 K114 ["Text"]
      753 DUPTABLE                         R26 K155 [{"Key", "Text"}]
      754 LOADK                            R27 K158 ["no"]
      755 SETTABLEKS                       R27 R26 K129 ["Key"]
      757 LOADK                            R29 K152 ["AvatarScreen"]
      758 LOADK                            R30 K159 ["CancelPromptNo"]
      759 NAMECALL                         R27 R1 K154 ["getText"]
      761 CALL                             R27 3 1
      762 SETTABLEKS                       R27 R26 K114 ["Text"]
      764 SETLIST                          R24 R25 2 [1]
      766 SETTABLEKS                       R24 R23 K146 ["Buttons"]
      768 NEWCLOSURE                       R24 P9
      769 CAPTURE                          VAL R0
      770 CAPTURE                          VAL R10
      771 SETTABLEKS                       R24 R23 K147 ["OnButtonPressed"]
      773 GETTABLEKS                       R24 R10 K160 ["disable"]
      775 SETTABLEKS                       R24 R23 K148 ["OnClose"]
      777 DUPTABLE                         R24 K115 [{"Text"}]
      778 GETUPVAL                         R25 4
      779 GETTABLEKS                       R25 R25 K25 ["createElement"]
      781 GETUPVAL                         R26 20
      782 DUPTABLE                         R27 K162 [{"Text", "TextWrapped"}]
      783 LOADK                            R30 K152 ["AvatarScreen"]
      784 LOADK                            R31 K163 ["CancelPromptConfirmText"]
      785 NAMECALL                         R28 R1 K154 ["getText"]
      787 CALL                             R28 3 1
      788 SETTABLEKS                       R28 R27 K114 ["Text"]
      790 LOADB                            R28 1
      791 SETTABLEKS                       R28 R27 K161 ["TextWrapped"]
      793 CALL                             R25 2 1
      794 SETTABLEKS                       R25 R24 K114 ["Text"]
      796 CALL                             R21 3 1
      797 SETTABLEKS                       R21 R20 K28 ["CancelDialog"]
      799 GETUPVAL                         R21 4
      800 GETTABLEKS                       R21 R21 K25 ["createElement"]
      802 GETUPVAL                         R22 13
      803 DUPTABLE                         R23 K164 [{"AutomaticSize", "Size", "ZIndex"}]
      804 GETIMPORT                        R24 K104 [Enum.AutomaticSize.Y]
      806 SETTABLEKS                       R24 R23 K49 ["AutomaticSize"]
      808 GETIMPORT                        R24 K44 [UDim2.fromScale]
      810 LOADN                            R25 1
      811 LOADN                            R26 0
      812 CALL                             R24 2 1
      813 SETTABLEKS                       R24 R23 K38 ["Size"]
      815 LOADN                            R24 4
      816 SETTABLEKS                       R24 R23 K71 ["ZIndex"]
      818 DUPTABLE                         R24 K166 [{"Padding", "Alert"}]
      819 GETUPVAL                         R25 4
      820 GETTABLEKS                       R25 R25 K25 ["createElement"]
      822 LOADK                            R26 K167 ["UIPadding"]
      823 DUPTABLE                         R27 K171 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      824 GETTABLEKS                       R28 R2 K172 ["AlertPaddingHorizontal"]
      826 SETTABLEKS                       R28 R27 K168 ["PaddingLeft"]
      828 GETTABLEKS                       R28 R2 K172 ["AlertPaddingHorizontal"]
      830 SETTABLEKS                       R28 R27 K169 ["PaddingRight"]
      832 GETTABLEKS                       R28 R2 K173 ["AlertPaddingVertical"]
      834 SETTABLEKS                       R28 R27 K170 ["PaddingTop"]
      836 CALL                             R25 2 1
      837 SETTABLEKS                       R25 R24 K88 ["Padding"]
      839 GETUPVAL                         R25 4
      840 GETTABLEKS                       R25 R25 K25 ["createElement"]
      842 GETUPVAL                         R26 26
      843 DUPTABLE                         R27 K176 [{"autoSetupState", "clearError", "cancelDialogOpen"}]
      844 GETTABLEKS                       R28 R0 K5 ["autoSetupState"]
      846 SETTABLEKS                       R28 R27 K5 ["autoSetupState"]
      848 GETTABLEKS                       R28 R0 K174 ["clearError"]
      850 SETTABLEKS                       R28 R27 K174 ["clearError"]
      852 SETTABLEKS                       R10 R27 K175 ["cancelDialogOpen"]
      854 CALL                             R25 2 1
      855 SETTABLEKS                       R25 R24 K165 ["Alert"]
      857 CALL                             R21 3 1
      858 SETTABLEKS                       R21 R20 K29 ["ErrorAlert"]
      860 GETTABLEKS                       R22 R0 K5 ["autoSetupState"]
      862 GETTABLEKS                       R22 R22 K6 ["type"]
      864 JUMPIFNOTEQKS                    R22 K82 ["inAutoSetup"] ; [+14]
      866 GETUPVAL                         R21 4
      867 GETTABLEKS                       R21 R21 K25 ["createElement"]
      869 GETUPVAL                         R22 27
      870 DUPTABLE                         R23 K177 [{"autoSetupState", "cancelDialogOpen"}]
      871 GETTABLEKS                       R24 R0 K5 ["autoSetupState"]
      873 SETTABLEKS                       R24 R23 K5 ["autoSetupState"]
      875 SETTABLEKS                       R10 R23 K175 ["cancelDialogOpen"]
      877 CALL                             R21 2 1
      878 JUMP                             ; [+1]
      879 LOADNIL                          R21
      880 SETTABLEKS                       R21 R20 K30 ["GenerationCard"]
      882 GETTABLEKS                       R22 R0 K5 ["autoSetupState"]
      884 GETTABLEKS                       R22 R22 K6 ["type"]
      886 JUMPIFEQKS                       R22 K82 ["inAutoSetup"] ; [+21]
      888 GETUPVAL                         R21 4
      889 GETTABLEKS                       R21 R21 K25 ["createElement"]
      891 GETUPVAL                         R22 28
      892 DUPTABLE                         R23 K180 [{"stateType", "startAutoSetup", "ZIndex"}]
      893 GETTABLEKS                       R24 R0 K5 ["autoSetupState"]
      895 GETTABLEKS                       R24 R24 K6 ["type"]
      897 SETTABLEKS                       R24 R23 K178 ["stateType"]
      899 SETTABLEKS                       R16 R23 K179 ["startAutoSetup"]
      901 NAMECALL                         R24 R11 K75 ["getNextOrder"]
      903 CALL                             R24 1 1
      904 SETTABLEKS                       R24 R23 K71 ["ZIndex"]
      906 CALL                             R21 2 1
      907 JUMP                             ; [+68]
      908 MOVE                             R21 R9
      909 JUMPIFNOT                        R21 ; [+66]
      910 GETUPVAL                         R21 4
      911 GETTABLEKS                       R21 R21 K25 ["createElement"]
      913 GETUPVAL                         R22 13
      914 DUPTABLE                         R23 K181 [{"AnchorPoint", "AutomaticSize", "Position", "ZIndex"}]
      915 GETIMPORT                        R24 K41 [Vector2.new]
      917 LOADN                            R25 1
      918 LOADN                            R26 1
      919 CALL                             R24 2 1
      920 SETTABLEKS                       R24 R23 K36 ["AnchorPoint"]
      922 GETIMPORT                        R24 K92 [Enum.AutomaticSize.XY]
      924 SETTABLEKS                       R24 R23 K49 ["AutomaticSize"]
      926 GETTABLEKS                       R24 R2 K31 ["Controls"]
      928 GETTABLEKS                       R24 R24 K37 ["Position"]
      930 SETTABLEKS                       R24 R23 K37 ["Position"]
      932 GETUPVAL                         R25 3
      933 CALL                             R25 0 1
      934 JUMPIFNOT                        R25 ; [+2]
      935 LOADNIL                          R24
      936 JUMP                             ; [+3]
      937 NAMECALL                         R24 R11 K75 ["getNextOrder"]
      939 CALL                             R24 1 1
      940 SETTABLEKS                       R24 R23 K71 ["ZIndex"]
      942 DUPTABLE                         R24 K182 [{"Start"}]
      943 GETUPVAL                         R25 4
      944 GETTABLEKS                       R25 R25 K25 ["createElement"]
      946 GETUPVAL                         R26 29
      947 DUPTABLE                         R27 K183 [{"AutomaticSize", "OnClick", "Style", "Text", "ZIndex"}]
      948 GETIMPORT                        R28 K92 [Enum.AutomaticSize.XY]
      950 SETTABLEKS                       R28 R27 K49 ["AutomaticSize"]
      952 SETTABLEKS                       R16 R27 K130 ["OnClick"]
      954 LOADK                            R28 K184 ["PrimaryBrand"]
      955 SETTABLEKS                       R28 R27 K140 ["Style"]
      957 LOADK                            R30 K152 ["AvatarScreen"]
      958 LOADK                            R31 K185 ["StartAutoSetup"]
      959 NAMECALL                         R28 R1 K154 ["getText"]
      961 CALL                             R28 3 1
      962 SETTABLEKS                       R28 R27 K114 ["Text"]
      964 GETUPVAL                         R29 3
      965 CALL                             R29 0 1
      966 JUMPIFNOT                        R29 ; [+2]
      967 LOADNIL                          R28
      968 JUMP                             ; [+1]
      969 LOADN                            R28 2
      970 SETTABLEKS                       R28 R27 K71 ["ZIndex"]
      972 CALL                             R25 2 1
      973 SETTABLEKS                       R25 R24 K128 ["Start"]
      975 CALL                             R21 3 1
      976 SETTABLEKS                       R21 R20 K31 ["Controls"]
      978 CALL                             R17 3 -1
      979 RETURN                           R17 -1

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
      225 GETTABLEKS                       R33 R33 K50 ["getFFlagAvatarAutosetupOptionsInput"]
      227 CALL                             R32 1 1
      228 GETIMPORT                        R33 K9 [require]
      230 GETTABLEKS                       R34 R1 K14 ["Src"]
      232 GETTABLEKS                       R34 R34 K49 ["Flags"]
      234 GETTABLEKS                       R34 R34 K51 ["getFFlagAvatarPreviewerAvatarScreenBack"]
      236 CALL                             R33 1 1
      237 GETIMPORT                        R34 K9 [require]
      239 GETTABLEKS                       R35 R1 K14 ["Src"]
      241 GETTABLEKS                       R35 R35 K49 ["Flags"]
      243 GETTABLEKS                       R35 R35 K52 ["getFFlagAvatarPreviewerPedestalFrontIndicator"]
      245 CALL                             R34 1 1
      246 DUPCLOSURE                       R35 K53 [PROTO_13]
      247 CAPTURE                          VAL R30
      248 CAPTURE                          VAL R31
      249 CAPTURE                          VAL R17
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R6
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R29
      255 CAPTURE                          VAL R34
      256 CAPTURE                          VAL R18
      257 CAPTURE                          VAL R0
      258 CAPTURE                          VAL R19
      259 CAPTURE                          VAL R28
      260 CAPTURE                          VAL R22
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R33
      263 CAPTURE                          VAL R24
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R10
      266 CAPTURE                          VAL R13
      267 CAPTURE                          VAL R26
      268 CAPTURE                          VAL R27
      269 CAPTURE                          VAL R2
      270 CAPTURE                          VAL R23
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R25
      273 CAPTURE                          VAL R5
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R8
      276 CAPTURE                          VAL R21
      277 RETURN                           R35 1
