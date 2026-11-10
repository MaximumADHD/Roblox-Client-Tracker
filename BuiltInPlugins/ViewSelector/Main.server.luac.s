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
       18 JUMPIFNOT                        R0 ; [+13]
       19 GETIMPORT                        R0 K6 [script]
       21 GETTABLEKS                       R0 R0 K7 ["Parent"]
       23 GETTABLEKS                       R0 R0 K8 ["Assets"]
       25 GETTABLEKS                       R0 R0 K0 ["ViewSelectorScreenGui"]
       27 NAMECALL                         R0 R0 K9 ["Clone"]
       29 CALL                             R0 1 1
       30 SETUPVAL                         R0 0
       31 JUMP                             ; [+6]
       32 GETUPVAL                         R0 4
       33 LOADK                            R2 K10 ["rbxasset://models/ViewSelector/ViewSelector.rbxm"]
       34 NAMECALL                         R0 R0 K11 ["LoadLocalAsset"]
       36 CALL                             R0 2 1
       37 SETUPVAL                         R0 0
       38 GETUPVAL                         R0 0
       39 GETUPVAL                         R1 1
       40 SETTABLEKS                       R1 R0 K7 ["Parent"]
       42 GETUPVAL                         R0 0
       43 LOADB                            R1 0
       44 SETTABLEKS                       R1 R0 K12 ["Enabled"]
       46 GETUPVAL                         R0 0
       47 LOADK                            R2 K13 ["Panel"]
       48 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       50 CALL                             R0 2 1
       51 SETUPVAL                         R0 5
       52 GETUPVAL                         R0 5
       53 LOADK                            R2 K15 ["Viewport"]
       54 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       56 CALL                             R0 2 1
       57 SETUPVAL                         R0 6
       58 GETUPVAL                         R0 6
       59 GETTABLEKS                       R0 R0 K16 ["AbsoluteSize"]
       61 GETTABLEKS                       R0 R0 K17 ["x"]
       63 SETUPVAL                         R0 7
       64 GETUPVAL                         R0 6
       65 LOADK                            R2 K18 ["EventReceiver"]
       66 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       68 CALL                             R0 2 1
       69 SETUPVAL                         R0 8
       70 GETUPVAL                         R0 8
       71 GETIMPORT                        R1 K21 [UDim2.new]
       73 LOADN                            R2 1
       74 LOADN                            R3 0
       75 LOADN                            R4 0
       76 GETUPVAL                         R5 7
       77 CALL                             R1 4 1
       78 SETTABLEKS                       R1 R0 K22 ["Size"]
       80 GETUPVAL                         R0 6
       81 LOADK                            R2 K23 ["Model"]
       82 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       84 CALL                             R0 2 1
       85 SETUPVAL                         R0 9
       86 GETUPVAL                         R0 5
       87 LOADK                            R2 K24 ["X"]
       88 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       90 CALL                             R0 2 1
       91 SETUPVAL                         R0 10
       92 GETUPVAL                         R0 5
       93 LOADK                            R2 K25 ["Y"]
       94 NAMECALL                         R0 R0 K14 ["WaitForChild"]
       96 CALL                             R0 2 1
       97 SETUPVAL                         R0 11
       98 GETUPVAL                         R0 5
       99 LOADK                            R2 K26 ["Z"]
      100 NAMECALL                         R0 R0 K14 ["WaitForChild"]
      102 CALL                             R0 2 1
      103 SETUPVAL                         R0 12
      104 GETUPVAL                         R0 5
      105 LOADK                            R2 K27 ["ArrowButtons"]
      106 NAMECALL                         R0 R0 K14 ["WaitForChild"]
      108 CALL                             R0 2 1
      109 SETUPVAL                         R0 13
      110 GETUPVAL                         R0 13
      111 LOADB                            R1 0
      112 SETTABLEKS                       R1 R0 K28 ["Visible"]
      114 LOADB                            R0 0
      115 SETUPVAL                         R0 14
      116 GETIMPORT                        R0 K30 [game]
      118 LOADK                            R2 K31 ["NextGenDraggersEnabledFeature"]
      119 NAMECALL                         R0 R0 K32 ["GetEngineFeature"]
      121 CALL                             R0 2 1
      122 JUMPIFNOT                        R0 ; [+36]
      123 GETUPVAL                         R0 10
      124 GETUPVAL                         R1 15
      125 SETTABLEKS                       R1 R0 K33 ["TextColor3"]
      127 GETUPVAL                         R0 11
      128 GETUPVAL                         R1 16
      129 SETTABLEKS                       R1 R0 K33 ["TextColor3"]
      131 GETUPVAL                         R0 12
      132 GETUPVAL                         R1 17
      133 SETTABLEKS                       R1 R0 K33 ["TextColor3"]
      135 GETUPVAL                         R0 9
      136 LOADK                            R2 K17 ["x"]
      137 NAMECALL                         R0 R0 K14 ["WaitForChild"]
      139 CALL                             R0 2 1
      140 GETUPVAL                         R1 9
      141 LOADK                            R3 K34 ["y"]
      142 NAMECALL                         R1 R1 K14 ["WaitForChild"]
      144 CALL                             R1 2 1
      145 GETUPVAL                         R2 9
      146 LOADK                            R4 K35 ["z"]
      147 NAMECALL                         R2 R2 K14 ["WaitForChild"]
      149 CALL                             R2 2 1
      150 GETUPVAL                         R3 15
      151 SETTABLEKS                       R3 R0 K36 ["Color"]
      153 GETUPVAL                         R3 16
      154 SETTABLEKS                       R3 R1 K36 ["Color"]
      156 GETUPVAL                         R3 17
      157 SETTABLEKS                       R3 R2 K36 ["Color"]
      159 GETIMPORT                        R0 K38 [Instance.new]
      161 LOADK                            R1 K39 ["Camera"]
      162 CALL                             R0 1 1
      163 SETUPVAL                         R0 18
      164 GETUPVAL                         R0 18
      165 GETUPVAL                         R1 6
      166 SETTABLEKS                       R1 R0 K7 ["Parent"]
      168 GETUPVAL                         R0 18
      169 GETIMPORT                        R1 K41 [CFrame.new]
      171 LOADK                            R2 K42 [{0, 0, 0}]
      172 LOADK                            R3 K43 [{0, 0, -1}]
      173 CALL                             R1 2 1
      174 SETTABLEKS                       R1 R0 K40 ["CFrame"]
      176 GETUPVAL                         R0 18
      177 LOADN                            R1 70
      178 SETTABLEKS                       R1 R0 K44 ["FieldOfView"]
      180 GETUPVAL                         R0 6
      181 GETUPVAL                         R1 18
      182 SETTABLEKS                       R1 R0 K45 ["CurrentCamera"]
      184 GETIMPORT                        R0 K6 [script]
      186 GETTABLEKS                       R0 R0 K7 ["Parent"]
      188 GETTABLEKS                       R0 R0 K46 ["LocalizedStrings"]
      190 GETUPVAL                         R3 19
      191 GETTABLEKS                       R3 R3 K47 ["StudioLocaleId"]
      193 NAMECALL                         R1 R0 K48 ["GetTranslator"]
      195 CALL                             R1 2 1
      196 LOADK                            R4 K49 ["en-us"]
      197 NAMECALL                         R2 R0 K48 ["GetTranslator"]
      199 CALL                             R2 2 1
      200 GETUPVAL                         R3 9
      201 NAMECALL                         R3 R3 K50 ["GetChildren"]
      203 CALL                             R3 1 1
      204 LOADN                            R6 1
      205 LENGTH                           R4 R3
      206 LOADN                            R5 1
      207 FORNPREP                         R4
      208 GETTABLE                         R7 R3 R6
      209 GETTABLEKS                       R8 R7 K51 ["ClassName"]
      211 JUMPIFEQKS                       R8 K52 ["Part"] ; [+5]
      213 GETTABLEKS                       R8 R7 K51 ["ClassName"]
      215 JUMPIFNOTEQKS                    R8 K53 ["MeshPart"] ; [+12]
      217 GETUPVAL                         R8 9
      218 GETTABLEKS                       R8 R8 K40 ["CFrame"]
      220 GETTABLEKS                       R10 R7 K40 ["CFrame"]
      222 NAMECALL                         R8 R8 K54 ["ToObjectSpace"]
      224 CALL                             R8 2 1
      225 SETTABLEKS                       R8 R7 K40 ["CFrame"]
      227 JUMP                             ; [+48]
      228 GETTABLEKS                       R8 R7 K51 ["ClassName"]
      230 JUMPIFNOTEQKS                    R8 K55 ["Decal"] ; [+45]
      232 GETTABLEKS                       R8 R7 K56 ["Name"]
      234 GETTABLEKS                       R10 R7 K56 ["Name"]
      236 LOADK                            R11 K57 ["_hover"]
      237 CONCAT                           R9 R10 R11
      238 GETIMPORT                        R10 K59 [pcall]
      240 NEWCLOSURE                       R11 P0
      241 CAPTURE                          UPVAL U20
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R1
      244 CAPTURE                          VAL R8
      245 CAPTURE                          VAL R9
      246 CALL                             R10 1 1
      247 JUMPIF                           R10 ; [+20]
      248 GETUPVAL                         R11 20
      249 GETTABLEKS                       R11 R11 K60 ["Normal"]
      251 GETTABLEKS                       R12 R7 K56 ["Name"]
      253 MOVE                             R15 R8
      254 NAMECALL                         R13 R2 K61 ["FormatByKey"]
      256 CALL                             R13 2 1
      257 SETTABLE                         R13 R11 R12
      258 GETUPVAL                         R11 20
      259 GETTABLEKS                       R11 R11 K62 ["Hover"]
      261 GETTABLEKS                       R12 R7 K56 ["Name"]
      263 MOVE                             R15 R9
      264 NAMECALL                         R13 R2 K61 ["FormatByKey"]
      266 CALL                             R13 2 1
      267 SETTABLE                         R13 R11 R12
      268 GETUPVAL                         R12 20
      269 GETTABLEKS                       R12 R12 K60 ["Normal"]
      271 GETTABLEKS                       R13 R7 K56 ["Name"]
      273 GETTABLE                         R11 R12 R13
      274 SETTABLEKS                       R11 R7 K63 ["Texture"]
      276 FORNLOOP                         R4
      277 GETUPVAL                         R4 9
      278 GETIMPORT                        R5 K41 [CFrame.new]
      280 CALL                             R5 0 1
      281 SETTABLEKS                       R5 R4 K40 ["CFrame"]
      283 NEWTABLE                         R4 0 3
      285 LOADK                            R5 K64 ["n"]
      286 LOADK                            R6 K65 ["0"]
      287 LOADK                            R7 K66 ["p"]
      288 SETLIST                          R4 R5 3 [1]
      290 LOADN                            R7 -1
      291 LOADN                            R5 1
      292 LOADN                            R6 1
      293 FORNPREP                         R5
      294 LOADN                            R10 -1
      295 LOADN                            R8 1
      296 LOADN                            R9 1
      297 FORNPREP                         R8
      298 LOADN                            R13 -1
      299 LOADN                            R11 1
      300 LOADN                            R12 1
      301 FORNPREP                         R11
      302 ADDK                             R18 R7 K67 [2]
      303 GETTABLE                         R15 R4 R18
      304 ADDK                             R18 R10 K67 [2]
      305 GETTABLE                         R16 R4 R18
      306 ADDK                             R18 R13 K67 [2]
      307 GETTABLE                         R17 R4 R18
      308 CONCAT                           R14 R15 R17
      309 GETUPVAL                         R15 21
      310 GETIMPORT                        R16 K41 [CFrame.new]
      312 FASTCALL                         VECTOR ; [+2]
      313 GETIMPORT                        R17 K69 [Vector3.new]
      315 CALL                             R17 0 1
      316 MINUS                            R19 R7
      317 MINUS                            R20 R10
      318 MINUS                            R21 R13
      319 FASTCALL                         VECTOR ; [+2]
      320 GETIMPORT                        R18 K69 [Vector3.new]
      322 CALL                             R18 3 1
      323 GETTABLEKS                       R18 R18 K70 ["Unit"]
      325 CALL                             R16 2 1
      326 SETTABLE                         R16 R15 R14
      327 FORNLOOP                         R11
      328 FORNLOOP                         R8
      329 FORNLOOP                         R5
      330 GETUPVAL                         R5 21
      331 GETIMPORT                        R6 K72 [CFrame.fromEulerAnglesYXZ]
      333 LOADK                            R7 K73 [-1.5707963267948966]
      334 LOADK                            R8 K74 [3.141592653589793]
      335 LOADN                            R9 0
      336 CALL                             R6 3 1
      337 SETTABLEKS                       R6 R5 K75 ["0p0"]
      339 GETUPVAL                         R5 21
      340 GETIMPORT                        R6 K77 [CFrame.fromEulerAnglesXYZ]
      342 LOADK                            R7 K73 [-1.5707963267948966]
      343 LOADK                            R8 K74 [3.141592653589793]
      344 LOADN                            R9 0
      345 CALL                             R6 3 1
      346 SETTABLEKS                       R6 R5 K78 ["0n0"]
      348 LOADK                            R5 K79 [{0.576, -0.48, -0.48}]
      349 SETUPVAL                         R5 22
      350 LOADK                            R5 K80 [{-0.48, 0.576, -0.48}]
      351 SETUPVAL                         R5 23
      352 LOADK                            R5 K81 [{-0.48, -0.48, 0.576}]
      353 SETUPVAL                         R5 24
      354 GETIMPORT                        R5 K83 [plugin]
      356 LOADK                            R7 K84 ["ViewSelector_Active"]
      357 NAMECALL                         R5 R5 K85 ["GetSetting"]
      359 CALL                             R5 2 1
      360 SETUPVAL                         R5 25
      361 GETUPVAL                         R5 25
      362 JUMPIFNOTEQKNIL                  R5 ; [+3]
      364 LOADB                            R5 1
      365 SETUPVAL                         R5 25
      366 GETUPVAL                         R5 26
      367 GETUPVAL                         R7 25
      368 NAMECALL                         R5 R5 K86 ["SetActive"]
      370 CALL                             R5 2 0
      371 RETURN                           R0 0

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
       19 LOADK                            R5 K7 [1.5707963267948966]
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
       13 LOADK                            R8 K5 [0.45454545454545453]
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
       41 LOADK                            R12 K19 [0.45454545454545453]
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
       26 LOADK                            R10 K13 [0.45454545454545453]
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
        3 LOADK                            R2 K2 ["ViewSelectorEmbedViewCubeModel"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K1 [game]
       10 LOADK                            R3 K4 ["NewCameraControls_StudioCameraUI"]
       11 NAMECALL                         R1 R1 K5 ["GetEngineFeature"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+1]
       15 RETURN                           R0 0
       16 GETIMPORT                        R1 K1 [game]
       18 LOADK                            R3 K6 ["RunService"]
       19 NAMECALL                         R1 R1 K7 ["GetService"]
       21 CALL                             R1 2 1
       22 GETIMPORT                        R2 K1 [game]
       24 LOADK                            R4 K8 ["GuiService"]
       25 NAMECALL                         R2 R2 K7 ["GetService"]
       27 CALL                             R2 2 1
       28 GETIMPORT                        R3 K1 [game]
       30 LOADK                            R5 K9 ["CoreGui"]
       31 NAMECALL                         R3 R3 K7 ["GetService"]
       33 CALL                             R3 2 1
       34 GETIMPORT                        R4 K1 [game]
       36 LOADK                            R6 K10 ["ContentProvider"]
       37 NAMECALL                         R4 R4 K7 ["GetService"]
       39 CALL                             R4 2 1
       40 GETIMPORT                        R5 K1 [game]
       42 LOADK                            R7 K11 ["UserInputService"]
       43 NAMECALL                         R5 R5 K7 ["GetService"]
       45 CALL                             R5 2 1
       46 GETIMPORT                        R6 K1 [game]
       48 LOADK                            R8 K12 ["InsertService"]
       49 NAMECALL                         R6 R6 K7 ["GetService"]
       51 CALL                             R6 2 1
       52 GETIMPORT                        R7 K1 [game]
       54 LOADK                            R9 K13 ["StudioService"]
       55 NAMECALL                         R7 R7 K7 ["GetService"]
       57 CALL                             R7 2 1
       58 GETIMPORT                        R8 K1 [game]
       60 LOADK                            R10 K14 ["TweenService"]
       61 NAMECALL                         R8 R8 K7 ["GetService"]
       63 CALL                             R8 2 1
       64 GETIMPORT                        R9 K16 [plugin]
       66 LOADK                            R11 K17 ["ViewSelector"]
       67 NAMECALL                         R9 R9 K18 ["CreateToolbar"]
       69 CALL                             R9 2 1
       70 LOADK                            R12 K17 ["ViewSelector"]
       71 LOADK                            R13 K19 ["Show View Selector"]
       72 LOADK                            R14 K20 [""]
       73 NAMECALL                         R10 R9 K21 ["CreateButton"]
       75 CALL                             R10 4 1
       76 LOADB                            R11 0
       77 SETTABLEKS                       R11 R10 K22 ["ClickableWhenViewportHidden"]
       79 LOADNIL                          R11
       80 LOADNIL                          R12
       81 LOADNIL                          R13
       82 LOADNIL                          R14
       83 LOADNIL                          R15
       84 LOADNIL                          R16
       85 LOADNIL                          R17
       86 LOADNIL                          R18
       87 LOADNIL                          R19
       88 LOADNIL                          R20
       89 LOADNIL                          R21
       90 LOADNIL                          R22
       91 LOADNIL                          R23
       92 LOADNIL                          R24
       93 LOADNIL                          R25
       94 LOADNIL                          R26
       95 LOADNIL                          R27
       96 LOADNIL                          R28
       97 LOADNIL                          R29
       98 LOADNIL                          R30
       99 LOADNIL                          R31
      100 LOADNIL                          R32
      101 LOADNIL                          R33
      102 LOADNIL                          R34
      103 NEWTABLE                         R35 0 0
      105 NEWTABLE                         R36 2 0
      107 NEWTABLE                         R37 0 0
      109 SETTABLEKS                       R37 R36 K23 ["Normal"]
      111 NEWTABLE                         R37 0 0
      113 SETTABLEKS                       R37 R36 K24 ["Hover"]
      115 DUPCLOSURE                       R37 K25 [PROTO_0]
      116 LOADNIL                          R38
      117 LOADNIL                          R39
      118 LOADNIL                          R40
      119 GETIMPORT                        R41 K1 [game]
      121 LOADK                            R43 K26 ["NextGenDraggersEnabledFeature"]
      122 NAMECALL                         R41 R41 K5 ["GetEngineFeature"]
      124 CALL                             R41 2 1
      125 JUMPIFNOT                        R41 ; [+42]
      126 GETIMPORT                        R41 K29 [Color3.fromHex]
      128 GETIMPORT                        R42 K32 [string.format]
      130 LOADK                            R43 K33 ["%06X"]
      131 GETIMPORT                        R44 K1 [game]
      133 LOADK                            R46 K34 ["rbxRed"]
      134 NAMECALL                         R44 R44 K35 ["GetFastInt"]
      136 CALL                             R44 2 -1
      137 CALL                             R42 -1 -1
      138 CALL                             R41 -1 1
      139 MOVE                             R38 R41
      140 GETIMPORT                        R41 K29 [Color3.fromHex]
      142 GETIMPORT                        R42 K32 [string.format]
      144 LOADK                            R43 K33 ["%06X"]
      145 GETIMPORT                        R44 K1 [game]
      147 LOADK                            R46 K36 ["rbxGreen"]
      148 NAMECALL                         R44 R44 K35 ["GetFastInt"]
      150 CALL                             R44 2 -1
      151 CALL                             R42 -1 -1
      152 CALL                             R41 -1 1
      153 MOVE                             R39 R41
      154 GETIMPORT                        R41 K29 [Color3.fromHex]
      156 GETIMPORT                        R42 K32 [string.format]
      158 LOADK                            R43 K33 ["%06X"]
      159 GETIMPORT                        R44 K1 [game]
      161 LOADK                            R46 K37 ["rbxBlue"]
      162 NAMECALL                         R44 R44 K35 ["GetFastInt"]
      164 CALL                             R44 2 -1
      165 CALL                             R42 -1 -1
      166 CALL                             R41 -1 1
      167 MOVE                             R40 R41
      168 NEWCLOSURE                       R41 P1
      169 CAPTURE                          REF R17
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R6
      174 CAPTURE                          REF R18
      175 CAPTURE                          REF R19
      176 CAPTURE                          REF R20
      177 CAPTURE                          REF R30
      178 CAPTURE                          REF R21
      179 CAPTURE                          REF R22
      180 CAPTURE                          REF R23
      181 CAPTURE                          REF R24
      182 CAPTURE                          REF R28
      183 CAPTURE                          REF R29
      184 CAPTURE                          REF R38
      185 CAPTURE                          REF R39
      186 CAPTURE                          REF R40
      187 CAPTURE                          REF R16
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R36
      190 CAPTURE                          VAL R35
      191 CAPTURE                          REF R25
      192 CAPTURE                          REF R26
      193 CAPTURE                          REF R27
      194 CAPTURE                          REF R11
      195 CAPTURE                          VAL R10
      196 DUPCLOSURE                       R42 K38 [PROTO_3]
      197 DUPCLOSURE                       R43 K39 [PROTO_5]
      198 DUPCLOSURE                       R44 K40 [PROTO_6]
      199 CAPTURE                          VAL R36
      200 DUPCLOSURE                       R45 K41 [PROTO_7]
      201 CAPTURE                          VAL R36
      202 DUPCLOSURE                       R46 K42 [PROTO_9]
      203 NEWCLOSURE                       R47 P7
      204 CAPTURE                          VAL R2
      205 CAPTURE                          REF R19
      206 NEWCLOSURE                       R48 P8
      207 CAPTURE                          VAL R2
      208 CAPTURE                          REF R19
      209 CAPTURE                          REF R16
      210 CAPTURE                          REF R20
      211 CAPTURE                          VAL R43
      212 CAPTURE                          VAL R46
      213 CAPTURE                          REF R21
      214 CAPTURE                          REF R15
      215 CAPTURE                          VAL R36
      216 NEWCLOSURE                       R49 P9
      217 CAPTURE                          REF R29
      218 CAPTURE                          REF R12
      219 CAPTURE                          REF R28
      220 NEWCLOSURE                       R50 P10
      221 CAPTURE                          REF R29
      222 CAPTURE                          VAL R49
      223 NEWCLOSURE                       R51 P11
      224 CAPTURE                          REF R15
      225 CAPTURE                          VAL R36
      226 CAPTURE                          REF R28
      227 CAPTURE                          REF R29
      228 NEWCLOSURE                       R52 P12
      229 CAPTURE                          REF R13
      230 CAPTURE                          REF R14
      231 CAPTURE                          REF R18
      232 NEWCLOSURE                       R53 P13
      233 CAPTURE                          REF R20
      234 CAPTURE                          REF R18
      235 NEWCLOSURE                       R54 P14
      236 CAPTURE                          REF R20
      237 CAPTURE                          REF R18
      238 NEWCLOSURE                       R55 P15
      239 CAPTURE                          REF R13
      240 CAPTURE                          VAL R54
      241 NEWCLOSURE                       R56 P16
      242 CAPTURE                          REF R13
      243 CAPTURE                          REF R14
      244 CAPTURE                          REF R18
      245 NEWCLOSURE                       R57 P17
      246 CAPTURE                          REF R34
      247 CAPTURE                          REF R33
      248 CAPTURE                          REF R32
      249 CAPTURE                          REF R31
      250 NEWCLOSURE                       R58 P18
      251 CAPTURE                          REF R13
      252 CAPTURE                          REF R15
      253 CAPTURE                          VAL R35
      254 CAPTURE                          REF R34
      255 CAPTURE                          REF R33
      256 CAPTURE                          REF R32
      257 CAPTURE                          REF R31
      258 CAPTURE                          VAL R54
      259 NEWCLOSURE                       R59 P19
      260 CAPTURE                          REF R21
      261 CAPTURE                          REF R12
      262 CAPTURE                          REF R19
      263 CAPTURE                          REF R16
      264 CAPTURE                          REF R20
      265 CAPTURE                          REF R22
      266 CAPTURE                          REF R25
      267 CAPTURE                          REF R23
      268 CAPTURE                          REF R26
      269 CAPTURE                          REF R24
      270 CAPTURE                          REF R27
      271 NEWCLOSURE                       R60 P20
      272 CAPTURE                          REF R31
      273 CAPTURE                          REF R33
      274 CAPTURE                          REF R34
      275 CAPTURE                          REF R32
      276 CAPTURE                          REF R16
      277 CAPTURE                          REF R12
      278 CAPTURE                          REF R19
      279 CAPTURE                          REF R21
      280 CAPTURE                          REF R20
      281 CAPTURE                          REF R22
      282 CAPTURE                          REF R25
      283 CAPTURE                          REF R23
      284 CAPTURE                          REF R26
      285 CAPTURE                          REF R24
      286 CAPTURE                          REF R27
      287 CAPTURE                          VAL R49
      288 NEWCLOSURE                       R61 P21
      289 CAPTURE                          REF R17
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R60
      292 CAPTURE                          VAL R1
      293 CAPTURE                          VAL R53
      294 CAPTURE                          VAL R10
      295 NEWCLOSURE                       R62 P22
      296 CAPTURE                          REF R11
      297 CAPTURE                          VAL R61
      298 NEWCLOSURE                       R63 P23
      299 CAPTURE                          REF R12
      300 CAPTURE                          VAL R43
      301 CAPTURE                          VAL R46
      302 CAPTURE                          VAL R35
      303 CAPTURE                          REF R34
      304 CAPTURE                          REF R33
      305 CAPTURE                          REF R32
      306 CAPTURE                          REF R31
      307 CAPTURE                          VAL R58
      308 NAMECALL                         R64 R1 K43 ["IsEdit"]
      310 CALL                             R64 1 1
      311 JUMPIF                           R64 ; [+9]
      312 NAMECALL                         R64 R1 K44 ["IsServer"]
      314 CALL                             R64 1 1
      315 JUMPIF                           R64 ; [+5]
      316 LOADB                            R64 0
      317 SETTABLEKS                       R64 R10 K45 ["Enabled"]
      319 CLOSEUPVALS                      R11
      320 RETURN                           R0 0
      321 MOVE                             R64 R41
      322 CALL                             R64 0 0
      323 MOVE                             R64 R61
      324 MOVE                             R65 R11
      325 CALL                             R64 1 0
      326 GETTABLEKS                       R64 R10 K46 ["Click"]
      328 MOVE                             R66 R62
      329 NAMECALL                         R64 R64 K47 ["connect"]
      331 CALL                             R64 2 0
      332 GETTABLEKS                       R64 R30 K48 ["MouseMoved"]
      334 MOVE                             R66 R48
      335 NAMECALL                         R64 R64 K47 ["connect"]
      337 CALL                             R64 2 0
      338 GETTABLEKS                       R64 R30 K49 ["MouseEnter"]
      340 MOVE                             R66 R50
      341 NAMECALL                         R64 R64 K47 ["connect"]
      343 CALL                             R64 2 0
      344 GETTABLEKS                       R64 R30 K50 ["MouseLeave"]
      346 MOVE                             R66 R51
      347 NAMECALL                         R64 R64 K47 ["connect"]
      349 CALL                             R64 2 0
      350 GETTABLEKS                       R64 R30 K51 ["MouseButton1Down"]
      352 MOVE                             R66 R56
      353 NAMECALL                         R64 R64 K47 ["connect"]
      355 CALL                             R64 2 0
      356 GETTABLEKS                       R64 R30 K52 ["MouseButton1Up"]
      358 MOVE                             R66 R58
      359 NAMECALL                         R64 R64 K47 ["connect"]
      361 CALL                             R64 2 0
      362 GETTABLEKS                       R64 R5 K53 ["InputChanged"]
      364 MOVE                             R66 R52
      365 NAMECALL                         R64 R64 K47 ["connect"]
      367 CALL                             R64 2 0
      368 GETTABLEKS                       R64 R5 K54 ["InputEnded"]
      370 MOVE                             R66 R55
      371 NAMECALL                         R64 R64 K47 ["connect"]
      373 CALL                             R64 2 0
      374 MOVE                             R64 R63
      375 LOADK                            R67 K55 ["RightArrow"]
      376 NAMECALL                         R65 R28 K56 ["WaitForChild"]
      378 CALL                             R65 2 1
      379 GETIMPORT                        R66 K59 [Vector2.new]
      381 LOADN                            R67 1
      382 LOADN                            R68 0
      383 CALL                             R66 2 -1
      384 CALL                             R64 -1 0
      385 MOVE                             R64 R63
      386 LOADK                            R67 K60 ["LeftArrow"]
      387 NAMECALL                         R65 R28 K56 ["WaitForChild"]
      389 CALL                             R65 2 1
      390 GETIMPORT                        R66 K59 [Vector2.new]
      392 LOADN                            R67 -1
      393 LOADN                            R68 0
      394 CALL                             R66 2 -1
      395 CALL                             R64 -1 0
      396 MOVE                             R64 R63
      397 LOADK                            R67 K61 ["UpArrow"]
      398 NAMECALL                         R65 R28 K56 ["WaitForChild"]
      400 CALL                             R65 2 1
      401 GETIMPORT                        R66 K59 [Vector2.new]
      403 LOADN                            R67 0
      404 LOADN                            R68 1
      405 CALL                             R66 2 -1
      406 CALL                             R64 -1 0
      407 MOVE                             R64 R63
      408 LOADK                            R67 K62 ["DownArrow"]
      409 NAMECALL                         R65 R28 K56 ["WaitForChild"]
      411 CALL                             R65 2 1
      412 GETIMPORT                        R66 K59 [Vector2.new]
      414 LOADN                            R67 0
      415 LOADN                            R68 -1
      416 CALL                             R66 2 -1
      417 CALL                             R64 -1 0
      418 GETIMPORT                        R64 K1 [game]
      420 LOADK                            R66 K63 ["NewCameraControls"]
      421 NAMECALL                         R64 R64 K5 ["GetEngineFeature"]
      423 CALL                             R64 2 1
      424 JUMPIFNOT                        R64 ; [+345]
      425 GETIMPORT                        R64 K65 [TweenInfo.new]
      427 LOADK                            R65 K66 [0.2]
      428 GETIMPORT                        R66 K70 [Enum.EasingStyle.Linear]
      430 CALL                             R64 2 1
      431 LOADK                            R67 K71 ["CamSpeed"]
      432 NAMECALL                         R65 R18 K56 ["WaitForChild"]
      434 CALL                             R65 2 1
      435 LOADK                            R68 K72 ["UIStroke"]
      436 NAMECALL                         R66 R65 K56 ["WaitForChild"]
      438 CALL                             R66 2 1
      439 LOADK                            R69 K73 ["Slider"]
      440 NAMECALL                         R67 R65 K56 ["WaitForChild"]
      442 CALL                             R67 2 1
      443 MOVE                             R70 R65
      444 MOVE                             R71 R64
      445 DUPTABLE                         R72 K77 [{["TextTransparency"] = 1, ["BackgroundTransparency"] = 1}]
      446 NAMECALL                         R68 R8 K78 ["Create"]
      448 CALL                             R68 4 1
      449 MOVE                             R71 R67
      450 MOVE                             R72 R64
      451 DUPTABLE                         R73 K79 [{["BackgroundTransparency"] = 1}]
      452 NAMECALL                         R69 R8 K78 ["Create"]
      454 CALL                             R69 4 1
      455 LOADNIL                          R70
      456 GETIMPORT                        R71 K81 [UDim2.new]
      458 LOADN                            R72 0
      459 LOADN                            R73 96
      460 LOADN                            R74 0
      461 LOADN                            R75 22
      462 CALL                             R71 4 1
      463 SETTABLEKS                       R71 R65 K82 ["Size"]
      465 GETIMPORT                        R71 K83 [Color3.new]
      467 LOADN                            R72 1
      468 LOADN                            R73 1
      469 LOADN                            R74 1
      470 CALL                             R71 3 1
      471 SETTABLEKS                       R71 R65 K84 ["BackgroundColor3"]
      473 GETIMPORT                        R71 K83 [Color3.new]
      475 LOADN                            R72 1
      476 LOADN                            R73 1
      477 LOADN                            R74 1
      478 CALL                             R71 3 1
      479 SETTABLEKS                       R71 R67 K84 ["BackgroundColor3"]
      481 GETTABLEKS                       R72 R65 K85 ["Position"]
      483 GETIMPORT                        R73 K81 [UDim2.new]
      485 LOADN                            R74 0
      486 LOADN                            R75 13
      487 LOADN                            R76 0
      488 LOADN                            R77 3
      489 CALL                             R73 4 1
      490 ADD                              R71 R72 R73
      491 SETTABLEKS                       R71 R65 K85 ["Position"]
      493 GETIMPORT                        R71 K1 [game]
      495 LOADK                            R73 K86 ["StudioCameraService"]
      496 NAMECALL                         R71 R71 K7 ["GetService"]
      498 CALL                             R71 2 1
      499 LOADB                            R72 0
      500 SETTABLEKS                       R72 R65 K87 ["ClipsDescendants"]
      502 GETIMPORT                        R72 K89 [Instance.new]
      504 LOADK                            R73 K90 ["ImageButton"]
      505 MOVE                             R74 R65
      506 CALL                             R72 2 1
      507 LOADK                            R73 K91 ["NavModelButton"]
      508 SETTABLEKS                       R73 R72 K92 ["Name"]
      510 LOADN                            R73 0
      511 SETTABLEKS                       R73 R72 K76 ["BackgroundTransparency"]
      513 GETIMPORT                        R73 K83 [Color3.new]
      515 LOADN                            R74 1
      516 LOADN                            R75 1
      517 LOADN                            R76 1
      518 CALL                             R73 3 1
      519 SETTABLEKS                       R73 R72 K84 ["BackgroundColor3"]
      521 LOADN                            R73 0
      522 SETTABLEKS                       R73 R72 K93 ["BorderSizePixel"]
      524 GETIMPORT                        R73 K59 [Vector2.new]
      526 LOADN                            R74 1
      527 LOADN                            R75 0
      528 CALL                             R73 2 1
      529 SETTABLEKS                       R73 R72 K94 ["AnchorPoint"]
      531 GETIMPORT                        R73 K81 [UDim2.new]
      533 LOADN                            R74 0
      534 LOADN                            R75 -5
      535 LOADN                            R76 0
      536 LOADN                            R77 0
      537 CALL                             R73 4 1
      538 SETTABLEKS                       R73 R72 K85 ["Position"]
      540 GETIMPORT                        R73 K81 [UDim2.new]
      542 LOADN                            R74 0
      543 LOADN                            R75 22
      544 LOADN                            R76 0
      545 LOADN                            R77 22
      546 CALL                             R73 4 1
      547 SETTABLEKS                       R73 R72 K82 ["Size"]
      549 LOADN                            R73 20
      550 SETTABLEKS                       R73 R72 K95 ["ZIndex"]
      552 GETIMPORT                        R73 K98 [Enum.ScaleType.Fit]
      554 SETTABLEKS                       R73 R72 K96 ["ScaleType"]
      556 GETIMPORT                        R73 K83 [Color3.new]
      558 LOADN                            R74 0
      559 LOADN                            R75 0
      560 LOADN                            R76 0
      561 CALL                             R73 3 1
      562 SETTABLEKS                       R73 R72 K99 ["ImageColor3"]
      564 LOADN                            R73 0
      565 SETTABLEKS                       R73 R72 K100 ["ImageTransparency"]
      567 GETIMPORT                        R73 K89 [Instance.new]
      569 LOADK                            R74 K101 ["UICorner"]
      570 MOVE                             R75 R72
      571 CALL                             R73 2 1
      572 GETIMPORT                        R74 K103 [UDim.new]
      574 LOADN                            R75 0
      575 LOADN                            R76 4
      576 CALL                             R74 2 1
      577 SETTABLEKS                       R74 R73 K104 ["CornerRadius"]
      579 MOVE                             R76 R72
      580 MOVE                             R77 R64
      581 DUPTABLE                         R78 K105 [{["ImageTransparency"] = 1, ["BackgroundTransparency"] = 1}]
      582 NAMECALL                         R74 R8 K78 ["Create"]
      584 CALL                             R74 4 1
      585 DUPCLOSURE                       R75 K106 [PROTO_35]
      586 CAPTURE                          VAL R72
      587 GETIMPORT                        R76 K108 [settings]
      589 CALL                             R76 0 1
      590 GETTABLEKS                       R76 R76 K109 ["Studio"]
      592 GETTABLEKS                       R76 R76 K110 ["CameraNavigationModel"]
      594 GETIMPORT                        R77 K112 [Enum.CameraNavigationModel.Roblox]
      596 JUMPIFNOTEQ                      R76 R77 ; [+5]
      598 LOADK                            R77 K113 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
      599 SETTABLEKS                       R77 R72 K114 ["Image"]
      601 JUMP                             ; [+3]
      602 LOADK                            R77 K115 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
      603 SETTABLEKS                       R77 R72 K114 ["Image"]
      605 GETIMPORT                        R76 K108 [settings]
      607 CALL                             R76 0 1
      608 GETTABLEKS                       R76 R76 K109 ["Studio"]
      610 LOADK                            R78 K110 ["CameraNavigationModel"]
      611 NAMECALL                         R76 R76 K116 ["GetPropertyChangedSignal"]
      613 CALL                             R76 2 1
      614 DUPCLOSURE                       R78 K117 [PROTO_36]
      615 CAPTURE                          VAL R72
      616 NAMECALL                         R76 R76 K118 ["Connect"]
      618 CALL                             R76 2 0
      619 DUPTABLE                         R76 K124 [{["mouseOverViewSelector"] = False, ["mouseOverSlider"] = False, ["isDraggingSlider"] = False, ["mouseOverNavModel"] = False}]
      620 NEWCLOSURE                       R77 P26
      621 CAPTURE                          VAL R68
      622 CAPTURE                          VAL R69
      623 CAPTURE                          VAL R74
      624 CAPTURE                          REF R70
      625 CAPTURE                          VAL R65
      626 CAPTURE                          VAL R67
      627 CAPTURE                          VAL R76
      628 CAPTURE                          VAL R66
      629 CAPTURE                          VAL R72
      630 DUPCLOSURE                       R78 K125 [PROTO_39]
      631 DUPCLOSURE                       R79 K126 [PROTO_40]
      632 CAPTURE                          VAL R65
      633 DUPCLOSURE                       R80 K127 [PROTO_41]
      634 CAPTURE                          VAL R65
      635 CAPTURE                          VAL R67
      636 GETIMPORT                        R81 K108 [settings]
      638 CALL                             R81 0 1
      639 GETTABLEKS                       R81 R81 K109 ["Studio"]
      641 LOADK                            R83 K128 ["Camera Speed"]
      642 NAMECALL                         R81 R81 K116 ["GetPropertyChangedSignal"]
      644 CALL                             R81 2 1
      645 DUPCLOSURE                       R83 K129 [PROTO_42]
      646 CAPTURE                          VAL R80
      647 CAPTURE                          VAL R77
      648 NAMECALL                         R81 R81 K118 ["Connect"]
      650 CALL                             R81 2 0
      651 GETTABLEKS                       R81 R71 K130 ["ShowCameraSpeed"]
      653 DUPCLOSURE                       R83 K131 [PROTO_43]
      654 CAPTURE                          VAL R80
      655 CAPTURE                          VAL R77
      656 NAMECALL                         R81 R81 K118 ["Connect"]
      658 CALL                             R81 2 0
      659 GETTABLEKS                       R81 R30 K49 ["MouseEnter"]
      661 DUPCLOSURE                       R83 K132 [PROTO_44]
      662 CAPTURE                          VAL R76
      663 CAPTURE                          VAL R77
      664 NAMECALL                         R81 R81 K118 ["Connect"]
      666 CALL                             R81 2 0
      667 GETTABLEKS                       R81 R30 K50 ["MouseLeave"]
      669 DUPCLOSURE                       R83 K133 [PROTO_45]
      670 CAPTURE                          VAL R76
      671 CAPTURE                          VAL R77
      672 NAMECALL                         R81 R81 K118 ["Connect"]
      674 CALL                             R81 2 0
      675 GETTABLEKS                       R81 R65 K49 ["MouseEnter"]
      677 NEWCLOSURE                       R83 P34
      678 CAPTURE                          VAL R76
      679 CAPTURE                          REF R28
      680 CAPTURE                          VAL R77
      681 NAMECALL                         R81 R81 K118 ["Connect"]
      683 CALL                             R81 2 0
      684 GETTABLEKS                       R81 R65 K50 ["MouseLeave"]
      686 DUPCLOSURE                       R83 K134 [PROTO_47]
      687 CAPTURE                          VAL R76
      688 CAPTURE                          VAL R49
      689 CAPTURE                          VAL R77
      690 NAMECALL                         R81 R81 K118 ["Connect"]
      692 CALL                             R81 2 0
      693 GETTABLEKS                       R81 R65 K51 ["MouseButton1Down"]
      695 DUPCLOSURE                       R83 K135 [PROTO_48]
      696 CAPTURE                          VAL R76
      697 CAPTURE                          VAL R77
      698 CAPTURE                          VAL R5
      699 CAPTURE                          VAL R65
      700 CAPTURE                          VAL R1
      701 NAMECALL                         R81 R81 K118 ["Connect"]
      703 CALL                             R81 2 0
      704 GETTABLEKS                       R81 R65 K53 ["InputChanged"]
      706 DUPCLOSURE                       R83 K136 [PROTO_49]
      707 NAMECALL                         R81 R81 K118 ["Connect"]
      709 CALL                             R81 2 0
      710 GETTABLEKS                       R81 R72 K49 ["MouseEnter"]
      712 NEWCLOSURE                       R83 P38
      713 CAPTURE                          VAL R76
      714 CAPTURE                          REF R28
      715 CAPTURE                          VAL R77
      716 NAMECALL                         R81 R81 K118 ["Connect"]
      718 CALL                             R81 2 0
      719 GETTABLEKS                       R81 R72 K50 ["MouseLeave"]
      721 DUPCLOSURE                       R83 K137 [PROTO_51]
      722 CAPTURE                          VAL R76
      723 CAPTURE                          VAL R49
      724 CAPTURE                          VAL R77
      725 NAMECALL                         R81 R81 K118 ["Connect"]
      727 CALL                             R81 2 0
      728 GETTABLEKS                       R81 R72 K138 ["Activated"]
      730 DUPCLOSURE                       R83 K139 [PROTO_52]
      731 NAMECALL                         R81 R81 K118 ["Connect"]
      733 CALL                             R81 2 0
      734 GETIMPORT                        R81 K108 [settings]
      736 CALL                             R81 0 1
      737 GETTABLEKS                       R81 R81 K109 ["Studio"]
      739 LOADK                            R83 K110 ["CameraNavigationModel"]
      740 NAMECALL                         R81 R81 K116 ["GetPropertyChangedSignal"]
      742 CALL                             R81 2 1
      743 DUPCLOSURE                       R83 K140 [PROTO_53]
      744 CAPTURE                          VAL R77
      745 NAMECALL                         R81 R81 K118 ["Connect"]
      747 CALL                             R81 2 0
      748 MOVE                             R81 R80
      749 CALL                             R81 0 0
      750 LOADN                            R81 1
      751 SETTABLEKS                       R81 R65 K76 ["BackgroundTransparency"]
      753 LOADN                            R81 1
      754 SETTABLEKS                       R81 R65 K74 ["TextTransparency"]
      756 LOADN                            R81 1
      757 SETTABLEKS                       R81 R66 K141 ["Transparency"]
      759 LOADN                            R81 1
      760 SETTABLEKS                       R81 R67 K76 ["BackgroundTransparency"]
      762 LOADN                            R81 1
      763 SETTABLEKS                       R81 R72 K100 ["ImageTransparency"]
      765 LOADN                            R81 1
      766 SETTABLEKS                       R81 R72 K76 ["BackgroundTransparency"]
      768 CLOSEUPVALS                      R70
      769 JUMP                             ; [+7]
      770 LOADK                            R66 K71 ["CamSpeed"]
      771 NAMECALL                         R64 R18 K56 ["WaitForChild"]
      773 CALL                             R64 2 1
      774 NAMECALL                         R64 R64 K142 ["Destroy"]
      776 CALL                             R64 1 0
      777 CLOSEUPVALS                      R11
      778 RETURN                           R0 0
