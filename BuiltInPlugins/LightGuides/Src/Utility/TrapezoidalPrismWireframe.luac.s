PROTO_0:
        0 DUPTABLE                         R0 K10 [{"_adornee", "_parent", "_light", "_handlesFolder", "_guidesFolder", "_handles", "_handlesPresent", "_listener", "_sizeListener", "_attachmentListener"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_adornee"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["_parent"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["_light"]
       10 GETIMPORT                        R1 K13 [Instance.new]
       12 LOADK                            R2 K14 ["Folder"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K3 ["_handlesFolder"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K4 ["_guidesFolder"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K5 ["_handles"]
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["_handlesPresent"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K7 ["_listener"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K8 ["_sizeListener"]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K9 ["_attachmentListener"]
       35 GETUPVAL                         R3 0
       36 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       38 MOVE                             R2 R0
       39 GETIMPORT                        R1 K16 [setmetatable]
       41 CALL                             R1 2 1
       42 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["_setListeners"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_setAncestry"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K2 ["_handlesPresent"]
       10 JUMPIF                           R1 ; [+3]
       11 NAMECALL                         R1 R0 K3 ["_setHandles"]
       13 CALL                             R1 1 0
       14 FASTCALL                         VECTOR ; [+2]
       15 GETIMPORT                        R1 K6 [Vector3.new]
       17 CALL                             R1 0 1
       18 GETTABLEKS                       R2 R0 K7 ["_parent"]
       20 LOADK                            R4 K8 ["BasePart"]
       21 NAMECALL                         R2 R2 K9 ["IsA"]
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETTABLEKS                       R2 R0 K7 ["_parent"]
       27 GETTABLEKS                       R1 R2 K10 ["Size"]
       29 GETTABLEKS                       R2 R0 K11 ["_light"]
       31 GETTABLEKS                       R2 R2 K12 ["Enabled"]
       33 GETTABLEKS                       R3 R0 K11 ["_light"]
       35 GETTABLEKS                       R3 R3 K13 ["Color"]
       37 GETTABLEKS                       R4 R0 K11 ["_light"]
       39 GETTABLEKS                       R4 R4 K14 ["Range"]
       41 GETTABLEKS                       R5 R0 K11 ["_light"]
       43 GETTABLEKS                       R5 R5 K15 ["Angle"]
       45 FASTCALL1                        MATH_RAD R5 ; [+3]
       46 MOVE                             R7 R5
       47 GETIMPORT                        R6 K18 [math.rad]
       49 CALL                             R6 1 1
       50 DIVK                             R9 R6 K19 [2]
       51 FASTCALL1                        MATH_COS R9 ; [+2]
       52 GETIMPORT                        R8 K21 [math.cos]
       54 CALL                             R8 1 1
       55 MUL                              R7 R4 R8
       56 DIVK                             R11 R6 K19 [2]
       57 FASTCALL1                        MATH_SIN R11 ; [+2]
       58 GETIMPORT                        R10 K23 [math.sin]
       60 CALL                             R10 1 1
       61 MUL                              R9 R4 R10
       62 MULK                             R8 R9 K19 [2]
       63 GETIMPORT                        R9 K25 [Vector3.fromNormalId]
       65 GETTABLEKS                       R10 R0 K11 ["_light"]
       67 GETTABLEKS                       R10 R10 K26 ["Face"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R12 K29 [CFrame.Angles]
       72 LOADN                            R13 0
       73 GETTABLEKS                       R17 R9 K32 ["Y"]
       75 SUBK                             R16 R17 K31 [1]
       76 MULK                             R15 R16 K30 [3.14159265358979]
       77 DIVK                             R14 R15 K19 [2]
       78 GETTABLEKS                       R19 R9 K33 ["Z"]
       80 SUBK                             R18 R19 K31 [1]
       81 GETTABLEKS                       R20 R9 K34 ["X"]
       83 SUBK                             R19 R20 K31 [1]
       84 MUL                              R17 R18 R19
       85 MULK                             R16 R17 K30 [3.14159265358979]
       86 DIVK                             R15 R16 K19 [2]
       87 CALL                             R12 3 1
       88 MUL                              R11 R12 R9
       89 MUL                              R10 R1 R11
       90 GETTABLEKS                       R10 R10 K35 ["magnitude"]
       92 GETIMPORT                        R13 K29 [CFrame.Angles]
       94 GETTABLEKS                       R17 R9 K34 ["X"]
       96 SUBK                             R16 R17 K31 [1]
       97 MULK                             R15 R16 K30 [3.14159265358979]
       98 DIVK                             R14 R15 K19 [2]
       99 LOADN                            R15 0
      100 GETTABLEKS                       R20 R9 K33 ["Z"]
      102 SUBK                             R19 R20 K31 [1]
      103 GETTABLEKS                       R21 R9 K32 ["Y"]
      105 SUBK                             R20 R21 K31 [1]
      106 MUL                              R18 R19 R20
      107 MULK                             R17 R18 K30 [3.14159265358979]
      108 DIVK                             R16 R17 K19 [2]
      109 CALL                             R13 3 1
      110 MUL                              R12 R13 R9
      111 MUL                              R11 R1 R12
      112 GETTABLEKS                       R11 R11 K35 ["magnitude"]
      114 ADD                              R12 R10 R8
      115 ADD                              R13 R11 R8
      116 GETIMPORT                        R15 K25 [Vector3.fromNormalId]
      118 GETTABLEKS                       R16 R0 K11 ["_light"]
      120 GETTABLEKS                       R16 R16 K26 ["Face"]
      122 CALL                             R15 1 1
      123 MUL                              R14 R1 R15
      124 GETTABLEKS                       R14 R14 K35 ["magnitude"]
      126 SUB                              R17 R12 R10
      127 DIVK                             R16 R17 K19 [2]
      128 FASTCALL2K                       MATH_POW R16 K19 ; [+4]
      130 LOADK                            R17 K19 [2]
      131 GETIMPORT                        R15 K37 [math.pow]
      133 CALL                             R15 2 1
      134 SUB                              R18 R13 R11
      135 DIVK                             R17 R18 K19 [2]
      136 FASTCALL2K                       MATH_POW R17 K19 ; [+4]
      138 LOADK                            R18 K19 [2]
      139 GETIMPORT                        R16 K37 [math.pow]
      141 CALL                             R16 2 1
      142 FASTCALL2K                       MATH_POW R7 K19 ; [+5]
      144 MOVE                             R18 R7
      145 LOADK                            R19 K19 [2]
      146 GETIMPORT                        R17 K37 [math.pow]
      148 CALL                             R17 2 1
      149 ADD                              R20 R15 R16
      150 ADD                              R19 R20 R17
      151 FASTCALL1                        MATH_SQRT R19 ; [+2]
      152 GETIMPORT                        R18 K39 [math.sqrt]
      154 CALL                             R18 1 1
      155 GETTABLEKS                       R19 R0 K40 ["_handles"]
      157 GETTABLEKS                       R19 R19 K41 ["innerTopOutline"]
      159 GETTABLEKS                       R20 R0 K40 ["_handles"]
      161 GETTABLEKS                       R20 R20 K42 ["innerBottomOutline"]
      163 GETTABLEKS                       R21 R0 K40 ["_handles"]
      165 GETTABLEKS                       R21 R21 K43 ["innerLeftOutline"]
      167 GETTABLEKS                       R22 R0 K40 ["_handles"]
      169 GETTABLEKS                       R22 R22 K44 ["innerRightOutline"]
      171 GETTABLEKS                       R23 R0 K40 ["_handles"]
      173 GETTABLEKS                       R23 R23 K45 ["outerTopOutline"]
      175 GETTABLEKS                       R24 R0 K40 ["_handles"]
      177 GETTABLEKS                       R24 R24 K46 ["outerBottomOutline"]
      179 GETTABLEKS                       R25 R0 K40 ["_handles"]
      181 GETTABLEKS                       R25 R25 K47 ["outerLeftOutline"]
      183 GETTABLEKS                       R26 R0 K40 ["_handles"]
      185 GETTABLEKS                       R26 R26 K48 ["outerRightOutline"]
      187 GETTABLEKS                       R27 R0 K40 ["_handles"]
      189 GETTABLEKS                       R27 R27 K49 ["topLeftOutline"]
      191 GETTABLEKS                       R28 R0 K40 ["_handles"]
      193 GETTABLEKS                       R28 R28 K50 ["topRightOutline"]
      195 GETTABLEKS                       R29 R0 K40 ["_handles"]
      197 GETTABLEKS                       R29 R29 K51 ["bottomLeftOutline"]
      199 GETTABLEKS                       R30 R0 K40 ["_handles"]
      201 GETTABLEKS                       R30 R30 K52 ["bottomRightOutline"]
      203 GETTABLEKS                       R31 R0 K40 ["_handles"]
      205 GETTABLEKS                       R31 R31 K53 ["centerOutline"]
      207 SETTABLEKS                       R10 R19 K54 ["Height"]
      209 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      211 SETTABLEKS                       R32 R19 K56 ["Adornee"]
      213 SETTABLEKS                       R2 R19 K57 ["Visible"]
      215 SETTABLEKS                       R3 R19 K58 ["Color3"]
      217 SETTABLEKS                       R10 R20 K54 ["Height"]
      219 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      221 SETTABLEKS                       R32 R20 K56 ["Adornee"]
      223 SETTABLEKS                       R2 R20 K57 ["Visible"]
      225 SETTABLEKS                       R3 R20 K58 ["Color3"]
      227 SETTABLEKS                       R11 R21 K54 ["Height"]
      229 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      231 SETTABLEKS                       R32 R21 K56 ["Adornee"]
      233 SETTABLEKS                       R2 R21 K57 ["Visible"]
      235 SETTABLEKS                       R3 R21 K58 ["Color3"]
      237 SETTABLEKS                       R11 R22 K54 ["Height"]
      239 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      241 SETTABLEKS                       R32 R22 K56 ["Adornee"]
      243 SETTABLEKS                       R2 R22 K57 ["Visible"]
      245 SETTABLEKS                       R3 R22 K58 ["Color3"]
      247 SETTABLEKS                       R12 R23 K54 ["Height"]
      249 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      251 SETTABLEKS                       R32 R23 K56 ["Adornee"]
      253 SETTABLEKS                       R2 R23 K57 ["Visible"]
      255 SETTABLEKS                       R3 R23 K58 ["Color3"]
      257 SETTABLEKS                       R12 R24 K54 ["Height"]
      259 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      261 SETTABLEKS                       R32 R24 K56 ["Adornee"]
      263 SETTABLEKS                       R2 R24 K57 ["Visible"]
      265 SETTABLEKS                       R3 R24 K58 ["Color3"]
      267 SETTABLEKS                       R13 R25 K54 ["Height"]
      269 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      271 SETTABLEKS                       R32 R25 K56 ["Adornee"]
      273 SETTABLEKS                       R2 R25 K57 ["Visible"]
      275 SETTABLEKS                       R3 R25 K58 ["Color3"]
      277 SETTABLEKS                       R13 R26 K54 ["Height"]
      279 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      281 SETTABLEKS                       R32 R26 K56 ["Adornee"]
      283 SETTABLEKS                       R2 R26 K57 ["Visible"]
      285 SETTABLEKS                       R3 R26 K58 ["Color3"]
      287 SETTABLEKS                       R18 R27 K54 ["Height"]
      289 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      291 SETTABLEKS                       R32 R27 K56 ["Adornee"]
      293 SETTABLEKS                       R2 R27 K57 ["Visible"]
      295 SETTABLEKS                       R3 R27 K58 ["Color3"]
      297 SETTABLEKS                       R18 R28 K54 ["Height"]
      299 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      301 SETTABLEKS                       R32 R28 K56 ["Adornee"]
      303 SETTABLEKS                       R2 R28 K57 ["Visible"]
      305 SETTABLEKS                       R3 R28 K58 ["Color3"]
      307 SETTABLEKS                       R18 R29 K54 ["Height"]
      309 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      311 SETTABLEKS                       R32 R29 K56 ["Adornee"]
      313 SETTABLEKS                       R2 R29 K57 ["Visible"]
      315 SETTABLEKS                       R3 R29 K58 ["Color3"]
      317 SETTABLEKS                       R18 R30 K54 ["Height"]
      319 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      321 SETTABLEKS                       R32 R30 K56 ["Adornee"]
      323 SETTABLEKS                       R2 R30 K57 ["Visible"]
      325 SETTABLEKS                       R3 R30 K58 ["Color3"]
      327 SETTABLEKS                       R4 R31 K54 ["Height"]
      329 GETTABLEKS                       R32 R0 K55 ["_adornee"]
      331 SETTABLEKS                       R32 R31 K56 ["Adornee"]
      333 SETTABLEKS                       R2 R31 K57 ["Visible"]
      335 SETTABLEKS                       R3 R31 K58 ["Color3"]
      337 GETUPVAL                         R35 0
      338 GETTABLEKS                       R36 R0 K11 ["_light"]
      340 GETTABLEKS                       R36 R36 K26 ["Face"]
      342 GETTABLE                         R34 R35 R36
      343 MOVE                             R35 R10
      344 MOVE                             R36 R11
      345 MOVE                             R37 R12
      346 MOVE                             R38 R13
      347 MOVE                             R39 R14
      348 MOVE                             R40 R4
      349 MOVE                             R41 R7
      350 NAMECALL                         R32 R0 K59 ["_setCFrameValues"]
      352 CALL                             R32 9 0
      353 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_handlesFolder"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Wireframe already pooled"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K4 ["_light"]
       10 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       12 LOADK                            R3 K1 ["Wireframe already pooled"]
       13 GETIMPORT                        R1 K3 [assert]
       15 CALL                             R1 2 0
       16 GETTABLEKS                       R1 R0 K0 ["_handlesFolder"]
       18 LOADK                            R2 K5 ["pooled"]
       19 SETTABLEKS                       R2 R1 K6 ["Name"]
       21 GETTABLEKS                       R1 R0 K0 ["_handlesFolder"]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K7 ["Parent"]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K4 ["_light"]
       29 NAMECALL                         R1 R0 K8 ["_removeListeners"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 1

PROTO_3:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K0 ["Can't adorn nil"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R4 R0 K3 ["_light"]
        9 NOT                              R3 R4
       10 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       12 LOADK                            R4 K4 ["Wireframe already adorned"]
       13 GETIMPORT                        R2 K2 [assert]
       15 CALL                             R2 2 0
       16 SETTABLEKS                       R1 R0 K3 ["_light"]
       18 GETTABLEKS                       R2 R0 K5 ["_handlesFolder"]
       20 GETTABLEKS                       R3 R1 K6 ["name"]
       22 SETTABLEKS                       R3 R2 K7 ["Name"]
       24 GETTABLEKS                       R2 R0 K5 ["_handlesFolder"]
       26 GETTABLEKS                       R3 R0 K8 ["_guidesFolder"]
       28 SETTABLEKS                       R3 R2 K9 ["Parent"]
       30 GETTABLEKS                       R2 R1 K9 ["Parent"]
       32 JUMPIFNOT                        R2 ; [+23]
       33 LOADK                            R5 K10 ["Attachment"]
       34 NAMECALL                         R3 R2 K11 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+18]
       38 GETUPVAL                         R4 0
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+4]
       41 GETUPVAL                         R3 1
       42 MOVE                             R4 R2
       43 CALL                             R3 1 1
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R3 R2 K9 ["Parent"]
       47 SETTABLEKS                       R3 R0 K12 ["_adornee"]
       49 GETTABLEKS                       R3 R2 K13 ["CFrame"]
       51 SETTABLEKS                       R3 R0 K14 ["_offset"]
       53 SETTABLEKS                       R2 R0 K15 ["_parent"]
       55 JUMP                             ; [+4]
       56 SETTABLEKS                       R2 R0 K12 ["_adornee"]
       58 SETTABLEKS                       R2 R0 K15 ["_parent"]
       60 NAMECALL                         R3 R0 K16 ["_setListeners"]
       62 CALL                             R3 1 0
       63 RETURN                           R0 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_removeHandles"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_removeListeners"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["_handlesFolder"]
        8 NAMECALL                         R1 R1 K3 ["Destroy"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["_handlesFolder"]
       14 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["_guidesFolder"]
        2 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_light"]
        2 GETTABLEKS                       R1 R1 K1 ["Parent"]
        4 GETIMPORT                        R2 K4 [CFrame.new]
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R3 K6 [Vector3.new]
        9 CALL                             R3 0 1
       10 CALL                             R2 1 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 FASTCALL2K                       ASSERT R1 K7 ; [+5]
       16 MOVE                             R4 R1
       17 LOADK                            R5 K7 ["Trapezoidal Prism Wireframe should have valid Adornee."]
       18 GETIMPORT                        R3 K9 [assert]
       20 CALL                             R3 2 0
       21 LOADK                            R5 K10 ["Attachment"]
       22 NAMECALL                         R3 R1 K11 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+51]
       26 GETTABLEKS                       R3 R0 K0 ["_light"]
       28 GETTABLEKS                       R3 R3 K1 ["Parent"]
       30 GETTABLEKS                       R1 R3 K1 ["Parent"]
       32 GETTABLEKS                       R3 R0 K0 ["_light"]
       34 GETTABLEKS                       R3 R3 K1 ["Parent"]
       36 GETTABLEKS                       R2 R3 K2 ["CFrame"]
       38 GETUPVAL                         R3 0
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+25]
       41 JUMPIFEQKNIL                     R1 ; [+18]
       43 LOADK                            R5 K12 ["PVInstance"]
       44 NAMECALL                         R3 R1 K11 ["IsA"]
       46 CALL                             R3 2 1
       47 JUMPIFNOT                        R3 ; [+1]
       48 JUMP                             ; [+11]
       49 LOADK                            R5 K10 ["Attachment"]
       50 NAMECALL                         R3 R1 K11 ["IsA"]
       52 CALL                             R3 2 1
       53 JUMPIFNOT                        R3 ; [+3]
       54 GETTABLEKS                       R3 R1 K2 ["CFrame"]
       56 MUL                              R2 R3 R2
       57 GETTABLEKS                       R1 R1 K1 ["Parent"]
       59 JUMPBACK                         ; [-19]
       60 JUMPIF                           R1 ; [+16]
       61 GETIMPORT                        R3 K14 [workspace]
       63 GETTABLEKS                       R1 R3 K15 ["Terrain"]
       65 JUMP                             ; [+11]
       66 LOADK                            R5 K10 ["Attachment"]
       67 NAMECALL                         R3 R1 K11 ["IsA"]
       69 CALL                             R3 2 1
       70 JUMPIFNOT                        R3 ; [+6]
       71 GETTABLEKS                       R3 R1 K2 ["CFrame"]
       73 MUL                              R2 R3 R2
       74 GETTABLEKS                       R1 R1 K1 ["Parent"]
       76 JUMPBACK                         ; [-11]
       77 GETUPVAL                         R3 0
       78 CALL                             R3 0 1
       79 JUMPIFNOT                        R3 ; [+16]
       80 LOADK                            R5 K10 ["Attachment"]
       81 NAMECALL                         R3 R1 K11 ["IsA"]
       83 CALL                             R3 2 1
       84 JUMPIF                           R3 ; [+26]
       85 LOADK                            R5 K12 ["PVInstance"]
       86 NAMECALL                         R3 R1 K11 ["IsA"]
       88 CALL                             R3 2 1
       89 JUMPIF                           R3 ; [+21]
       90 NAMECALL                         R3 R0 K16 ["_removeHandles"]
       92 CALL                             R3 1 0
       93 LOADB                            R3 0
       94 RETURN                           R3 1
       95 JUMP                             ; [+15]
       96 LOADK                            R5 K10 ["Attachment"]
       97 NAMECALL                         R3 R1 K11 ["IsA"]
       99 CALL                             R3 2 1
      100 JUMPIF                           R3 ; [+10]
      101 LOADK                            R5 K17 ["BasePart"]
      102 NAMECALL                         R3 R1 K11 ["IsA"]
      104 CALL                             R3 2 1
      105 JUMPIF                           R3 ; [+5]
      106 NAMECALL                         R3 R0 K16 ["_removeHandles"]
      108 CALL                             R3 1 0
      109 LOADB                            R3 0
      110 RETURN                           R3 1
      111 SETTABLEKS                       R1 R0 K18 ["_adornee"]
      113 SETTABLEKS                       R2 R0 K19 ["_offset"]
      115 GETTABLEKS                       R3 R0 K0 ["_light"]
      117 GETTABLEKS                       R3 R3 K1 ["Parent"]
      119 SETTABLEKS                       R3 R0 K20 ["_parent"]
      121 LOADB                            R3 1
      122 RETURN                           R3 1

PROTO_7:
        0 SUB                              R13 R4 R2
        1 DIVK                             R12 R13 K1 [2]
        2 MULK                             R11 R12 K0 [1.4142135623731]
        3 DIV                              R10 R11 R8
        4 FASTCALL1                        MATH_ATAN R10 ; [+2]
        5 GETIMPORT                        R9 K4 [math.atan]
        7 CALL                             R9 1 1
        8 DIVK                             R10 R3 K1 [2]
        9 DIVK                             R11 R6 K1 [2]
       10 DIVK                             R12 R2 K1 [2]
       11 DIVK                             R13 R5 K1 [2]
       12 DIVK                             R14 R4 K1 [2]
       13 DIVK                             R16 R6 K1 [2]
       14 ADD                              R15 R16 R8
       15 ADD                              R17 R2 R4
       16 DIVK                             R16 R17 K5 [4]
       17 ADD                              R18 R3 R5
       18 DIVK                             R17 R18 K5 [4]
       19 ADD                              R19 R6 R8
       20 DIVK                             R18 R19 K1 [2]
       21 ADD                              R20 R6 R7
       22 DIVK                             R19 R20 K1 [2]
       23 GETTABLEKS                       R20 R0 K6 ["_handles"]
       25 GETTABLEKS                       R20 R20 K7 ["innerTopOutline"]
       27 GETTABLEKS                       R22 R0 K8 ["_offset"]
       29 GETIMPORT                        R25 K11 [CFrame.new]
       31 LOADN                            R26 0
       32 MOVE                             R27 R10
       33 MOVE                             R28 R11
       34 CALL                             R25 3 1
       35 MUL                              R24 R1 R25
       36 GETIMPORT                        R25 K13 [CFrame.Angles]
       38 LOADN                            R26 0
       39 LOADK                            R27 K14 [1.5707963267949]
       40 LOADN                            R28 0
       41 CALL                             R25 3 1
       42 MUL                              R23 R24 R25
       43 MUL                              R21 R22 R23
       44 SETTABLEKS                       R21 R20 K9 ["CFrame"]
       46 GETTABLEKS                       R20 R0 K6 ["_handles"]
       48 GETTABLEKS                       R20 R20 K15 ["innerBottomOutline"]
       50 GETTABLEKS                       R22 R0 K8 ["_offset"]
       52 GETIMPORT                        R25 K11 [CFrame.new]
       54 LOADN                            R26 0
       55 MINUS                            R27 R10
       56 MOVE                             R28 R11
       57 CALL                             R25 3 1
       58 MUL                              R24 R1 R25
       59 GETIMPORT                        R25 K13 [CFrame.Angles]
       61 LOADN                            R26 0
       62 LOADK                            R27 K14 [1.5707963267949]
       63 LOADN                            R28 0
       64 CALL                             R25 3 1
       65 MUL                              R23 R24 R25
       66 MUL                              R21 R22 R23
       67 SETTABLEKS                       R21 R20 K9 ["CFrame"]
       69 GETTABLEKS                       R20 R0 K6 ["_handles"]
       71 GETTABLEKS                       R20 R20 K16 ["innerRightOutline"]
       73 GETTABLEKS                       R22 R0 K8 ["_offset"]
       75 GETIMPORT                        R25 K11 [CFrame.new]
       77 MOVE                             R26 R12
       78 LOADN                            R27 0
       79 MOVE                             R28 R11
       80 CALL                             R25 3 1
       81 MUL                              R24 R1 R25
       82 GETIMPORT                        R25 K13 [CFrame.Angles]
       84 LOADK                            R26 K14 [1.5707963267949]
       85 LOADN                            R27 0
       86 LOADN                            R28 0
       87 CALL                             R25 3 1
       88 MUL                              R23 R24 R25
       89 MUL                              R21 R22 R23
       90 SETTABLEKS                       R21 R20 K9 ["CFrame"]
       92 GETTABLEKS                       R20 R0 K6 ["_handles"]
       94 GETTABLEKS                       R20 R20 K17 ["innerLeftOutline"]
       96 GETTABLEKS                       R22 R0 K8 ["_offset"]
       98 GETIMPORT                        R25 K11 [CFrame.new]
      100 MINUS                            R26 R12
      101 LOADN                            R27 0
      102 MOVE                             R28 R11
      103 CALL                             R25 3 1
      104 MUL                              R24 R1 R25
      105 GETIMPORT                        R25 K13 [CFrame.Angles]
      107 LOADK                            R26 K14 [1.5707963267949]
      108 LOADN                            R27 0
      109 LOADN                            R28 0
      110 CALL                             R25 3 1
      111 MUL                              R23 R24 R25
      112 MUL                              R21 R22 R23
      113 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      115 GETTABLEKS                       R20 R0 K6 ["_handles"]
      117 GETTABLEKS                       R20 R20 K18 ["outerTopOutline"]
      119 GETTABLEKS                       R24 R0 K8 ["_offset"]
      121 MUL                              R23 R24 R1
      122 GETIMPORT                        R24 K11 [CFrame.new]
      124 LOADN                            R25 0
      125 MOVE                             R26 R13
      126 MOVE                             R27 R15
      127 CALL                             R24 3 1
      128 MUL                              R22 R23 R24
      129 GETIMPORT                        R23 K13 [CFrame.Angles]
      131 LOADN                            R24 0
      132 LOADK                            R25 K14 [1.5707963267949]
      133 LOADN                            R26 0
      134 CALL                             R23 3 1
      135 MUL                              R21 R22 R23
      136 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      138 GETTABLEKS                       R20 R0 K6 ["_handles"]
      140 GETTABLEKS                       R20 R20 K19 ["outerBottomOutline"]
      142 GETTABLEKS                       R22 R0 K8 ["_offset"]
      144 GETIMPORT                        R25 K11 [CFrame.new]
      146 LOADN                            R26 0
      147 MINUS                            R27 R13
      148 MOVE                             R28 R15
      149 CALL                             R25 3 1
      150 MUL                              R24 R1 R25
      151 GETIMPORT                        R25 K13 [CFrame.Angles]
      153 LOADN                            R26 0
      154 LOADK                            R27 K14 [1.5707963267949]
      155 LOADN                            R28 0
      156 CALL                             R25 3 1
      157 MUL                              R23 R24 R25
      158 MUL                              R21 R22 R23
      159 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      161 GETTABLEKS                       R20 R0 K6 ["_handles"]
      163 GETTABLEKS                       R20 R20 K20 ["outerLeftOutline"]
      165 GETTABLEKS                       R22 R0 K8 ["_offset"]
      167 GETIMPORT                        R25 K11 [CFrame.new]
      169 MOVE                             R26 R14
      170 LOADN                            R27 0
      171 MOVE                             R28 R15
      172 CALL                             R25 3 1
      173 MUL                              R24 R1 R25
      174 GETIMPORT                        R25 K13 [CFrame.Angles]
      176 LOADK                            R26 K14 [1.5707963267949]
      177 LOADN                            R27 0
      178 LOADN                            R28 0
      179 CALL                             R25 3 1
      180 MUL                              R23 R24 R25
      181 MUL                              R21 R22 R23
      182 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      184 GETTABLEKS                       R20 R0 K6 ["_handles"]
      186 GETTABLEKS                       R20 R20 K21 ["outerRightOutline"]
      188 GETTABLEKS                       R22 R0 K8 ["_offset"]
      190 GETIMPORT                        R25 K11 [CFrame.new]
      192 MINUS                            R26 R14
      193 LOADN                            R27 0
      194 MOVE                             R28 R15
      195 CALL                             R25 3 1
      196 MUL                              R24 R1 R25
      197 GETIMPORT                        R25 K13 [CFrame.Angles]
      199 LOADK                            R26 K14 [1.5707963267949]
      200 LOADN                            R27 0
      201 LOADN                            R28 0
      202 CALL                             R25 3 1
      203 MUL                              R23 R24 R25
      204 MUL                              R21 R22 R23
      205 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      207 GETTABLEKS                       R20 R0 K6 ["_handles"]
      209 GETTABLEKS                       R20 R20 K22 ["topLeftOutline"]
      211 GETTABLEKS                       R22 R0 K8 ["_offset"]
      213 GETIMPORT                        R26 K11 [CFrame.new]
      215 MOVE                             R27 R16
      216 MOVE                             R28 R17
      217 MOVE                             R29 R18
      218 CALL                             R26 3 1
      219 MUL                              R25 R1 R26
      220 GETIMPORT                        R26 K13 [CFrame.Angles]
      222 LOADN                            R27 0
      223 LOADN                            R28 0
      224 LOADK                            R29 K23 [-0.785398163397448]
      225 CALL                             R26 3 1
      226 MUL                              R24 R25 R26
      227 GETIMPORT                        R25 K13 [CFrame.Angles]
      229 MINUS                            R26 R9
      230 LOADN                            R27 0
      231 LOADN                            R28 0
      232 CALL                             R25 3 1
      233 MUL                              R23 R24 R25
      234 MUL                              R21 R22 R23
      235 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      237 GETTABLEKS                       R20 R0 K6 ["_handles"]
      239 GETTABLEKS                       R20 R20 K24 ["topRightOutline"]
      241 GETTABLEKS                       R22 R0 K8 ["_offset"]
      243 GETIMPORT                        R26 K11 [CFrame.new]
      245 MINUS                            R27 R16
      246 MOVE                             R28 R17
      247 MOVE                             R29 R18
      248 CALL                             R26 3 1
      249 MUL                              R25 R1 R26
      250 GETIMPORT                        R26 K13 [CFrame.Angles]
      252 LOADN                            R27 0
      253 LOADN                            R28 0
      254 LOADK                            R29 K25 [0.785398163397448]
      255 CALL                             R26 3 1
      256 MUL                              R24 R25 R26
      257 GETIMPORT                        R25 K13 [CFrame.Angles]
      259 MINUS                            R26 R9
      260 LOADN                            R27 0
      261 LOADN                            R28 0
      262 CALL                             R25 3 1
      263 MUL                              R23 R24 R25
      264 MUL                              R21 R22 R23
      265 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      267 GETTABLEKS                       R20 R0 K6 ["_handles"]
      269 GETTABLEKS                       R20 R20 K26 ["bottomLeftOutline"]
      271 GETTABLEKS                       R22 R0 K8 ["_offset"]
      273 GETIMPORT                        R26 K11 [CFrame.new]
      275 MOVE                             R27 R16
      276 MINUS                            R28 R17
      277 MOVE                             R29 R18
      278 CALL                             R26 3 1
      279 MUL                              R25 R1 R26
      280 GETIMPORT                        R26 K13 [CFrame.Angles]
      282 LOADN                            R27 0
      283 LOADN                            R28 0
      284 LOADK                            R29 K25 [0.785398163397448]
      285 CALL                             R26 3 1
      286 MUL                              R24 R25 R26
      287 GETIMPORT                        R25 K13 [CFrame.Angles]
      289 MOVE                             R26 R9
      290 LOADN                            R27 0
      291 LOADN                            R28 0
      292 CALL                             R25 3 1
      293 MUL                              R23 R24 R25
      294 MUL                              R21 R22 R23
      295 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      297 GETTABLEKS                       R20 R0 K6 ["_handles"]
      299 GETTABLEKS                       R20 R20 K27 ["bottomRightOutline"]
      301 GETTABLEKS                       R22 R0 K8 ["_offset"]
      303 GETIMPORT                        R26 K11 [CFrame.new]
      305 MINUS                            R27 R16
      306 MINUS                            R28 R17
      307 MOVE                             R29 R18
      308 CALL                             R26 3 1
      309 MUL                              R25 R1 R26
      310 GETIMPORT                        R26 K13 [CFrame.Angles]
      312 LOADN                            R27 0
      313 LOADN                            R28 0
      314 LOADK                            R29 K23 [-0.785398163397448]
      315 CALL                             R26 3 1
      316 MUL                              R24 R25 R26
      317 GETIMPORT                        R25 K13 [CFrame.Angles]
      319 MOVE                             R26 R9
      320 LOADN                            R27 0
      321 LOADN                            R28 0
      322 CALL                             R25 3 1
      323 MUL                              R23 R24 R25
      324 MUL                              R21 R22 R23
      325 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      327 GETTABLEKS                       R20 R0 K6 ["_handles"]
      329 GETTABLEKS                       R20 R20 K28 ["centerOutline"]
      331 GETTABLEKS                       R22 R0 K8 ["_offset"]
      333 GETIMPORT                        R24 K11 [CFrame.new]
      335 LOADN                            R25 0
      336 LOADN                            R26 0
      337 MOVE                             R27 R19
      338 CALL                             R24 3 1
      339 MUL                              R23 R1 R24
      340 MUL                              R21 R22 R23
      341 SETTABLEKS                       R21 R20 K9 ["CFrame"]
      343 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["CylinderHandleAdornment"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 MULK                             R2 R3 K4 [0.5]
        6 SETTABLEKS                       R2 R1 K5 ["Radius"]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K6 ["Transparency"]
       11 GETTABLEKS                       R2 R0 K7 ["_handlesFolder"]
       13 SETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K2 [Instance.new]
       17 LOADK                            R3 K3 ["CylinderHandleAdornment"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 0
       20 MULK                             R3 R4 K4 [0.5]
       21 SETTABLEKS                       R3 R2 K5 ["Radius"]
       23 GETUPVAL                         R3 1
       24 SETTABLEKS                       R3 R2 K6 ["Transparency"]
       26 GETTABLEKS                       R3 R0 K7 ["_handlesFolder"]
       28 SETTABLEKS                       R3 R2 K8 ["Parent"]
       30 GETIMPORT                        R3 K2 [Instance.new]
       32 LOADK                            R4 K3 ["CylinderHandleAdornment"]
       33 CALL                             R3 1 1
       34 GETUPVAL                         R5 0
       35 MULK                             R4 R5 K4 [0.5]
       36 SETTABLEKS                       R4 R3 K5 ["Radius"]
       38 GETUPVAL                         R4 1
       39 SETTABLEKS                       R4 R3 K6 ["Transparency"]
       41 GETTABLEKS                       R4 R0 K7 ["_handlesFolder"]
       43 SETTABLEKS                       R4 R3 K8 ["Parent"]
       45 GETIMPORT                        R4 K2 [Instance.new]
       47 LOADK                            R5 K3 ["CylinderHandleAdornment"]
       48 CALL                             R4 1 1
       49 GETUPVAL                         R6 0
       50 MULK                             R5 R6 K4 [0.5]
       51 SETTABLEKS                       R5 R4 K5 ["Radius"]
       53 GETUPVAL                         R5 1
       54 SETTABLEKS                       R5 R4 K6 ["Transparency"]
       56 GETTABLEKS                       R5 R0 K7 ["_handlesFolder"]
       58 SETTABLEKS                       R5 R4 K8 ["Parent"]
       60 GETIMPORT                        R5 K2 [Instance.new]
       62 LOADK                            R6 K3 ["CylinderHandleAdornment"]
       63 CALL                             R5 1 1
       64 GETUPVAL                         R7 0
       65 MULK                             R6 R7 K4 [0.5]
       66 SETTABLEKS                       R6 R5 K5 ["Radius"]
       68 GETUPVAL                         R6 1
       69 SETTABLEKS                       R6 R5 K6 ["Transparency"]
       71 GETTABLEKS                       R6 R0 K7 ["_handlesFolder"]
       73 SETTABLEKS                       R6 R5 K8 ["Parent"]
       75 GETIMPORT                        R6 K2 [Instance.new]
       77 LOADK                            R7 K3 ["CylinderHandleAdornment"]
       78 CALL                             R6 1 1
       79 GETUPVAL                         R8 0
       80 MULK                             R7 R8 K4 [0.5]
       81 SETTABLEKS                       R7 R6 K5 ["Radius"]
       83 GETUPVAL                         R7 1
       84 SETTABLEKS                       R7 R6 K6 ["Transparency"]
       86 GETTABLEKS                       R7 R0 K7 ["_handlesFolder"]
       88 SETTABLEKS                       R7 R6 K8 ["Parent"]
       90 GETIMPORT                        R7 K2 [Instance.new]
       92 LOADK                            R8 K3 ["CylinderHandleAdornment"]
       93 CALL                             R7 1 1
       94 GETUPVAL                         R9 0
       95 MULK                             R8 R9 K4 [0.5]
       96 SETTABLEKS                       R8 R7 K5 ["Radius"]
       98 GETUPVAL                         R8 1
       99 SETTABLEKS                       R8 R7 K6 ["Transparency"]
      101 GETTABLEKS                       R8 R0 K7 ["_handlesFolder"]
      103 SETTABLEKS                       R8 R7 K8 ["Parent"]
      105 GETIMPORT                        R8 K2 [Instance.new]
      107 LOADK                            R9 K3 ["CylinderHandleAdornment"]
      108 CALL                             R8 1 1
      109 GETUPVAL                         R10 0
      110 MULK                             R9 R10 K4 [0.5]
      111 SETTABLEKS                       R9 R8 K5 ["Radius"]
      113 GETUPVAL                         R9 1
      114 SETTABLEKS                       R9 R8 K6 ["Transparency"]
      116 GETTABLEKS                       R9 R0 K7 ["_handlesFolder"]
      118 SETTABLEKS                       R9 R8 K8 ["Parent"]
      120 GETIMPORT                        R9 K2 [Instance.new]
      122 LOADK                            R10 K3 ["CylinderHandleAdornment"]
      123 CALL                             R9 1 1
      124 GETUPVAL                         R11 0
      125 MULK                             R10 R11 K4 [0.5]
      126 SETTABLEKS                       R10 R9 K5 ["Radius"]
      128 GETUPVAL                         R10 1
      129 SETTABLEKS                       R10 R9 K6 ["Transparency"]
      131 GETTABLEKS                       R10 R0 K7 ["_handlesFolder"]
      133 SETTABLEKS                       R10 R9 K8 ["Parent"]
      135 GETIMPORT                        R10 K2 [Instance.new]
      137 LOADK                            R11 K3 ["CylinderHandleAdornment"]
      138 CALL                             R10 1 1
      139 GETUPVAL                         R12 0
      140 MULK                             R11 R12 K4 [0.5]
      141 SETTABLEKS                       R11 R10 K5 ["Radius"]
      143 GETUPVAL                         R11 1
      144 SETTABLEKS                       R11 R10 K6 ["Transparency"]
      146 GETTABLEKS                       R11 R0 K7 ["_handlesFolder"]
      148 SETTABLEKS                       R11 R10 K8 ["Parent"]
      150 GETIMPORT                        R11 K2 [Instance.new]
      152 LOADK                            R12 K3 ["CylinderHandleAdornment"]
      153 CALL                             R11 1 1
      154 GETUPVAL                         R13 0
      155 MULK                             R12 R13 K4 [0.5]
      156 SETTABLEKS                       R12 R11 K5 ["Radius"]
      158 GETUPVAL                         R12 1
      159 SETTABLEKS                       R12 R11 K6 ["Transparency"]
      161 GETTABLEKS                       R12 R0 K7 ["_handlesFolder"]
      163 SETTABLEKS                       R12 R11 K8 ["Parent"]
      165 GETIMPORT                        R12 K2 [Instance.new]
      167 LOADK                            R13 K3 ["CylinderHandleAdornment"]
      168 CALL                             R12 1 1
      169 GETUPVAL                         R14 0
      170 MULK                             R13 R14 K4 [0.5]
      171 SETTABLEKS                       R13 R12 K5 ["Radius"]
      173 GETUPVAL                         R13 1
      174 SETTABLEKS                       R13 R12 K6 ["Transparency"]
      176 GETTABLEKS                       R13 R0 K7 ["_handlesFolder"]
      178 SETTABLEKS                       R13 R12 K8 ["Parent"]
      180 GETIMPORT                        R13 K2 [Instance.new]
      182 LOADK                            R14 K3 ["CylinderHandleAdornment"]
      183 CALL                             R13 1 1
      184 GETUPVAL                         R15 0
      185 MULK                             R14 R15 K4 [0.5]
      186 SETTABLEKS                       R14 R13 K5 ["Radius"]
      188 GETUPVAL                         R14 1
      189 SETTABLEKS                       R14 R13 K6 ["Transparency"]
      191 GETTABLEKS                       R14 R0 K7 ["_handlesFolder"]
      193 SETTABLEKS                       R14 R13 K8 ["Parent"]
      195 GETTABLEKS                       R14 R0 K9 ["_handles"]
      197 SETTABLEKS                       R1 R14 K10 ["innerTopOutline"]
      199 GETTABLEKS                       R14 R0 K9 ["_handles"]
      201 SETTABLEKS                       R2 R14 K11 ["innerBottomOutline"]
      203 GETTABLEKS                       R14 R0 K9 ["_handles"]
      205 SETTABLEKS                       R3 R14 K12 ["innerLeftOutline"]
      207 GETTABLEKS                       R14 R0 K9 ["_handles"]
      209 SETTABLEKS                       R4 R14 K13 ["innerRightOutline"]
      211 GETTABLEKS                       R14 R0 K9 ["_handles"]
      213 SETTABLEKS                       R5 R14 K14 ["outerTopOutline"]
      215 GETTABLEKS                       R14 R0 K9 ["_handles"]
      217 SETTABLEKS                       R6 R14 K15 ["outerBottomOutline"]
      219 GETTABLEKS                       R14 R0 K9 ["_handles"]
      221 SETTABLEKS                       R7 R14 K16 ["outerLeftOutline"]
      223 GETTABLEKS                       R14 R0 K9 ["_handles"]
      225 SETTABLEKS                       R8 R14 K17 ["outerRightOutline"]
      227 GETTABLEKS                       R14 R0 K9 ["_handles"]
      229 SETTABLEKS                       R9 R14 K18 ["topLeftOutline"]
      231 GETTABLEKS                       R14 R0 K9 ["_handles"]
      233 SETTABLEKS                       R10 R14 K19 ["topRightOutline"]
      235 GETTABLEKS                       R14 R0 K9 ["_handles"]
      237 SETTABLEKS                       R11 R14 K20 ["bottomLeftOutline"]
      239 GETTABLEKS                       R14 R0 K9 ["_handles"]
      241 SETTABLEKS                       R12 R14 K21 ["bottomRightOutline"]
      243 GETTABLEKS                       R14 R0 K9 ["_handles"]
      245 SETTABLEKS                       R13 R14 K22 ["centerOutline"]
      247 LOADB                            R14 1
      248 SETTABLEKS                       R14 R0 K23 ["_handlesPresent"]
      250 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_handles"]
        2 JUMPIFNOT                        R1 ; [+97]
        3 GETTABLEKS                       R1 R0 K1 ["_handlesPresent"]
        5 JUMPIFNOT                        R1 ; [+94]
        6 GETTABLEKS                       R1 R0 K0 ["_handles"]
        8 GETTABLEKS                       R1 R1 K2 ["innerTopOutline"]
       10 NAMECALL                         R1 R1 K3 ["Destroy"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K0 ["_handles"]
       15 GETTABLEKS                       R1 R1 K4 ["innerBottomOutline"]
       17 NAMECALL                         R1 R1 K3 ["Destroy"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K0 ["_handles"]
       22 GETTABLEKS                       R1 R1 K5 ["innerLeftOutline"]
       24 NAMECALL                         R1 R1 K3 ["Destroy"]
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R1 R0 K0 ["_handles"]
       29 GETTABLEKS                       R1 R1 K6 ["innerRightOutline"]
       31 NAMECALL                         R1 R1 K3 ["Destroy"]
       33 CALL                             R1 1 0
       34 GETTABLEKS                       R1 R0 K0 ["_handles"]
       36 GETTABLEKS                       R1 R1 K7 ["outerTopOutline"]
       38 NAMECALL                         R1 R1 K3 ["Destroy"]
       40 CALL                             R1 1 0
       41 GETTABLEKS                       R1 R0 K0 ["_handles"]
       43 GETTABLEKS                       R1 R1 K8 ["outerBottomOutline"]
       45 NAMECALL                         R1 R1 K3 ["Destroy"]
       47 CALL                             R1 1 0
       48 GETTABLEKS                       R1 R0 K0 ["_handles"]
       50 GETTABLEKS                       R1 R1 K9 ["outerLeftOutline"]
       52 NAMECALL                         R1 R1 K3 ["Destroy"]
       54 CALL                             R1 1 0
       55 GETTABLEKS                       R1 R0 K0 ["_handles"]
       57 GETTABLEKS                       R1 R1 K10 ["outerRightOutline"]
       59 NAMECALL                         R1 R1 K3 ["Destroy"]
       61 CALL                             R1 1 0
       62 GETTABLEKS                       R1 R0 K0 ["_handles"]
       64 GETTABLEKS                       R1 R1 K11 ["topLeftOutline"]
       66 NAMECALL                         R1 R1 K3 ["Destroy"]
       68 CALL                             R1 1 0
       69 GETTABLEKS                       R1 R0 K0 ["_handles"]
       71 GETTABLEKS                       R1 R1 K12 ["topRightOutline"]
       73 NAMECALL                         R1 R1 K3 ["Destroy"]
       75 CALL                             R1 1 0
       76 GETTABLEKS                       R1 R0 K0 ["_handles"]
       78 GETTABLEKS                       R1 R1 K13 ["bottomLeftOutline"]
       80 NAMECALL                         R1 R1 K3 ["Destroy"]
       82 CALL                             R1 1 0
       83 GETTABLEKS                       R1 R0 K0 ["_handles"]
       85 GETTABLEKS                       R1 R1 K14 ["bottomRightOutline"]
       87 NAMECALL                         R1 R1 K3 ["Destroy"]
       89 CALL                             R1 1 0
       90 GETTABLEKS                       R1 R0 K0 ["_handles"]
       92 GETTABLEKS                       R1 R1 K15 ["centerOutline"]
       94 NAMECALL                         R1 R1 K3 ["Destroy"]
       96 CALL                             R1 1 0
       97 LOADB                            R1 0
       98 SETTABLEKS                       R1 R0 K1 ["_handlesPresent"]
      100 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["render"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["render"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["render"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_removeListeners"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_setListeners"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K2 ["render"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_listener"]
        2 JUMPIF                           R1 ; [+11]
        3 GETTABLEKS                       R1 R0 K1 ["_light"]
        5 GETTABLEKS                       R1 R1 K2 ["Changed"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K3 ["Connect"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K0 ["_listener"]
       14 GETTABLEKS                       R1 R0 K4 ["_sizeListener"]
       16 JUMPIF                           R1 ; [+27]
       17 GETTABLEKS                       R1 R0 K5 ["_parent"]
       19 LOADK                            R3 K6 ["Attachment"]
       20 NAMECALL                         R1 R1 K7 ["IsA"]
       22 CALL                             R1 2 1
       23 JUMPIF                           R1 ; [+20]
       24 GETTABLEKS                       R1 R0 K5 ["_parent"]
       26 LOADK                            R3 K8 ["BasePart"]
       27 NAMECALL                         R1 R1 K7 ["IsA"]
       29 CALL                             R1 2 1
       30 JUMPIFNOT                        R1 ; [+13]
       31 GETTABLEKS                       R1 R0 K5 ["_parent"]
       33 LOADK                            R3 K9 ["Size"]
       34 NAMECALL                         R1 R1 K10 ["GetPropertyChangedSignal"]
       36 CALL                             R1 2 1
       37 NEWCLOSURE                       R3 P1
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R1 R1 K3 ["Connect"]
       41 CALL                             R1 2 1
       42 SETTABLEKS                       R1 R0 K4 ["_sizeListener"]
       44 GETTABLEKS                       R1 R0 K11 ["_attachmentListeners"]
       46 JUMPIF                           R1 ; [+51]
       47 GETTABLEKS                       R1 R0 K5 ["_parent"]
       49 LOADK                            R3 K6 ["Attachment"]
       50 NAMECALL                         R1 R1 K7 ["IsA"]
       52 CALL                             R1 2 1
       53 JUMPIFNOT                        R1 ; [+44]
       54 NEWTABLE                         R1 0 0
       56 SETTABLEKS                       R1 R0 K11 ["_attachmentListeners"]
       58 GETTABLEKS                       R1 R0 K5 ["_parent"]
       60 LOADK                            R4 K6 ["Attachment"]
       61 NAMECALL                         R2 R1 K7 ["IsA"]
       63 CALL                             R2 2 1
       64 JUMPIFNOT                        R2 ; [+33]
       65 GETTABLEKS                       R3 R0 K11 ["_attachmentListeners"]
       67 LOADK                            R6 K12 ["CFrame"]
       68 NAMECALL                         R4 R1 K10 ["GetPropertyChangedSignal"]
       70 CALL                             R4 2 1
       71 NEWCLOSURE                       R6 P2
       72 CAPTURE                          VAL R0
       73 NAMECALL                         R4 R4 K3 ["Connect"]
       75 CALL                             R4 2 -1
       76 FASTCALL                         TABLE_INSERT ; [+2]
       77 GETIMPORT                        R2 K15 [table.insert]
       79 CALL                             R2 -1 0
       80 GETTABLEKS                       R3 R0 K11 ["_attachmentListeners"]
       82 LOADK                            R6 K16 ["Parent"]
       83 NAMECALL                         R4 R1 K10 ["GetPropertyChangedSignal"]
       85 CALL                             R4 2 1
       86 NEWCLOSURE                       R6 P3
       87 CAPTURE                          VAL R0
       88 NAMECALL                         R4 R4 K3 ["Connect"]
       90 CALL                             R4 2 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R2 K15 [table.insert]
       94 CALL                             R2 -1 0
       95 GETTABLEKS                       R1 R1 K16 ["Parent"]
       97 JUMPBACK                         ; [-38]
       98 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_listener"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_listener"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_listener"]
       11 GETTABLEKS                       R1 R0 K2 ["_sizeListener"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_sizeListener"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_sizeListener"]
       22 GETTABLEKS                       R1 R0 K3 ["_attachmentListeners"]
       24 JUMPIFNOT                        R1 ; [+13]
       25 GETTABLEKS                       R1 R0 K3 ["_attachmentListeners"]
       27 LOADNIL                          R2
       28 LOADNIL                          R3
       29 FORGPREP                         R1
       30 NAMECALL                         R6 R5 K1 ["Disconnect"]
       32 CALL                             R6 1 0
       33 FORGLOOP                         R1 2 ; [-4]
       35 LOADNIL                          R1
       36 SETTABLEKS                       R1 R0 K3 ["_attachmentListeners"]
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R2 K7 ["Utility"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["Constants"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R2 K9 ["supportDetachedAttachments"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R2 K10 ["findPVAncestor"]
       34 CALL                             R5 1 1
       35 NEWTABLE                         R6 8 0
       37 GETIMPORT                        R7 K14 [Enum.NormalId.Back]
       39 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       41 FASTCALL                         VECTOR ; [+2]
       42 GETIMPORT                        R9 K20 [Vector3.new]
       44 CALL                             R9 0 1
       45 LOADK                            R10 K21 [{1, 0, 0}]
       46 LOADK                            R11 K22 [{0, 1, 0}]
       47 LOADK                            R12 K23 [{0, 0, 1}]
       48 CALL                             R8 4 1
       49 SETTABLE                         R8 R6 R7
       50 GETIMPORT                        R7 K25 [Enum.NormalId.Front]
       52 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       54 FASTCALL                         VECTOR ; [+2]
       55 GETIMPORT                        R9 K20 [Vector3.new]
       57 CALL                             R9 0 1
       58 LOADK                            R10 K26 [{-1, 0, 0}]
       59 LOADK                            R11 K22 [{0, 1, 0}]
       60 LOADK                            R12 K27 [{0, 0, -1}]
       61 CALL                             R8 4 1
       62 SETTABLE                         R8 R6 R7
       63 GETIMPORT                        R7 K29 [Enum.NormalId.Right]
       65 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       67 FASTCALL                         VECTOR ; [+2]
       68 GETIMPORT                        R9 K20 [Vector3.new]
       70 CALL                             R9 0 1
       71 LOADK                            R10 K27 [{0, 0, -1}]
       72 LOADK                            R11 K22 [{0, 1, 0}]
       73 LOADK                            R12 K21 [{1, 0, 0}]
       74 CALL                             R8 4 1
       75 SETTABLE                         R8 R6 R7
       76 GETIMPORT                        R7 K31 [Enum.NormalId.Left]
       78 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       80 FASTCALL                         VECTOR ; [+2]
       81 GETIMPORT                        R9 K20 [Vector3.new]
       83 CALL                             R9 0 1
       84 LOADK                            R10 K23 [{0, 0, 1}]
       85 LOADK                            R11 K22 [{0, 1, 0}]
       86 LOADK                            R12 K26 [{-1, 0, 0}]
       87 CALL                             R8 4 1
       88 SETTABLE                         R8 R6 R7
       89 GETIMPORT                        R7 K33 [Enum.NormalId.Bottom]
       91 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
       93 FASTCALL                         VECTOR ; [+2]
       94 GETIMPORT                        R9 K20 [Vector3.new]
       96 CALL                             R9 0 1
       97 LOADK                            R10 K21 [{1, 0, 0}]
       98 LOADK                            R11 K23 [{0, 0, 1}]
       99 LOADK                            R12 K34 [{0, -1, 0}]
      100 CALL                             R8 4 1
      101 SETTABLE                         R8 R6 R7
      102 GETIMPORT                        R7 K36 [Enum.NormalId.Top]
      104 GETIMPORT                        R8 K17 [CFrame.fromMatrix]
      106 FASTCALL                         VECTOR ; [+2]
      107 GETIMPORT                        R9 K20 [Vector3.new]
      109 CALL                             R9 0 1
      110 LOADK                            R10 K21 [{1, 0, 0}]
      111 LOADK                            R11 K27 [{0, 0, -1}]
      112 LOADK                            R12 K22 [{0, 1, 0}]
      113 CALL                             R8 4 1
      114 SETTABLE                         R8 R6 R7
      115 GETTABLEKS                       R7 R3 K37 ["THICKNESS"]
      117 GETTABLEKS                       R8 R3 K38 ["TRANSPARENCY"]
      119 NEWTABLE                         R9 16 0
      121 SETTABLEKS                       R9 R9 K39 ["__index"]
      123 DUPCLOSURE                       R10 K40 [PROTO_0]
      124 CAPTURE                          VAL R9
      125 SETTABLEKS                       R10 R9 K19 ["new"]
      127 DUPCLOSURE                       R10 K41 [PROTO_1]
      128 CAPTURE                          VAL R6
      129 SETTABLEKS                       R10 R9 K42 ["render"]
      131 DUPCLOSURE                       R10 K43 [PROTO_2]
      132 SETTABLEKS                       R10 R9 K44 ["pool"]
      134 DUPCLOSURE                       R10 K45 [PROTO_3]
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R5
      137 SETTABLEKS                       R10 R9 K46 ["adorn"]
      139 DUPCLOSURE                       R10 K47 [PROTO_4]
      140 SETTABLEKS                       R10 R9 K48 ["destroy"]
      142 DUPCLOSURE                       R10 K49 [PROTO_5]
      143 SETTABLEKS                       R10 R9 K50 ["setGuidesFolder"]
      145 DUPCLOSURE                       R10 K51 [PROTO_6]
      146 CAPTURE                          VAL R4
      147 SETTABLEKS                       R10 R9 K52 ["_setAncestry"]
      149 DUPCLOSURE                       R10 K53 [PROTO_7]
      150 SETTABLEKS                       R10 R9 K54 ["_setCFrameValues"]
      152 DUPCLOSURE                       R10 K55 [PROTO_8]
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R8
      155 SETTABLEKS                       R10 R9 K56 ["_setHandles"]
      157 DUPCLOSURE                       R10 K57 [PROTO_9]
      158 SETTABLEKS                       R10 R9 K58 ["_removeHandles"]
      160 DUPCLOSURE                       R10 K59 [PROTO_14]
      161 SETTABLEKS                       R10 R9 K60 ["_setListeners"]
      163 DUPCLOSURE                       R10 K61 [PROTO_15]
      164 SETTABLEKS                       R10 R9 K62 ["_removeListeners"]
      166 RETURN                           R9 1
