PROTO_0:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+25]
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+8]
       12 GETIMPORT                        R2 K7 [Color3.fromHex]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K8 ["Color"]
       18 RETURN                           R0 0
       19 GETIMPORT                        R2 K10 [Color3.fromRGB]
       21 GETTABLEKS                       R3 R1 K11 ["r"]
       23 GETTABLEKS                       R4 R1 K12 ["g"]
       25 GETTABLEKS                       R5 R1 K13 ["b"]
       27 CALL                             R2 3 1
       28 SETTABLEKS                       R2 R0 K8 ["Color"]
       30 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+52]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["get"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R2 1
        9 GETIMPORT                        R3 K2 [pcall]
       11 GETIMPORT                        R5 K4 [game]
       13 GETTABLEKS                       R4 R5 K5 ["GetService"]
       15 GETIMPORT                        R5 K4 [game]
       17 MOVE                             R6 R0
       18 CALL                             R3 3 2
       19 JUMPIFNOT                        R3 ; [+2]
       20 JUMPIFNOT                        R4 ; [+1]
       21 RETURN                           R4 1
       22 JUMPIFNOTEQKS                    R0 K6 ["workspace"] ; [+4]
       24 GETIMPORT                        R5 K7 [workspace]
       26 RETURN                           R5 1
       27 JUMPIFNOTEQKS                    R0 K8 ["StarterPlayerScripts"] ; [+12]
       29 GETIMPORT                        R5 K4 [game]
       31 LOADK                            R7 K9 ["StarterPlayer"]
       32 NAMECALL                         R5 R5 K5 ["GetService"]
       34 CALL                             R5 2 1
       35 LOADK                            R7 K8 ["StarterPlayerScripts"]
       36 NAMECALL                         R5 R5 K10 ["FindFirstChildWhichIsA"]
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1
       40 JUMPIFNOTEQKS                    R0 K11 ["StarterCharacterScripts"] ; [+12]
       42 GETIMPORT                        R5 K4 [game]
       44 LOADK                            R7 K9 ["StarterPlayer"]
       45 NAMECALL                         R5 R5 K5 ["GetService"]
       47 CALL                             R5 2 1
       48 LOADK                            R7 K11 ["StarterCharacterScripts"]
       49 NAMECALL                         R5 R5 K10 ["FindFirstChildWhichIsA"]
       51 CALL                             R5 2 -1
       52 RETURN                           R5 -1
       53 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["position"]
        4 JUMPIFNOT                        R2 ; [+18]
        5 GETIMPORT                        R2 K3 [CFrame.new]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K0 ["position"]
       10 GETTABLEKS                       R4 R5 K5 ["x"]
       12 ORK                              R3 R4 K4 [0]
       13 LOADN                            R4 0
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K0 ["position"]
       17 GETTABLEKS                       R6 R7 K6 ["z"]
       19 ORK                              R5 R6 K4 [0]
       20 CALL                             R2 3 1
       21 MOVE                             R1 R2
       22 JUMP                             ; [+7]
       23 GETIMPORT                        R2 K3 [CFrame.new]
       25 LOADN                            R3 0
       26 LOADN                            R4 0
       27 LOADN                            R5 0
       28 CALL                             R2 3 1
       29 MOVE                             R1 R2
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K7 ["positionOrigin"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K8 ["get"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K9 ["referenceInstance"]
       39 GETUPVAL                         R5 2
       40 CALL                             R3 2 1
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R4 R5 K10 ["getWorldBoundingBox"]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 2
       46 GETIMPORT                        R6 K3 [CFrame.new]
       48 CALL                             R6 0 1
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 JUMPIFNOTEQKS                    R2 K11 ["absolute"] ; [+6]
       53 GETIMPORT                        R9 K3 [CFrame.new]
       55 CALL                             R9 0 1
       56 MOVE                             R6 R9
       57 JUMP                             ; [+40]
       58 JUMPIFNOTEQKS                    R2 K12 ["relative"] ; [+9]
       60 JUMPIFNOT                        R3 ; [+7]
       61 GETIMPORT                        R9 K3 [CFrame.new]
       63 GETTABLEKS                       R10 R4 K13 ["Position"]
       65 CALL                             R9 1 1
       66 MOVE                             R6 R9
       67 JUMP                             ; [+30]
       68 JUMPIFNOTEQKS                    R2 K14 ["onTop"] ; [+10]
       70 JUMPIFNOT                        R3 ; [+8]
       71 GETIMPORT                        R9 K3 [CFrame.new]
       73 GETTABLEKS                       R10 R4 K13 ["Position"]
       75 CALL                             R9 1 1
       76 MOVE                             R6 R9
       77 MOVE                             R7 R3
       78 JUMP                             ; [+19]
       79 GETUPVAL                         R9 4
       80 CALL                             R9 0 1
       81 JUMPIFNOT                        R9 ; [+9]
       82 JUMPIFNOTEQKS                    R2 K15 ["currentCamera"] ; [+8]
       84 GETUPVAL                         R10 3
       85 GETTABLEKS                       R9 R10 K16 ["getCurrentLookingCFrame"]
       87 CALL                             R9 0 5
       88 MOVE                             R6 R9
       89 MOVE                             R8 R10
       90 JUMP                             ; [+7]
       91 GETUPVAL                         R10 3
       92 GETTABLEKS                       R9 R10 K17 ["getRequestCFrame"]
       94 GETUPVAL                         R10 2
       95 CALL                             R9 1 2
       96 MOVE                             R6 R9
       97 MOVE                             R8 R10
       98 MOVE                             R11 R1
       99 NAMECALL                         R9 R6 K18 ["ToWorldSpace"]
      101 CALL                             R9 2 1
      102 GETUPVAL                         R11 3
      103 GETTABLEKS                       R10 R11 K19 ["getGroundLevelAt"]
      105 GETTABLEKS                       R11 R9 K13 ["Position"]
      107 MOVE                             R12 R7
      108 MOVE                             R13 R5
      109 MOVE                             R14 R8
      110 CALL                             R10 4 1
      111 GETTABLEKS                       R15 R9 K13 ["Position"]
      113 GETTABLEKS                       R14 R15 K20 ["Y"]
      115 MINUS                            R13 R14
      116 ADD                              R12 R13 R10
      117 NAMECALL                         R15 R0 K22 ["GetExtentsSize"]
      119 CALL                             R15 1 1
      120 GETTABLEKS                       R14 R15 K20 ["Y"]
      122 DIVK                             R13 R14 K21 [2]
      123 ADD                              R11 R12 R13
      124 GETUPVAL                         R13 0
      125 GETTABLEKS                       R12 R13 K23 ["elevation"]
      127 JUMPIFNOT                        R12 ; [+4]
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R12 R13 K23 ["elevation"]
      131 ADD                              R11 R11 R12
      132 LOADN                            R13 0
      133 LOADN                            R15 0
      134 FASTCALL3                        VECTOR R13 R11 R15
      136 MOVE                             R14 R11
      137 GETIMPORT                        R12 K25 [Vector3.new]
      139 CALL                             R12 3 1
      140 ADD                              R9 R9 R12
      141 GETUPVAL                         R13 0
      142 GETTABLEKS                       R12 R13 K26 ["rotation"]
      144 JUMPIFNOT                        R12 ; [+18]
      145 GETIMPORT                        R13 K28 [CFrame.fromEulerAngles]
      147 LOADN                            R14 0
      148 GETUPVAL                         R17 0
      149 GETTABLEKS                       R16 R17 K26 ["rotation"]
      151 FASTCALL1                        MATH_RAD R16 ; [+2]
      152 GETIMPORT                        R15 K31 [math.rad]
      154 CALL                             R15 1 1
      155 LOADN                            R16 0
      156 CALL                             R13 3 1
      157 GETTABLEKS                       R14 R9 K32 ["Rotation"]
      159 MUL                              R12 R13 R14
      160 GETTABLEKS                       R13 R9 K13 ["Position"]
      162 ADD                              R9 R12 R13
      163 GETUPVAL                         R13 0
      164 GETTABLEKS                       R12 R13 K33 ["offsetCFrame"]
      166 JUMPIFNOT                        R12 ; [+4]
      167 GETUPVAL                         R13 0
      168 GETTABLEKS                       R12 R13 K33 ["offsetCFrame"]
      170 MUL                              R9 R9 R12
      171 MOVE                             R14 R9
      172 NAMECALL                         R12 R0 K34 ["PivotTo"]
      174 CALL                             R12 2 0
      175 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETTABLEKS                       R2 R0 K1 ["arguments"]
        4 GETTABLEKS                       R3 R2 K2 ["direct_instance"]
        6 GETTABLEKS                       R4 R2 K3 ["newInstanceId"]
        8 JUMPIF                           R4 ; [+2]
        9 GETTABLEKS                       R4 R2 K4 ["instanceId"]
       11 MOVE                             R5 R3
       12 JUMPIF                           R5 ; [+6]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K5 ["get"]
       16 MOVE                             R6 R4
       17 MOVE                             R7 R1
       18 CALL                             R5 2 1
       19 JUMPIF                           R5 ; [+4]
       20 GETIMPORT                        R6 K7 [error]
       22 LOADK                            R7 K8 ["Failed to find instance to set properties on"]
       23 CALL                             R6 1 0
       24 FASTCALL2K                       ASSERT R5 K9 ; [+5]
       26 MOVE                             R7 R5
       27 LOADK                            R8 K9 ["Luau"]
       28 GETIMPORT                        R6 K11 [assert]
       30 CALL                             R6 2 0
       31 JUMPIF                           R3 ; [+5]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K12 ["StartRecordingActions"]
       35 MOVE                             R7 R1
       36 CALL                             R6 1 0
       37 GETTABLEKS                       R6 R2 K13 ["properties"]
       39 JUMPIF                           R6 ; [+2]
       40 NEWTABLE                         R6 0 0
       42 GETTABLEKS                       R7 R6 K14 ["instanceName"]
       44 JUMPIFNOT                        R7 ; [+4]
       45 GETTABLEKS                       R7 R6 K14 ["instanceName"]
       47 SETTABLEKS                       R7 R5 K15 ["Name"]
       49 GETTABLEKS                       R7 R6 K16 ["size"]
       51 JUMPIFNOT                        R7 ; [+23]
       52 LOADK                            R9 K17 ["BasePart"]
       53 NAMECALL                         R7 R5 K18 ["IsA"]
       55 CALL                             R7 2 1
       56 JUMPIFNOT                        R7 ; [+18]
       57 GETTABLEKS                       R9 R6 K16 ["size"]
       59 GETTABLEKS                       R8 R9 K19 ["x"]
       61 GETTABLEKS                       R10 R6 K16 ["size"]
       63 GETTABLEKS                       R9 R10 K20 ["y"]
       65 GETTABLEKS                       R11 R6 K16 ["size"]
       67 GETTABLEKS                       R10 R11 K21 ["z"]
       69 FASTCALL                         VECTOR ; [+2]
       70 GETIMPORT                        R7 K24 [Vector3.new]
       72 CALL                             R7 3 1
       73 SETTABLEKS                       R7 R5 K25 ["Size"]
       75 LOADK                            R9 K26 ["Model"]
       76 NAMECALL                         R7 R5 K18 ["IsA"]
       78 CALL                             R7 2 1
       79 JUMPIFNOT                        R7 ; [+84]
       80 GETTABLEKS                       R7 R6 K27 ["scale"]
       82 JUMPIFNOT                        R7 ; [+15]
       83 GETTABLEKS                       R7 R6 K27 ["scale"]
       85 LOADN                            R8 0
       86 JUMPIFNOTLT                      R8 R7 ; [+11]
       88 NAMECALL                         R7 R5 K28 ["GetScale"]
       90 CALL                             R7 1 1
       91 GETTABLEKS                       R11 R6 K27 ["scale"]
       93 MUL                              R10 R7 R11
       94 NAMECALL                         R8 R5 K29 ["ScaleTo"]
       96 CALL                             R8 2 0
       97 JUMP                             ; [+66]
       98 GETTABLEKS                       R7 R6 K30 ["height"]
      100 JUMPIFNOT                        R7 ; [+25]
      101 GETTABLEKS                       R7 R6 K30 ["height"]
      103 LOADK                            R8 K31 [0.1]
      104 JUMPIFNOTLT                      R8 R7 ; [+21]
      106 GETUPVAL                         R8 1
      107 GETTABLEKS                       R7 R8 K32 ["getWorldBoundingBox"]
      109 MOVE                             R8 R5
      110 CALL                             R7 1 2
      111 GETTABLEKS                       R9 R8 K33 ["Y"]
      113 LOADK                            R10 K31 [0.1]
      114 JUMPIFNOTLT                      R10 R9 ; [+49]
      116 GETTABLEKS                       R10 R6 K30 ["height"]
      118 GETTABLEKS                       R11 R8 K33 ["Y"]
      120 DIV                              R9 R10 R11
      121 MOVE                             R12 R9
      122 NAMECALL                         R10 R5 K29 ["ScaleTo"]
      124 CALL                             R10 2 0
      125 JUMP                             ; [+38]
      126 GETTABLEKS                       R7 R6 K16 ["size"]
      128 JUMPIFNOT                        R7 ; [+35]
      129 GETTABLEKS                       R8 R6 K16 ["size"]
      131 GETTABLEKS                       R7 R8 K20 ["y"]
      133 LOADK                            R8 K31 [0.1]
      134 JUMPIFNOTLT                      R8 R7 ; [+29]
      136 GETUPVAL                         R8 1
      137 GETTABLEKS                       R7 R8 K32 ["getWorldBoundingBox"]
      139 MOVE                             R8 R5
      140 CALL                             R7 1 2
      141 GETTABLEKS                       R9 R8 K33 ["Y"]
      143 LOADK                            R10 K31 [0.1]
      144 JUMPIFNOTLT                      R10 R9 ; [+19]
      146 GETTABLEKS                       R10 R6 K16 ["size"]
      148 GETTABLEKS                       R9 R10 K20 ["y"]
      150 LOADK                            R10 K31 [0.1]
      151 JUMPIFNOTLT                      R10 R9 ; [+12]
      153 GETTABLEKS                       R11 R6 K16 ["size"]
      155 GETTABLEKS                       R10 R11 K20 ["y"]
      157 GETTABLEKS                       R11 R8 K33 ["Y"]
      159 DIV                              R9 R10 R11
      160 MOVE                             R12 R9
      161 NAMECALL                         R10 R5 K29 ["ScaleTo"]
      163 CALL                             R10 2 0
      164 GETTABLEKS                       R7 R6 K34 ["source"]
      166 JUMPIFNOT                        R7 ; [+34]
      167 LOADK                            R9 K35 ["Script"]
      168 NAMECALL                         R7 R5 K18 ["IsA"]
      170 CALL                             R7 2 1
      171 JUMPIF                           R7 ; [+5]
      172 LOADK                            R9 K36 ["ModuleScript"]
      173 NAMECALL                         R7 R5 K18 ["IsA"]
      175 CALL                             R7 2 1
      176 JUMPIFNOT                        R7 ; [+24]
      177 GETUPVAL                         R7 2
      178 LOADK                            R9 K37 ["UpdateScriptSource"]
      179 DUPTABLE                         R10 K40 [{"requestId", "instanceId", "script", "source", "isNewScript"}]
      180 SETTABLEKS                       R1 R10 K0 ["requestId"]
      182 SETTABLEKS                       R4 R10 K4 ["instanceId"]
      184 SETTABLEKS                       R5 R10 K38 ["script"]
      186 GETTABLEKS                       R11 R6 K34 ["source"]
      188 SETTABLEKS                       R11 R10 K34 ["source"]
      190 GETTABLEKS                       R12 R2 K3 ["newInstanceId"]
      192 JUMPIFEQ                         R4 R12 ; [+2]
      194 LOADB                            R11 0 +1
      195 LOADB                            R11 1
      196 SETTABLEKS                       R11 R10 K39 ["isNewScript"]
      198 NAMECALL                         R7 R7 K41 ["DisplayContent"]
      200 CALL                             R7 3 0
      201 GETTABLEKS                       R7 R6 K42 ["color"]
      203 JUMPIFNOT                        R7 ; [+70]
      204 GETTABLEKS                       R7 R6 K42 ["color"]
      206 LOADK                            R10 K17 ["BasePart"]
      207 NAMECALL                         R8 R5 K18 ["IsA"]
      209 CALL                             R8 2 1
      210 JUMPIFNOT                        R8 ; [+25]
      211 FASTCALL1                        TYPEOF R7 ; [+3]
      212 MOVE                             R9 R7
      213 GETIMPORT                        R8 K44 [typeof]
      215 CALL                             R8 1 1
      216 JUMPIFNOTEQKS                    R8 K45 ["string"] ; [+8]
      218 GETIMPORT                        R8 K48 [Color3.fromHex]
      220 MOVE                             R9 R7
      221 CALL                             R8 1 1
      222 SETTABLEKS                       R8 R5 K49 ["Color"]
      224 JUMP                             ; [+11]
      225 GETIMPORT                        R8 K51 [Color3.fromRGB]
      227 GETTABLEKS                       R9 R7 K52 ["r"]
      229 GETTABLEKS                       R10 R7 K53 ["g"]
      231 GETTABLEKS                       R11 R7 K54 ["b"]
      233 CALL                             R8 3 1
      234 SETTABLEKS                       R8 R5 K49 ["Color"]
      236 NAMECALL                         R7 R5 K55 ["GetDescendants"]
      238 CALL                             R7 1 3
      239 FORGPREP                         R7
      240 GETTABLEKS                       R12 R6 K42 ["color"]
      242 LOADK                            R15 K17 ["BasePart"]
      243 NAMECALL                         R13 R11 K18 ["IsA"]
      245 CALL                             R13 2 1
      246 JUMPIFNOT                        R13 ; [+25]
      247 FASTCALL1                        TYPEOF R12 ; [+3]
      248 MOVE                             R14 R12
      249 GETIMPORT                        R13 K44 [typeof]
      251 CALL                             R13 1 1
      252 JUMPIFNOTEQKS                    R13 K45 ["string"] ; [+8]
      254 GETIMPORT                        R13 K48 [Color3.fromHex]
      256 MOVE                             R14 R12
      257 CALL                             R13 1 1
      258 SETTABLEKS                       R13 R11 K49 ["Color"]
      260 JUMP                             ; [+11]
      261 GETIMPORT                        R13 K51 [Color3.fromRGB]
      263 GETTABLEKS                       R14 R12 K52 ["r"]
      265 GETTABLEKS                       R15 R12 K53 ["g"]
      267 GETTABLEKS                       R16 R12 K54 ["b"]
      269 CALL                             R13 3 1
      270 SETTABLEKS                       R13 R11 K49 ["Color"]
      272 FORGLOOP                         R7 2 ; [-33]
      274 GETTABLEKS                       R7 R6 K56 ["material"]
      276 JUMPIFNOT                        R7 ; [+12]
      277 LOADK                            R9 K17 ["BasePart"]
      278 NAMECALL                         R7 R5 K18 ["IsA"]
      280 CALL                             R7 2 1
      281 JUMPIFNOT                        R7 ; [+7]
      282 GETIMPORT                        R8 K59 [Enum.Material]
      284 GETTABLEKS                       R9 R6 K56 ["material"]
      286 GETTABLE                         R7 R8 R9
      287 SETTABLEKS                       R7 R5 K58 ["Material"]
      289 MOVE                             R7 R3
      290 JUMPIF                           R7 ; [+11]
      291 GETTABLEKS                       R7 R6 K60 ["position"]
      293 JUMPIF                           R7 ; [+8]
      294 GETTABLEKS                       R7 R6 K61 ["elevation"]
      296 JUMPIF                           R7 ; [+5]
      297 GETTABLEKS                       R7 R6 K62 ["rotation"]
      299 JUMPIF                           R7 ; [+2]
      300 GETTABLEKS                       R7 R6 K63 ["referenceInstance"]
      302 JUMPIFNOT                        R7 ; [+11]
      303 GETUPVAL                         R9 1
      304 GETTABLEKS                       R8 R9 K32 ["getWorldBoundingBox"]
      306 MOVE                             R9 R5
      307 NEWCLOSURE                       R10 P0
      308 CAPTURE                          VAL R6
      309 CAPTURE                          UPVAL U0
      310 CAPTURE                          VAL R1
      311 CAPTURE                          UPVAL U1
      312 CAPTURE                          UPVAL U3
      313 CALL                             R8 2 0
      314 LOADNIL                          R8
      315 GETUPVAL                         R9 4
      316 CALL                             R9 0 1
      317 JUMPIFNOT                        R9 ; [+10]
      318 GETTABLEKS                       R9 R6 K64 ["parentInstance"]
      320 JUMPIF                           R9 ; [+5]
      321 GETUPVAL                         R9 5
      322 GETTABLEKS                       R10 R6 K65 ["parentInstanceId"]
      324 MOVE                             R11 R1
      325 CALL                             R9 2 1
      326 MOVE                             R8 R9
      327 JUMP                             ; [+6]
      328 GETUPVAL                         R9 5
      329 GETTABLEKS                       R10 R6 K65 ["parentInstanceId"]
      331 MOVE                             R11 R1
      332 CALL                             R9 2 1
      333 MOVE                             R8 R9
      334 JUMPIFNOT                        R8 ; [+2]
      335 SETTABLEKS                       R8 R5 K66 ["Parent"]
      337 JUMPIF                           R3 ; [+5]
      338 GETUPVAL                         R10 0
      339 GETTABLEKS                       R9 R10 K67 ["EndRecordingActions"]
      341 MOVE                             R10 R1
      342 CALL                             R9 1 0
      343 GETUPVAL                         R10 6
      344 GETTABLEKS                       R9 R10 K68 ["getInstanceTypes"]
      346 CALL                             R9 0 1
      347 GETUPVAL                         R11 6
      348 GETTABLEKS                       R10 R11 K69 ["registerInstanceV2"]
      350 MOVE                             R11 R5
      351 MOVE                             R12 R1
      352 GETTABLEKS                       R13 R9 K70 ["Created"]
      354 CALL                             R10 3 0
      355 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K12 ["ContextCollectors"]
       33 GETTABLEKS                       R4 R5 K13 ["RecentInstancesContext"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R6 K14 ["Types"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K10 ["Utils"]
       49 GETTABLEKS                       R6 R7 K10 ["Utils"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R2 K15 ["GetService"]
       54 LOADK                            R7 K16 ["ChatbotUIService"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R11 R0 K6 ["Src"]
       60 GETTABLEKS                       R10 R11 K17 ["Flags"]
       62 GETTABLEKS                       R9 R10 K18 ["FFlagConvAIAddCommandSearchInsertAsset"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R7 R8 K19 ["Get"]
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K6 ["Src"]
       71 GETTABLEKS                       R11 R12 K17 ["Flags"]
       73 GETTABLEKS                       R10 R11 K20 ["FFlagFixCurrentCameraPlacement"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R8 R9 K19 ["Get"]
       78 DUPCLOSURE                       R9 K21 [PROTO_0]
       79 DUPCLOSURE                       R10 K22 [PROTO_1]
       80 CAPTURE                          VAL R1
       81 DUPCLOSURE                       R11 K23 [PROTO_3]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R3
       89 RETURN                           R11 1
