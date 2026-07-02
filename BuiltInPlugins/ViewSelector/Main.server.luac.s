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
       55 GETUPVAL                         R0 8
       56 JUMPIFNOT                        R0 ; [+10]
       57 GETUPVAL                         R0 7
       58 GETIMPORT                        R1 K17 [UDim2.new]
       60 LOADN                            R2 1
       61 LOADN                            R3 0
       62 LOADN                            R4 0
       63 GETUPVAL                         R5 6
       64 CALL                             R1 4 1
       65 SETTABLEKS                       R1 R0 K18 ["Size"]
       67 GETUPVAL                         R0 5
       68 LOADK                            R2 K19 ["Model"]
       69 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       71 CALL                             R0 2 1
       72 SETUPVAL                         R0 9
       73 GETUPVAL                         R0 4
       74 LOADK                            R2 K20 ["X"]
       75 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       77 CALL                             R0 2 1
       78 SETUPVAL                         R0 10
       79 GETUPVAL                         R0 4
       80 LOADK                            R2 K21 ["Y"]
       81 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       83 CALL                             R0 2 1
       84 SETUPVAL                         R0 11
       85 GETUPVAL                         R0 4
       86 LOADK                            R2 K22 ["Z"]
       87 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       89 CALL                             R0 2 1
       90 SETUPVAL                         R0 12
       91 GETUPVAL                         R0 4
       92 LOADK                            R2 K23 ["ArrowButtons"]
       93 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       95 CALL                             R0 2 1
       96 SETUPVAL                         R0 13
       97 GETUPVAL                         R0 13
       98 LOADB                            R1 0
       99 SETTABLEKS                       R1 R0 K24 ["Visible"]
      101 LOADB                            R0 0
      102 SETUPVAL                         R0 14
      103 GETIMPORT                        R0 K26 [game]
      105 LOADK                            R2 K27 ["NextGenDraggersEnabledFeature"]
      106 NAMECALL                         R0 R0 K28 ["GetEngineFeature"]
      108 CALL                             R0 2 1
      109 JUMPIFNOT                        R0 ; [+36]
      110 GETUPVAL                         R0 10
      111 GETUPVAL                         R1 15
      112 SETTABLEKS                       R1 R0 K29 ["TextColor3"]
      114 GETUPVAL                         R0 11
      115 GETUPVAL                         R1 16
      116 SETTABLEKS                       R1 R0 K29 ["TextColor3"]
      118 GETUPVAL                         R0 12
      119 GETUPVAL                         R1 17
      120 SETTABLEKS                       R1 R0 K29 ["TextColor3"]
      122 GETUPVAL                         R0 9
      123 LOADK                            R2 K13 ["x"]
      124 NAMECALL                         R0 R0 K10 ["WaitForChild"]
      126 CALL                             R0 2 1
      127 GETUPVAL                         R1 9
      128 LOADK                            R3 K30 ["y"]
      129 NAMECALL                         R1 R1 K10 ["WaitForChild"]
      131 CALL                             R1 2 1
      132 GETUPVAL                         R2 9
      133 LOADK                            R4 K31 ["z"]
      134 NAMECALL                         R2 R2 K10 ["WaitForChild"]
      136 CALL                             R2 2 1
      137 GETUPVAL                         R3 15
      138 SETTABLEKS                       R3 R0 K32 ["Color"]
      140 GETUPVAL                         R3 16
      141 SETTABLEKS                       R3 R1 K32 ["Color"]
      143 GETUPVAL                         R3 17
      144 SETTABLEKS                       R3 R2 K32 ["Color"]
      146 GETIMPORT                        R0 K34 [Instance.new]
      148 LOADK                            R1 K35 ["Camera"]
      149 CALL                             R0 1 1
      150 SETUPVAL                         R0 18
      151 GETUPVAL                         R0 18
      152 GETUPVAL                         R1 5
      153 SETTABLEKS                       R1 R0 K7 ["Parent"]
      155 GETUPVAL                         R0 18
      156 GETIMPORT                        R1 K37 [CFrame.new]
      158 LOADK                            R2 K38 [{0, 0, 0}]
      159 LOADK                            R3 K39 [{0, 0, -1}]
      160 CALL                             R1 2 1
      161 SETTABLEKS                       R1 R0 K36 ["CFrame"]
      163 GETUPVAL                         R0 18
      164 LOADN                            R1 70
      165 SETTABLEKS                       R1 R0 K40 ["FieldOfView"]
      167 GETUPVAL                         R0 5
      168 GETUPVAL                         R1 18
      169 SETTABLEKS                       R1 R0 K41 ["CurrentCamera"]
      171 GETIMPORT                        R0 K43 [script]
      173 GETTABLEKS                       R0 R0 K7 ["Parent"]
      175 GETTABLEKS                       R0 R0 K44 ["LocalizedStrings"]
      177 GETUPVAL                         R3 19
      178 GETTABLEKS                       R3 R3 K45 ["StudioLocaleId"]
      180 NAMECALL                         R1 R0 K46 ["GetTranslator"]
      182 CALL                             R1 2 1
      183 LOADK                            R4 K47 ["en-us"]
      184 NAMECALL                         R2 R0 K46 ["GetTranslator"]
      186 CALL                             R2 2 1
      187 GETUPVAL                         R3 9
      188 NAMECALL                         R3 R3 K48 ["GetChildren"]
      190 CALL                             R3 1 1
      191 LOADN                            R6 1
      192 LENGTH                           R4 R3
      193 LOADN                            R5 1
      194 FORNPREP                         R4
      195 GETTABLE                         R7 R3 R6
      196 GETTABLEKS                       R8 R7 K49 ["ClassName"]
      198 JUMPIFEQKS                       R8 K50 ["Part"] ; [+5]
      200 GETTABLEKS                       R8 R7 K49 ["ClassName"]
      202 JUMPIFNOTEQKS                    R8 K51 ["MeshPart"] ; [+12]
      204 GETUPVAL                         R8 9
      205 GETTABLEKS                       R8 R8 K36 ["CFrame"]
      207 GETTABLEKS                       R10 R7 K36 ["CFrame"]
      209 NAMECALL                         R8 R8 K52 ["ToObjectSpace"]
      211 CALL                             R8 2 1
      212 SETTABLEKS                       R8 R7 K36 ["CFrame"]
      214 JUMP                             ; [+48]
      215 GETTABLEKS                       R8 R7 K49 ["ClassName"]
      217 JUMPIFNOTEQKS                    R8 K53 ["Decal"] ; [+45]
      219 GETTABLEKS                       R8 R7 K54 ["Name"]
      221 GETTABLEKS                       R10 R7 K54 ["Name"]
      223 LOADK                            R11 K55 ["_hover"]
      224 CONCAT                           R9 R10 R11
      225 GETIMPORT                        R10 K57 [pcall]
      227 NEWCLOSURE                       R11 P0
      228 CAPTURE                          UPVAL U20
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R9
      233 CALL                             R10 1 1
      234 JUMPIF                           R10 ; [+20]
      235 GETUPVAL                         R11 20
      236 GETTABLEKS                       R11 R11 K58 ["Normal"]
      238 GETTABLEKS                       R12 R7 K54 ["Name"]
      240 MOVE                             R15 R8
      241 NAMECALL                         R13 R2 K59 ["FormatByKey"]
      243 CALL                             R13 2 1
      244 SETTABLE                         R13 R11 R12
      245 GETUPVAL                         R11 20
      246 GETTABLEKS                       R11 R11 K60 ["Hover"]
      248 GETTABLEKS                       R12 R7 K54 ["Name"]
      250 MOVE                             R15 R9
      251 NAMECALL                         R13 R2 K59 ["FormatByKey"]
      253 CALL                             R13 2 1
      254 SETTABLE                         R13 R11 R12
      255 GETUPVAL                         R12 20
      256 GETTABLEKS                       R12 R12 K58 ["Normal"]
      258 GETTABLEKS                       R13 R7 K54 ["Name"]
      260 GETTABLE                         R11 R12 R13
      261 SETTABLEKS                       R11 R7 K61 ["Texture"]
      263 FORNLOOP                         R4
      264 GETUPVAL                         R4 9
      265 GETIMPORT                        R5 K37 [CFrame.new]
      267 CALL                             R5 0 1
      268 SETTABLEKS                       R5 R4 K36 ["CFrame"]
      270 NEWTABLE                         R4 0 3
      272 LOADK                            R5 K62 ["n"]
      273 LOADK                            R6 K63 ["0"]
      274 LOADK                            R7 K64 ["p"]
      275 SETLIST                          R4 R5 3 [1]
      277 LOADN                            R7 -1
      278 LOADN                            R5 1
      279 LOADN                            R6 1
      280 FORNPREP                         R5
      281 LOADN                            R10 -1
      282 LOADN                            R8 1
      283 LOADN                            R9 1
      284 FORNPREP                         R8
      285 LOADN                            R13 -1
      286 LOADN                            R11 1
      287 LOADN                            R12 1
      288 FORNPREP                         R11
      289 ADDK                             R18 R7 K65 [2]
      290 GETTABLE                         R15 R4 R18
      291 ADDK                             R18 R10 K65 [2]
      292 GETTABLE                         R16 R4 R18
      293 ADDK                             R18 R13 K65 [2]
      294 GETTABLE                         R17 R4 R18
      295 CONCAT                           R14 R15 R17
      296 GETUPVAL                         R15 21
      297 GETIMPORT                        R16 K37 [CFrame.new]
      299 FASTCALL                         VECTOR ; [+2]
      300 GETIMPORT                        R17 K67 [Vector3.new]
      302 CALL                             R17 0 1
      303 MINUS                            R19 R7
      304 MINUS                            R20 R10
      305 MINUS                            R21 R13
      306 FASTCALL                         VECTOR ; [+2]
      307 GETIMPORT                        R18 K67 [Vector3.new]
      309 CALL                             R18 3 1
      310 GETTABLEKS                       R18 R18 K68 ["Unit"]
      312 CALL                             R16 2 1
      313 SETTABLE                         R16 R15 R14
      314 FORNLOOP                         R11
      315 FORNLOOP                         R8
      316 FORNLOOP                         R5
      317 GETUPVAL                         R5 21
      318 GETIMPORT                        R6 K70 [CFrame.fromEulerAnglesYXZ]
      320 LOADK                            R7 K71 [-1.5707963267949]
      321 LOADK                            R8 K72 [3.14159265358979]
      322 LOADN                            R9 0
      323 CALL                             R6 3 1
      324 SETTABLEKS                       R6 R5 K73 ["0p0"]
      326 GETUPVAL                         R5 21
      327 GETIMPORT                        R6 K75 [CFrame.fromEulerAnglesXYZ]
      329 LOADK                            R7 K71 [-1.5707963267949]
      330 LOADK                            R8 K72 [3.14159265358979]
      331 LOADN                            R9 0
      332 CALL                             R6 3 1
      333 SETTABLEKS                       R6 R5 K76 ["0n0"]
      335 LOADK                            R5 K77 [{0.576, -0.48, -0.48}]
      336 SETUPVAL                         R5 22
      337 LOADK                            R5 K78 [{-0.48, 0.576, -0.48}]
      338 SETUPVAL                         R5 23
      339 LOADK                            R5 K79 [{-0.48, -0.48, 0.576}]
      340 SETUPVAL                         R5 24
      341 GETIMPORT                        R5 K81 [plugin]
      343 LOADK                            R7 K82 ["ViewSelector_Active"]
      344 NAMECALL                         R5 R5 K83 ["GetSetting"]
      346 CALL                             R5 2 1
      347 SETUPVAL                         R5 25
      348 GETUPVAL                         R5 25
      349 JUMPIFNOTEQKNIL                  R5 ; [+3]
      351 LOADB                            R5 1
      352 SETUPVAL                         R5 25
      353 GETUPVAL                         R5 26
      354 GETUPVAL                         R7 25
      355 NAMECALL                         R5 R5 K84 ["SetActive"]
      357 CALL                             R5 2 0
      358 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LockCameraSpeed"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K1 ["rbxasset://studio_svg_textures/Lua/CameraService/Light/Standard/speedLocked.png"]
        6 SETTABLEKS                       R1 R0 K2 ["Image"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 LOADK                            R1 K3 ["rbxasset://studio_svg_textures/Lua/CameraService/Light/Standard/speedUnlocked.png"]
       11 SETTABLEKS                       R1 R0 K2 ["Image"]
       13 RETURN                           R0 0

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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Play"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Play"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIF                           R0 ; [+4]
       10 GETUPVAL                         R0 3
       11 NAMECALL                         R0 R0 K0 ["Play"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K0 ["Play"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Cancel"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Cancel"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIF                           R0 ; [+4]
       10 GETUPVAL                         R0 3
       11 NAMECALL                         R0 R0 K0 ["Cancel"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K0 ["Cancel"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 JUMPIFNOT                        R0 ; [+4]
       22 GETIMPORT                        R0 K3 [task.cancel]
       24 GETUPVAL                         R1 5
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 6
       27 LOADK                            R1 K4 [0.1]
       28 SETTABLEKS                       R1 R0 K5 ["TextTransparency"]
       30 GETUPVAL                         R0 2
       31 JUMPIFNOT                        R0 ; [+5]
       32 GETUPVAL                         R0 7
       33 LOADN                            R1 0
       34 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       36 JUMP                             ; [+4]
       37 GETUPVAL                         R0 7
       38 LOADK                            R1 K4 [0.1]
       39 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       41 GETUPVAL                         R0 2
       42 JUMPIF                           R0 ; [+4]
       43 GETUPVAL                         R0 8
       44 LOADK                            R1 K4 [0.1]
       45 SETTABLEKS                       R1 R0 K7 ["ImageTransparency"]
       47 GETUPVAL                         R0 2
       48 JUMPIF                           R0 ; [+9]
       49 GETUPVAL                         R0 9
       50 GETTABLEKS                       R0 R0 K8 ["isDraggingSlider"]
       52 JUMPIFNOT                        R0 ; [+5]
       53 GETUPVAL                         R0 6
       54 LOADK                            R1 K9 [0.4]
       55 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       57 JUMP                             ; [+4]
       58 GETUPVAL                         R0 6
       59 LOADK                            R1 K10 [0.6]
       60 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       62 GETUPVAL                         R0 2
       63 JUMPIF                           R0 ; [+13]
       64 GETUPVAL                         R0 9
       65 GETTABLEKS                       R0 R0 K11 ["isClickingLock"]
       67 JUMPIFNOT                        R0 ; [+5]
       68 GETUPVAL                         R0 8
       69 LOADK                            R1 K9 [0.4]
       70 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       72 JUMP                             ; [+4]
       73 GETUPVAL                         R0 8
       74 LOADK                            R1 K10 [0.6]
       75 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       77 GETUPVAL                         R0 9
       78 GETTABLEKS                       R0 R0 K12 ["mouseOverSlider"]
       80 JUMPIF                           R0 ; [+4]
       81 GETUPVAL                         R0 9
       82 GETTABLEKS                       R0 R0 K8 ["isDraggingSlider"]
       84 JUMPIFNOT                        R0 ; [+5]
       85 GETUPVAL                         R0 10
       86 LOADK                            R1 K4 [0.1]
       87 SETTABLEKS                       R1 R0 K13 ["Transparency"]
       89 JUMP                             ; [+4]
       90 GETUPVAL                         R0 10
       91 LOADN                            R1 1
       92 SETTABLEKS                       R1 R0 K13 ["Transparency"]
       94 GETUPVAL                         R0 2
       95 JUMPIF                           R0 ; [+13]
       96 GETUPVAL                         R0 9
       97 GETTABLEKS                       R0 R0 K14 ["mouseOverLock"]
       99 JUMPIFNOT                        R0 ; [+5]
      100 GETUPVAL                         R0 11
      101 LOADK                            R1 K4 [0.1]
      102 SETTABLEKS                       R1 R0 K13 ["Transparency"]
      104 JUMP                             ; [+4]
      105 GETUPVAL                         R0 11
      106 LOADN                            R1 1
      107 SETTABLEKS                       R1 R0 K13 ["Transparency"]
      109 GETUPVAL                         R0 2
      110 JUMPIFNOT                        R0 ; [+8]
      111 GETUPVAL                         R0 12
      112 LOADN                            R1 0
      113 SETTABLEKS                       R1 R0 K7 ["ImageTransparency"]
      115 GETUPVAL                         R0 12
      116 LOADN                            R1 0
      117 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
      119 GETUPVAL                         R0 9
      120 GETTABLEKS                       R0 R0 K15 ["mouseOverViewSelector"]
      122 JUMPIF                           R0 ; [+33]
      123 GETUPVAL                         R0 9
      124 GETTABLEKS                       R0 R0 K12 ["mouseOverSlider"]
      126 JUMPIF                           R0 ; [+29]
      127 GETUPVAL                         R0 9
      128 GETTABLEKS                       R0 R0 K8 ["isDraggingSlider"]
      130 JUMPIF                           R0 ; [+25]
      131 GETUPVAL                         R0 9
      132 GETTABLEKS                       R0 R0 K14 ["mouseOverLock"]
      134 JUMPIF                           R0 ; [+21]
      135 GETUPVAL                         R0 9
      136 GETTABLEKS                       R0 R0 K11 ["isClickingLock"]
      138 JUMPIF                           R0 ; [+17]
      139 GETUPVAL                         R0 2
      140 JUMPIFNOT                        R0 ; [+4]
      141 GETUPVAL                         R0 9
      142 GETTABLEKS                       R0 R0 K16 ["mouseOverNavModel"]
      144 JUMPIF                           R0 ; [+11]
      145 GETIMPORT                        R0 K18 [task.delay]
      147 LOADK                            R1 K19 [3.5]
      148 NEWCLOSURE                       R2 P0
      149 CAPTURE                          UPVAL U0
      150 CAPTURE                          UPVAL U1
      151 CAPTURE                          UPVAL U2
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          UPVAL U4
      154 CALL                             R0 2 1
      155 SETUPVAL                         R0 5
      156 RETURN                           R0 0

PROTO_40:
        0 SUBK                             R3 R0 K1 [0.1]
        1 DIVK                             R2 R3 K0 [19.9]
        2 LOADN                            R3 0
        3 LOADN                            R4 1
        4 FASTCALL                         MATH_CLAMP ; [+2]
        5 GETIMPORT                        R1 K4 [math.clamp]
        7 CALL                             R1 3 1
        8 LOADN                            R4 10
        9 GETUPVAL                         R5 0
       10 FASTCALL2K                       MATH_POW R1 K5 ; [+5]
       12 MOVE                             R7 R1
       13 LOADK                            R8 K5 [0.454545454545455]
       14 GETIMPORT                        R6 K7 [math.pow]
       16 CALL                             R6 2 1
       17 FASTCALL                         MATH_LERP ; [+2]
       18 GETIMPORT                        R3 K9 [math.lerp]
       20 CALL                             R3 3 1
       21 LOADN                            R4 10
       22 GETUPVAL                         R5 0
       23 FASTCALL                         MATH_CLAMP ; [+2]
       24 GETIMPORT                        R2 K4 [math.clamp]
       26 CALL                             R2 3 1
       27 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R2 K2 ["X"]
        5 ADDK                             R1 R2 K0 [10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["AbsolutePosition"]
        9 GETTABLEKS                       R3 R3 K2 ["X"]
       11 GETUPVAL                         R4 1
       12 ADD                              R2 R3 R4
       13 SUB                              R5 R0 R1
       14 SUB                              R6 R2 R1
       15 DIV                              R4 R5 R6
       16 LOADN                            R5 0
       17 LOADN                            R6 1
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R3 K5 [math.clamp]
       21 CALL                             R3 3 1
       22 LOADK                            R6 K6 [0.1]
       23 LOADN                            R7 20
       24 FASTCALL2K                       MATH_POW R3 K7 ; [+5]
       26 MOVE                             R9 R3
       27 LOADK                            R10 K7 [2.2]
       28 GETIMPORT                        R8 K9 [math.pow]
       30 CALL                             R8 2 1
       31 FASTCALL                         MATH_LERP ; [+2]
       32 GETIMPORT                        R5 K11 [math.lerp]
       34 CALL                             R5 3 1
       35 LOADK                            R6 K6 [0.1]
       36 LOADN                            R7 20
       37 FASTCALL                         MATH_CLAMP ; [+2]
       38 GETIMPORT                        R4 K5 [math.clamp]
       40 CALL                             R4 3 1
       41 RETURN                           R4 1

PROTO_42:
        0 GETIMPORT                        R1 K2 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K3 ["Studio"]
        5 GETTABLEKS                       R0 R1 K0 ["Camera Speed"]
        7 GETUPVAL                         R1 0
        8 JUMPIFNOT                        R1 ; [+55]
        9 GETUPVAL                         R1 1
       10 LOADK                            R3 K4 [0.5]
       11 JUMPIFNOTLT                      R0 R3 ; [+7]
       13 GETIMPORT                        R2 K7 [string.format]
       15 LOADK                            R3 K8 ["%.2f"]
       16 MOVE                             R4 R0
       17 CALL                             R2 2 1
       18 JUMP                             ; [+5]
       19 GETIMPORT                        R2 K7 [string.format]
       21 LOADK                            R3 K9 ["%.1f"]
       22 MOVE                             R4 R0
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K10 ["Text"]
       26 GETUPVAL                         R1 2
       27 GETIMPORT                        R2 K13 [UDim2.new]
       29 LOADN                            R3 0
       30 SUBK                             R7 R0 K15 [0.1]
       31 DIVK                             R6 R7 K14 [19.9]
       32 LOADN                            R7 0
       33 LOADN                            R8 1
       34 FASTCALL                         MATH_CLAMP ; [+2]
       35 GETIMPORT                        R5 K18 [math.clamp]
       37 CALL                             R5 3 1
       38 LOADN                            R8 10
       39 GETUPVAL                         R9 3
       40 FASTCALL2K                       MATH_POW R5 K19 ; [+5]
       42 MOVE                             R11 R5
       43 LOADK                            R12 K19 [0.454545454545455]
       44 GETIMPORT                        R10 K21 [math.pow]
       46 CALL                             R10 2 1
       47 FASTCALL                         MATH_LERP ; [+2]
       48 GETIMPORT                        R7 K23 [math.lerp]
       50 CALL                             R7 3 1
       51 LOADN                            R8 10
       52 GETUPVAL                         R9 3
       53 FASTCALL                         MATH_CLAMP ; [+2]
       54 GETIMPORT                        R6 K18 [math.clamp]
       56 CALL                             R6 3 1
       57 MOVE                             R4 R6
       58 LOADN                            R5 1
       59 LOADN                            R6 0
       60 CALL                             R2 4 1
       61 SETTABLEKS                       R2 R1 K24 ["Size"]
       63 RETURN                           R0 0
       64 GETUPVAL                         R1 1
       65 GETIMPORT                        R2 K7 [string.format]
       67 LOADK                            R3 K9 ["%.1f"]
       68 MOVE                             R4 R0
       69 CALL                             R2 2 1
       70 SETTABLEKS                       R2 R1 K10 ["Text"]
       72 LOADN                            R2 10
       73 DIVK                             R5 R0 K25 [20]
       74 GETUPVAL                         R6 3
       75 MUL                              R4 R5 R6
       76 GETUPVAL                         R5 3
       77 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       79 GETIMPORT                        R3 K27 [math.min]
       81 CALL                             R3 2 1
       82 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       84 GETIMPORT                        R1 K29 [math.max]
       86 CALL                             R1 2 1
       87 GETUPVAL                         R2 2
       88 GETIMPORT                        R3 K13 [UDim2.new]
       90 LOADN                            R4 0
       91 MOVE                             R5 R1
       92 LOADN                            R6 1
       93 LOADN                            R7 0
       94 CALL                             R3 4 1
       95 SETTABLEKS                       R3 R2 K24 ["Size"]
       97 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverSlider"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["Visible"]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverSlider"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isDraggingSlider"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+56]
        8 GETIMPORT                        R0 K2 [settings]
       10 CALL                             R0 0 1
       11 GETTABLEKS                       R0 R0 K3 ["Studio"]
       13 GETUPVAL                         R2 3
       14 NAMECALL                         R2 R2 K4 ["GetMouseLocation"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K5 ["X"]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K7 ["AbsolutePosition"]
       22 GETTABLEKS                       R4 R4 K5 ["X"]
       24 ADDK                             R3 R4 K6 [10]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K7 ["AbsolutePosition"]
       28 GETTABLEKS                       R5 R5 K5 ["X"]
       30 GETUPVAL                         R6 5
       31 ADD                              R4 R5 R6
       32 SUB                              R7 R2 R3
       33 SUB                              R8 R4 R3
       34 DIV                              R6 R7 R8
       35 LOADN                            R7 0
       36 LOADN                            R8 1
       37 FASTCALL                         MATH_CLAMP ; [+2]
       38 GETIMPORT                        R5 K10 [math.clamp]
       40 CALL                             R5 3 1
       41 LOADK                            R8 K11 [0.1]
       42 LOADN                            R9 20
       43 FASTCALL2K                       MATH_POW R5 K12 ; [+5]
       45 MOVE                             R11 R5
       46 LOADK                            R12 K12 [2.2]
       47 GETIMPORT                        R10 K14 [math.pow]
       49 CALL                             R10 2 1
       50 FASTCALL                         MATH_LERP ; [+2]
       51 GETIMPORT                        R7 K16 [math.lerp]
       53 CALL                             R7 3 1
       54 LOADK                            R8 K11 [0.1]
       55 LOADN                            R9 20
       56 FASTCALL                         MATH_CLAMP ; [+2]
       57 GETIMPORT                        R6 K10 [math.clamp]
       59 CALL                             R6 3 1
       60 MOVE                             R1 R6
       61 SETTABLEKS                       R1 R0 K17 ["Camera Speed"]
       63 JUMP                             ; [+34]
       64 GETUPVAL                         R2 3
       65 NAMECALL                         R2 R2 K4 ["GetMouseLocation"]
       67 CALL                             R2 1 1
       68 GETTABLEKS                       R2 R2 K5 ["X"]
       70 GETUPVAL                         R3 4
       71 GETTABLEKS                       R3 R3 K7 ["AbsolutePosition"]
       73 GETTABLEKS                       R3 R3 K5 ["X"]
       75 SUB                              R1 R2 R3
       76 GETUPVAL                         R2 5
       77 DIV                              R0 R1 R2
       78 GETIMPORT                        R1 K2 [settings]
       80 CALL                             R1 0 1
       81 GETTABLEKS                       R1 R1 K3 ["Studio"]
       83 LOADN                            R3 20
       84 LOADK                            R5 K11 [0.1]
       85 MULK                             R6 R0 K18 [20]
       86 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       88 GETIMPORT                        R4 K20 [math.max]
       90 CALL                             R4 2 1
       91 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       93 GETIMPORT                        R2 K22 [math.min]
       95 CALL                             R2 2 1
       96 SETTABLEKS                       R2 R1 K17 ["Camera Speed"]
       98 GETUPVAL                         R0 6
       99 GETTABLEKS                       R0 R0 K23 ["RenderStepped"]
      101 NAMECALL                         R0 R0 K24 ["Wait"]
      103 CALL                             R0 1 0
      104 GETUPVAL                         R0 3
      105 GETIMPORT                        R2 K28 [Enum.UserInputType.MouseButton1]
      107 NAMECALL                         R0 R0 K29 ["IsMouseButtonPressed"]
      109 CALL                             R0 2 1
      110 JUMPIFNOT                        R0 ; [+1]
      111 JUMPBACK                         ; [-106]
      112 GETUPVAL                         R0 0
      113 LOADB                            R1 0
      114 SETTABLEKS                       R1 R0 K0 ["isDraggingSlider"]
      116 GETUPVAL                         R0 1
      117 CALL                             R0 0 0
      118 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFNOTEQ                      R1 R2 ; [+78]
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
       22 GETUPVAL                         R7 0
       23 FASTCALL2K                       MATH_POW R3 K13 ; [+5]
       25 MOVE                             R9 R3
       26 LOADK                            R10 K13 [0.454545454545455]
       27 GETIMPORT                        R8 K15 [math.pow]
       29 CALL                             R8 2 1
       30 FASTCALL                         MATH_LERP ; [+2]
       31 GETIMPORT                        R5 K17 [math.lerp]
       33 CALL                             R5 3 1
       34 LOADN                            R6 10
       35 GETUPVAL                         R7 0
       36 FASTCALL                         MATH_CLAMP ; [+2]
       37 GETIMPORT                        R4 K12 [math.clamp]
       39 CALL                             R4 3 1
       40 MOVE                             R1 R4
       41 GETTABLEKS                       R4 R0 K19 ["Position"]
       43 GETTABLEKS                       R4 R4 K20 ["Z"]
       45 MULK                             R3 R4 K18 [3]
       46 ADD                              R2 R1 R3
       47 SUBK                             R5 R2 K21 [10]
       48 GETUPVAL                         R7 0
       49 SUBK                             R6 R7 K21 [10]
       50 DIV                              R4 R5 R6
       51 LOADN                            R5 0
       52 LOADN                            R6 1
       53 FASTCALL                         MATH_CLAMP ; [+2]
       54 GETIMPORT                        R3 K12 [math.clamp]
       56 CALL                             R3 3 1
       57 GETIMPORT                        R4 K6 [settings]
       59 CALL                             R4 0 1
       60 GETTABLEKS                       R4 R4 K7 ["Studio"]
       62 LOADK                            R7 K9 [0.1]
       63 LOADN                            R8 20
       64 FASTCALL2K                       MATH_POW R3 K22 ; [+5]
       66 MOVE                             R10 R3
       67 LOADK                            R11 K22 [2.2]
       68 GETIMPORT                        R9 K15 [math.pow]
       70 CALL                             R9 2 1
       71 FASTCALL                         MATH_LERP ; [+2]
       72 GETIMPORT                        R6 K17 [math.lerp]
       74 CALL                             R6 3 1
       75 LOADK                            R7 K9 [0.1]
       76 LOADN                            R8 20
       77 FASTCALL                         MATH_CLAMP ; [+2]
       78 GETIMPORT                        R5 K12 [math.clamp]
       80 CALL                             R5 3 1
       81 SETTABLEKS                       R5 R4 K4 ["Camera Speed"]
       83 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverLock"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverLock"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["LockCameraSpeed"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["LockCameraSpeed"]
        7 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LockCameraSpeed"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K1 ["rbxasset://studio_svg_textures/Lua/CameraService/Light/Standard/speedLocked.png"]
        6 SETTABLEKS                       R1 R0 K2 ["Image"]
        8 JUMP                             ; [+4]
        9 GETUPVAL                         R0 1
       10 LOADK                            R1 K3 ["rbxasset://studio_svg_textures/Lua/CameraService/Light/Standard/speedUnlocked.png"]
       11 SETTABLEKS                       R1 R0 K2 ["Image"]
       13 GETUPVAL                         R0 2
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverNavModel"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["Visible"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverNavModel"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_57:
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

PROTO_58:
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
      161 GETIMPORT                        R40 K1 [game]
      163 LOADK                            R42 K36 ["NewCameraControls_BetaUpdate"]
      164 NAMECALL                         R40 R40 K3 ["GetEngineFeature"]
      166 CALL                             R40 2 1
      167 NEWCLOSURE                       R41 P1
      168 CAPTURE                          REF R16
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R0
      171 CAPTURE                          VAL R5
      172 CAPTURE                          REF R17
      173 CAPTURE                          REF R18
      174 CAPTURE                          REF R19
      175 CAPTURE                          REF R29
      176 CAPTURE                          VAL R40
      177 CAPTURE                          REF R20
      178 CAPTURE                          REF R21
      179 CAPTURE                          REF R22
      180 CAPTURE                          REF R23
      181 CAPTURE                          REF R27
      182 CAPTURE                          REF R28
      183 CAPTURE                          REF R37
      184 CAPTURE                          REF R38
      185 CAPTURE                          REF R39
      186 CAPTURE                          REF R15
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R35
      189 CAPTURE                          VAL R34
      190 CAPTURE                          REF R24
      191 CAPTURE                          REF R25
      192 CAPTURE                          REF R26
      193 CAPTURE                          REF R10
      194 CAPTURE                          VAL R9
      195 DUPCLOSURE                       R42 K37 [PROTO_3]
      196 DUPCLOSURE                       R43 K38 [PROTO_5]
      197 DUPCLOSURE                       R44 K39 [PROTO_6]
      198 CAPTURE                          VAL R35
      199 DUPCLOSURE                       R45 K40 [PROTO_7]
      200 CAPTURE                          VAL R35
      201 DUPCLOSURE                       R46 K41 [PROTO_9]
      202 NEWCLOSURE                       R47 P7
      203 CAPTURE                          VAL R1
      204 CAPTURE                          REF R18
      205 NEWCLOSURE                       R48 P8
      206 CAPTURE                          VAL R1
      207 CAPTURE                          REF R18
      208 CAPTURE                          REF R15
      209 CAPTURE                          REF R19
      210 CAPTURE                          VAL R43
      211 CAPTURE                          VAL R46
      212 CAPTURE                          REF R20
      213 CAPTURE                          REF R14
      214 CAPTURE                          VAL R35
      215 NEWCLOSURE                       R49 P9
      216 CAPTURE                          REF R28
      217 CAPTURE                          REF R11
      218 CAPTURE                          REF R27
      219 NEWCLOSURE                       R50 P10
      220 CAPTURE                          REF R28
      221 CAPTURE                          VAL R49
      222 NEWCLOSURE                       R51 P11
      223 CAPTURE                          REF R14
      224 CAPTURE                          VAL R35
      225 CAPTURE                          REF R27
      226 CAPTURE                          REF R28
      227 NEWCLOSURE                       R52 P12
      228 CAPTURE                          REF R12
      229 CAPTURE                          REF R13
      230 CAPTURE                          REF R17
      231 NEWCLOSURE                       R53 P13
      232 CAPTURE                          REF R19
      233 CAPTURE                          REF R17
      234 NEWCLOSURE                       R54 P14
      235 CAPTURE                          REF R19
      236 CAPTURE                          REF R17
      237 NEWCLOSURE                       R55 P15
      238 CAPTURE                          REF R12
      239 CAPTURE                          VAL R54
      240 NEWCLOSURE                       R56 P16
      241 CAPTURE                          REF R12
      242 CAPTURE                          REF R13
      243 CAPTURE                          REF R17
      244 NEWCLOSURE                       R57 P17
      245 CAPTURE                          REF R33
      246 CAPTURE                          REF R32
      247 CAPTURE                          REF R31
      248 CAPTURE                          REF R30
      249 NEWCLOSURE                       R58 P18
      250 CAPTURE                          REF R12
      251 CAPTURE                          REF R14
      252 CAPTURE                          VAL R34
      253 CAPTURE                          REF R33
      254 CAPTURE                          REF R32
      255 CAPTURE                          REF R31
      256 CAPTURE                          REF R30
      257 CAPTURE                          VAL R54
      258 NEWCLOSURE                       R59 P19
      259 CAPTURE                          REF R20
      260 CAPTURE                          REF R11
      261 CAPTURE                          REF R18
      262 CAPTURE                          REF R15
      263 CAPTURE                          REF R19
      264 CAPTURE                          REF R21
      265 CAPTURE                          REF R24
      266 CAPTURE                          REF R22
      267 CAPTURE                          REF R25
      268 CAPTURE                          REF R23
      269 CAPTURE                          REF R26
      270 NEWCLOSURE                       R60 P20
      271 CAPTURE                          REF R30
      272 CAPTURE                          REF R32
      273 CAPTURE                          REF R33
      274 CAPTURE                          REF R31
      275 CAPTURE                          REF R15
      276 CAPTURE                          REF R11
      277 CAPTURE                          REF R18
      278 CAPTURE                          REF R20
      279 CAPTURE                          REF R19
      280 CAPTURE                          REF R21
      281 CAPTURE                          REF R24
      282 CAPTURE                          REF R22
      283 CAPTURE                          REF R25
      284 CAPTURE                          REF R23
      285 CAPTURE                          REF R26
      286 CAPTURE                          VAL R49
      287 NEWCLOSURE                       R61 P21
      288 CAPTURE                          REF R16
      289 CAPTURE                          VAL R3
      290 CAPTURE                          VAL R60
      291 CAPTURE                          VAL R0
      292 CAPTURE                          VAL R53
      293 CAPTURE                          VAL R9
      294 NEWCLOSURE                       R62 P22
      295 CAPTURE                          REF R10
      296 CAPTURE                          VAL R61
      297 NEWCLOSURE                       R63 P23
      298 CAPTURE                          REF R11
      299 CAPTURE                          VAL R43
      300 CAPTURE                          VAL R46
      301 CAPTURE                          VAL R34
      302 CAPTURE                          REF R33
      303 CAPTURE                          REF R32
      304 CAPTURE                          REF R31
      305 CAPTURE                          REF R30
      306 CAPTURE                          VAL R58
      307 NAMECALL                         R64 R0 K42 ["IsEdit"]
      309 CALL                             R64 1 1
      310 JUMPIF                           R64 ; [+9]
      311 NAMECALL                         R64 R0 K43 ["IsServer"]
      313 CALL                             R64 1 1
      314 JUMPIF                           R64 ; [+5]
      315 LOADB                            R64 0
      316 SETTABLEKS                       R64 R9 K44 ["Enabled"]
      318 CLOSEUPVALS                      R10
      319 RETURN                           R0 0
      320 MOVE                             R64 R41
      321 CALL                             R64 0 0
      322 MOVE                             R64 R61
      323 MOVE                             R65 R10
      324 CALL                             R64 1 0
      325 GETTABLEKS                       R64 R9 K45 ["Click"]
      327 MOVE                             R66 R62
      328 NAMECALL                         R64 R64 K46 ["connect"]
      330 CALL                             R64 2 0
      331 GETTABLEKS                       R64 R29 K47 ["MouseMoved"]
      333 MOVE                             R66 R48
      334 NAMECALL                         R64 R64 K46 ["connect"]
      336 CALL                             R64 2 0
      337 GETTABLEKS                       R64 R29 K48 ["MouseEnter"]
      339 MOVE                             R66 R50
      340 NAMECALL                         R64 R64 K46 ["connect"]
      342 CALL                             R64 2 0
      343 GETTABLEKS                       R64 R29 K49 ["MouseLeave"]
      345 MOVE                             R66 R51
      346 NAMECALL                         R64 R64 K46 ["connect"]
      348 CALL                             R64 2 0
      349 GETTABLEKS                       R64 R29 K50 ["MouseButton1Down"]
      351 MOVE                             R66 R56
      352 NAMECALL                         R64 R64 K46 ["connect"]
      354 CALL                             R64 2 0
      355 GETTABLEKS                       R64 R29 K51 ["MouseButton1Up"]
      357 MOVE                             R66 R58
      358 NAMECALL                         R64 R64 K46 ["connect"]
      360 CALL                             R64 2 0
      361 GETTABLEKS                       R64 R4 K52 ["InputChanged"]
      363 MOVE                             R66 R52
      364 NAMECALL                         R64 R64 K46 ["connect"]
      366 CALL                             R64 2 0
      367 GETTABLEKS                       R64 R4 K53 ["InputEnded"]
      369 MOVE                             R66 R55
      370 NAMECALL                         R64 R64 K46 ["connect"]
      372 CALL                             R64 2 0
      373 MOVE                             R64 R63
      374 LOADK                            R67 K54 ["RightArrow"]
      375 NAMECALL                         R65 R27 K55 ["WaitForChild"]
      377 CALL                             R65 2 1
      378 GETIMPORT                        R66 K58 [Vector2.new]
      380 LOADN                            R67 1
      381 LOADN                            R68 0
      382 CALL                             R66 2 -1
      383 CALL                             R64 -1 0
      384 MOVE                             R64 R63
      385 LOADK                            R67 K59 ["LeftArrow"]
      386 NAMECALL                         R65 R27 K55 ["WaitForChild"]
      388 CALL                             R65 2 1
      389 GETIMPORT                        R66 K58 [Vector2.new]
      391 LOADN                            R67 -1
      392 LOADN                            R68 0
      393 CALL                             R66 2 -1
      394 CALL                             R64 -1 0
      395 MOVE                             R64 R63
      396 LOADK                            R67 K60 ["UpArrow"]
      397 NAMECALL                         R65 R27 K55 ["WaitForChild"]
      399 CALL                             R65 2 1
      400 GETIMPORT                        R66 K58 [Vector2.new]
      402 LOADN                            R67 0
      403 LOADN                            R68 1
      404 CALL                             R66 2 -1
      405 CALL                             R64 -1 0
      406 MOVE                             R64 R63
      407 LOADK                            R67 K61 ["DownArrow"]
      408 NAMECALL                         R65 R27 K55 ["WaitForChild"]
      410 CALL                             R65 2 1
      411 GETIMPORT                        R66 K58 [Vector2.new]
      413 LOADN                            R67 0
      414 LOADN                            R68 -1
      415 CALL                             R66 2 -1
      416 CALL                             R64 -1 0
      417 GETIMPORT                        R64 K1 [game]
      419 LOADK                            R66 K62 ["NewCameraControls"]
      420 NAMECALL                         R64 R64 K3 ["GetEngineFeature"]
      422 CALL                             R64 2 1
      423 JUMPIFNOT                        R64 ; [+554]
      424 GETIMPORT                        R64 K64 [TweenInfo.new]
      426 LOADK                            R65 K65 [0.2]
      427 GETIMPORT                        R66 K69 [Enum.EasingStyle.Linear]
      429 CALL                             R64 2 1
      430 LOADK                            R67 K70 ["CamSpeed"]
      431 NAMECALL                         R65 R17 K55 ["WaitForChild"]
      433 CALL                             R65 2 1
      434 LOADK                            R68 K71 ["UIStroke"]
      435 NAMECALL                         R66 R65 K55 ["WaitForChild"]
      437 CALL                             R66 2 1
      438 LOADK                            R69 K72 ["Slider"]
      439 NAMECALL                         R67 R65 K55 ["WaitForChild"]
      441 CALL                             R67 2 1
      442 GETTABLEKS                       R68 R65 K73 ["AbsoluteSize"]
      444 GETTABLEKS                       R68 R68 K74 ["X"]
      446 MOVE                             R71 R65
      447 MOVE                             R72 R64
      448 DUPTABLE                         R73 K78 [{["TextTransparency"] = 1, ["BackgroundTransparency"] = 1}]
      449 NAMECALL                         R69 R7 K79 ["Create"]
      451 CALL                             R69 4 1
      452 MOVE                             R72 R67
      453 MOVE                             R73 R64
      454 DUPTABLE                         R74 K80 [{["BackgroundTransparency"] = 1}]
      455 NAMECALL                         R70 R7 K79 ["Create"]
      457 CALL                             R70 4 1
      458 LOADNIL                          R71
      459 JUMPIFNOT                        R40 ; [+38]
      460 GETIMPORT                        R72 K82 [UDim2.new]
      462 LOADN                            R73 0
      463 LOADN                            R74 96
      464 LOADN                            R75 0
      465 LOADN                            R76 22
      466 CALL                             R72 4 1
      467 SETTABLEKS                       R72 R65 K83 ["Size"]
      469 LOADN                            R68 96
      470 GETIMPORT                        R72 K84 [Color3.new]
      472 LOADN                            R73 1
      473 LOADN                            R74 1
      474 LOADN                            R75 1
      475 CALL                             R72 3 1
      476 SETTABLEKS                       R72 R65 K85 ["BackgroundColor3"]
      478 GETIMPORT                        R72 K84 [Color3.new]
      480 LOADN                            R73 1
      481 LOADN                            R74 1
      482 LOADN                            R75 1
      483 CALL                             R72 3 1
      484 SETTABLEKS                       R72 R67 K85 ["BackgroundColor3"]
      486 GETTABLEKS                       R73 R65 K86 ["Position"]
      488 GETIMPORT                        R74 K82 [UDim2.new]
      490 LOADN                            R75 0
      491 LOADN                            R76 13
      492 LOADN                            R77 0
      493 LOADN                            R78 3
      494 CALL                             R74 4 1
      495 ADD                              R72 R73 R74
      496 SETTABLEKS                       R72 R65 K86 ["Position"]
      498 GETIMPORT                        R72 K1 [game]
      500 LOADK                            R74 K87 ["StudioCameraService"]
      501 NAMECALL                         R72 R72 K5 ["GetService"]
      503 CALL                             R72 2 1
      504 LOADB                            R73 0
      505 SETTABLEKS                       R73 R65 K88 ["ClipsDescendants"]
      507 GETIMPORT                        R73 K90 [Instance.new]
      509 LOADK                            R74 K91 ["ImageButton"]
      510 MOVE                             R75 R65
      511 CALL                             R73 2 1
      512 LOADK                            R74 K92 ["SpeedLock"]
      513 SETTABLEKS                       R74 R73 K93 ["Name"]
      515 LOADK                            R74 K94 [0.6]
      516 SETTABLEKS                       R74 R73 K77 ["BackgroundTransparency"]
      518 JUMPIFNOT                        R40 ; [+7]
      519 GETIMPORT                        R74 K84 [Color3.new]
      521 LOADN                            R75 1
      522 LOADN                            R76 1
      523 LOADN                            R77 1
      524 CALL                             R74 3 1
      525 JUMP                             ; [+6]
      526 GETIMPORT                        R74 K84 [Color3.new]
      528 LOADN                            R75 255
      529 LOADN                            R76 255
      530 LOADN                            R77 255
      531 CALL                             R74 3 1
      532 SETTABLEKS                       R74 R73 K85 ["BackgroundColor3"]
      534 JUMPIFNOT                        R40 ; [+7]
      535 GETIMPORT                        R74 K84 [Color3.new]
      537 LOADN                            R75 1
      538 LOADN                            R76 1
      539 LOADN                            R77 1
      540 CALL                             R74 3 1
      541 JUMP                             ; [+6]
      542 GETIMPORT                        R74 K84 [Color3.new]
      544 LOADN                            R75 255
      545 LOADN                            R76 255
      546 LOADN                            R77 255
      547 CALL                             R74 3 1
      548 SETTABLEKS                       R74 R73 K95 ["BorderColor3"]
      550 GETIMPORT                        R74 K58 [Vector2.new]
      552 LOADN                            R75 0
      553 LOADN                            R76 0
      554 CALL                             R74 2 1
      555 SETTABLEKS                       R74 R73 K96 ["AnchorPoint"]
      557 GETIMPORT                        R74 K82 [UDim2.new]
      559 LOADN                            R75 1
      560 LOADN                            R76 5
      561 LOADN                            R77 0
      562 LOADN                            R78 0
      563 CALL                             R74 4 1
      564 SETTABLEKS                       R74 R73 K86 ["Position"]
      566 GETIMPORT                        R74 K82 [UDim2.new]
      568 LOADN                            R75 0
      569 LOADN                            R76 22
      570 LOADN                            R77 0
      571 LOADN                            R78 22
      572 CALL                             R74 4 1
      573 SETTABLEKS                       R74 R73 K83 ["Size"]
      575 LOADN                            R74 20
      576 SETTABLEKS                       R74 R73 K97 ["ZIndex"]
      578 GETIMPORT                        R74 K90 [Instance.new]
      580 LOADK                            R75 K98 ["UICorner"]
      581 MOVE                             R76 R73
      582 CALL                             R74 2 1
      583 GETIMPORT                        R75 K100 [UDim.new]
      585 LOADN                            R76 0
      586 LOADN                            R77 5
      587 CALL                             R75 2 1
      588 SETTABLEKS                       R75 R74 K101 ["CornerRadius"]
      590 GETIMPORT                        R75 K90 [Instance.new]
      592 LOADK                            R76 K71 ["UIStroke"]
      593 MOVE                             R77 R73
      594 CALL                             R75 2 1
      595 LOADN                            R76 1
      596 SETTABLEKS                       R76 R75 K102 ["Transparency"]
      598 JUMPIFNOT                        R40 ; [+7]
      599 GETIMPORT                        R76 K84 [Color3.new]
      601 LOADN                            R77 1
      602 LOADN                            R78 1
      603 LOADN                            R79 1
      604 CALL                             R76 3 1
      605 JUMP                             ; [+6]
      606 GETIMPORT                        R76 K84 [Color3.new]
      608 LOADN                            R77 255
      609 LOADN                            R78 255
      610 LOADN                            R79 255
      611 CALL                             R76 3 1
      612 SETTABLEKS                       R76 R75 K103 ["Color"]
      614 GETIMPORT                        R76 K106 [Enum.ApplyStrokeMode.Border]
      616 SETTABLEKS                       R76 R75 K104 ["ApplyStrokeMode"]
      618 MOVE                             R78 R73
      619 MOVE                             R79 R64
      620 DUPTABLE                         R80 K108 [{["ImageTransparency"] = 1, ["BackgroundTransparency"] = 1}]
      621 NAMECALL                         R76 R7 K79 ["Create"]
      623 CALL                             R76 4 1
      624 DUPCLOSURE                       R77 K109 [PROTO_35]
      625 CAPTURE                          VAL R72
      626 CAPTURE                          VAL R73
      627 GETTABLEKS                       R78 R72 K110 ["LockCameraSpeed"]
      629 JUMPIFNOT                        R78 ; [+4]
      630 LOADK                            R78 K111 ["rbxasset://studio_svg_textures/Lua/CameraService/Light/Standard/speedLocked.png"]
      631 SETTABLEKS                       R78 R73 K112 ["Image"]
      633 JUMP                             ; [+3]
      634 LOADK                            R78 K113 ["rbxasset://studio_svg_textures/Lua/CameraService/Light/Standard/speedUnlocked.png"]
      635 SETTABLEKS                       R78 R73 K112 ["Image"]
      637 LOADNIL                          R78
      638 LOADNIL                          R79
      639 JUMPIFNOT                        R40 ; [+122]
      640 LOADB                            R80 0
      641 SETTABLEKS                       R80 R73 K114 ["Visible"]
      643 GETIMPORT                        R80 K90 [Instance.new]
      645 LOADK                            R81 K91 ["ImageButton"]
      646 MOVE                             R82 R65
      647 CALL                             R80 2 1
      648 MOVE                             R78 R80
      649 LOADK                            R80 K115 ["NavModelButton"]
      650 SETTABLEKS                       R80 R78 K93 ["Name"]
      652 LOADN                            R80 0
      653 SETTABLEKS                       R80 R78 K77 ["BackgroundTransparency"]
      655 GETIMPORT                        R80 K84 [Color3.new]
      657 LOADN                            R81 1
      658 LOADN                            R82 1
      659 LOADN                            R83 1
      660 CALL                             R80 3 1
      661 SETTABLEKS                       R80 R78 K85 ["BackgroundColor3"]
      663 LOADN                            R80 0
      664 SETTABLEKS                       R80 R78 K116 ["BorderSizePixel"]
      666 GETIMPORT                        R80 K58 [Vector2.new]
      668 LOADN                            R81 1
      669 LOADN                            R82 0
      670 CALL                             R80 2 1
      671 SETTABLEKS                       R80 R78 K96 ["AnchorPoint"]
      673 GETIMPORT                        R80 K82 [UDim2.new]
      675 LOADN                            R81 0
      676 LOADN                            R82 -5
      677 LOADN                            R83 0
      678 LOADN                            R84 0
      679 CALL                             R80 4 1
      680 SETTABLEKS                       R80 R78 K86 ["Position"]
      682 GETIMPORT                        R80 K82 [UDim2.new]
      684 LOADN                            R81 0
      685 LOADN                            R82 22
      686 LOADN                            R83 0
      687 LOADN                            R84 22
      688 CALL                             R80 4 1
      689 SETTABLEKS                       R80 R78 K83 ["Size"]
      691 LOADN                            R80 20
      692 SETTABLEKS                       R80 R78 K97 ["ZIndex"]
      694 GETIMPORT                        R80 K119 [Enum.ScaleType.Fit]
      696 SETTABLEKS                       R80 R78 K117 ["ScaleType"]
      698 GETIMPORT                        R80 K84 [Color3.new]
      700 LOADN                            R81 0
      701 LOADN                            R82 0
      702 LOADN                            R83 0
      703 CALL                             R80 3 1
      704 SETTABLEKS                       R80 R78 K120 ["ImageColor3"]
      706 LOADN                            R80 0
      707 SETTABLEKS                       R80 R78 K107 ["ImageTransparency"]
      709 GETIMPORT                        R80 K90 [Instance.new]
      711 LOADK                            R81 K98 ["UICorner"]
      712 MOVE                             R82 R78
      713 CALL                             R80 2 1
      714 GETIMPORT                        R81 K100 [UDim.new]
      716 LOADN                            R82 0
      717 LOADN                            R83 4
      718 CALL                             R81 2 1
      719 SETTABLEKS                       R81 R80 K101 ["CornerRadius"]
      721 MOVE                             R83 R78
      722 MOVE                             R84 R64
      723 DUPTABLE                         R85 K108 [{["ImageTransparency"] = 1, ["BackgroundTransparency"] = 1}]
      724 NAMECALL                         R81 R7 K79 ["Create"]
      726 CALL                             R81 4 1
      727 MOVE                             R79 R81
      728 NEWCLOSURE                       R81 P25
      729 CAPTURE                          REF R78
      730 GETIMPORT                        R82 K122 [settings]
      732 CALL                             R82 0 1
      733 GETTABLEKS                       R82 R82 K123 ["Studio"]
      735 GETTABLEKS                       R82 R82 K124 ["CameraNavigationModel"]
      737 GETIMPORT                        R83 K126 [Enum.CameraNavigationModel.Roblox]
      739 JUMPIFNOTEQ                      R82 R83 ; [+5]
      741 LOADK                            R83 K127 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
      742 SETTABLEKS                       R83 R78 K112 ["Image"]
      744 JUMP                             ; [+3]
      745 LOADK                            R83 K128 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
      746 SETTABLEKS                       R83 R78 K112 ["Image"]
      748 GETIMPORT                        R82 K122 [settings]
      750 CALL                             R82 0 1
      751 GETTABLEKS                       R82 R82 K123 ["Studio"]
      753 LOADK                            R84 K124 ["CameraNavigationModel"]
      754 NAMECALL                         R82 R82 K129 ["GetPropertyChangedSignal"]
      756 CALL                             R82 2 1
      757 NEWCLOSURE                       R84 P26
      758 CAPTURE                          REF R78
      759 NAMECALL                         R82 R82 K130 ["Connect"]
      761 CALL                             R82 2 0
      762 DUPTABLE                         R80 K137 [{["mouseOverViewSelector"] = False, ["mouseOverSlider"] = False, ["isDraggingSlider"] = False, ["mouseOverLock"] = False, ["isClickingLock"] = False}]
      763 JUMPIFNOT                        R40 ; [+3]
      764 LOADB                            R81 0
      765 SETTABLEKS                       R81 R80 K138 ["mouseOverNavModel"]
      767 NEWCLOSURE                       R81 P27
      768 CAPTURE                          VAL R69
      769 CAPTURE                          VAL R70
      770 CAPTURE                          VAL R40
      771 CAPTURE                          VAL R76
      772 CAPTURE                          REF R79
      773 CAPTURE                          REF R71
      774 CAPTURE                          VAL R65
      775 CAPTURE                          VAL R67
      776 CAPTURE                          VAL R73
      777 CAPTURE                          VAL R80
      778 CAPTURE                          VAL R66
      779 CAPTURE                          VAL R75
      780 CAPTURE                          REF R78
      781 NEWCLOSURE                       R82 P28
      782 CAPTURE                          REF R68
      783 NEWCLOSURE                       R83 P29
      784 CAPTURE                          VAL R65
      785 CAPTURE                          REF R68
      786 NEWCLOSURE                       R84 P30
      787 CAPTURE                          VAL R40
      788 CAPTURE                          VAL R65
      789 CAPTURE                          VAL R67
      790 CAPTURE                          REF R68
      791 GETIMPORT                        R85 K122 [settings]
      793 CALL                             R85 0 1
      794 GETTABLEKS                       R85 R85 K123 ["Studio"]
      796 LOADK                            R87 K139 ["Camera Speed"]
      797 NAMECALL                         R85 R85 K129 ["GetPropertyChangedSignal"]
      799 CALL                             R85 2 1
      800 DUPCLOSURE                       R87 K140 [PROTO_43]
      801 CAPTURE                          VAL R84
      802 CAPTURE                          VAL R81
      803 NAMECALL                         R85 R85 K130 ["Connect"]
      805 CALL                             R85 2 0
      806 GETTABLEKS                       R85 R72 K141 ["ShowCameraSpeed"]
      808 DUPCLOSURE                       R87 K142 [PROTO_44]
      809 CAPTURE                          VAL R84
      810 CAPTURE                          VAL R81
      811 NAMECALL                         R85 R85 K130 ["Connect"]
      813 CALL                             R85 2 0
      814 GETTABLEKS                       R85 R29 K48 ["MouseEnter"]
      816 DUPCLOSURE                       R87 K143 [PROTO_45]
      817 CAPTURE                          VAL R80
      818 CAPTURE                          VAL R81
      819 NAMECALL                         R85 R85 K130 ["Connect"]
      821 CALL                             R85 2 0
      822 GETTABLEKS                       R85 R29 K49 ["MouseLeave"]
      824 DUPCLOSURE                       R87 K144 [PROTO_46]
      825 CAPTURE                          VAL R80
      826 CAPTURE                          VAL R81
      827 NAMECALL                         R85 R85 K130 ["Connect"]
      829 CALL                             R85 2 0
      830 GETTABLEKS                       R85 R65 K48 ["MouseEnter"]
      832 NEWCLOSURE                       R87 P35
      833 CAPTURE                          VAL R80
      834 CAPTURE                          VAL R40
      835 CAPTURE                          REF R27
      836 CAPTURE                          VAL R81
      837 NAMECALL                         R85 R85 K130 ["Connect"]
      839 CALL                             R85 2 0
      840 GETTABLEKS                       R85 R65 K49 ["MouseLeave"]
      842 DUPCLOSURE                       R87 K145 [PROTO_48]
      843 CAPTURE                          VAL R80
      844 CAPTURE                          VAL R40
      845 CAPTURE                          VAL R49
      846 CAPTURE                          VAL R81
      847 NAMECALL                         R85 R85 K130 ["Connect"]
      849 CALL                             R85 2 0
      850 GETTABLEKS                       R85 R65 K50 ["MouseButton1Down"]
      852 NEWCLOSURE                       R87 P37
      853 CAPTURE                          VAL R80
      854 CAPTURE                          VAL R81
      855 CAPTURE                          VAL R40
      856 CAPTURE                          VAL R4
      857 CAPTURE                          VAL R65
      858 CAPTURE                          REF R68
      859 CAPTURE                          VAL R0
      860 NAMECALL                         R85 R85 K130 ["Connect"]
      862 CALL                             R85 2 0
      863 JUMPIFNOT                        R40 ; [+7]
      864 GETTABLEKS                       R85 R65 K52 ["InputChanged"]
      866 NEWCLOSURE                       R87 P38
      867 CAPTURE                          REF R68
      868 NAMECALL                         R85 R85 K130 ["Connect"]
      870 CALL                             R85 2 0
      871 JUMPIF                           R40 ; [+34]
      872 GETTABLEKS                       R85 R73 K48 ["MouseEnter"]
      874 DUPCLOSURE                       R87 K146 [PROTO_51]
      875 CAPTURE                          VAL R80
      876 CAPTURE                          VAL R81
      877 NAMECALL                         R85 R85 K130 ["Connect"]
      879 CALL                             R85 2 0
      880 GETTABLEKS                       R85 R73 K49 ["MouseLeave"]
      882 DUPCLOSURE                       R87 K147 [PROTO_52]
      883 CAPTURE                          VAL R80
      884 CAPTURE                          VAL R81
      885 NAMECALL                         R85 R85 K130 ["Connect"]
      887 CALL                             R85 2 0
      888 GETTABLEKS                       R85 R73 K148 ["Activated"]
      890 DUPCLOSURE                       R87 K149 [PROTO_53]
      891 CAPTURE                          VAL R72
      892 NAMECALL                         R85 R85 K130 ["Connect"]
      894 CALL                             R85 2 0
      895 LOADK                            R87 K110 ["LockCameraSpeed"]
      896 NAMECALL                         R85 R72 K129 ["GetPropertyChangedSignal"]
      898 CALL                             R85 2 1
      899 DUPCLOSURE                       R87 K150 [PROTO_54]
      900 CAPTURE                          VAL R72
      901 CAPTURE                          VAL R73
      902 CAPTURE                          VAL R81
      903 NAMECALL                         R85 R85 K130 ["Connect"]
      905 CALL                             R85 2 0
      906 JUMPIFNOT                        R40 ; [+38]
      907 GETTABLEKS                       R85 R78 K48 ["MouseEnter"]
      909 NEWCLOSURE                       R87 P43
      910 CAPTURE                          VAL R80
      911 CAPTURE                          REF R27
      912 CAPTURE                          VAL R81
      913 NAMECALL                         R85 R85 K130 ["Connect"]
      915 CALL                             R85 2 0
      916 GETTABLEKS                       R85 R78 K49 ["MouseLeave"]
      918 DUPCLOSURE                       R87 K151 [PROTO_56]
      919 CAPTURE                          VAL R80
      920 CAPTURE                          VAL R49
      921 CAPTURE                          VAL R81
      922 NAMECALL                         R85 R85 K130 ["Connect"]
      924 CALL                             R85 2 0
      925 GETTABLEKS                       R85 R78 K148 ["Activated"]
      927 DUPCLOSURE                       R87 K152 [PROTO_57]
      928 NAMECALL                         R85 R85 K130 ["Connect"]
      930 CALL                             R85 2 0
      931 GETIMPORT                        R85 K122 [settings]
      933 CALL                             R85 0 1
      934 GETTABLEKS                       R85 R85 K123 ["Studio"]
      936 LOADK                            R87 K124 ["CameraNavigationModel"]
      937 NAMECALL                         R85 R85 K129 ["GetPropertyChangedSignal"]
      939 CALL                             R85 2 1
      940 DUPCLOSURE                       R87 K153 [PROTO_58]
      941 CAPTURE                          VAL R81
      942 NAMECALL                         R85 R85 K130 ["Connect"]
      944 CALL                             R85 2 0
      945 MOVE                             R85 R84
      946 CALL                             R85 0 0
      947 LOADN                            R85 1
      948 SETTABLEKS                       R85 R65 K77 ["BackgroundTransparency"]
      950 LOADN                            R85 1
      951 SETTABLEKS                       R85 R65 K75 ["TextTransparency"]
      953 LOADN                            R85 1
      954 SETTABLEKS                       R85 R66 K102 ["Transparency"]
      956 LOADN                            R85 1
      957 SETTABLEKS                       R85 R67 K77 ["BackgroundTransparency"]
      959 JUMPIF                           R40 ; [+9]
      960 LOADN                            R85 1
      961 SETTABLEKS                       R85 R73 K107 ["ImageTransparency"]
      963 LOADN                            R85 1
      964 SETTABLEKS                       R85 R73 K77 ["BackgroundTransparency"]
      966 LOADN                            R85 1
      967 SETTABLEKS                       R85 R75 K102 ["Transparency"]
      969 JUMPIFNOT                        R40 ; [+6]
      970 LOADN                            R85 1
      971 SETTABLEKS                       R85 R78 K107 ["ImageTransparency"]
      973 LOADN                            R85 1
      974 SETTABLEKS                       R85 R78 K77 ["BackgroundTransparency"]
      976 CLOSEUPVALS                      R68
      977 JUMP                             ; [+7]
      978 LOADK                            R66 K70 ["CamSpeed"]
      979 NAMECALL                         R64 R17 K55 ["WaitForChild"]
      981 CALL                             R64 2 1
      982 NAMECALL                         R64 R64 K154 ["Destroy"]
      984 CALL                             R64 1 0
      985 CLOSEUPVALS                      R10
      986 RETURN                           R0 0
