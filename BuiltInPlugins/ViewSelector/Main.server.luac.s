PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["NextGenDraggersEnabledFeature"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Normal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Name"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R2 R2 K2 ["FormatByKey"]
       10 CALL                             R2 2 1
       11 SETTABLE                         R2 R0 R1
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["Hover"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["Name"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R4 4
       20 NAMECALL                         R2 R2 K2 ["FormatByKey"]
       22 CALL                             R2 2 1
       23 SETTABLE                         R2 R0 R1
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["ViewSelectorScreenGui"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 0
        7 JUMPIFNOT                        R0 ; [+9]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K2 ["Destroy"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K3 ["ViewSelectorAfterCamera"]
       14 NAMECALL                         R0 R0 K4 ["UnbindFromRenderStep"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 3
       18 LOADK                            R2 K5 ["rbxasset://models/ViewSelector/ViewSelector.rbxm"]
       19 NAMECALL                         R0 R0 K6 ["LoadLocalAsset"]
       21 CALL                             R0 2 1
       22 SETUPVAL                         R0 0
       23 GETUPVAL                         R0 0
       24 GETUPVAL                         R1 1
       25 SETTABLEKS                       R1 R0 K7 ["Parent"]
       27 GETUPVAL                         R0 0
       28 LOADB                            R1 0
       29 SETTABLEKS                       R1 R0 K8 ["Enabled"]
       31 GETUPVAL                         R0 0
       32 LOADK                            R2 K9 ["Panel"]
       33 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       35 CALL                             R0 2 1
       36 SETUPVAL                         R0 4
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Viewport"]
       39 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       41 CALL                             R0 2 1
       42 SETUPVAL                         R0 5
       43 GETUPVAL                         R0 5
       44 GETTABLEKS                       R0 R0 K12 ["AbsoluteSize"]
       46 GETTABLEKS                       R0 R0 K13 ["x"]
       48 SETUPVAL                         R0 6
       49 GETUPVAL                         R0 5
       50 LOADK                            R2 K14 ["EventReceiver"]
       51 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       53 CALL                             R0 2 1
       54 SETUPVAL                         R0 7
       55 GETUPVAL                         R0 7
       56 GETIMPORT                        R1 K17 [UDim2.new]
       58 LOADN                            R2 1
       59 LOADN                            R3 0
       60 LOADN                            R4 0
       61 GETUPVAL                         R5 6
       62 CALL                             R1 4 1
       63 SETTABLEKS                       R1 R0 K18 ["Size"]
       65 GETUPVAL                         R0 5
       66 LOADK                            R2 K19 ["Model"]
       67 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       69 CALL                             R0 2 1
       70 SETUPVAL                         R0 8
       71 GETUPVAL                         R0 4
       72 LOADK                            R2 K20 ["X"]
       73 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       75 CALL                             R0 2 1
       76 SETUPVAL                         R0 9
       77 GETUPVAL                         R0 4
       78 LOADK                            R2 K21 ["Y"]
       79 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       81 CALL                             R0 2 1
       82 SETUPVAL                         R0 10
       83 GETUPVAL                         R0 4
       84 LOADK                            R2 K22 ["Z"]
       85 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       87 CALL                             R0 2 1
       88 SETUPVAL                         R0 11
       89 GETUPVAL                         R0 4
       90 LOADK                            R2 K23 ["ArrowButtons"]
       91 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       93 CALL                             R0 2 1
       94 SETUPVAL                         R0 12
       95 GETUPVAL                         R0 12
       96 LOADB                            R1 0
       97 SETTABLEKS                       R1 R0 K24 ["Visible"]
       99 LOADB                            R0 0
      100 SETUPVAL                         R0 13
      101 GETIMPORT                        R0 K26 [game]
      103 LOADK                            R2 K27 ["NextGenDraggersEnabledFeature"]
      104 NAMECALL                         R0 R0 K28 ["GetEngineFeature"]
      106 CALL                             R0 2 1
      107 JUMPIFNOT                        R0 ; [+36]
      108 GETUPVAL                         R0 9
      109 GETUPVAL                         R1 14
      110 SETTABLEKS                       R1 R0 K29 ["TextColor3"]
      112 GETUPVAL                         R0 10
      113 GETUPVAL                         R1 15
      114 SETTABLEKS                       R1 R0 K29 ["TextColor3"]
      116 GETUPVAL                         R0 11
      117 GETUPVAL                         R1 16
      118 SETTABLEKS                       R1 R0 K29 ["TextColor3"]
      120 GETUPVAL                         R0 8
      121 LOADK                            R2 K13 ["x"]
      122 NAMECALL                         R0 R0 K10 ["WaitForChild"]
      124 CALL                             R0 2 1
      125 GETUPVAL                         R1 8
      126 LOADK                            R3 K30 ["y"]
      127 NAMECALL                         R1 R1 K10 ["WaitForChild"]
      129 CALL                             R1 2 1
      130 GETUPVAL                         R2 8
      131 LOADK                            R4 K31 ["z"]
      132 NAMECALL                         R2 R2 K10 ["WaitForChild"]
      134 CALL                             R2 2 1
      135 GETUPVAL                         R3 14
      136 SETTABLEKS                       R3 R0 K32 ["Color"]
      138 GETUPVAL                         R3 15
      139 SETTABLEKS                       R3 R1 K32 ["Color"]
      141 GETUPVAL                         R3 16
      142 SETTABLEKS                       R3 R2 K32 ["Color"]
      144 GETIMPORT                        R0 K34 [Instance.new]
      146 LOADK                            R1 K35 ["Camera"]
      147 CALL                             R0 1 1
      148 SETUPVAL                         R0 17
      149 GETUPVAL                         R0 17
      150 GETUPVAL                         R1 5
      151 SETTABLEKS                       R1 R0 K7 ["Parent"]
      153 GETUPVAL                         R0 17
      154 GETIMPORT                        R1 K37 [CFrame.new]
      156 LOADK                            R2 K38 [{0, 0, 0}]
      157 LOADK                            R3 K39 [{0, 0, -1}]
      158 CALL                             R1 2 1
      159 SETTABLEKS                       R1 R0 K36 ["CFrame"]
      161 GETUPVAL                         R0 17
      162 LOADN                            R1 70
      163 SETTABLEKS                       R1 R0 K40 ["FieldOfView"]
      165 GETUPVAL                         R0 5
      166 GETUPVAL                         R1 17
      167 SETTABLEKS                       R1 R0 K41 ["CurrentCamera"]
      169 GETIMPORT                        R0 K43 [script]
      171 GETTABLEKS                       R0 R0 K7 ["Parent"]
      173 GETTABLEKS                       R0 R0 K44 ["LocalizedStrings"]
      175 GETUPVAL                         R3 18
      176 GETTABLEKS                       R3 R3 K45 ["StudioLocaleId"]
      178 NAMECALL                         R1 R0 K46 ["GetTranslator"]
      180 CALL                             R1 2 1
      181 LOADK                            R4 K47 ["en-us"]
      182 NAMECALL                         R2 R0 K46 ["GetTranslator"]
      184 CALL                             R2 2 1
      185 GETUPVAL                         R3 8
      186 NAMECALL                         R3 R3 K48 ["GetChildren"]
      188 CALL                             R3 1 1
      189 LOADN                            R6 1
      190 LENGTH                           R4 R3
      191 LOADN                            R5 1
      192 FORNPREP                         R4
      193 GETTABLE                         R7 R3 R6
      194 GETTABLEKS                       R8 R7 K49 ["ClassName"]
      196 JUMPIFEQKS                       R8 K50 ["Part"] ; [+5]
      198 GETTABLEKS                       R8 R7 K49 ["ClassName"]
      200 JUMPIFNOTEQKS                    R8 K51 ["MeshPart"] ; [+12]
      202 GETUPVAL                         R8 8
      203 GETTABLEKS                       R8 R8 K36 ["CFrame"]
      205 GETTABLEKS                       R10 R7 K36 ["CFrame"]
      207 NAMECALL                         R8 R8 K52 ["ToObjectSpace"]
      209 CALL                             R8 2 1
      210 SETTABLEKS                       R8 R7 K36 ["CFrame"]
      212 JUMP                             ; [+48]
      213 GETTABLEKS                       R8 R7 K49 ["ClassName"]
      215 JUMPIFNOTEQKS                    R8 K53 ["Decal"] ; [+45]
      217 GETTABLEKS                       R8 R7 K54 ["Name"]
      219 GETTABLEKS                       R10 R7 K54 ["Name"]
      221 LOADK                            R11 K55 ["_hover"]
      222 CONCAT                           R9 R10 R11
      223 GETIMPORT                        R10 K57 [pcall]
      225 NEWCLOSURE                       R11 P0
      226 CAPTURE                          UPVAL U19
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R9
      231 CALL                             R10 1 1
      232 JUMPIF                           R10 ; [+20]
      233 GETUPVAL                         R11 19
      234 GETTABLEKS                       R11 R11 K58 ["Normal"]
      236 GETTABLEKS                       R12 R7 K54 ["Name"]
      238 MOVE                             R15 R8
      239 NAMECALL                         R13 R2 K59 ["FormatByKey"]
      241 CALL                             R13 2 1
      242 SETTABLE                         R13 R11 R12
      243 GETUPVAL                         R11 19
      244 GETTABLEKS                       R11 R11 K60 ["Hover"]
      246 GETTABLEKS                       R12 R7 K54 ["Name"]
      248 MOVE                             R15 R9
      249 NAMECALL                         R13 R2 K59 ["FormatByKey"]
      251 CALL                             R13 2 1
      252 SETTABLE                         R13 R11 R12
      253 GETUPVAL                         R12 19
      254 GETTABLEKS                       R12 R12 K58 ["Normal"]
      256 GETTABLEKS                       R13 R7 K54 ["Name"]
      258 GETTABLE                         R11 R12 R13
      259 SETTABLEKS                       R11 R7 K61 ["Texture"]
      261 FORNLOOP                         R4
      262 GETUPVAL                         R4 8
      263 GETIMPORT                        R5 K37 [CFrame.new]
      265 CALL                             R5 0 1
      266 SETTABLEKS                       R5 R4 K36 ["CFrame"]
      268 NEWTABLE                         R4 0 3
      270 LOADK                            R5 K62 ["n"]
      271 LOADK                            R6 K63 ["0"]
      272 LOADK                            R7 K64 ["p"]
      273 SETLIST                          R4 R5 3 [1]
      275 LOADN                            R7 -1
      276 LOADN                            R5 1
      277 LOADN                            R6 1
      278 FORNPREP                         R5
      279 LOADN                            R10 -1
      280 LOADN                            R8 1
      281 LOADN                            R9 1
      282 FORNPREP                         R8
      283 LOADN                            R13 -1
      284 LOADN                            R11 1
      285 LOADN                            R12 1
      286 FORNPREP                         R11
      287 ADDK                             R18 R7 K65 [2]
      288 GETTABLE                         R15 R4 R18
      289 ADDK                             R18 R10 K65 [2]
      290 GETTABLE                         R16 R4 R18
      291 ADDK                             R18 R13 K65 [2]
      292 GETTABLE                         R17 R4 R18
      293 CONCAT                           R14 R15 R17
      294 GETUPVAL                         R15 20
      295 GETIMPORT                        R16 K37 [CFrame.new]
      297 FASTCALL                         VECTOR ; [+2]
      298 GETIMPORT                        R17 K67 [Vector3.new]
      300 CALL                             R17 0 1
      301 MINUS                            R19 R7
      302 MINUS                            R20 R10
      303 MINUS                            R21 R13
      304 FASTCALL                         VECTOR ; [+2]
      305 GETIMPORT                        R18 K67 [Vector3.new]
      307 CALL                             R18 3 1
      308 GETTABLEKS                       R18 R18 K68 ["Unit"]
      310 CALL                             R16 2 1
      311 SETTABLE                         R16 R15 R14
      312 FORNLOOP                         R11
      313 FORNLOOP                         R8
      314 FORNLOOP                         R5
      315 GETUPVAL                         R5 20
      316 GETIMPORT                        R6 K70 [CFrame.fromEulerAnglesYXZ]
      318 LOADK                            R7 K71 [-1.5707963267949]
      319 LOADK                            R8 K72 [3.14159265358979]
      320 LOADN                            R9 0
      321 CALL                             R6 3 1
      322 SETTABLEKS                       R6 R5 K73 ["0p0"]
      324 GETUPVAL                         R5 20
      325 GETIMPORT                        R6 K75 [CFrame.fromEulerAnglesXYZ]
      327 LOADK                            R7 K71 [-1.5707963267949]
      328 LOADK                            R8 K72 [3.14159265358979]
      329 LOADN                            R9 0
      330 CALL                             R6 3 1
      331 SETTABLEKS                       R6 R5 K76 ["0n0"]
      333 LOADK                            R5 K77 [{0.576, -0.48, -0.48}]
      334 SETUPVAL                         R5 21
      335 LOADK                            R5 K78 [{-0.48, 0.576, -0.48}]
      336 SETUPVAL                         R5 22
      337 LOADK                            R5 K79 [{-0.48, -0.48, 0.576}]
      338 SETUPVAL                         R5 23
      339 GETIMPORT                        R5 K81 [plugin]
      341 LOADK                            R7 K82 ["ViewSelector_Active"]
      342 NAMECALL                         R5 R5 K83 ["GetSetting"]
      344 CALL                             R5 2 1
      345 SETUPVAL                         R5 24
      346 GETUPVAL                         R5 24
      347 JUMPIFNOTEQKNIL                  R5 ; [+3]
      349 LOADB                            R5 1
      350 SETUPVAL                         R5 24
      351 GETUPVAL                         R5 25
      352 GETUPVAL                         R7 24
      353 NAMECALL                         R5 R5 K84 ["SetActive"]
      355 CALL                             R5 2 0
      356 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        4 GETTABLEKS                       R0 R0 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R0 R0 K4 ["CameraType"]
        8 GETIMPORT                        R1 K7 [Enum.CameraType.Attach]
       10 JUMPIFEQ                         R0 R1 ; [+5]
       12 GETIMPORT                        R1 K9 [Enum.CameraType.Scriptable]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 LOADB                            R1 0
       19 RETURN                           R1 1

PROTO_4:
        0 FASTCALL1                        MATH_ABS R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K2 [math.abs]
        4 CALL                             R2 1 1
        5 LOADK                            R3 K3 [0.001]
        6 JUMPIFNOTLT                      R3 R2 ; [+31]
        8 ADDK                             R3 R0 K4 [0.48]
        9 DIV                              R2 R3 R1
       10 SUBK                             R4 R0 K4 [0.48]
       11 DIV                              R3 R4 R1
       12 JUMPIFNOTLT                      R3 R2 ; [+4]
       14 MOVE                             R4 R3
       15 MOVE                             R3 R2
       16 MOVE                             R2 R4
       17 GETUPVAL                         R4 0
       18 JUMPIFNOTLT                      R4 R2 ; [+2]
       20 SETUPVAL                         R2 0
       21 GETUPVAL                         R4 1
       22 JUMPIFNOTLT                      R3 R4 ; [+2]
       24 SETUPVAL                         R3 1
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 1
       27 JUMPIFNOTLT                      R5 R4 ; [+3]
       29 LOADN                            R4 0
       30 RETURN                           R4 1
       31 GETUPVAL                         R4 1
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R4 R5 ; [+16]
       35 LOADN                            R4 0
       36 RETURN                           R4 1
       37 RETURN                           R0 0
       38 MINUS                            R3 R0
       39 SUBK                             R2 R3 K4 [0.48]
       40 LOADN                            R3 0
       41 JUMPIFLT                         R3 R2 ; [+6]
       43 MINUS                            R3 R0
       44 ADDK                             R2 R3 K4 [0.48]
       45 LOADN                            R3 0
       46 JUMPIFNOTLT                      R2 R3 ; [+3]
       48 LOADN                            R2 0
       49 RETURN                           R2 1
       50 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R2 -100
        1 LOADN                            R3 100
        2 MINUS                            R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          REF R3
        6 MOVE                             R6 R5
        7 GETTABLEKS                       R7 R4 K0 ["X"]
        9 GETTABLEKS                       R8 R1 K0 ["X"]
       11 CALL                             R6 2 1
       12 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       14 CLOSEUPVALS                      R2
       15 RETURN                           R0 0
       16 MOVE                             R6 R5
       17 GETTABLEKS                       R7 R4 K2 ["Y"]
       19 GETTABLEKS                       R8 R1 K2 ["Y"]
       21 CALL                             R6 2 1
       22 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       24 CLOSEUPVALS                      R2
       25 RETURN                           R0 0
       26 MOVE                             R6 R5
       27 GETTABLEKS                       R7 R4 K3 ["Z"]
       29 GETTABLEKS                       R8 R1 K3 ["Z"]
       31 CALL                             R6 2 1
       32 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       34 CLOSEUPVALS                      R2
       35 RETURN                           R0 0
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R2 ; [+5]
       39 MUL                              R7 R1 R2
       40 ADD                              R6 R0 R7
       41 CLOSEUPVALS                      R2
       42 RETURN                           R6 1
       43 MUL                              R7 R1 R3
       44 ADD                              R6 R0 R7
       45 CLOSEUPVALS                      R2
       46 RETURN                           R6 1

PROTO_6:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Hover"]
        9 GETTABLEKS                       R3 R0 K3 ["Name"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K4 ["Texture"]
       14 RETURN                           R0 0
       15 LOADK                            R1 K5 [0.3]
       16 SETTABLEKS                       R1 R0 K6 ["Transparency"]
       18 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Normal"]
        9 GETTABLEKS                       R3 R0 K3 ["Name"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K4 ["Texture"]
       14 RETURN                           R0 0
       15 LOADN                            R1 1
       16 SETTABLEKS                       R1 R0 K5 ["Transparency"]
       18 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R1 0
        1 JUMPIFNOTLE                      R1 R0 ; [+3]
        3 LOADK                            R1 K0 ["p"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K1 ["n"]
        6 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R5 R0 K0 ["x"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 MOVE                             R1 R4
        7 GETTABLEKS                       R5 R0 K4 ["y"]
        9 FASTCALL1                        MATH_ABS R5 ; [+2]
       10 GETIMPORT                        R4 K3 [math.abs]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 GETTABLEKS                       R4 R0 K5 ["z"]
       16 FASTCALL1                        MATH_ABS R4 ; [+2]
       17 GETIMPORT                        R3 K3 [math.abs]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K6 [PROTO_8]
       21 ADD                              R6 R1 R2
       22 ADD                              R5 R6 R3
       23 LOADK                            R6 K7 [1.056]
       24 JUMPIFNOTLT                      R6 R5 ; [+27]
       26 GETTABLEKS                       R9 R0 K0 ["x"]
       28 LOADN                            R10 0
       29 JUMPIFNOTLE                      R10 R9 ; [+3]
       31 LOADK                            R6 K8 ["p"]
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K9 ["n"]
       34 GETTABLEKS                       R9 R0 K4 ["y"]
       36 LOADN                            R10 0
       37 JUMPIFNOTLE                      R10 R9 ; [+3]
       39 LOADK                            R7 K8 ["p"]
       40 JUMP                             ; [+1]
       41 LOADK                            R7 K9 ["n"]
       42 GETTABLEKS                       R9 R0 K5 ["z"]
       44 LOADN                            R10 0
       45 JUMPIFNOTLE                      R10 R9 ; [+3]
       47 LOADK                            R8 K8 ["p"]
       48 JUMP                             ; [+1]
       49 LOADK                            R8 K9 ["n"]
       50 CONCAT                           R5 R6 R8
       51 RETURN                           R5 1
       52 JUMPIFNOTLT                      R2 R1 ; [+14]
       54 JUMPIFNOTLT                      R3 R1 ; [+12]
       56 GETTABLEKS                       R8 R0 K0 ["x"]
       58 LOADN                            R9 0
       59 JUMPIFNOTLE                      R9 R8 ; [+3]
       61 LOADK                            R6 K8 ["p"]
       62 JUMP                             ; [+1]
       63 LOADK                            R6 K9 ["n"]
       64 LOADK                            R7 K10 ["00"]
       65 CONCAT                           R5 R6 R7
       66 RETURN                           R5 1
       67 JUMPIFNOTLT                      R1 R2 ; [+15]
       69 JUMPIFNOTLT                      R3 R2 ; [+13]
       71 LOADK                            R6 K11 ["0"]
       72 GETTABLEKS                       R9 R0 K4 ["y"]
       74 LOADN                            R10 0
       75 JUMPIFNOTLE                      R10 R9 ; [+3]
       77 LOADK                            R7 K8 ["p"]
       78 JUMP                             ; [+1]
       79 LOADK                            R7 K9 ["n"]
       80 LOADK                            R8 K11 ["0"]
       81 CONCAT                           R5 R6 R8
       82 RETURN                           R5 1
       83 LOADK                            R6 K10 ["00"]
       84 GETTABLEKS                       R8 R0 K5 ["z"]
       86 LOADN                            R9 0
       87 JUMPIFNOTLE                      R9 R8 ; [+3]
       89 LOADK                            R7 K8 ["p"]
       90 JUMP                             ; [+1]
       91 LOADK                            R7 K9 ["n"]
       92 CONCAT                           R5 R6 R7
       93 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetGuiInset"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["AbsolutePosition"]
        7 GETTABLEKS                       R5 R5 K2 ["X"]
        9 SUB                              R4 R0 R5
       10 GETTABLEKS                       R5 R2 K3 ["x"]
       12 SUB                              R3 R4 R5
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K1 ["AbsolutePosition"]
       16 GETTABLEKS                       R6 R6 K4 ["Y"]
       18 SUB                              R5 R1 R6
       19 GETTABLEKS                       R6 R2 K5 ["y"]
       21 SUB                              R4 R5 R6
       22 RETURN                           R3 2

PROTO_11:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R3 R3 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R3 K4 ["CameraType"]
        8 GETIMPORT                        R4 K7 [Enum.CameraType.Attach]
       10 JUMPIFEQ                         R3 R4 ; [+5]
       12 GETIMPORT                        R4 K9 [Enum.CameraType.Scriptable]
       14 JUMPIFNOTEQ                      R3 R4 ; [+3]
       16 LOADB                            R2 1
       17 JUMP                             ; [+1]
       18 LOADB                            R2 0
       19 JUMPIFNOT                        R2 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 0
       22 NAMECALL                         R4 R4 K10 ["GetGuiInset"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K11 ["AbsolutePosition"]
       28 GETTABLEKS                       R7 R7 K12 ["X"]
       30 SUB                              R6 R0 R7
       31 GETTABLEKS                       R7 R4 K13 ["x"]
       33 SUB                              R5 R6 R7
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K11 ["AbsolutePosition"]
       37 GETTABLEKS                       R8 R8 K14 ["Y"]
       39 SUB                              R7 R1 R8
       40 GETTABLEKS                       R8 R4 K15 ["y"]
       42 SUB                              R6 R7 R8
       43 MOVE                             R2 R5
       44 MOVE                             R3 R6
       45 GETUPVAL                         R4 2
       46 GETUPVAL                         R7 3
       47 DIV                              R6 R2 R7
       48 GETUPVAL                         R8 3
       49 DIV                              R7 R3 R8
       50 LOADN                            R8 0
       51 NAMECALL                         R4 R4 K16 ["ViewportPointToRay"]
       53 CALL                             R4 4 1
       54 GETUPVAL                         R5 4
       55 GETTABLEKS                       R6 R4 K17 ["Origin"]
       57 GETTABLEKS                       R7 R4 K18 ["Direction"]
       59 CALL                             R5 2 1
       60 JUMPIFNOT                        R5 ; [+47]
       61 GETUPVAL                         R6 5
       62 MOVE                             R7 R5
       63 CALL                             R6 1 1
       64 GETUPVAL                         R8 6
       65 GETTABLE                         R7 R8 R6
       66 GETUPVAL                         R8 7
       67 JUMPIFEQ                         R8 R7 ; [+61]
       69 GETUPVAL                         R8 7
       70 JUMPIF                           R8 ; [+1]
       71 JUMP                             ; [+16]
       72 GETTABLEKS                       R9 R8 K19 ["ClassName"]
       74 JUMPIFNOTEQKS                    R9 K20 ["Decal"] ; [+10]
       76 GETUPVAL                         R10 8
       77 GETTABLEKS                       R10 R10 K21 ["Normal"]
       79 GETTABLEKS                       R11 R8 K22 ["Name"]
       81 GETTABLE                         R9 R10 R11
       82 SETTABLEKS                       R9 R8 K23 ["Texture"]
       84 JUMP                             ; [+3]
       85 LOADN                            R9 1
       86 SETTABLEKS                       R9 R8 K24 ["Transparency"]
       88 JUMPIF                           R7 ; [+1]
       89 JUMP                             ; [+16]
       90 GETTABLEKS                       R8 R7 K19 ["ClassName"]
       92 JUMPIFNOTEQKS                    R8 K20 ["Decal"] ; [+10]
       94 GETUPVAL                         R9 8
       95 GETTABLEKS                       R9 R9 K25 ["Hover"]
       97 GETTABLEKS                       R10 R7 K22 ["Name"]
       99 GETTABLE                         R8 R9 R10
      100 SETTABLEKS                       R8 R7 K23 ["Texture"]
      102 JUMP                             ; [+3]
      103 LOADK                            R8 K26 [0.3]
      104 SETTABLEKS                       R8 R7 K24 ["Transparency"]
      106 SETUPVAL                         R7 7
      107 RETURN                           R0 0
      108 GETUPVAL                         R6 7
      109 JUMPIF                           R6 ; [+1]
      110 JUMP                             ; [+16]
      111 GETTABLEKS                       R7 R6 K19 ["ClassName"]
      113 JUMPIFNOTEQKS                    R7 K20 ["Decal"] ; [+10]
      115 GETUPVAL                         R8 8
      116 GETTABLEKS                       R8 R8 K21 ["Normal"]
      118 GETTABLEKS                       R9 R6 K22 ["Name"]
      120 GETTABLE                         R7 R8 R9
      121 SETTABLEKS                       R7 R6 K23 ["Texture"]
      123 JUMP                             ; [+3]
      124 LOADN                            R7 1
      125 SETTABLEKS                       R7 R6 K24 ["Transparency"]
      127 LOADNIL                          R6
      128 SETUPVAL                         R6 7
      129 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 NAMECALL                         R5 R5 K1 ["Dot"]
        4 CALL                             R5 2 1
        5 FASTCALL1                        MATH_ABS R5 ; [+2]
        6 GETIMPORT                        R4 K4 [math.abs]
        8 CALL                             R4 1 1
        9 SUBK                             R3 R4 K0 [1]
       10 FASTCALL1                        MATH_ABS R3 ; [+2]
       11 GETIMPORT                        R2 K4 [math.abs]
       13 CALL                             R2 1 1
       14 LOADK                            R3 K5 [0.001]
       15 JUMPIFLT                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["LookVector"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 GETUPVAL                         R2 2
        9 LOADK                            R9 K2 [{1, 0, 0}]
       10 NAMECALL                         R7 R0 K3 ["Dot"]
       12 CALL                             R7 2 1
       13 FASTCALL1                        MATH_ABS R7 ; [+2]
       14 GETIMPORT                        R6 K6 [math.abs]
       16 CALL                             R6 1 1
       17 SUBK                             R5 R6 K1 [1]
       18 FASTCALL1                        MATH_ABS R5 ; [+2]
       19 GETIMPORT                        R4 K6 [math.abs]
       21 CALL                             R4 1 1
       22 LOADK                            R5 K7 [0.001]
       23 JUMPIFLT                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 JUMPIF                           R3 ; [+37]
       28 LOADK                            R9 K8 [{0, 1, 0}]
       29 NAMECALL                         R7 R0 K3 ["Dot"]
       31 CALL                             R7 2 1
       32 FASTCALL1                        MATH_ABS R7 ; [+2]
       33 GETIMPORT                        R6 K6 [math.abs]
       35 CALL                             R6 1 1
       36 SUBK                             R5 R6 K1 [1]
       37 FASTCALL1                        MATH_ABS R5 ; [+2]
       38 GETIMPORT                        R4 K6 [math.abs]
       40 CALL                             R4 1 1
       41 LOADK                            R5 K7 [0.001]
       42 JUMPIFLT                         R4 R5 ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 JUMPIF                           R3 ; [+18]
       47 LOADK                            R9 K9 [{0, 0, 1}]
       48 NAMECALL                         R7 R0 K3 ["Dot"]
       50 CALL                             R7 2 1
       51 FASTCALL1                        MATH_ABS R7 ; [+2]
       52 GETIMPORT                        R6 K6 [math.abs]
       54 CALL                             R6 1 1
       55 SUBK                             R5 R6 K1 [1]
       56 FASTCALL1                        MATH_ABS R5 ; [+2]
       57 GETIMPORT                        R4 K6 [math.abs]
       59 CALL                             R4 1 1
       60 LOADK                            R5 K7 [0.001]
       61 JUMPIFLT                         R4 R5 ; [+2]
       63 LOADB                            R3 0 +1
       64 LOADB                            R3 1
       65 SETTABLEKS                       R3 R2 K10 ["Visible"]
       67 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 JUMP                             ; [+16]
        3 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        5 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["Normal"]
       10 GETTABLEKS                       R3 R0 K3 ["Name"]
       12 GETTABLE                         R1 R2 R3
       13 SETTABLEKS                       R1 R0 K4 ["Texture"]
       15 JUMP                             ; [+3]
       16 LOADN                            R1 1
       17 SETTABLEKS                       R1 R0 K5 ["Transparency"]
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 0
       21 GETUPVAL                         R0 2
       22 LOADB                            R1 0
       23 SETTABLEKS                       R1 R0 K6 ["Visible"]
       25 LOADB                            R0 0
       26 SETUPVAL                         R0 3
       27 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        5 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        7 JUMPIFNOTEQ                      R1 R2 ; [+67]
        9 GETTABLEKS                       R1 R0 K4 ["Position"]
       11 GETTABLEKS                       R1 R1 K5 ["x"]
       13 GETTABLEKS                       R2 R0 K4 ["Position"]
       15 GETTABLEKS                       R2 R2 K6 ["y"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K5 ["x"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K9 [math.abs]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K6 ["y"]
       28 SUB                              R6 R7 R2
       29 FASTCALL1                        MATH_ABS R6 ; [+2]
       30 GETIMPORT                        R5 K9 [math.abs]
       32 CALL                             R5 1 1
       33 ADD                              R3 R4 R5
       34 LOADN                            R4 5
       35 JUMPIFNOTLT                      R4 R3 ; [+39]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K10 ["X"]
       40 GETTABLEKS                       R6 R6 K11 ["Offset"]
       42 ADD                              R5 R6 R1
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K5 ["x"]
       46 SUB                              R4 R5 R6
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K12 ["Y"]
       50 GETTABLEKS                       R7 R7 K11 ["Offset"]
       52 ADD                              R6 R7 R2
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K6 ["y"]
       56 SUB                              R5 R6 R7
       57 GETUPVAL                         R6 2
       58 GETIMPORT                        R7 K15 [UDim2.new]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K10 ["X"]
       63 GETTABLEKS                       R8 R8 K16 ["Scale"]
       65 MOVE                             R9 R4
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K12 ["Y"]
       69 GETTABLEKS                       R10 R10 K16 ["Scale"]
       71 MOVE                             R11 R5
       72 CALL                             R7 4 1
       73 SETTABLEKS                       R7 R6 K4 ["Position"]
       75 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R3 R3 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R3 K4 ["ViewportSize"]
        8 GETTABLE                         R2 R3 R0
        9 LOADK                            R3 K5 [0.5]
       10 LOADK                            R4 K5 [0.5]
       11 GETUPVAL                         R5 0
       12 JUMPIFNOTLT                      R5 R2 ; [+17]
       14 GETIMPORT                        R5 K7 [plugin]
       16 LOADK                            R8 K8 ["ViewSelector_Position"]
       17 MOVE                             R9 R0
       18 CONCAT                           R7 R8 R9
       19 NAMECALL                         R5 R5 K9 ["GetSetting"]
       21 CALL                             R5 2 1
       22 OR                               R3 R5 R1
       23 GETUPVAL                         R7 0
       24 SUB                              R6 R2 R7
       25 MUL                              R5 R3 R6
       26 GETUPVAL                         R8 0
       27 MUL                              R7 R3 R8
       28 ADD                              R6 R5 R7
       29 DIV                              R4 R6 R2
       30 RETURN                           R3 2

PROTO_18:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 GETIMPORT                        R4 K2 [game]
        4 GETTABLEKS                       R4 R4 K3 ["Workspace"]
        6 GETTABLEKS                       R4 R4 K4 ["CurrentCamera"]
        8 GETTABLEKS                       R4 R4 K5 ["ViewportSize"]
       10 GETTABLEKS                       R3 R4 K0 ["X"]
       12 LOADK                            R4 K6 [0.5]
       13 LOADK                            R5 K6 [0.5]
       14 GETUPVAL                         R6 0
       15 JUMPIFNOTLT                      R6 R3 ; [+15]
       17 GETIMPORT                        R6 K9 [plugin]
       19 LOADK                            R8 K10 ["ViewSelector_PositionX"]
       20 NAMECALL                         R6 R6 K11 ["GetSetting"]
       22 CALL                             R6 2 1
       23 ORK                              R4 R6 K7 [1]
       24 GETUPVAL                         R8 0
       25 SUB                              R7 R3 R8
       26 MUL                              R6 R4 R7
       27 GETUPVAL                         R9 0
       28 MUL                              R8 R4 R9
       29 ADD                              R7 R6 R8
       30 DIV                              R5 R7 R3
       31 MOVE                             R1 R4
       32 MOVE                             R2 R5
       33 GETIMPORT                        R6 K2 [game]
       35 GETTABLEKS                       R6 R6 K3 ["Workspace"]
       37 GETTABLEKS                       R6 R6 K4 ["CurrentCamera"]
       39 GETTABLEKS                       R6 R6 K5 ["ViewportSize"]
       41 GETTABLEKS                       R5 R6 K12 ["Y"]
       43 LOADK                            R6 K6 [0.5]
       44 LOADK                            R7 K6 [0.5]
       45 GETUPVAL                         R8 0
       46 JUMPIFNOTLT                      R8 R5 ; [+15]
       48 GETIMPORT                        R8 K9 [plugin]
       50 LOADK                            R10 K14 ["ViewSelector_PositionY"]
       51 NAMECALL                         R8 R8 K11 ["GetSetting"]
       53 CALL                             R8 2 1
       54 ORK                              R6 R8 K13 [0]
       55 GETUPVAL                         R10 0
       56 SUB                              R9 R5 R10
       57 MUL                              R8 R6 R9
       58 GETUPVAL                         R11 0
       59 MUL                              R10 R6 R11
       60 ADD                              R9 R8 R10
       61 DIV                              R7 R9 R5
       62 MOVE                             R3 R6
       63 MOVE                             R4 R7
       64 GETUPVAL                         R5 1
       65 GETIMPORT                        R6 K17 [Vector2.new]
       67 MOVE                             R7 R1
       68 MOVE                             R8 R3
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K18 ["AnchorPoint"]
       72 GETUPVAL                         R5 1
       73 GETIMPORT                        R6 K20 [UDim2.new]
       75 MOVE                             R7 R2
       76 LOADN                            R8 0
       77 MOVE                             R9 R4
       78 LOADN                            R10 0
       79 CALL                             R6 4 1
       80 SETTABLEKS                       R6 R5 K21 ["Position"]
       82 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["Workspace"]
        4 GETTABLEKS                       R2 R2 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R2 K4 ["ViewportSize"]
        8 GETTABLE                         R1 R2 R0
        9 LOADK                            R2 K5 [0.5]
       10 LOADK                            R3 K5 [0.5]
       11 GETUPVAL                         R4 0
       12 JUMPIFNOTLT                      R4 R1 ; [+19]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K6 ["AbsolutePosition"]
       17 GETTABLE                         R5 R6 R0
       18 LOADN                            R6 0
       19 GETUPVAL                         R8 0
       20 SUB                              R7 R1 R8
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R4 K9 [math.clamp]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R6 0
       26 SUB                              R5 R1 R6
       27 DIV                              R2 R4 R5
       28 GETUPVAL                         R7 0
       29 MUL                              R6 R2 R7
       30 ADD                              R5 R4 R6
       31 DIV                              R3 R5 R1
       32 GETIMPORT                        R4 K11 [plugin]
       34 LOADK                            R7 K12 ["ViewSelector_Position"]
       35 MOVE                             R8 R0
       36 CONCAT                           R6 R7 R8
       37 MOVE                             R7 R2
       38 NAMECALL                         R4 R4 K13 ["SetSetting"]
       40 CALL                             R4 3 0
       41 RETURN                           R2 2

PROTO_20:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETIMPORT                        R4 K2 [game]
        5 GETTABLEKS                       R4 R4 K3 ["Workspace"]
        7 GETTABLEKS                       R4 R4 K4 ["CurrentCamera"]
        9 GETTABLEKS                       R4 R4 K5 ["ViewportSize"]
       11 GETTABLEKS                       R3 R4 K0 ["X"]
       13 LOADK                            R4 K6 [0.5]
       14 LOADK                            R5 K6 [0.5]
       15 GETUPVAL                         R6 0
       16 JUMPIFNOTLT                      R6 R3 ; [+20]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K7 ["AbsolutePosition"]
       21 GETTABLEKS                       R7 R8 K0 ["X"]
       23 LOADN                            R8 0
       24 GETUPVAL                         R10 0
       25 SUB                              R9 R3 R10
       26 FASTCALL                         MATH_CLAMP ; [+2]
       27 GETIMPORT                        R6 K10 [math.clamp]
       29 CALL                             R6 3 1
       30 GETUPVAL                         R8 0
       31 SUB                              R7 R3 R8
       32 DIV                              R4 R6 R7
       33 GETUPVAL                         R9 0
       34 MUL                              R8 R4 R9
       35 ADD                              R7 R6 R8
       36 DIV                              R5 R7 R3
       37 GETIMPORT                        R6 K12 [plugin]
       39 LOADK                            R8 K13 ["ViewSelector_PositionX"]
       40 MOVE                             R9 R4
       41 NAMECALL                         R6 R6 K14 ["SetSetting"]
       43 CALL                             R6 3 0
       44 MOVE                             R1 R4
       45 MOVE                             R2 R5
       46 GETIMPORT                        R6 K2 [game]
       48 GETTABLEKS                       R6 R6 K3 ["Workspace"]
       50 GETTABLEKS                       R6 R6 K4 ["CurrentCamera"]
       52 GETTABLEKS                       R6 R6 K5 ["ViewportSize"]
       54 GETTABLEKS                       R5 R6 K15 ["Y"]
       56 LOADK                            R6 K6 [0.5]
       57 LOADK                            R7 K6 [0.5]
       58 GETUPVAL                         R8 0
       59 JUMPIFNOTLT                      R8 R5 ; [+20]
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R10 R10 K7 ["AbsolutePosition"]
       64 GETTABLEKS                       R9 R10 K15 ["Y"]
       66 LOADN                            R10 0
       67 GETUPVAL                         R12 0
       68 SUB                              R11 R5 R12
       69 FASTCALL                         MATH_CLAMP ; [+2]
       70 GETIMPORT                        R8 K10 [math.clamp]
       72 CALL                             R8 3 1
       73 GETUPVAL                         R10 0
       74 SUB                              R9 R5 R10
       75 DIV                              R6 R8 R9
       76 GETUPVAL                         R11 0
       77 MUL                              R10 R6 R11
       78 ADD                              R9 R8 R10
       79 DIV                              R7 R9 R5
       80 GETIMPORT                        R8 K12 [plugin]
       82 LOADK                            R10 K16 ["ViewSelector_PositionY"]
       83 MOVE                             R11 R6
       84 NAMECALL                         R8 R8 K14 ["SetSetting"]
       86 CALL                             R8 3 0
       87 MOVE                             R3 R6
       88 MOVE                             R4 R7
       89 GETUPVAL                         R5 1
       90 GETIMPORT                        R6 K19 [Vector2.new]
       92 MOVE                             R7 R1
       93 MOVE                             R8 R3
       94 CALL                             R6 2 1
       95 SETTABLEKS                       R6 R5 K20 ["AnchorPoint"]
       97 GETUPVAL                         R5 1
       98 GETIMPORT                        R6 K22 [UDim2.new]
      100 MOVE                             R7 R2
      101 LOADN                            R8 0
      102 MOVE                             R9 R4
      103 LOADN                            R10 0
      104 CALL                             R6 4 1
      105 SETTABLEKS                       R6 R5 K23 ["Position"]
      107 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+7]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+4]
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETUPVAL                         R2 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K3 ["Position"]
        9 SETUPVAL                         R2 1
       10 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R1 K4 ["Focus"]
        8 GETTABLEKS                       R2 R2 K5 ["Position"]
       10 GETTABLEKS                       R4 R1 K6 ["CFrame"]
       12 GETTABLEKS                       R4 R4 K5 ["Position"]
       14 SUB                              R3 R2 R4
       15 GETTABLEKS                       R3 R3 K7 ["Magnitude"]
       17 GETTABLEKS                       R6 R0 K8 ["LookVector"]
       19 MUL                              R5 R6 R3
       20 SUB                              R4 R2 R5
       21 SETUPVAL                         R2 0
       22 ADD                              R5 R0 R4
       23 SETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R1 K6 ["CFrame"]
       26 SETUPVAL                         R5 2
       27 LOADN                            R5 0
       28 SETUPVAL                         R5 3
       29 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["x"]
        6 SUB                              R4 R5 R0
        7 FASTCALL1                        MATH_ABS R4 ; [+2]
        8 GETIMPORT                        R3 K3 [math.abs]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K4 ["y"]
       14 SUB                              R5 R6 R1
       15 FASTCALL1                        MATH_ABS R5 ; [+2]
       16 GETIMPORT                        R4 K3 [math.abs]
       18 CALL                             R4 1 1
       19 ADD                              R2 R3 R4
       20 LOADNIL                          R3
       21 SETUPVAL                         R3 0
       22 LOADN                            R3 5
       23 JUMPIFNOTLE                      R2 R3 ; [+38]
       25 GETUPVAL                         R3 1
       26 JUMPIFNOT                        R3 ; [+37]
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K5 ["Name"]
       31 GETTABLE                         R3 R4 R5
       32 GETIMPORT                        R4 K7 [game]
       34 GETTABLEKS                       R4 R4 K8 ["Workspace"]
       36 GETTABLEKS                       R4 R4 K9 ["CurrentCamera"]
       38 GETTABLEKS                       R5 R4 K10 ["Focus"]
       40 GETTABLEKS                       R5 R5 K11 ["Position"]
       42 GETTABLEKS                       R7 R4 K12 ["CFrame"]
       44 GETTABLEKS                       R7 R7 K11 ["Position"]
       46 SUB                              R6 R5 R7
       47 GETTABLEKS                       R6 R6 K13 ["Magnitude"]
       49 GETTABLEKS                       R9 R3 K14 ["LookVector"]
       51 MUL                              R8 R9 R6
       52 SUB                              R7 R5 R8
       53 SETUPVAL                         R5 3
       54 ADD                              R8 R3 R7
       55 SETUPVAL                         R8 4
       56 GETTABLEKS                       R8 R4 K12 ["CFrame"]
       58 SETUPVAL                         R8 5
       59 LOADN                            R8 0
       60 SETUPVAL                         R8 6
       61 RETURN                           R0 0
       62 GETUPVAL                         R3 7
       63 CALL                             R3 0 0
       64 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CFrame"]
        3 MUL                              R2 R3 R1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["LookVector"]
        7 NAMECALL                         R3 R1 K2 ["Dot"]
        9 CALL                             R3 2 1
       10 LOADN                            R4 0
       11 JUMPIFNOTLT                      R3 R4 ; [+8]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K4 ["ZIndex"]
       16 ADDK                             R3 R4 K3 [1]
       17 SETTABLEKS                       R3 R0 K4 ["ZIndex"]
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["ZIndex"]
       23 SUBK                             R3 R4 K3 [1]
       24 SETTABLEKS                       R3 R0 K4 ["ZIndex"]
       26 GETUPVAL                         R3 3
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K5 ["WorldToViewportPoint"]
       30 CALL                             R3 2 2
       31 JUMPIFNOT                        R4 ; [+19]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R0 K6 ["Visible"]
       35 GETIMPORT                        R5 K9 [UDim2.new]
       37 LOADN                            R6 0
       38 GETTABLEKS                       R8 R3 K10 ["x"]
       40 GETUPVAL                         R9 4
       41 MUL                              R7 R8 R9
       42 LOADN                            R8 0
       43 GETTABLEKS                       R10 R3 K11 ["y"]
       45 GETUPVAL                         R11 4
       46 MUL                              R9 R10 R11
       47 CALL                             R5 4 1
       48 SETTABLEKS                       R5 R0 K12 ["Position"]
       50 RETURN                           R0 0
       51 LOADB                            R5 0
       52 SETTABLEKS                       R5 R0 K6 ["Visible"]
       54 RETURN                           R0 0

PROTO_26:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 MOVE                             R1 R0
        7 GETUPVAL                         R2 5
        8 GETUPVAL                         R3 6
        9 CALL                             R1 2 0
       10 MOVE                             R1 R0
       11 GETUPVAL                         R2 7
       12 GETUPVAL                         R3 8
       13 CALL                             R1 2 0
       14 MOVE                             R1 R0
       15 GETUPVAL                         R2 9
       16 GETUPVAL                         R3 10
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 GETUPVAL                         R2 0
        7 JUMPIFNOT                        R2 ; [+28]
        8 GETUPVAL                         R3 0
        9 ADD                              R2 R3 R0
       10 SETUPVAL                         R2 0
       11 GETUPVAL                         R2 0
       12 LOADK                            R3 K4 [0.2]
       13 JUMPIFNOTLT                      R3 R2 ; [+13]
       15 GETUPVAL                         R2 1
       16 SETTABLEKS                       R2 R1 K5 ["CFrame"]
       18 GETIMPORT                        R2 K7 [CFrame.new]
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K8 ["Focus"]
       24 LOADNIL                          R2
       25 SETUPVAL                         R2 0
       26 JUMP                             ; [+9]
       27 GETUPVAL                         R2 3
       28 GETUPVAL                         R4 1
       29 GETUPVAL                         R6 0
       30 DIVK                             R5 R6 K4 [0.2]
       31 NAMECALL                         R2 R2 K9 ["Lerp"]
       33 CALL                             R2 3 1
       34 SETTABLEKS                       R2 R1 K5 ["CFrame"]
       36 GETTABLEKS                       R2 R1 K5 ["CFrame"]
       38 GETUPVAL                         R3 4
       39 GETIMPORT                        R4 K11 [CFrame.fromMatrix]
       41 GETTABLEKS                       R7 R2 K13 ["LookVector"]
       43 MINUS                            R6 R7
       44 MULK                             R5 R6 K12 [1.9]
       45 GETTABLEKS                       R6 R2 K14 ["RightVector"]
       47 GETTABLEKS                       R7 R2 K15 ["UpVector"]
       49 GETTABLEKS                       R9 R2 K13 ["LookVector"]
       51 MINUS                            R8 R9
       52 CALL                             R4 4 1
       53 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       55 GETUPVAL                         R3 4
       56 GETTABLEKS                       R3 R3 K5 ["CFrame"]
       58 GETUPVAL                         R4 5
       59 JUMPIFEQ                         R3 R4 ; [+44]
       61 GETUPVAL                         R3 4
       62 GETTABLEKS                       R3 R3 K5 ["CFrame"]
       64 SETUPVAL                         R3 5
       65 GETUPVAL                         R3 6
       66 GETUPVAL                         R5 5
       67 GETUPVAL                         R6 5
       68 GETTABLEKS                       R6 R6 K16 ["Position"]
       70 SUB                              R4 R5 R6
       71 GETIMPORT                        R6 K7 [CFrame.new]
       73 LOADN                            R7 -1
       74 LOADN                            R8 -1
       75 LOADN                            R9 -1
       76 CALL                             R6 3 -1
       77 NAMECALL                         R4 R4 K17 ["ToWorldSpace"]
       79 CALL                             R4 -1 1
       80 GETTABLEKS                       R4 R4 K16 ["Position"]
       82 SETTABLEKS                       R4 R3 K18 ["LightDirection"]
       84 NEWCLOSURE                       R3 P0
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U8
       90 MOVE                             R4 R3
       91 GETUPVAL                         R5 9
       92 GETUPVAL                         R6 10
       93 CALL                             R4 2 0
       94 MOVE                             R4 R3
       95 GETUPVAL                         R5 11
       96 GETUPVAL                         R6 12
       97 CALL                             R4 2 0
       98 MOVE                             R4 R3
       99 GETUPVAL                         R5 13
      100 GETUPVAL                         R6 14
      101 CALL                             R4 2 0
      102 GETUPVAL                         R3 15
      103 CALL                             R3 0 0
      104 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enabled"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [plugin]
        8 LOADK                            R3 K3 ["ViewSelector_Active"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K4 ["SetSetting"]
       12 CALL                             R1 3 0
       13 JUMPIFNOT                        R0 ; [+23]
       14 GETIMPORT                        R1 K6 [pcall]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 2
       21 LOADN                            R2 0
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 3
       24 LOADK                            R3 K7 ["ViewSelectorAfterCamera"]
       25 GETIMPORT                        R5 K12 [Enum.RenderPriority.Camera]
       27 GETTABLEKS                       R5 R5 K13 ["Value"]
       29 ADDK                             R4 R5 K8 [1]
       30 GETUPVAL                         R5 2
       31 NAMECALL                         R1 R1 K14 ["BindToRenderStep"]
       33 CALL                             R1 4 0
       34 GETUPVAL                         R1 4
       35 CALL                             R1 0 0
       36 JUMP                             ; [+5]
       37 GETUPVAL                         R1 3
       38 LOADK                            R3 K7 ["ViewSelectorAfterCamera"]
       39 NAMECALL                         R1 R1 K15 ["UnbindFromRenderStep"]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R1 5
       43 MOVE                             R3 R0
       44 NAMECALL                         R1 R1 K16 ["SetActive"]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R1 0
       48 SETTABLEKS                       R0 R1 K0 ["Enabled"]
       50 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RightVector"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["UpVector"]
        6 MINUS                            R4 R0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["y"]
       10 MUL                              R3 R4 R5
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["x"]
       14 MUL                              R4 R1 R5
       15 ADD                              R2 R3 R4
       16 GETIMPORT                        R3 K6 [CFrame.fromAxisAngle]
       18 MOVE                             R4 R2
       19 LOADK                            R5 K7 [1.5707963267949]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K8 ["LookVector"]
       24 MUL                              R4 R3 R5
       25 MINUS                            R6 R4
       26 MULK                             R5 R6 K9 [2]
       27 GETUPVAL                         R6 2
       28 MOVE                             R7 R5
       29 MOVE                             R8 R4
       30 CALL                             R6 2 1
       31 JUMPIFNOT                        R6 ; [+34]
       32 GETUPVAL                         R7 3
       33 MOVE                             R8 R6
       34 CALL                             R7 1 1
       35 GETUPVAL                         R9 4
       36 GETTABLE                         R8 R9 R7
       37 GETIMPORT                        R9 K11 [game]
       39 GETTABLEKS                       R9 R9 K12 ["Workspace"]
       41 GETTABLEKS                       R9 R9 K13 ["CurrentCamera"]
       43 GETTABLEKS                       R10 R9 K14 ["Focus"]
       45 GETTABLEKS                       R10 R10 K15 ["Position"]
       47 GETTABLEKS                       R12 R9 K4 ["CFrame"]
       49 GETTABLEKS                       R12 R12 K15 ["Position"]
       51 SUB                              R11 R10 R12
       52 GETTABLEKS                       R11 R11 K16 ["Magnitude"]
       54 GETTABLEKS                       R14 R8 K8 ["LookVector"]
       56 MUL                              R13 R14 R11
       57 SUB                              R12 R10 R13
       58 SETUPVAL                         R10 5
       59 ADD                              R13 R8 R12
       60 SETUPVAL                         R13 6
       61 GETTABLEKS                       R13 R9 K4 ["CFrame"]
       63 SETUPVAL                         R13 7
       64 LOADN                            R13 0
       65 SETUPVAL                         R13 8
       66 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Color3.fromRGB]
        3 LOADN                            R2 79
        4 LOADN                            R3 178
        5 LOADN                            R4 229
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K3 ["ImageColor3"]
        9 GETUPVAL                         R0 0
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K4 ["ImageTransparency"]
       13 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Color3.fromRGB]
        3 LOADN                            R2 247
        4 LOADN                            R3 249
        5 LOADN                            R4 255
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K3 ["ImageColor3"]
        9 GETUPVAL                         R0 0
       10 LOADK                            R1 K4 [0.6]
       11 SETTABLEKS                       R1 R0 K5 ["ImageTransparency"]
       13 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["MouseButton1Click"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 NAMECALL                         R2 R2 K1 ["connect"]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R0 K2 ["MouseButton1Up"]
       17 GETUPVAL                         R4 8
       18 NAMECALL                         R2 R2 K1 ["connect"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K3 ["MouseEnter"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R2 R2 K4 ["Connect"]
       27 CALL                             R2 2 0
       28 GETTABLEKS                       R2 R0 K5 ["MouseLeave"]
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          VAL R0
       32 NAMECALL                         R2 R2 K4 ["Connect"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_35:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["CameraNavigationModel"]
        7 GETIMPORT                        R1 K6 [Enum.CameraNavigationModel.Roblox]
        9 JUMPIFNOTEQ                      R0 R1 ; [+6]
       11 GETUPVAL                         R1 0
       12 LOADK                            R2 K7 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
       13 SETTABLEKS                       R2 R1 K8 ["Image"]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 LOADK                            R2 K9 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
       18 SETTABLEKS                       R2 R1 K8 ["Image"]
       20 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["CameraNavigationModel"]
        7 GETIMPORT                        R1 K6 [Enum.CameraNavigationModel.Roblox]
        9 JUMPIFNOTEQ                      R0 R1 ; [+6]
       11 GETUPVAL                         R1 0
       12 LOADK                            R2 K7 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
       13 SETTABLEKS                       R2 R1 K8 ["Image"]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 LOADK                            R2 K9 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
       18 SETTABLEKS                       R2 R1 K8 ["Image"]
       20 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Play"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Play"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Play"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Cancel"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Cancel"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Cancel"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETIMPORT                        R0 K3 [task.cancel]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 4
       19 LOADK                            R1 K4 [0.1]
       20 SETTABLEKS                       R1 R0 K5 ["TextTransparency"]
       22 GETUPVAL                         R0 5
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       26 GETUPVAL                         R0 4
       27 LOADK                            R1 K7 [0.6]
       28 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       30 GETUPVAL                         R0 6
       31 GETTABLEKS                       R0 R0 K8 ["mouseOverSlider"]
       33 JUMPIF                           R0 ; [+4]
       34 GETUPVAL                         R0 6
       35 GETTABLEKS                       R0 R0 K9 ["isDraggingSlider"]
       37 JUMPIFNOT                        R0 ; [+5]
       38 GETUPVAL                         R0 7
       39 LOADK                            R1 K4 [0.1]
       40 SETTABLEKS                       R1 R0 K10 ["Transparency"]
       42 JUMP                             ; [+4]
       43 GETUPVAL                         R0 7
       44 LOADN                            R1 1
       45 SETTABLEKS                       R1 R0 K10 ["Transparency"]
       47 GETUPVAL                         R0 8
       48 LOADN                            R1 0
       49 SETTABLEKS                       R1 R0 K11 ["ImageTransparency"]
       51 GETUPVAL                         R0 8
       52 LOADN                            R1 0
       53 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       55 GETUPVAL                         R0 6
       56 GETTABLEKS                       R0 R0 K12 ["mouseOverViewSelector"]
       58 JUMPIF                           R0 ; [+21]
       59 GETUPVAL                         R0 6
       60 GETTABLEKS                       R0 R0 K8 ["mouseOverSlider"]
       62 JUMPIF                           R0 ; [+17]
       63 GETUPVAL                         R0 6
       64 GETTABLEKS                       R0 R0 K9 ["isDraggingSlider"]
       66 JUMPIF                           R0 ; [+13]
       67 GETUPVAL                         R0 6
       68 GETTABLEKS                       R0 R0 K13 ["mouseOverNavModel"]
       70 JUMPIF                           R0 ; [+9]
       71 GETIMPORT                        R0 K15 [task.delay]
       73 LOADK                            R1 K16 [3.5]
       74 DUPCLOSURE                       R2 K17 [PROTO_37]
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          UPVAL U2
       78 CALL                             R0 2 1
       79 SETUPVAL                         R0 3
       80 RETURN                           R0 0

PROTO_39:
        0 SUBK                             R3 R0 K1 [0.1]
        1 DIVK                             R2 R3 K0 [19.9]
        2 LOADN                            R3 0
        3 LOADN                            R4 1
        4 FASTCALL                         MATH_CLAMP ; [+2]
        5 GETIMPORT                        R1 K4 [math.clamp]
        7 CALL                             R1 3 1
        8 LOADN                            R4 10
        9 LOADN                            R5 96
       10 FASTCALL2K                       MATH_POW R1 K5 ; [+5]
       12 MOVE                             R7 R1
       13 LOADK                            R8 K5 [0.454545454545455]
       14 GETIMPORT                        R6 K7 [math.pow]
       16 CALL                             R6 2 1
       17 FASTCALL                         MATH_LERP ; [+2]
       18 GETIMPORT                        R3 K9 [math.lerp]
       20 CALL                             R3 3 1
       21 LOADN                            R4 10
       22 LOADN                            R5 96
       23 FASTCALL                         MATH_CLAMP ; [+2]
       24 GETIMPORT                        R2 K4 [math.clamp]
       26 CALL                             R2 3 1
       27 RETURN                           R2 1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R2 K2 ["X"]
        5 ADDK                             R1 R2 K0 [10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["AbsolutePosition"]
        9 GETTABLEKS                       R3 R3 K2 ["X"]
       11 ADDK                             R2 R3 K3 [96]
       12 SUB                              R5 R0 R1
       13 SUB                              R6 R2 R1
       14 DIV                              R4 R5 R6
       15 LOADN                            R5 0
       16 LOADN                            R6 1
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R3 K6 [math.clamp]
       20 CALL                             R3 3 1
       21 LOADK                            R6 K7 [0.1]
       22 LOADN                            R7 20
       23 FASTCALL2K                       MATH_POW R3 K8 ; [+5]
       25 MOVE                             R9 R3
       26 LOADK                            R10 K8 [2.2]
       27 GETIMPORT                        R8 K10 [math.pow]
       29 CALL                             R8 2 1
       30 FASTCALL                         MATH_LERP ; [+2]
       31 GETIMPORT                        R5 K12 [math.lerp]
       33 CALL                             R5 3 1
       34 LOADK                            R6 K7 [0.1]
       35 LOADN                            R7 20
       36 FASTCALL                         MATH_CLAMP ; [+2]
       37 GETIMPORT                        R4 K6 [math.clamp]
       39 CALL                             R4 3 1
       40 RETURN                           R4 1

PROTO_41:
        0 GETIMPORT                        R1 K2 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K3 ["Studio"]
        5 GETTABLEKS                       R0 R1 K0 ["Camera Speed"]
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K4 [0.5]
        9 JUMPIFNOTLT                      R0 R3 ; [+7]
       11 GETIMPORT                        R2 K7 [string.format]
       13 LOADK                            R3 K8 ["%.2f"]
       14 MOVE                             R4 R0
       15 CALL                             R2 2 1
       16 JUMP                             ; [+5]
       17 GETIMPORT                        R2 K7 [string.format]
       19 LOADK                            R3 K9 ["%.1f"]
       20 MOVE                             R4 R0
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K10 ["Text"]
       24 GETUPVAL                         R1 1
       25 GETIMPORT                        R2 K13 [UDim2.new]
       27 LOADN                            R3 0
       28 SUBK                             R7 R0 K15 [0.1]
       29 DIVK                             R6 R7 K14 [19.9]
       30 LOADN                            R7 0
       31 LOADN                            R8 1
       32 FASTCALL                         MATH_CLAMP ; [+2]
       33 GETIMPORT                        R5 K18 [math.clamp]
       35 CALL                             R5 3 1
       36 LOADN                            R8 10
       37 LOADN                            R9 96
       38 FASTCALL2K                       MATH_POW R5 K19 ; [+5]
       40 MOVE                             R11 R5
       41 LOADK                            R12 K19 [0.454545454545455]
       42 GETIMPORT                        R10 K21 [math.pow]
       44 CALL                             R10 2 1
       45 FASTCALL                         MATH_LERP ; [+2]
       46 GETIMPORT                        R7 K23 [math.lerp]
       48 CALL                             R7 3 1
       49 LOADN                            R8 10
       50 LOADN                            R9 96
       51 FASTCALL                         MATH_CLAMP ; [+2]
       52 GETIMPORT                        R6 K18 [math.clamp]
       54 CALL                             R6 3 1
       55 MOVE                             R4 R6
       56 LOADN                            R5 1
       57 LOADN                            R6 0
       58 CALL                             R2 4 1
       59 SETTABLEKS                       R2 R1 K24 ["Size"]
       61 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverSlider"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["Visible"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverSlider"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isDraggingSlider"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETIMPORT                        R0 K2 [settings]
        8 CALL                             R0 0 1
        9 GETTABLEKS                       R0 R0 K3 ["Studio"]
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R2 R2 K4 ["GetMouseLocation"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R2 R2 K5 ["X"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K7 ["AbsolutePosition"]
       20 GETTABLEKS                       R4 R4 K5 ["X"]
       22 ADDK                             R3 R4 K6 [10]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K7 ["AbsolutePosition"]
       26 GETTABLEKS                       R5 R5 K5 ["X"]
       28 ADDK                             R4 R5 K8 [96]
       29 SUB                              R7 R2 R3
       30 SUB                              R8 R4 R3
       31 DIV                              R6 R7 R8
       32 LOADN                            R7 0
       33 LOADN                            R8 1
       34 FASTCALL                         MATH_CLAMP ; [+2]
       35 GETIMPORT                        R5 K11 [math.clamp]
       37 CALL                             R5 3 1
       38 LOADK                            R8 K12 [0.1]
       39 LOADN                            R9 20
       40 FASTCALL2K                       MATH_POW R5 K13 ; [+5]
       42 MOVE                             R11 R5
       43 LOADK                            R12 K13 [2.2]
       44 GETIMPORT                        R10 K15 [math.pow]
       46 CALL                             R10 2 1
       47 FASTCALL                         MATH_LERP ; [+2]
       48 GETIMPORT                        R7 K17 [math.lerp]
       50 CALL                             R7 3 1
       51 LOADK                            R8 K12 [0.1]
       52 LOADN                            R9 20
       53 FASTCALL                         MATH_CLAMP ; [+2]
       54 GETIMPORT                        R6 K11 [math.clamp]
       56 CALL                             R6 3 1
       57 MOVE                             R1 R6
       58 SETTABLEKS                       R1 R0 K18 ["Camera Speed"]
       60 GETUPVAL                         R0 4
       61 GETTABLEKS                       R0 R0 K19 ["RenderStepped"]
       63 NAMECALL                         R0 R0 K20 ["Wait"]
       65 CALL                             R0 1 0
       66 GETUPVAL                         R0 2
       67 GETIMPORT                        R2 K24 [Enum.UserInputType.MouseButton1]
       69 NAMECALL                         R0 R0 K25 ["IsMouseButtonPressed"]
       71 CALL                             R0 2 1
       72 JUMPIFNOT                        R0 ; [+1]
       73 JUMPBACK                         ; [-68]
       74 GETUPVAL                         R0 0
       75 LOADB                            R1 0
       76 SETTABLEKS                       R1 R0 K0 ["isDraggingSlider"]
       78 GETUPVAL                         R0 1
       79 CALL                             R0 0 0
       80 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFNOTEQ                      R1 R2 ; [+76]
        6 GETIMPORT                        R3 K6 [settings]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R3 R3 K7 ["Studio"]
       11 GETTABLEKS                       R2 R3 K4 ["Camera Speed"]
       13 SUBK                             R5 R2 K9 [0.1]
       14 DIVK                             R4 R5 K8 [19.9]
       15 LOADN                            R5 0
       16 LOADN                            R6 1
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R3 K12 [math.clamp]
       20 CALL                             R3 3 1
       21 LOADN                            R6 10
       22 LOADN                            R7 96
       23 FASTCALL2K                       MATH_POW R3 K13 ; [+5]
       25 MOVE                             R9 R3
       26 LOADK                            R10 K13 [0.454545454545455]
       27 GETIMPORT                        R8 K15 [math.pow]
       29 CALL                             R8 2 1
       30 FASTCALL                         MATH_LERP ; [+2]
       31 GETIMPORT                        R5 K17 [math.lerp]
       33 CALL                             R5 3 1
       34 LOADN                            R6 10
       35 LOADN                            R7 96
       36 FASTCALL                         MATH_CLAMP ; [+2]
       37 GETIMPORT                        R4 K12 [math.clamp]
       39 CALL                             R4 3 1
       40 MOVE                             R1 R4
       41 GETTABLEKS                       R4 R0 K19 ["Position"]
       43 GETTABLEKS                       R4 R4 K20 ["Z"]
       45 MULK                             R3 R4 K18 [3]
       46 ADD                              R2 R1 R3
       47 SUBK                             R5 R2 K22 [10]
       48 DIVK                             R4 R5 K21 [86]
       49 LOADN                            R5 0
       50 LOADN                            R6 1
       51 FASTCALL                         MATH_CLAMP ; [+2]
       52 GETIMPORT                        R3 K12 [math.clamp]
       54 CALL                             R3 3 1
       55 GETIMPORT                        R4 K6 [settings]
       57 CALL                             R4 0 1
       58 GETTABLEKS                       R4 R4 K7 ["Studio"]
       60 LOADK                            R7 K9 [0.1]
       61 LOADN                            R8 20
       62 FASTCALL2K                       MATH_POW R3 K23 ; [+5]
       64 MOVE                             R10 R3
       65 LOADK                            R11 K23 [2.2]
       66 GETIMPORT                        R9 K15 [math.pow]
       68 CALL                             R9 2 1
       69 FASTCALL                         MATH_LERP ; [+2]
       70 GETIMPORT                        R6 K17 [math.lerp]
       72 CALL                             R6 3 1
       73 LOADK                            R7 K9 [0.1]
       74 LOADN                            R8 20
       75 FASTCALL                         MATH_CLAMP ; [+2]
       76 GETIMPORT                        R5 K12 [math.clamp]
       78 CALL                             R5 3 1
       79 SETTABLEKS                       R5 R4 K4 ["Camera Speed"]
       81 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverNavModel"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["Visible"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverNavModel"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_52:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["CameraNavigationModel"]
        7 GETIMPORT                        R1 K6 [Enum.CameraNavigationModel.Roblox]
        9 JUMPIFNOTEQ                      R0 R1 ; [+11]
       11 GETIMPORT                        R1 K1 [settings]
       13 CALL                             R1 0 1
       14 GETTABLEKS                       R1 R1 K2 ["Studio"]
       16 GETIMPORT                        R2 K8 [Enum.CameraNavigationModel.IndustryCompatible]
       18 SETTABLEKS                       R2 R1 K3 ["CameraNavigationModel"]
       20 RETURN                           R0 0
       21 GETIMPORT                        R1 K1 [settings]
       23 CALL                             R1 0 1
       24 GETTABLEKS                       R1 R1 K2 ["Studio"]
       26 GETIMPORT                        R2 K6 [Enum.CameraNavigationModel.Roblox]
       28 SETTABLEKS                       R2 R1 K3 ["CameraNavigationModel"]
       30 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["NewCameraControls_StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K1 [game]
       11 LOADK                            R2 K4 ["RunService"]
       12 NAMECALL                         R0 R0 K5 ["GetService"]
       14 CALL                             R0 2 1
       15 GETIMPORT                        R1 K1 [game]
       17 LOADK                            R3 K6 ["GuiService"]
       18 NAMECALL                         R1 R1 K5 ["GetService"]
       20 CALL                             R1 2 1
       21 GETIMPORT                        R2 K1 [game]
       23 LOADK                            R4 K7 ["CoreGui"]
       24 NAMECALL                         R2 R2 K5 ["GetService"]
       26 CALL                             R2 2 1
       27 GETIMPORT                        R3 K1 [game]
       29 LOADK                            R5 K8 ["ContentProvider"]
       30 NAMECALL                         R3 R3 K5 ["GetService"]
       32 CALL                             R3 2 1
       33 GETIMPORT                        R4 K1 [game]
       35 LOADK                            R6 K9 ["UserInputService"]
       36 NAMECALL                         R4 R4 K5 ["GetService"]
       38 CALL                             R4 2 1
       39 GETIMPORT                        R5 K1 [game]
       41 LOADK                            R7 K10 ["InsertService"]
       42 NAMECALL                         R5 R5 K5 ["GetService"]
       44 CALL                             R5 2 1
       45 GETIMPORT                        R6 K1 [game]
       47 LOADK                            R8 K11 ["StudioService"]
       48 NAMECALL                         R6 R6 K5 ["GetService"]
       50 CALL                             R6 2 1
       51 GETIMPORT                        R7 K1 [game]
       53 LOADK                            R9 K12 ["TweenService"]
       54 NAMECALL                         R7 R7 K5 ["GetService"]
       56 CALL                             R7 2 1
       57 GETIMPORT                        R8 K14 [plugin]
       59 LOADK                            R10 K15 ["ViewSelector"]
       60 NAMECALL                         R8 R8 K16 ["CreateToolbar"]
       62 CALL                             R8 2 1
       63 LOADK                            R11 K15 ["ViewSelector"]
       64 LOADK                            R12 K17 ["Show View Selector"]
       65 LOADK                            R13 K18 [""]
       66 NAMECALL                         R9 R8 K19 ["CreateButton"]
       68 CALL                             R9 4 1
       69 LOADB                            R10 0
       70 SETTABLEKS                       R10 R9 K20 ["ClickableWhenViewportHidden"]
       72 LOADNIL                          R10
       73 LOADNIL                          R11
       74 LOADNIL                          R12
       75 LOADNIL                          R13
       76 LOADNIL                          R14
       77 LOADNIL                          R15
       78 LOADNIL                          R16
       79 LOADNIL                          R17
       80 LOADNIL                          R18
       81 LOADNIL                          R19
       82 LOADNIL                          R20
       83 LOADNIL                          R21
       84 LOADNIL                          R22
       85 LOADNIL                          R23
       86 LOADNIL                          R24
       87 LOADNIL                          R25
       88 LOADNIL                          R26
       89 LOADNIL                          R27
       90 LOADNIL                          R28
       91 LOADNIL                          R29
       92 LOADNIL                          R30
       93 LOADNIL                          R31
       94 LOADNIL                          R32
       95 LOADNIL                          R33
       96 NEWTABLE                         R34 0 0
       98 NEWTABLE                         R35 2 0
      100 NEWTABLE                         R36 0 0
      102 SETTABLEKS                       R36 R35 K21 ["Normal"]
      104 NEWTABLE                         R36 0 0
      106 SETTABLEKS                       R36 R35 K22 ["Hover"]
      108 DUPCLOSURE                       R36 K23 [PROTO_0]
      109 LOADNIL                          R37
      110 LOADNIL                          R38
      111 LOADNIL                          R39
      112 GETIMPORT                        R40 K1 [game]
      114 LOADK                            R42 K24 ["NextGenDraggersEnabledFeature"]
      115 NAMECALL                         R40 R40 K3 ["GetEngineFeature"]
      117 CALL                             R40 2 1
      118 JUMPIFNOT                        R40 ; [+42]
      119 GETIMPORT                        R40 K27 [Color3.fromHex]
      121 GETIMPORT                        R41 K30 [string.format]
      123 LOADK                            R42 K31 ["%06X"]
      124 GETIMPORT                        R43 K1 [game]
      126 LOADK                            R45 K32 ["rbxRed"]
      127 NAMECALL                         R43 R43 K33 ["GetFastInt"]
      129 CALL                             R43 2 -1
      130 CALL                             R41 -1 -1
      131 CALL                             R40 -1 1
      132 MOVE                             R37 R40
      133 GETIMPORT                        R40 K27 [Color3.fromHex]
      135 GETIMPORT                        R41 K30 [string.format]
      137 LOADK                            R42 K31 ["%06X"]
      138 GETIMPORT                        R43 K1 [game]
      140 LOADK                            R45 K34 ["rbxGreen"]
      141 NAMECALL                         R43 R43 K33 ["GetFastInt"]
      143 CALL                             R43 2 -1
      144 CALL                             R41 -1 -1
      145 CALL                             R40 -1 1
      146 MOVE                             R38 R40
      147 GETIMPORT                        R40 K27 [Color3.fromHex]
      149 GETIMPORT                        R41 K30 [string.format]
      151 LOADK                            R42 K31 ["%06X"]
      152 GETIMPORT                        R43 K1 [game]
      154 LOADK                            R45 K35 ["rbxBlue"]
      155 NAMECALL                         R43 R43 K33 ["GetFastInt"]
      157 CALL                             R43 2 -1
      158 CALL                             R41 -1 -1
      159 CALL                             R40 -1 1
      160 MOVE                             R39 R40
      161 NEWCLOSURE                       R40 P1
      162 CAPTURE                          REF R16
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R5
      166 CAPTURE                          REF R17
      167 CAPTURE                          REF R18
      168 CAPTURE                          REF R19
      169 CAPTURE                          REF R29
      170 CAPTURE                          REF R20
      171 CAPTURE                          REF R21
      172 CAPTURE                          REF R22
      173 CAPTURE                          REF R23
      174 CAPTURE                          REF R27
      175 CAPTURE                          REF R28
      176 CAPTURE                          REF R37
      177 CAPTURE                          REF R38
      178 CAPTURE                          REF R39
      179 CAPTURE                          REF R15
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R35
      182 CAPTURE                          VAL R34
      183 CAPTURE                          REF R24
      184 CAPTURE                          REF R25
      185 CAPTURE                          REF R26
      186 CAPTURE                          REF R10
      187 CAPTURE                          VAL R9
      188 DUPCLOSURE                       R41 K36 [PROTO_3]
      189 DUPCLOSURE                       R42 K37 [PROTO_5]
      190 DUPCLOSURE                       R43 K38 [PROTO_6]
      191 CAPTURE                          VAL R35
      192 DUPCLOSURE                       R44 K39 [PROTO_7]
      193 CAPTURE                          VAL R35
      194 DUPCLOSURE                       R45 K40 [PROTO_9]
      195 NEWCLOSURE                       R46 P7
      196 CAPTURE                          VAL R1
      197 CAPTURE                          REF R18
      198 NEWCLOSURE                       R47 P8
      199 CAPTURE                          VAL R1
      200 CAPTURE                          REF R18
      201 CAPTURE                          REF R15
      202 CAPTURE                          REF R19
      203 CAPTURE                          VAL R42
      204 CAPTURE                          VAL R45
      205 CAPTURE                          REF R20
      206 CAPTURE                          REF R14
      207 CAPTURE                          VAL R35
      208 NEWCLOSURE                       R48 P9
      209 CAPTURE                          REF R28
      210 CAPTURE                          REF R11
      211 CAPTURE                          REF R27
      212 NEWCLOSURE                       R49 P10
      213 CAPTURE                          REF R28
      214 CAPTURE                          VAL R48
      215 NEWCLOSURE                       R50 P11
      216 CAPTURE                          REF R14
      217 CAPTURE                          VAL R35
      218 CAPTURE                          REF R27
      219 CAPTURE                          REF R28
      220 NEWCLOSURE                       R51 P12
      221 CAPTURE                          REF R12
      222 CAPTURE                          REF R13
      223 CAPTURE                          REF R17
      224 NEWCLOSURE                       R52 P13
      225 CAPTURE                          REF R19
      226 CAPTURE                          REF R17
      227 NEWCLOSURE                       R53 P14
      228 CAPTURE                          REF R19
      229 CAPTURE                          REF R17
      230 NEWCLOSURE                       R54 P15
      231 CAPTURE                          REF R12
      232 CAPTURE                          VAL R53
      233 NEWCLOSURE                       R55 P16
      234 CAPTURE                          REF R12
      235 CAPTURE                          REF R13
      236 CAPTURE                          REF R17
      237 NEWCLOSURE                       R56 P17
      238 CAPTURE                          REF R33
      239 CAPTURE                          REF R32
      240 CAPTURE                          REF R31
      241 CAPTURE                          REF R30
      242 NEWCLOSURE                       R57 P18
      243 CAPTURE                          REF R12
      244 CAPTURE                          REF R14
      245 CAPTURE                          VAL R34
      246 CAPTURE                          REF R33
      247 CAPTURE                          REF R32
      248 CAPTURE                          REF R31
      249 CAPTURE                          REF R30
      250 CAPTURE                          VAL R53
      251 NEWCLOSURE                       R58 P19
      252 CAPTURE                          REF R20
      253 CAPTURE                          REF R11
      254 CAPTURE                          REF R18
      255 CAPTURE                          REF R15
      256 CAPTURE                          REF R19
      257 CAPTURE                          REF R21
      258 CAPTURE                          REF R24
      259 CAPTURE                          REF R22
      260 CAPTURE                          REF R25
      261 CAPTURE                          REF R23
      262 CAPTURE                          REF R26
      263 NEWCLOSURE                       R59 P20
      264 CAPTURE                          REF R30
      265 CAPTURE                          REF R32
      266 CAPTURE                          REF R33
      267 CAPTURE                          REF R31
      268 CAPTURE                          REF R15
      269 CAPTURE                          REF R11
      270 CAPTURE                          REF R18
      271 CAPTURE                          REF R20
      272 CAPTURE                          REF R19
      273 CAPTURE                          REF R21
      274 CAPTURE                          REF R24
      275 CAPTURE                          REF R22
      276 CAPTURE                          REF R25
      277 CAPTURE                          REF R23
      278 CAPTURE                          REF R26
      279 CAPTURE                          VAL R48
      280 NEWCLOSURE                       R60 P21
      281 CAPTURE                          REF R16
      282 CAPTURE                          VAL R3
      283 CAPTURE                          VAL R59
      284 CAPTURE                          VAL R0
      285 CAPTURE                          VAL R52
      286 CAPTURE                          VAL R9
      287 NEWCLOSURE                       R61 P22
      288 CAPTURE                          REF R10
      289 CAPTURE                          VAL R60
      290 NEWCLOSURE                       R62 P23
      291 CAPTURE                          REF R11
      292 CAPTURE                          VAL R42
      293 CAPTURE                          VAL R45
      294 CAPTURE                          VAL R34
      295 CAPTURE                          REF R33
      296 CAPTURE                          REF R32
      297 CAPTURE                          REF R31
      298 CAPTURE                          REF R30
      299 CAPTURE                          VAL R57
      300 NAMECALL                         R63 R0 K41 ["IsEdit"]
      302 CALL                             R63 1 1
      303 JUMPIF                           R63 ; [+9]
      304 NAMECALL                         R63 R0 K42 ["IsServer"]
      306 CALL                             R63 1 1
      307 JUMPIF                           R63 ; [+5]
      308 LOADB                            R63 0
      309 SETTABLEKS                       R63 R9 K43 ["Enabled"]
      311 CLOSEUPVALS                      R10
      312 RETURN                           R0 0
      313 MOVE                             R63 R40
      314 CALL                             R63 0 0
      315 MOVE                             R63 R60
      316 MOVE                             R64 R10
      317 CALL                             R63 1 0
      318 GETTABLEKS                       R63 R9 K44 ["Click"]
      320 MOVE                             R65 R61
      321 NAMECALL                         R63 R63 K45 ["connect"]
      323 CALL                             R63 2 0
      324 GETTABLEKS                       R63 R29 K46 ["MouseMoved"]
      326 MOVE                             R65 R47
      327 NAMECALL                         R63 R63 K45 ["connect"]
      329 CALL                             R63 2 0
      330 GETTABLEKS                       R63 R29 K47 ["MouseEnter"]
      332 MOVE                             R65 R49
      333 NAMECALL                         R63 R63 K45 ["connect"]
      335 CALL                             R63 2 0
      336 GETTABLEKS                       R63 R29 K48 ["MouseLeave"]
      338 MOVE                             R65 R50
      339 NAMECALL                         R63 R63 K45 ["connect"]
      341 CALL                             R63 2 0
      342 GETTABLEKS                       R63 R29 K49 ["MouseButton1Down"]
      344 MOVE                             R65 R55
      345 NAMECALL                         R63 R63 K45 ["connect"]
      347 CALL                             R63 2 0
      348 GETTABLEKS                       R63 R29 K50 ["MouseButton1Up"]
      350 MOVE                             R65 R57
      351 NAMECALL                         R63 R63 K45 ["connect"]
      353 CALL                             R63 2 0
      354 GETTABLEKS                       R63 R4 K51 ["InputChanged"]
      356 MOVE                             R65 R51
      357 NAMECALL                         R63 R63 K45 ["connect"]
      359 CALL                             R63 2 0
      360 GETTABLEKS                       R63 R4 K52 ["InputEnded"]
      362 MOVE                             R65 R54
      363 NAMECALL                         R63 R63 K45 ["connect"]
      365 CALL                             R63 2 0
      366 MOVE                             R63 R62
      367 LOADK                            R66 K53 ["RightArrow"]
      368 NAMECALL                         R64 R27 K54 ["WaitForChild"]
      370 CALL                             R64 2 1
      371 GETIMPORT                        R65 K57 [Vector2.new]
      373 LOADN                            R66 1
      374 LOADN                            R67 0
      375 CALL                             R65 2 -1
      376 CALL                             R63 -1 0
      377 MOVE                             R63 R62
      378 LOADK                            R66 K58 ["LeftArrow"]
      379 NAMECALL                         R64 R27 K54 ["WaitForChild"]
      381 CALL                             R64 2 1
      382 GETIMPORT                        R65 K57 [Vector2.new]
      384 LOADN                            R66 -1
      385 LOADN                            R67 0
      386 CALL                             R65 2 -1
      387 CALL                             R63 -1 0
      388 MOVE                             R63 R62
      389 LOADK                            R66 K59 ["UpArrow"]
      390 NAMECALL                         R64 R27 K54 ["WaitForChild"]
      392 CALL                             R64 2 1
      393 GETIMPORT                        R65 K57 [Vector2.new]
      395 LOADN                            R66 0
      396 LOADN                            R67 1
      397 CALL                             R65 2 -1
      398 CALL                             R63 -1 0
      399 MOVE                             R63 R62
      400 LOADK                            R66 K60 ["DownArrow"]
      401 NAMECALL                         R64 R27 K54 ["WaitForChild"]
      403 CALL                             R64 2 1
      404 GETIMPORT                        R65 K57 [Vector2.new]
      406 LOADN                            R66 0
      407 LOADN                            R67 -1
      408 CALL                             R65 2 -1
      409 CALL                             R63 -1 0
      410 GETIMPORT                        R63 K1 [game]
      412 LOADK                            R65 K61 ["NewCameraControls"]
      413 NAMECALL                         R63 R63 K3 ["GetEngineFeature"]
      415 CALL                             R63 2 1
      416 JUMPIFNOT                        R63 ; [+345]
      417 GETIMPORT                        R63 K63 [TweenInfo.new]
      419 LOADK                            R64 K64 [0.2]
      420 GETIMPORT                        R65 K68 [Enum.EasingStyle.Linear]
      422 CALL                             R63 2 1
      423 LOADK                            R66 K69 ["CamSpeed"]
      424 NAMECALL                         R64 R17 K54 ["WaitForChild"]
      426 CALL                             R64 2 1
      427 LOADK                            R67 K70 ["UIStroke"]
      428 NAMECALL                         R65 R64 K54 ["WaitForChild"]
      430 CALL                             R65 2 1
      431 LOADK                            R68 K71 ["Slider"]
      432 NAMECALL                         R66 R64 K54 ["WaitForChild"]
      434 CALL                             R66 2 1
      435 MOVE                             R69 R64
      436 MOVE                             R70 R63
      437 DUPTABLE                         R71 K75 [{["TextTransparency"] = 1, ["BackgroundTransparency"] = 1}]
      438 NAMECALL                         R67 R7 K76 ["Create"]
      440 CALL                             R67 4 1
      441 MOVE                             R70 R66
      442 MOVE                             R71 R63
      443 DUPTABLE                         R72 K77 [{["BackgroundTransparency"] = 1}]
      444 NAMECALL                         R68 R7 K76 ["Create"]
      446 CALL                             R68 4 1
      447 LOADNIL                          R69
      448 GETIMPORT                        R70 K79 [UDim2.new]
      450 LOADN                            R71 0
      451 LOADN                            R72 96
      452 LOADN                            R73 0
      453 LOADN                            R74 22
      454 CALL                             R70 4 1
      455 SETTABLEKS                       R70 R64 K80 ["Size"]
      457 GETIMPORT                        R70 K81 [Color3.new]
      459 LOADN                            R71 1
      460 LOADN                            R72 1
      461 LOADN                            R73 1
      462 CALL                             R70 3 1
      463 SETTABLEKS                       R70 R64 K82 ["BackgroundColor3"]
      465 GETIMPORT                        R70 K81 [Color3.new]
      467 LOADN                            R71 1
      468 LOADN                            R72 1
      469 LOADN                            R73 1
      470 CALL                             R70 3 1
      471 SETTABLEKS                       R70 R66 K82 ["BackgroundColor3"]
      473 GETTABLEKS                       R71 R64 K83 ["Position"]
      475 GETIMPORT                        R72 K79 [UDim2.new]
      477 LOADN                            R73 0
      478 LOADN                            R74 13
      479 LOADN                            R75 0
      480 LOADN                            R76 3
      481 CALL                             R72 4 1
      482 ADD                              R70 R71 R72
      483 SETTABLEKS                       R70 R64 K83 ["Position"]
      485 GETIMPORT                        R70 K1 [game]
      487 LOADK                            R72 K84 ["StudioCameraService"]
      488 NAMECALL                         R70 R70 K5 ["GetService"]
      490 CALL                             R70 2 1
      491 LOADB                            R71 0
      492 SETTABLEKS                       R71 R64 K85 ["ClipsDescendants"]
      494 GETIMPORT                        R71 K87 [Instance.new]
      496 LOADK                            R72 K88 ["ImageButton"]
      497 MOVE                             R73 R64
      498 CALL                             R71 2 1
      499 LOADK                            R72 K89 ["NavModelButton"]
      500 SETTABLEKS                       R72 R71 K90 ["Name"]
      502 LOADN                            R72 0
      503 SETTABLEKS                       R72 R71 K74 ["BackgroundTransparency"]
      505 GETIMPORT                        R72 K81 [Color3.new]
      507 LOADN                            R73 1
      508 LOADN                            R74 1
      509 LOADN                            R75 1
      510 CALL                             R72 3 1
      511 SETTABLEKS                       R72 R71 K82 ["BackgroundColor3"]
      513 LOADN                            R72 0
      514 SETTABLEKS                       R72 R71 K91 ["BorderSizePixel"]
      516 GETIMPORT                        R72 K57 [Vector2.new]
      518 LOADN                            R73 1
      519 LOADN                            R74 0
      520 CALL                             R72 2 1
      521 SETTABLEKS                       R72 R71 K92 ["AnchorPoint"]
      523 GETIMPORT                        R72 K79 [UDim2.new]
      525 LOADN                            R73 0
      526 LOADN                            R74 -5
      527 LOADN                            R75 0
      528 LOADN                            R76 0
      529 CALL                             R72 4 1
      530 SETTABLEKS                       R72 R71 K83 ["Position"]
      532 GETIMPORT                        R72 K79 [UDim2.new]
      534 LOADN                            R73 0
      535 LOADN                            R74 22
      536 LOADN                            R75 0
      537 LOADN                            R76 22
      538 CALL                             R72 4 1
      539 SETTABLEKS                       R72 R71 K80 ["Size"]
      541 LOADN                            R72 20
      542 SETTABLEKS                       R72 R71 K93 ["ZIndex"]
      544 GETIMPORT                        R72 K96 [Enum.ScaleType.Fit]
      546 SETTABLEKS                       R72 R71 K94 ["ScaleType"]
      548 GETIMPORT                        R72 K81 [Color3.new]
      550 LOADN                            R73 0
      551 LOADN                            R74 0
      552 LOADN                            R75 0
      553 CALL                             R72 3 1
      554 SETTABLEKS                       R72 R71 K97 ["ImageColor3"]
      556 LOADN                            R72 0
      557 SETTABLEKS                       R72 R71 K98 ["ImageTransparency"]
      559 GETIMPORT                        R72 K87 [Instance.new]
      561 LOADK                            R73 K99 ["UICorner"]
      562 MOVE                             R74 R71
      563 CALL                             R72 2 1
      564 GETIMPORT                        R73 K101 [UDim.new]
      566 LOADN                            R74 0
      567 LOADN                            R75 4
      568 CALL                             R73 2 1
      569 SETTABLEKS                       R73 R72 K102 ["CornerRadius"]
      571 MOVE                             R75 R71
      572 MOVE                             R76 R63
      573 DUPTABLE                         R77 K103 [{["ImageTransparency"] = 1, ["BackgroundTransparency"] = 1}]
      574 NAMECALL                         R73 R7 K76 ["Create"]
      576 CALL                             R73 4 1
      577 DUPCLOSURE                       R74 K104 [PROTO_35]
      578 CAPTURE                          VAL R71
      579 GETIMPORT                        R75 K106 [settings]
      581 CALL                             R75 0 1
      582 GETTABLEKS                       R75 R75 K107 ["Studio"]
      584 GETTABLEKS                       R75 R75 K108 ["CameraNavigationModel"]
      586 GETIMPORT                        R76 K110 [Enum.CameraNavigationModel.Roblox]
      588 JUMPIFNOTEQ                      R75 R76 ; [+5]
      590 LOADK                            R76 K111 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
      591 SETTABLEKS                       R76 R71 K112 ["Image"]
      593 JUMP                             ; [+3]
      594 LOADK                            R76 K113 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
      595 SETTABLEKS                       R76 R71 K112 ["Image"]
      597 GETIMPORT                        R75 K106 [settings]
      599 CALL                             R75 0 1
      600 GETTABLEKS                       R75 R75 K107 ["Studio"]
      602 LOADK                            R77 K108 ["CameraNavigationModel"]
      603 NAMECALL                         R75 R75 K114 ["GetPropertyChangedSignal"]
      605 CALL                             R75 2 1
      606 DUPCLOSURE                       R77 K115 [PROTO_36]
      607 CAPTURE                          VAL R71
      608 NAMECALL                         R75 R75 K116 ["Connect"]
      610 CALL                             R75 2 0
      611 DUPTABLE                         R75 K122 [{["mouseOverViewSelector"] = False, ["mouseOverSlider"] = False, ["isDraggingSlider"] = False, ["mouseOverNavModel"] = False}]
      612 NEWCLOSURE                       R76 P26
      613 CAPTURE                          VAL R67
      614 CAPTURE                          VAL R68
      615 CAPTURE                          VAL R73
      616 CAPTURE                          REF R69
      617 CAPTURE                          VAL R64
      618 CAPTURE                          VAL R66
      619 CAPTURE                          VAL R75
      620 CAPTURE                          VAL R65
      621 CAPTURE                          VAL R71
      622 DUPCLOSURE                       R77 K123 [PROTO_39]
      623 DUPCLOSURE                       R78 K124 [PROTO_40]
      624 CAPTURE                          VAL R64
      625 DUPCLOSURE                       R79 K125 [PROTO_41]
      626 CAPTURE                          VAL R64
      627 CAPTURE                          VAL R66
      628 GETIMPORT                        R80 K106 [settings]
      630 CALL                             R80 0 1
      631 GETTABLEKS                       R80 R80 K107 ["Studio"]
      633 LOADK                            R82 K126 ["Camera Speed"]
      634 NAMECALL                         R80 R80 K114 ["GetPropertyChangedSignal"]
      636 CALL                             R80 2 1
      637 DUPCLOSURE                       R82 K127 [PROTO_42]
      638 CAPTURE                          VAL R79
      639 CAPTURE                          VAL R76
      640 NAMECALL                         R80 R80 K116 ["Connect"]
      642 CALL                             R80 2 0
      643 GETTABLEKS                       R80 R70 K128 ["ShowCameraSpeed"]
      645 DUPCLOSURE                       R82 K129 [PROTO_43]
      646 CAPTURE                          VAL R79
      647 CAPTURE                          VAL R76
      648 NAMECALL                         R80 R80 K116 ["Connect"]
      650 CALL                             R80 2 0
      651 GETTABLEKS                       R80 R29 K47 ["MouseEnter"]
      653 DUPCLOSURE                       R82 K130 [PROTO_44]
      654 CAPTURE                          VAL R75
      655 CAPTURE                          VAL R76
      656 NAMECALL                         R80 R80 K116 ["Connect"]
      658 CALL                             R80 2 0
      659 GETTABLEKS                       R80 R29 K48 ["MouseLeave"]
      661 DUPCLOSURE                       R82 K131 [PROTO_45]
      662 CAPTURE                          VAL R75
      663 CAPTURE                          VAL R76
      664 NAMECALL                         R80 R80 K116 ["Connect"]
      666 CALL                             R80 2 0
      667 GETTABLEKS                       R80 R64 K47 ["MouseEnter"]
      669 NEWCLOSURE                       R82 P34
      670 CAPTURE                          VAL R75
      671 CAPTURE                          REF R27
      672 CAPTURE                          VAL R76
      673 NAMECALL                         R80 R80 K116 ["Connect"]
      675 CALL                             R80 2 0
      676 GETTABLEKS                       R80 R64 K48 ["MouseLeave"]
      678 DUPCLOSURE                       R82 K132 [PROTO_47]
      679 CAPTURE                          VAL R75
      680 CAPTURE                          VAL R48
      681 CAPTURE                          VAL R76
      682 NAMECALL                         R80 R80 K116 ["Connect"]
      684 CALL                             R80 2 0
      685 GETTABLEKS                       R80 R64 K49 ["MouseButton1Down"]
      687 DUPCLOSURE                       R82 K133 [PROTO_48]
      688 CAPTURE                          VAL R75
      689 CAPTURE                          VAL R76
      690 CAPTURE                          VAL R4
      691 CAPTURE                          VAL R64
      692 CAPTURE                          VAL R0
      693 NAMECALL                         R80 R80 K116 ["Connect"]
      695 CALL                             R80 2 0
      696 GETTABLEKS                       R80 R64 K51 ["InputChanged"]
      698 DUPCLOSURE                       R82 K134 [PROTO_49]
      699 NAMECALL                         R80 R80 K116 ["Connect"]
      701 CALL                             R80 2 0
      702 GETTABLEKS                       R80 R71 K47 ["MouseEnter"]
      704 NEWCLOSURE                       R82 P38
      705 CAPTURE                          VAL R75
      706 CAPTURE                          REF R27
      707 CAPTURE                          VAL R76
      708 NAMECALL                         R80 R80 K116 ["Connect"]
      710 CALL                             R80 2 0
      711 GETTABLEKS                       R80 R71 K48 ["MouseLeave"]
      713 DUPCLOSURE                       R82 K135 [PROTO_51]
      714 CAPTURE                          VAL R75
      715 CAPTURE                          VAL R48
      716 CAPTURE                          VAL R76
      717 NAMECALL                         R80 R80 K116 ["Connect"]
      719 CALL                             R80 2 0
      720 GETTABLEKS                       R80 R71 K136 ["Activated"]
      722 DUPCLOSURE                       R82 K137 [PROTO_52]
      723 NAMECALL                         R80 R80 K116 ["Connect"]
      725 CALL                             R80 2 0
      726 GETIMPORT                        R80 K106 [settings]
      728 CALL                             R80 0 1
      729 GETTABLEKS                       R80 R80 K107 ["Studio"]
      731 LOADK                            R82 K108 ["CameraNavigationModel"]
      732 NAMECALL                         R80 R80 K114 ["GetPropertyChangedSignal"]
      734 CALL                             R80 2 1
      735 DUPCLOSURE                       R82 K138 [PROTO_53]
      736 CAPTURE                          VAL R76
      737 NAMECALL                         R80 R80 K116 ["Connect"]
      739 CALL                             R80 2 0
      740 MOVE                             R80 R79
      741 CALL                             R80 0 0
      742 LOADN                            R80 1
      743 SETTABLEKS                       R80 R64 K74 ["BackgroundTransparency"]
      745 LOADN                            R80 1
      746 SETTABLEKS                       R80 R64 K72 ["TextTransparency"]
      748 LOADN                            R80 1
      749 SETTABLEKS                       R80 R65 K139 ["Transparency"]
      751 LOADN                            R80 1
      752 SETTABLEKS                       R80 R66 K74 ["BackgroundTransparency"]
      754 LOADN                            R80 1
      755 SETTABLEKS                       R80 R71 K98 ["ImageTransparency"]
      757 LOADN                            R80 1
      758 SETTABLEKS                       R80 R71 K74 ["BackgroundTransparency"]
      760 CLOSEUPVALS                      R69
      761 JUMP                             ; [+7]
      762 LOADK                            R65 K69 ["CamSpeed"]
      763 NAMECALL                         R63 R17 K54 ["WaitForChild"]
      765 CALL                             R63 2 1
      766 NAMECALL                         R63 R63 K140 ["Destroy"]
      768 CALL                             R63 1 0
      769 CLOSEUPVALS                      R10
      770 RETURN                           R0 0
