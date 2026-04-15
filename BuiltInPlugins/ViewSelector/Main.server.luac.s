PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["NextGenDraggersEnabledFeature"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Normal"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Name"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R2 R2 K2 ["FormatByKey"]
       10 CALL                             R2 2 1
       11 SETTABLE                         R2 R0 R1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K3 ["Hover"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K1 ["Name"]
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
       43 GETUPVAL                         R2 5
       44 GETTABLEKS                       R1 R2 K12 ["AbsoluteSize"]
       46 GETTABLEKS                       R0 R1 K13 ["x"]
       48 SETUPVAL                         R0 6
       49 GETUPVAL                         R0 5
       50 LOADK                            R2 K14 ["EventReceiver"]
       51 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       53 CALL                             R0 2 1
       54 SETUPVAL                         R0 7
       55 GETUPVAL                         R0 5
       56 LOADK                            R2 K15 ["Model"]
       57 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       59 CALL                             R0 2 1
       60 SETUPVAL                         R0 8
       61 GETUPVAL                         R0 4
       62 LOADK                            R2 K16 ["X"]
       63 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       65 CALL                             R0 2 1
       66 SETUPVAL                         R0 9
       67 GETUPVAL                         R0 4
       68 LOADK                            R2 K17 ["Y"]
       69 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       71 CALL                             R0 2 1
       72 SETUPVAL                         R0 10
       73 GETUPVAL                         R0 4
       74 LOADK                            R2 K18 ["Z"]
       75 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       77 CALL                             R0 2 1
       78 SETUPVAL                         R0 11
       79 GETUPVAL                         R0 4
       80 LOADK                            R2 K19 ["ArrowButtons"]
       81 NAMECALL                         R0 R0 K10 ["WaitForChild"]
       83 CALL                             R0 2 1
       84 SETUPVAL                         R0 12
       85 GETUPVAL                         R0 12
       86 LOADB                            R1 0
       87 SETTABLEKS                       R1 R0 K20 ["Visible"]
       89 LOADB                            R0 0
       90 SETUPVAL                         R0 13
       91 GETIMPORT                        R0 K22 [game]
       93 LOADK                            R2 K23 ["NextGenDraggersEnabledFeature"]
       94 NAMECALL                         R0 R0 K24 ["GetEngineFeature"]
       96 CALL                             R0 2 1
       97 JUMPIFNOT                        R0 ; [+36]
       98 GETUPVAL                         R0 9
       99 GETUPVAL                         R1 14
      100 SETTABLEKS                       R1 R0 K25 ["TextColor3"]
      102 GETUPVAL                         R0 10
      103 GETUPVAL                         R1 15
      104 SETTABLEKS                       R1 R0 K25 ["TextColor3"]
      106 GETUPVAL                         R0 11
      107 GETUPVAL                         R1 16
      108 SETTABLEKS                       R1 R0 K25 ["TextColor3"]
      110 GETUPVAL                         R0 8
      111 LOADK                            R2 K13 ["x"]
      112 NAMECALL                         R0 R0 K10 ["WaitForChild"]
      114 CALL                             R0 2 1
      115 GETUPVAL                         R1 8
      116 LOADK                            R3 K26 ["y"]
      117 NAMECALL                         R1 R1 K10 ["WaitForChild"]
      119 CALL                             R1 2 1
      120 GETUPVAL                         R2 8
      121 LOADK                            R4 K27 ["z"]
      122 NAMECALL                         R2 R2 K10 ["WaitForChild"]
      124 CALL                             R2 2 1
      125 GETUPVAL                         R3 14
      126 SETTABLEKS                       R3 R0 K28 ["Color"]
      128 GETUPVAL                         R3 15
      129 SETTABLEKS                       R3 R1 K28 ["Color"]
      131 GETUPVAL                         R3 16
      132 SETTABLEKS                       R3 R2 K28 ["Color"]
      134 GETIMPORT                        R0 K31 [Instance.new]
      136 LOADK                            R1 K32 ["Camera"]
      137 CALL                             R0 1 1
      138 SETUPVAL                         R0 17
      139 GETUPVAL                         R0 17
      140 GETUPVAL                         R1 5
      141 SETTABLEKS                       R1 R0 K7 ["Parent"]
      143 GETUPVAL                         R0 17
      144 GETIMPORT                        R1 K34 [CFrame.new]
      146 LOADK                            R2 K35 [{0, 0, 0}]
      147 LOADK                            R3 K36 [{0, 0, -1}]
      148 CALL                             R1 2 1
      149 SETTABLEKS                       R1 R0 K33 ["CFrame"]
      151 GETUPVAL                         R0 17
      152 LOADN                            R1 70
      153 SETTABLEKS                       R1 R0 K37 ["FieldOfView"]
      155 GETUPVAL                         R0 5
      156 GETUPVAL                         R1 17
      157 SETTABLEKS                       R1 R0 K38 ["CurrentCamera"]
      159 GETIMPORT                        R2 K40 [script]
      161 GETTABLEKS                       R1 R2 K7 ["Parent"]
      163 GETTABLEKS                       R0 R1 K41 ["LocalizedStrings"]
      165 GETUPVAL                         R4 18
      166 GETTABLEKS                       R3 R4 K42 ["StudioLocaleId"]
      168 NAMECALL                         R1 R0 K43 ["GetTranslator"]
      170 CALL                             R1 2 1
      171 LOADK                            R4 K44 ["en-us"]
      172 NAMECALL                         R2 R0 K43 ["GetTranslator"]
      174 CALL                             R2 2 1
      175 GETUPVAL                         R3 8
      176 NAMECALL                         R3 R3 K45 ["GetChildren"]
      178 CALL                             R3 1 1
      179 LOADN                            R6 1
      180 LENGTH                           R4 R3
      181 LOADN                            R5 1
      182 FORNPREP                         R4
      183 GETTABLE                         R7 R3 R6
      184 GETTABLEKS                       R8 R7 K46 ["ClassName"]
      186 JUMPIFEQKS                       R8 K47 ["Part"] ; [+5]
      188 GETTABLEKS                       R8 R7 K46 ["ClassName"]
      190 JUMPIFNOTEQKS                    R8 K48 ["MeshPart"] ; [+12]
      192 GETUPVAL                         R9 8
      193 GETTABLEKS                       R8 R9 K33 ["CFrame"]
      195 GETTABLEKS                       R10 R7 K33 ["CFrame"]
      197 NAMECALL                         R8 R8 K49 ["ToObjectSpace"]
      199 CALL                             R8 2 1
      200 SETTABLEKS                       R8 R7 K33 ["CFrame"]
      202 JUMP                             ; [+48]
      203 GETTABLEKS                       R8 R7 K46 ["ClassName"]
      205 JUMPIFNOTEQKS                    R8 K50 ["Decal"] ; [+45]
      207 GETTABLEKS                       R8 R7 K51 ["Name"]
      209 GETTABLEKS                       R10 R7 K51 ["Name"]
      211 LOADK                            R11 K52 ["_hover"]
      212 CONCAT                           R9 R10 R11
      213 GETIMPORT                        R10 K54 [pcall]
      215 NEWCLOSURE                       R11 P0
      216 CAPTURE                          UPVAL U19
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R1
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R9
      221 CALL                             R10 1 1
      222 JUMPIF                           R10 ; [+20]
      223 GETUPVAL                         R12 19
      224 GETTABLEKS                       R11 R12 K55 ["Normal"]
      226 GETTABLEKS                       R12 R7 K51 ["Name"]
      228 MOVE                             R15 R8
      229 NAMECALL                         R13 R2 K56 ["FormatByKey"]
      231 CALL                             R13 2 1
      232 SETTABLE                         R13 R11 R12
      233 GETUPVAL                         R12 19
      234 GETTABLEKS                       R11 R12 K57 ["Hover"]
      236 GETTABLEKS                       R12 R7 K51 ["Name"]
      238 MOVE                             R15 R9
      239 NAMECALL                         R13 R2 K56 ["FormatByKey"]
      241 CALL                             R13 2 1
      242 SETTABLE                         R13 R11 R12
      243 GETUPVAL                         R13 19
      244 GETTABLEKS                       R12 R13 K55 ["Normal"]
      246 GETTABLEKS                       R13 R7 K51 ["Name"]
      248 GETTABLE                         R11 R12 R13
      249 SETTABLEKS                       R11 R7 K58 ["Texture"]
      251 FORNLOOP                         R4
      252 GETUPVAL                         R4 8
      253 GETIMPORT                        R5 K34 [CFrame.new]
      255 CALL                             R5 0 1
      256 SETTABLEKS                       R5 R4 K33 ["CFrame"]
      258 NEWTABLE                         R4 0 3
      260 LOADK                            R5 K59 ["n"]
      261 LOADK                            R6 K60 ["0"]
      262 LOADK                            R7 K61 ["p"]
      263 SETLIST                          R4 R5 3 [1]
      265 LOADN                            R7 255
      266 LOADN                            R5 1
      267 LOADN                            R6 1
      268 FORNPREP                         R5
      269 LOADN                            R10 255
      270 LOADN                            R8 1
      271 LOADN                            R9 1
      272 FORNPREP                         R8
      273 LOADN                            R13 255
      274 LOADN                            R11 1
      275 LOADN                            R12 1
      276 FORNPREP                         R11
      277 ADDK                             R18 R7 K62 [2]
      278 GETTABLE                         R15 R4 R18
      279 ADDK                             R18 R10 K62 [2]
      280 GETTABLE                         R16 R4 R18
      281 ADDK                             R18 R13 K62 [2]
      282 GETTABLE                         R17 R4 R18
      283 CONCAT                           R14 R15 R17
      284 GETUPVAL                         R15 20
      285 GETIMPORT                        R16 K34 [CFrame.new]
      287 FASTCALL                         VECTOR ; [+2]
      288 GETIMPORT                        R17 K64 [Vector3.new]
      290 CALL                             R17 0 1
      291 MINUS                            R20 R7
      292 MINUS                            R21 R10
      293 MINUS                            R22 R13
      294 FASTCALL                         VECTOR ; [+2]
      295 GETIMPORT                        R19 K64 [Vector3.new]
      297 CALL                             R19 3 1
      298 GETTABLEKS                       R18 R19 K65 ["Unit"]
      300 CALL                             R16 2 1
      301 SETTABLE                         R16 R15 R14
      302 FORNLOOP                         R11
      303 FORNLOOP                         R8
      304 FORNLOOP                         R5
      305 GETUPVAL                         R5 20
      306 GETIMPORT                        R6 K67 [CFrame.fromEulerAnglesYXZ]
      308 LOADK                            R7 K68 [-1.5707963267949]
      309 LOADK                            R8 K69 [3.14159265358979]
      310 LOADN                            R9 0
      311 CALL                             R6 3 1
      312 SETTABLEKS                       R6 R5 K70 ["0p0"]
      314 GETUPVAL                         R5 20
      315 GETIMPORT                        R6 K72 [CFrame.fromEulerAnglesXYZ]
      317 LOADK                            R7 K68 [-1.5707963267949]
      318 LOADK                            R8 K69 [3.14159265358979]
      319 LOADN                            R9 0
      320 CALL                             R6 3 1
      321 SETTABLEKS                       R6 R5 K73 ["0n0"]
      323 LOADK                            R5 K74 [{0.576, -0.48, -0.48}]
      324 SETUPVAL                         R5 21
      325 LOADK                            R5 K75 [{-0.48, 0.576, -0.48}]
      326 SETUPVAL                         R5 22
      327 LOADK                            R5 K76 [{-0.48, -0.48, 0.576}]
      328 SETUPVAL                         R5 23
      329 GETIMPORT                        R5 K78 [plugin]
      331 LOADK                            R7 K79 ["ViewSelector_Active"]
      332 NAMECALL                         R5 R5 K80 ["GetSetting"]
      334 CALL                             R5 2 1
      335 SETUPVAL                         R5 24
      336 GETUPVAL                         R5 24
      337 JUMPIFNOTEQKNIL                  R5 ; [+3]
      339 LOADB                            R5 1
      340 SETUPVAL                         R5 24
      341 GETUPVAL                         R5 25
      342 GETUPVAL                         R7 24
      343 NAMECALL                         R5 R5 K81 ["SetActive"]
      345 CALL                             R5 2 0
      346 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R2 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R2 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R0 R1 K4 ["CameraType"]
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
        0 LOADN                            R2 156
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
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["Hover"]
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
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["Normal"]
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
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K1 ["AbsolutePosition"]
        7 GETTABLEKS                       R5 R6 K2 ["X"]
        9 SUB                              R4 R0 R5
       10 GETTABLEKS                       R5 R2 K3 ["x"]
       12 SUB                              R3 R4 R5
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K1 ["AbsolutePosition"]
       16 GETTABLEKS                       R6 R7 K4 ["Y"]
       18 SUB                              R5 R1 R6
       19 GETTABLEKS                       R6 R2 K5 ["y"]
       21 SUB                              R4 R5 R6
       22 RETURN                           R3 2

PROTO_11:
        0 GETIMPORT                        R6 K1 [game]
        2 GETTABLEKS                       R5 R6 K2 ["Workspace"]
        4 GETTABLEKS                       R4 R5 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R4 K4 ["CameraType"]
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
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R8 R9 K11 ["AbsolutePosition"]
       28 GETTABLEKS                       R7 R8 K12 ["X"]
       30 SUB                              R6 R0 R7
       31 GETTABLEKS                       R7 R4 K13 ["x"]
       33 SUB                              R5 R6 R7
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R9 R10 K11 ["AbsolutePosition"]
       37 GETTABLEKS                       R8 R9 K14 ["Y"]
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
       76 GETUPVAL                         R11 8
       77 GETTABLEKS                       R10 R11 K21 ["Normal"]
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
       94 GETUPVAL                         R10 8
       95 GETTABLEKS                       R9 R10 K25 ["Hover"]
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
      115 GETUPVAL                         R9 8
      116 GETTABLEKS                       R8 R9 K21 ["Normal"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["LookVector"]
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
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["Normal"]
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
        9 GETTABLEKS                       R2 R0 K4 ["Position"]
       11 GETTABLEKS                       R1 R2 K5 ["x"]
       13 GETTABLEKS                       R3 R0 K4 ["Position"]
       15 GETTABLEKS                       R2 R3 K6 ["y"]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K5 ["x"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K9 [math.abs]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K6 ["y"]
       28 SUB                              R6 R7 R2
       29 FASTCALL1                        MATH_ABS R6 ; [+2]
       30 GETIMPORT                        R5 K9 [math.abs]
       32 CALL                             R5 1 1
       33 ADD                              R3 R4 R5
       34 LOADN                            R4 5
       35 JUMPIFNOTLT                      R4 R3 ; [+39]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R7 R8 K10 ["X"]
       40 GETTABLEKS                       R6 R7 K11 ["Offset"]
       42 ADD                              R5 R6 R1
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R6 R7 K5 ["x"]
       46 SUB                              R4 R5 R6
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R8 R9 K12 ["Y"]
       50 GETTABLEKS                       R7 R8 K11 ["Offset"]
       52 ADD                              R6 R7 R2
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K6 ["y"]
       56 SUB                              R5 R6 R7
       57 GETUPVAL                         R6 2
       58 GETIMPORT                        R7 K15 [UDim2.new]
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R9 R10 K10 ["X"]
       63 GETTABLEKS                       R8 R9 K16 ["Scale"]
       65 MOVE                             R9 R4
       66 GETUPVAL                         R12 1
       67 GETTABLEKS                       R11 R12 K12 ["Y"]
       69 GETTABLEKS                       R10 R11 K16 ["Scale"]
       71 MOVE                             R11 R5
       72 CALL                             R7 4 1
       73 SETTABLEKS                       R7 R6 K4 ["Position"]
       75 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R6 K1 [game]
        2 GETTABLEKS                       R5 R6 K2 ["Workspace"]
        4 GETTABLEKS                       R4 R5 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R4 K4 ["ViewportSize"]
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
        2 GETIMPORT                        R7 K2 [game]
        4 GETTABLEKS                       R6 R7 K3 ["Workspace"]
        6 GETTABLEKS                       R5 R6 K4 ["CurrentCamera"]
        8 GETTABLEKS                       R4 R5 K5 ["ViewportSize"]
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
       33 GETIMPORT                        R9 K2 [game]
       35 GETTABLEKS                       R8 R9 K3 ["Workspace"]
       37 GETTABLEKS                       R7 R8 K4 ["CurrentCamera"]
       39 GETTABLEKS                       R6 R7 K5 ["ViewportSize"]
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
        0 GETIMPORT                        R5 K1 [game]
        2 GETTABLEKS                       R4 R5 K2 ["Workspace"]
        4 GETTABLEKS                       R3 R4 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R3 K4 ["ViewportSize"]
        8 GETTABLE                         R1 R2 R0
        9 LOADK                            R2 K5 [0.5]
       10 LOADK                            R3 K5 [0.5]
       11 GETUPVAL                         R4 0
       12 JUMPIFNOTLT                      R4 R1 ; [+19]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K6 ["AbsolutePosition"]
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
        3 GETIMPORT                        R7 K2 [game]
        5 GETTABLEKS                       R6 R7 K3 ["Workspace"]
        7 GETTABLEKS                       R5 R6 K4 ["CurrentCamera"]
        9 GETTABLEKS                       R4 R5 K5 ["ViewportSize"]
       11 GETTABLEKS                       R3 R4 K0 ["X"]
       13 LOADK                            R4 K6 [0.5]
       14 LOADK                            R5 K6 [0.5]
       15 GETUPVAL                         R6 0
       16 JUMPIFNOTLT                      R6 R3 ; [+20]
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K7 ["AbsolutePosition"]
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
       46 GETIMPORT                        R9 K2 [game]
       48 GETTABLEKS                       R8 R9 K3 ["Workspace"]
       50 GETTABLEKS                       R7 R8 K4 ["CurrentCamera"]
       52 GETTABLEKS                       R6 R7 K5 ["ViewportSize"]
       54 GETTABLEKS                       R5 R6 K15 ["Y"]
       56 LOADK                            R6 K6 [0.5]
       57 LOADK                            R7 K6 [0.5]
       58 GETUPVAL                         R8 0
       59 JUMPIFNOTLT                      R8 R5 ; [+20]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R10 R11 K7 ["AbsolutePosition"]
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
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K3 ["Position"]
        9 SETUPVAL                         R2 1
       10 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R2 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R2 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R1 K4 ["Focus"]
        8 GETTABLEKS                       R2 R3 K5 ["Position"]
       10 GETTABLEKS                       R6 R1 K6 ["CFrame"]
       12 GETTABLEKS                       R5 R6 K5 ["Position"]
       14 SUB                              R4 R2 R5
       15 GETTABLEKS                       R3 R4 K7 ["Magnitude"]
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
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K0 ["x"]
        6 SUB                              R4 R5 R0
        7 FASTCALL1                        MATH_ABS R4 ; [+2]
        8 GETIMPORT                        R3 K3 [math.abs]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["y"]
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
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K5 ["Name"]
       31 GETTABLE                         R3 R4 R5
       32 GETIMPORT                        R6 K7 [game]
       34 GETTABLEKS                       R5 R6 K8 ["Workspace"]
       36 GETTABLEKS                       R4 R5 K9 ["CurrentCamera"]
       38 GETTABLEKS                       R6 R4 K10 ["Focus"]
       40 GETTABLEKS                       R5 R6 K11 ["Position"]
       42 GETTABLEKS                       R9 R4 K12 ["CFrame"]
       44 GETTABLEKS                       R8 R9 K11 ["Position"]
       46 SUB                              R7 R5 R8
       47 GETTABLEKS                       R6 R7 K13 ["Magnitude"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["CFrame"]
        3 MUL                              R2 R3 R1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K1 ["LookVector"]
        7 NAMECALL                         R3 R1 K2 ["Dot"]
        9 CALL                             R3 2 1
       10 LOADN                            R4 0
       11 JUMPIFNOTLT                      R3 R4 ; [+8]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K4 ["ZIndex"]
       16 ADDK                             R3 R4 K3 [1]
       17 SETTABLEKS                       R3 R0 K4 ["ZIndex"]
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K4 ["ZIndex"]
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
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R2 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R2 K3 ["CurrentCamera"]
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
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R3 R4 K5 ["CFrame"]
       58 GETUPVAL                         R4 5
       59 JUMPIFEQ                         R3 R4 ; [+44]
       61 GETUPVAL                         R4 4
       62 GETTABLEKS                       R3 R4 K5 ["CFrame"]
       64 SETUPVAL                         R3 5
       65 GETUPVAL                         R3 6
       66 GETUPVAL                         R6 5
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R7 R8 K16 ["Position"]
       70 SUB                              R5 R6 R7
       71 GETIMPORT                        R7 K7 [CFrame.new]
       73 LOADN                            R8 255
       74 LOADN                            R9 255
       75 LOADN                            R10 255
       76 CALL                             R7 3 -1
       77 NAMECALL                         R5 R5 K17 ["ToWorldSpace"]
       79 CALL                             R5 -1 1
       80 GETTABLEKS                       R4 R5 K16 ["Position"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Enabled"]
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
       25 GETIMPORT                        R6 K12 [Enum.RenderPriority.Camera]
       27 GETTABLEKS                       R5 R6 K13 ["Value"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["RightVector"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["UpVector"]
        6 MINUS                            R4 R0
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K2 ["y"]
       10 MUL                              R3 R4 R5
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["x"]
       14 MUL                              R4 R1 R5
       15 ADD                              R2 R3 R4
       16 GETIMPORT                        R3 K6 [CFrame.fromAxisAngle]
       18 MOVE                             R4 R2
       19 LOADK                            R5 K7 [1.5707963267949]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K8 ["LookVector"]
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
       37 GETIMPORT                        R11 K11 [game]
       39 GETTABLEKS                       R10 R11 K12 ["Workspace"]
       41 GETTABLEKS                       R9 R10 K13 ["CurrentCamera"]
       43 GETTABLEKS                       R11 R9 K14 ["Focus"]
       45 GETTABLEKS                       R10 R11 K15 ["Position"]
       47 GETTABLEKS                       R14 R9 K4 ["CFrame"]
       49 GETTABLEKS                       R13 R14 K15 ["Position"]
       51 SUB                              R12 R10 R13
       52 GETTABLEKS                       R11 R12 K16 ["Magnitude"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["LockCameraSpeed"]
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

PROTO_37:
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
       23 LOADK                            R1 K4 [0.1]
       24 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       26 GETUPVAL                         R0 6
       27 LOADK                            R1 K4 [0.1]
       28 SETTABLEKS                       R1 R0 K7 ["ImageTransparency"]
       30 GETUPVAL                         R1 7
       31 GETTABLEKS                       R0 R1 K8 ["isDraggingSlider"]
       33 JUMPIFNOT                        R0 ; [+5]
       34 GETUPVAL                         R0 4
       35 LOADK                            R1 K9 [0.4]
       36 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       38 JUMP                             ; [+4]
       39 GETUPVAL                         R0 4
       40 LOADK                            R1 K10 [0.6]
       41 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       43 GETUPVAL                         R1 7
       44 GETTABLEKS                       R0 R1 K11 ["isClickingLock"]
       46 JUMPIFNOT                        R0 ; [+5]
       47 GETUPVAL                         R0 6
       48 LOADK                            R1 K9 [0.4]
       49 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       51 JUMP                             ; [+4]
       52 GETUPVAL                         R0 6
       53 LOADK                            R1 K10 [0.6]
       54 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       56 GETUPVAL                         R1 7
       57 GETTABLEKS                       R0 R1 K12 ["mouseOverSlider"]
       59 JUMPIF                           R0 ; [+4]
       60 GETUPVAL                         R1 7
       61 GETTABLEKS                       R0 R1 K8 ["isDraggingSlider"]
       63 JUMPIFNOT                        R0 ; [+5]
       64 GETUPVAL                         R0 8
       65 LOADK                            R1 K4 [0.1]
       66 SETTABLEKS                       R1 R0 K13 ["Transparency"]
       68 JUMP                             ; [+4]
       69 GETUPVAL                         R0 8
       70 LOADN                            R1 1
       71 SETTABLEKS                       R1 R0 K13 ["Transparency"]
       73 GETUPVAL                         R1 7
       74 GETTABLEKS                       R0 R1 K14 ["mouseOverLock"]
       76 JUMPIFNOT                        R0 ; [+5]
       77 GETUPVAL                         R0 9
       78 LOADK                            R1 K4 [0.1]
       79 SETTABLEKS                       R1 R0 K13 ["Transparency"]
       81 JUMP                             ; [+4]
       82 GETUPVAL                         R0 9
       83 LOADN                            R1 1
       84 SETTABLEKS                       R1 R0 K13 ["Transparency"]
       86 GETUPVAL                         R1 7
       87 GETTABLEKS                       R0 R1 K15 ["mouseOverViewSelector"]
       89 JUMPIF                           R0 ; [+25]
       90 GETUPVAL                         R1 7
       91 GETTABLEKS                       R0 R1 K12 ["mouseOverSlider"]
       93 JUMPIF                           R0 ; [+21]
       94 GETUPVAL                         R1 7
       95 GETTABLEKS                       R0 R1 K8 ["isDraggingSlider"]
       97 JUMPIF                           R0 ; [+17]
       98 GETUPVAL                         R1 7
       99 GETTABLEKS                       R0 R1 K14 ["mouseOverLock"]
      101 JUMPIF                           R0 ; [+13]
      102 GETUPVAL                         R1 7
      103 GETTABLEKS                       R0 R1 K11 ["isClickingLock"]
      105 JUMPIF                           R0 ; [+9]
      106 GETIMPORT                        R0 K17 [task.delay]
      108 LOADK                            R1 K18 [3.5]
      109 DUPCLOSURE                       R2 K19 [PROTO_36]
      110 CAPTURE                          UPVAL U0
      111 CAPTURE                          UPVAL U1
      112 CAPTURE                          UPVAL U2
      113 CALL                             R0 2 1
      114 SETUPVAL                         R0 3
      115 RETURN                           R0 0

PROTO_38:
        0 GETIMPORT                        R2 K2 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K3 ["Studio"]
        5 GETTABLEKS                       R0 R1 K0 ["Camera Speed"]
        7 GETUPVAL                         R1 0
        8 GETIMPORT                        R2 K6 [string.format]
       10 LOADK                            R3 K7 ["%.1f"]
       11 MOVE                             R4 R0
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K8 ["Text"]
       15 LOADN                            R2 10
       16 DIVK                             R5 R0 K9 [20]
       17 GETUPVAL                         R6 1
       18 MUL                              R4 R5 R6
       19 GETUPVAL                         R5 1
       20 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       22 GETIMPORT                        R3 K12 [math.min]
       24 CALL                             R3 2 1
       25 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       27 GETIMPORT                        R1 K14 [math.max]
       29 CALL                             R1 2 1
       30 GETUPVAL                         R2 2
       31 GETIMPORT                        R3 K17 [UDim2.new]
       33 LOADN                            R4 0
       34 MOVE                             R5 R1
       35 LOADN                            R6 1
       36 LOADN                            R7 0
       37 CALL                             R3 4 1
       38 SETTABLEKS                       R3 R2 K18 ["Size"]
       40 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverViewSelector"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverSlider"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverSlider"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isDraggingSlider"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R3 R3 K1 ["GetMouseLocation"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K2 ["X"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K3 ["AbsolutePosition"]
       15 GETTABLEKS                       R3 R4 K2 ["X"]
       17 SUB                              R1 R2 R3
       18 GETUPVAL                         R2 4
       19 DIV                              R0 R1 R2
       20 GETIMPORT                        R2 K5 [settings]
       22 CALL                             R2 0 1
       23 GETTABLEKS                       R1 R2 K6 ["Studio"]
       25 LOADN                            R3 20
       26 LOADK                            R5 K7 [0.1]
       27 MULK                             R6 R0 K8 [20]
       28 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       30 GETIMPORT                        R4 K11 [math.max]
       32 CALL                             R4 2 1
       33 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       35 GETIMPORT                        R2 K13 [math.min]
       37 CALL                             R2 2 1
       38 SETTABLEKS                       R2 R1 K14 ["Camera Speed"]
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R1 R2 K15 ["RenderStepped"]
       43 NAMECALL                         R1 R1 K16 ["Wait"]
       45 CALL                             R1 1 0
       46 GETUPVAL                         R1 2
       47 GETIMPORT                        R3 K20 [Enum.UserInputType.MouseButton1]
       49 NAMECALL                         R1 R1 K21 ["IsMouseButtonPressed"]
       51 CALL                             R1 2 1
       52 JUMPIFNOT                        R1 ; [+1]
       53 JUMPBACK                         ; [-48]
       54 GETUPVAL                         R0 0
       55 LOADB                            R1 0
       56 SETTABLEKS                       R1 R0 K0 ["isDraggingSlider"]
       58 GETUPVAL                         R0 1
       59 CALL                             R0 0 0
       60 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverLock"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["mouseOverLock"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["LockCameraSpeed"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["LockCameraSpeed"]
        7 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["LockCameraSpeed"]
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
      118 JUMPIFNOT                        R40 ; [+15]
      119 GETIMPORT                        R40 K27 [Color3.fromHex]
      121 LOADK                            R41 K28 ["#E23D3D"]
      122 CALL                             R40 1 1
      123 MOVE                             R37 R40
      124 GETIMPORT                        R40 K27 [Color3.fromHex]
      126 LOADK                            R41 K29 ["#7EED42"]
      127 CALL                             R40 1 1
      128 MOVE                             R38 R40
      129 GETIMPORT                        R40 K27 [Color3.fromHex]
      131 LOADK                            R41 K30 ["#219AEC"]
      132 CALL                             R40 1 1
      133 MOVE                             R39 R40
      134 NEWCLOSURE                       R40 P1
      135 CAPTURE                          REF R16
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R5
      139 CAPTURE                          REF R17
      140 CAPTURE                          REF R18
      141 CAPTURE                          REF R19
      142 CAPTURE                          REF R29
      143 CAPTURE                          REF R20
      144 CAPTURE                          REF R21
      145 CAPTURE                          REF R22
      146 CAPTURE                          REF R23
      147 CAPTURE                          REF R27
      148 CAPTURE                          REF R28
      149 CAPTURE                          REF R37
      150 CAPTURE                          REF R38
      151 CAPTURE                          REF R39
      152 CAPTURE                          REF R15
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R35
      155 CAPTURE                          VAL R34
      156 CAPTURE                          REF R24
      157 CAPTURE                          REF R25
      158 CAPTURE                          REF R26
      159 CAPTURE                          REF R10
      160 CAPTURE                          VAL R9
      161 DUPCLOSURE                       R41 K31 [PROTO_3]
      162 DUPCLOSURE                       R42 K32 [PROTO_5]
      163 DUPCLOSURE                       R43 K33 [PROTO_6]
      164 CAPTURE                          VAL R35
      165 DUPCLOSURE                       R44 K34 [PROTO_7]
      166 CAPTURE                          VAL R35
      167 DUPCLOSURE                       R45 K35 [PROTO_9]
      168 NEWCLOSURE                       R46 P7
      169 CAPTURE                          VAL R1
      170 CAPTURE                          REF R18
      171 NEWCLOSURE                       R47 P8
      172 CAPTURE                          VAL R1
      173 CAPTURE                          REF R18
      174 CAPTURE                          REF R15
      175 CAPTURE                          REF R19
      176 CAPTURE                          VAL R42
      177 CAPTURE                          VAL R45
      178 CAPTURE                          REF R20
      179 CAPTURE                          REF R14
      180 CAPTURE                          VAL R35
      181 NEWCLOSURE                       R48 P9
      182 CAPTURE                          REF R28
      183 CAPTURE                          REF R11
      184 CAPTURE                          REF R27
      185 NEWCLOSURE                       R49 P10
      186 CAPTURE                          REF R28
      187 CAPTURE                          VAL R48
      188 NEWCLOSURE                       R50 P11
      189 CAPTURE                          REF R14
      190 CAPTURE                          VAL R35
      191 CAPTURE                          REF R27
      192 CAPTURE                          REF R28
      193 NEWCLOSURE                       R51 P12
      194 CAPTURE                          REF R12
      195 CAPTURE                          REF R13
      196 CAPTURE                          REF R17
      197 NEWCLOSURE                       R52 P13
      198 CAPTURE                          REF R19
      199 CAPTURE                          REF R17
      200 NEWCLOSURE                       R53 P14
      201 CAPTURE                          REF R19
      202 CAPTURE                          REF R17
      203 NEWCLOSURE                       R54 P15
      204 CAPTURE                          REF R12
      205 CAPTURE                          VAL R53
      206 NEWCLOSURE                       R55 P16
      207 CAPTURE                          REF R12
      208 CAPTURE                          REF R13
      209 CAPTURE                          REF R17
      210 NEWCLOSURE                       R56 P17
      211 CAPTURE                          REF R33
      212 CAPTURE                          REF R32
      213 CAPTURE                          REF R31
      214 CAPTURE                          REF R30
      215 NEWCLOSURE                       R57 P18
      216 CAPTURE                          REF R12
      217 CAPTURE                          REF R14
      218 CAPTURE                          VAL R34
      219 CAPTURE                          REF R33
      220 CAPTURE                          REF R32
      221 CAPTURE                          REF R31
      222 CAPTURE                          REF R30
      223 CAPTURE                          VAL R53
      224 NEWCLOSURE                       R58 P19
      225 CAPTURE                          REF R20
      226 CAPTURE                          REF R11
      227 CAPTURE                          REF R18
      228 CAPTURE                          REF R15
      229 CAPTURE                          REF R19
      230 CAPTURE                          REF R21
      231 CAPTURE                          REF R24
      232 CAPTURE                          REF R22
      233 CAPTURE                          REF R25
      234 CAPTURE                          REF R23
      235 CAPTURE                          REF R26
      236 NEWCLOSURE                       R59 P20
      237 CAPTURE                          REF R30
      238 CAPTURE                          REF R32
      239 CAPTURE                          REF R33
      240 CAPTURE                          REF R31
      241 CAPTURE                          REF R15
      242 CAPTURE                          REF R11
      243 CAPTURE                          REF R18
      244 CAPTURE                          REF R20
      245 CAPTURE                          REF R19
      246 CAPTURE                          REF R21
      247 CAPTURE                          REF R24
      248 CAPTURE                          REF R22
      249 CAPTURE                          REF R25
      250 CAPTURE                          REF R23
      251 CAPTURE                          REF R26
      252 CAPTURE                          VAL R48
      253 NEWCLOSURE                       R60 P21
      254 CAPTURE                          REF R16
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R59
      257 CAPTURE                          VAL R0
      258 CAPTURE                          VAL R52
      259 CAPTURE                          VAL R9
      260 NEWCLOSURE                       R61 P22
      261 CAPTURE                          REF R10
      262 CAPTURE                          VAL R60
      263 NEWCLOSURE                       R62 P23
      264 CAPTURE                          REF R11
      265 CAPTURE                          VAL R42
      266 CAPTURE                          VAL R45
      267 CAPTURE                          VAL R34
      268 CAPTURE                          REF R33
      269 CAPTURE                          REF R32
      270 CAPTURE                          REF R31
      271 CAPTURE                          REF R30
      272 CAPTURE                          VAL R57
      273 NAMECALL                         R63 R0 K36 ["IsEdit"]
      275 CALL                             R63 1 1
      276 JUMPIF                           R63 ; [+9]
      277 NAMECALL                         R63 R0 K37 ["IsServer"]
      279 CALL                             R63 1 1
      280 JUMPIF                           R63 ; [+5]
      281 LOADB                            R63 0
      282 SETTABLEKS                       R63 R9 K38 ["Enabled"]
      284 CLOSEUPVALS                      R10
      285 RETURN                           R0 0
      286 MOVE                             R63 R40
      287 CALL                             R63 0 0
      288 MOVE                             R63 R60
      289 MOVE                             R64 R10
      290 CALL                             R63 1 0
      291 GETTABLEKS                       R63 R9 K39 ["Click"]
      293 MOVE                             R65 R61
      294 NAMECALL                         R63 R63 K40 ["connect"]
      296 CALL                             R63 2 0
      297 GETTABLEKS                       R63 R29 K41 ["MouseMoved"]
      299 MOVE                             R65 R47
      300 NAMECALL                         R63 R63 K40 ["connect"]
      302 CALL                             R63 2 0
      303 GETTABLEKS                       R63 R29 K42 ["MouseEnter"]
      305 MOVE                             R65 R49
      306 NAMECALL                         R63 R63 K40 ["connect"]
      308 CALL                             R63 2 0
      309 GETTABLEKS                       R63 R29 K43 ["MouseLeave"]
      311 MOVE                             R65 R50
      312 NAMECALL                         R63 R63 K40 ["connect"]
      314 CALL                             R63 2 0
      315 GETTABLEKS                       R63 R29 K44 ["MouseButton1Down"]
      317 MOVE                             R65 R55
      318 NAMECALL                         R63 R63 K40 ["connect"]
      320 CALL                             R63 2 0
      321 GETTABLEKS                       R63 R29 K45 ["MouseButton1Up"]
      323 MOVE                             R65 R57
      324 NAMECALL                         R63 R63 K40 ["connect"]
      326 CALL                             R63 2 0
      327 GETTABLEKS                       R63 R4 K46 ["InputChanged"]
      329 MOVE                             R65 R51
      330 NAMECALL                         R63 R63 K40 ["connect"]
      332 CALL                             R63 2 0
      333 GETTABLEKS                       R63 R4 K47 ["InputEnded"]
      335 MOVE                             R65 R54
      336 NAMECALL                         R63 R63 K40 ["connect"]
      338 CALL                             R63 2 0
      339 MOVE                             R63 R62
      340 LOADK                            R66 K48 ["RightArrow"]
      341 NAMECALL                         R64 R27 K49 ["WaitForChild"]
      343 CALL                             R64 2 1
      344 GETIMPORT                        R65 K52 [Vector2.new]
      346 LOADN                            R66 1
      347 LOADN                            R67 0
      348 CALL                             R65 2 -1
      349 CALL                             R63 -1 0
      350 MOVE                             R63 R62
      351 LOADK                            R66 K53 ["LeftArrow"]
      352 NAMECALL                         R64 R27 K49 ["WaitForChild"]
      354 CALL                             R64 2 1
      355 GETIMPORT                        R65 K52 [Vector2.new]
      357 LOADN                            R66 255
      358 LOADN                            R67 0
      359 CALL                             R65 2 -1
      360 CALL                             R63 -1 0
      361 MOVE                             R63 R62
      362 LOADK                            R66 K54 ["UpArrow"]
      363 NAMECALL                         R64 R27 K49 ["WaitForChild"]
      365 CALL                             R64 2 1
      366 GETIMPORT                        R65 K52 [Vector2.new]
      368 LOADN                            R66 0
      369 LOADN                            R67 1
      370 CALL                             R65 2 -1
      371 CALL                             R63 -1 0
      372 MOVE                             R63 R62
      373 LOADK                            R66 K55 ["DownArrow"]
      374 NAMECALL                         R64 R27 K49 ["WaitForChild"]
      376 CALL                             R64 2 1
      377 GETIMPORT                        R65 K52 [Vector2.new]
      379 LOADN                            R66 0
      380 LOADN                            R67 255
      381 CALL                             R65 2 -1
      382 CALL                             R63 -1 0
      383 GETIMPORT                        R63 K1 [game]
      385 LOADK                            R65 K56 ["NewCameraControls"]
      386 NAMECALL                         R63 R63 K3 ["GetEngineFeature"]
      388 CALL                             R63 2 1
      389 JUMPIFNOT                        R63 ; [+322]
      390 GETIMPORT                        R63 K58 [TweenInfo.new]
      392 LOADK                            R64 K59 [0.2]
      393 GETIMPORT                        R65 K63 [Enum.EasingStyle.Linear]
      395 CALL                             R63 2 1
      396 LOADK                            R66 K64 ["CamSpeed"]
      397 NAMECALL                         R64 R17 K49 ["WaitForChild"]
      399 CALL                             R64 2 1
      400 LOADK                            R67 K65 ["UIStroke"]
      401 NAMECALL                         R65 R64 K49 ["WaitForChild"]
      403 CALL                             R65 2 1
      404 LOADK                            R68 K66 ["Slider"]
      405 NAMECALL                         R66 R64 K49 ["WaitForChild"]
      407 CALL                             R66 2 1
      408 GETTABLEKS                       R68 R64 K67 ["AbsoluteSize"]
      410 GETTABLEKS                       R67 R68 K68 ["X"]
      412 MOVE                             R70 R64
      413 MOVE                             R71 R63
      414 DUPTABLE                         R72 K71 [{"TextTransparency", "BackgroundTransparency"}]
      415 LOADN                            R73 1
      416 SETTABLEKS                       R73 R72 K69 ["TextTransparency"]
      418 LOADN                            R73 1
      419 SETTABLEKS                       R73 R72 K70 ["BackgroundTransparency"]
      421 NAMECALL                         R68 R7 K72 ["Create"]
      423 CALL                             R68 4 1
      424 MOVE                             R71 R66
      425 MOVE                             R72 R63
      426 DUPTABLE                         R73 K73 [{"BackgroundTransparency"}]
      427 LOADN                            R74 1
      428 SETTABLEKS                       R74 R73 K70 ["BackgroundTransparency"]
      430 NAMECALL                         R69 R7 K72 ["Create"]
      432 CALL                             R69 4 1
      433 LOADNIL                          R70
      434 GETIMPORT                        R71 K1 [game]
      436 LOADK                            R73 K74 ["StudioCameraService"]
      437 NAMECALL                         R71 R71 K5 ["GetService"]
      439 CALL                             R71 2 1
      440 LOADB                            R72 0
      441 SETTABLEKS                       R72 R64 K75 ["ClipsDescendants"]
      443 GETIMPORT                        R72 K77 [Instance.new]
      445 LOADK                            R73 K78 ["ImageButton"]
      446 MOVE                             R74 R64
      447 CALL                             R72 2 1
      448 LOADK                            R73 K79 ["SpeedLock"]
      449 SETTABLEKS                       R73 R72 K80 ["Name"]
      451 LOADK                            R73 K81 [0.6]
      452 SETTABLEKS                       R73 R72 K70 ["BackgroundTransparency"]
      454 GETIMPORT                        R73 K82 [Color3.new]
      456 LOADN                            R74 255
      457 LOADN                            R75 255
      458 LOADN                            R76 255
      459 CALL                             R73 3 1
      460 SETTABLEKS                       R73 R72 K83 ["BackgroundColor3"]
      462 GETIMPORT                        R73 K82 [Color3.new]
      464 LOADN                            R74 255
      465 LOADN                            R75 255
      466 LOADN                            R76 255
      467 CALL                             R73 3 1
      468 SETTABLEKS                       R73 R72 K84 ["BorderColor3"]
      470 GETIMPORT                        R73 K52 [Vector2.new]
      472 LOADN                            R74 0
      473 LOADN                            R75 0
      474 CALL                             R73 2 1
      475 SETTABLEKS                       R73 R72 K85 ["AnchorPoint"]
      477 GETIMPORT                        R73 K87 [UDim2.new]
      479 LOADN                            R74 1
      480 LOADN                            R75 5
      481 LOADN                            R76 0
      482 LOADN                            R77 0
      483 CALL                             R73 4 1
      484 SETTABLEKS                       R73 R72 K88 ["Position"]
      486 GETIMPORT                        R73 K87 [UDim2.new]
      488 LOADN                            R74 0
      489 LOADN                            R75 22
      490 LOADN                            R76 0
      491 LOADN                            R77 22
      492 CALL                             R73 4 1
      493 SETTABLEKS                       R73 R72 K89 ["Size"]
      495 LOADN                            R73 20
      496 SETTABLEKS                       R73 R72 K90 ["ZIndex"]
      498 GETIMPORT                        R73 K77 [Instance.new]
      500 LOADK                            R74 K91 ["UICorner"]
      501 MOVE                             R75 R72
      502 CALL                             R73 2 1
      503 GETIMPORT                        R74 K93 [UDim.new]
      505 LOADN                            R75 0
      506 LOADN                            R76 5
      507 CALL                             R74 2 1
      508 SETTABLEKS                       R74 R73 K94 ["CornerRadius"]
      510 GETIMPORT                        R74 K77 [Instance.new]
      512 LOADK                            R75 K65 ["UIStroke"]
      513 MOVE                             R76 R72
      514 CALL                             R74 2 1
      515 LOADN                            R75 1
      516 SETTABLEKS                       R75 R74 K95 ["Transparency"]
      518 GETIMPORT                        R75 K82 [Color3.new]
      520 LOADN                            R76 255
      521 LOADN                            R77 255
      522 LOADN                            R78 255
      523 CALL                             R75 3 1
      524 SETTABLEKS                       R75 R74 K96 ["Color"]
      526 GETIMPORT                        R75 K99 [Enum.ApplyStrokeMode.Border]
      528 SETTABLEKS                       R75 R74 K97 ["ApplyStrokeMode"]
      530 MOVE                             R77 R72
      531 MOVE                             R78 R63
      532 DUPTABLE                         R79 K101 [{"ImageTransparency", "BackgroundTransparency"}]
      533 LOADN                            R80 1
      534 SETTABLEKS                       R80 R79 K100 ["ImageTransparency"]
      536 LOADN                            R80 1
      537 SETTABLEKS                       R80 R79 K70 ["BackgroundTransparency"]
      539 NAMECALL                         R75 R7 K72 ["Create"]
      541 CALL                             R75 4 1
      542 DUPCLOSURE                       R76 K102 [PROTO_35]
      543 CAPTURE                          VAL R71
      544 CAPTURE                          VAL R72
      545 GETTABLEKS                       R77 R71 K103 ["LockCameraSpeed"]
      547 JUMPIFNOT                        R77 ; [+4]
      548 LOADK                            R77 K104 ["rbxasset://studio_svg_textures/Lua/CameraService/Light/Standard/speedLocked.png"]
      549 SETTABLEKS                       R77 R72 K105 ["Image"]
      551 JUMP                             ; [+3]
      552 LOADK                            R77 K106 ["rbxasset://studio_svg_textures/Lua/CameraService/Light/Standard/speedUnlocked.png"]
      553 SETTABLEKS                       R77 R72 K105 ["Image"]
      555 DUPTABLE                         R77 K112 [{"mouseOverViewSelector", "mouseOverSlider", "isDraggingSlider", "mouseOverLock", "isClickingLock"}]
      556 LOADB                            R78 0
      557 SETTABLEKS                       R78 R77 K107 ["mouseOverViewSelector"]
      559 LOADB                            R78 0
      560 SETTABLEKS                       R78 R77 K108 ["mouseOverSlider"]
      562 LOADB                            R78 0
      563 SETTABLEKS                       R78 R77 K109 ["isDraggingSlider"]
      565 LOADB                            R78 0
      566 SETTABLEKS                       R78 R77 K110 ["mouseOverLock"]
      568 LOADB                            R78 0
      569 SETTABLEKS                       R78 R77 K111 ["isClickingLock"]
      571 NEWCLOSURE                       R78 P25
      572 CAPTURE                          VAL R68
      573 CAPTURE                          VAL R69
      574 CAPTURE                          VAL R75
      575 CAPTURE                          REF R70
      576 CAPTURE                          VAL R64
      577 CAPTURE                          VAL R66
      578 CAPTURE                          VAL R72
      579 CAPTURE                          VAL R77
      580 CAPTURE                          VAL R65
      581 CAPTURE                          VAL R74
      582 DUPCLOSURE                       R79 K113 [PROTO_38]
      583 CAPTURE                          VAL R64
      584 CAPTURE                          VAL R67
      585 CAPTURE                          VAL R66
      586 GETIMPORT                        R81 K115 [settings]
      588 CALL                             R81 0 1
      589 GETTABLEKS                       R80 R81 K116 ["Studio"]
      591 LOADK                            R82 K117 ["Camera Speed"]
      592 NAMECALL                         R80 R80 K118 ["GetPropertyChangedSignal"]
      594 CALL                             R80 2 1
      595 DUPCLOSURE                       R82 K119 [PROTO_39]
      596 CAPTURE                          VAL R79
      597 CAPTURE                          VAL R78
      598 NAMECALL                         R80 R80 K120 ["Connect"]
      600 CALL                             R80 2 0
      601 GETTABLEKS                       R80 R71 K121 ["ShowCameraSpeed"]
      603 DUPCLOSURE                       R82 K122 [PROTO_40]
      604 CAPTURE                          VAL R79
      605 CAPTURE                          VAL R78
      606 NAMECALL                         R80 R80 K120 ["Connect"]
      608 CALL                             R80 2 0
      609 GETTABLEKS                       R80 R29 K42 ["MouseEnter"]
      611 DUPCLOSURE                       R82 K123 [PROTO_41]
      612 CAPTURE                          VAL R77
      613 CAPTURE                          VAL R78
      614 NAMECALL                         R80 R80 K120 ["Connect"]
      616 CALL                             R80 2 0
      617 GETTABLEKS                       R80 R29 K43 ["MouseLeave"]
      619 DUPCLOSURE                       R82 K124 [PROTO_42]
      620 CAPTURE                          VAL R77
      621 CAPTURE                          VAL R78
      622 NAMECALL                         R80 R80 K120 ["Connect"]
      624 CALL                             R80 2 0
      625 GETTABLEKS                       R80 R64 K42 ["MouseEnter"]
      627 DUPCLOSURE                       R82 K125 [PROTO_43]
      628 CAPTURE                          VAL R77
      629 CAPTURE                          VAL R78
      630 NAMECALL                         R80 R80 K120 ["Connect"]
      632 CALL                             R80 2 0
      633 GETTABLEKS                       R80 R64 K43 ["MouseLeave"]
      635 DUPCLOSURE                       R82 K126 [PROTO_44]
      636 CAPTURE                          VAL R77
      637 CAPTURE                          VAL R78
      638 NAMECALL                         R80 R80 K120 ["Connect"]
      640 CALL                             R80 2 0
      641 GETTABLEKS                       R80 R64 K44 ["MouseButton1Down"]
      643 DUPCLOSURE                       R82 K127 [PROTO_45]
      644 CAPTURE                          VAL R77
      645 CAPTURE                          VAL R78
      646 CAPTURE                          VAL R4
      647 CAPTURE                          VAL R64
      648 CAPTURE                          VAL R67
      649 CAPTURE                          VAL R0
      650 NAMECALL                         R80 R80 K120 ["Connect"]
      652 CALL                             R80 2 0
      653 GETTABLEKS                       R80 R72 K42 ["MouseEnter"]
      655 DUPCLOSURE                       R82 K128 [PROTO_46]
      656 CAPTURE                          VAL R77
      657 CAPTURE                          VAL R78
      658 NAMECALL                         R80 R80 K120 ["Connect"]
      660 CALL                             R80 2 0
      661 GETTABLEKS                       R80 R72 K43 ["MouseLeave"]
      663 DUPCLOSURE                       R82 K129 [PROTO_47]
      664 CAPTURE                          VAL R77
      665 CAPTURE                          VAL R78
      666 NAMECALL                         R80 R80 K120 ["Connect"]
      668 CALL                             R80 2 0
      669 GETTABLEKS                       R80 R72 K130 ["Activated"]
      671 DUPCLOSURE                       R82 K131 [PROTO_48]
      672 CAPTURE                          VAL R71
      673 NAMECALL                         R80 R80 K120 ["Connect"]
      675 CALL                             R80 2 0
      676 LOADK                            R82 K103 ["LockCameraSpeed"]
      677 NAMECALL                         R80 R71 K118 ["GetPropertyChangedSignal"]
      679 CALL                             R80 2 1
      680 DUPCLOSURE                       R82 K132 [PROTO_49]
      681 CAPTURE                          VAL R71
      682 CAPTURE                          VAL R72
      683 CAPTURE                          VAL R78
      684 NAMECALL                         R80 R80 K120 ["Connect"]
      686 CALL                             R80 2 0
      687 MOVE                             R80 R79
      688 CALL                             R80 0 0
      689 LOADN                            R80 1
      690 SETTABLEKS                       R80 R64 K70 ["BackgroundTransparency"]
      692 LOADN                            R80 1
      693 SETTABLEKS                       R80 R64 K69 ["TextTransparency"]
      695 LOADN                            R80 1
      696 SETTABLEKS                       R80 R65 K95 ["Transparency"]
      698 LOADN                            R80 1
      699 SETTABLEKS                       R80 R66 K70 ["BackgroundTransparency"]
      701 LOADN                            R80 1
      702 SETTABLEKS                       R80 R72 K100 ["ImageTransparency"]
      704 LOADN                            R80 1
      705 SETTABLEKS                       R80 R72 K70 ["BackgroundTransparency"]
      707 LOADN                            R80 1
      708 SETTABLEKS                       R80 R74 K95 ["Transparency"]
      710 CLOSEUPVALS                      R70
      711 JUMP                             ; [+7]
      712 LOADK                            R65 K64 ["CamSpeed"]
      713 NAMECALL                         R63 R17 K49 ["WaitForChild"]
      715 CALL                             R63 2 1
      716 NAMECALL                         R63 R63 K133 ["Destroy"]
      718 CALL                             R63 1 0
      719 CLOSEUPVALS                      R10
      720 RETURN                           R0 0
