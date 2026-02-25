PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onMouseEnter"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onMouseLeave"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["point"]
        3 GETTABLEKS                       R0 R1 K1 ["getCFrame"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R6 R5 K2 ["current"]
       12 JUMPIFNOT                        R6 ; [+4]
       13 GETTABLEKS                       R6 R5 K2 ["current"]
       15 SETTABLEKS                       R0 R6 K3 ["CFrame"]
       17 FORGLOOP                         R1 2 ; [-8]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K2 ["current"]
       22 JUMPIFNOT                        R1 ; [+9]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K2 ["current"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R4 R0 K4 ["Position"]
       29 ADD                              R2 R3 R4
       30 SETTABLEKS                       R2 R1 K3 ["CFrame"]
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R1 R2 K2 ["current"]
       35 JUMPIFNOT                        R1 ; [+12]
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R1 R2 K2 ["current"]
       39 GETIMPORT                        R3 K6 [CFrame.Angles]
       41 LOADN                            R4 0
       42 LOADK                            R5 K7 [1.5707963267949]
       43 LOADN                            R6 0
       44 CALL                             R3 3 1
       45 MUL                              R2 R0 R3
       46 SETTABLEKS                       R2 R1 K3 ["CFrame"]
       48 GETUPVAL                         R2 5
       49 GETTABLEKS                       R1 R2 K2 ["current"]
       51 JUMPIFNOT                        R1 ; [+12]
       52 GETUPVAL                         R2 5
       53 GETTABLEKS                       R1 R2 K2 ["current"]
       55 GETIMPORT                        R3 K6 [CFrame.Angles]
       57 LOADK                            R4 K7 [1.5707963267949]
       58 LOADN                            R5 0
       59 LOADN                            R6 0
       60 CALL                             R3 3 1
       61 MUL                              R2 R0 R3
       62 SETTABLEKS                       R2 R1 K3 ["CFrame"]
       64 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 MOVE                             R1 R0
        8 CALL                             R1 0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["point"]
       12 GETTABLEKS                       R1 R2 K1 ["connectChanged"]
       14 JUMPIF                           R1 ; [+2]
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["point"]
       20 GETTABLEKS                       R1 R2 K1 ["connectChanged"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K1 ["onMouseEnter"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K0 ["useCallback"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R5 0 1
       24 GETTABLEKS                       R6 R0 K2 ["onMouseLeave"]
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R5 R0 K3 ["showOrientation"]
       31 JUMPIFEQKNIL                     R5 ; [+4]
       33 GETTABLEKS                       R4 R0 K3 ["showOrientation"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R4 R1 K4 ["enabled"]
       38 GETIMPORT                        R5 K7 [CFrame.new]
       40 LOADN                            R6 0
       41 LOADN                            R7 0
       42 LOADN                            R8 0
       43 LOADN                            R9 255
       44 LOADN                            R10 0
       45 LOADN                            R11 0
       46 LOADN                            R12 0
       47 LOADN                            R13 1
       48 LOADN                            R14 0
       49 LOADN                            R15 0
       50 LOADN                            R16 0
       51 LOADN                            R17 1
       52 CALL                             R5 12 1
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R6 R7 K8 ["useRef"]
       56 LOADNIL                          R7
       57 CALL                             R6 1 1
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R7 R8 K8 ["useRef"]
       61 LOADNIL                          R8
       62 CALL                             R7 1 1
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R8 R9 K8 ["useRef"]
       66 LOADNIL                          R9
       67 CALL                             R8 1 1
       68 GETUPVAL                         R10 1
       69 GETTABLEKS                       R9 R10 K8 ["useRef"]
       71 LOADNIL                          R10
       72 CALL                             R9 1 1
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R10 R11 K8 ["useRef"]
       76 LOADNIL                          R11
       77 CALL                             R10 1 1
       78 GETUPVAL                         R12 1
       79 GETTABLEKS                       R11 R12 K8 ["useRef"]
       81 LOADNIL                          R12
       82 CALL                             R11 1 1
       83 NEWTABLE                         R12 0 3
       85 MOVE                             R13 R6
       86 MOVE                             R14 R8
       87 MOVE                             R15 R11
       88 SETLIST                          R12 R13 3 [1]
       90 GETUPVAL                         R14 1
       91 GETTABLEKS                       R13 R14 K9 ["useEffect"]
       93 NEWCLOSURE                       R14 P2
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 NEWTABLE                         R15 0 5
      102 GETTABLEKS                       R16 R0 K10 ["point"]
      104 MOVE                             R17 R7
      105 MOVE                             R18 R9
      106 MOVE                             R19 R10
      107 FASTCALL1                        TABLE_UNPACK R12 ; [+3]
      108 MOVE                             R21 R12
      109 GETIMPORT                        R20 K12 [unpack]
      111 CALL                             R20 1 -1
      112 SETLIST                          R15 R16 -1 [1]
      114 CALL                             R13 2 0
      115 GETUPVAL                         R14 1
      116 GETTABLEKS                       R13 R14 K13 ["createElement"]
      118 GETUPVAL                         R15 1
      119 GETTABLEKS                       R14 R15 K14 ["Fragment"]
      121 NEWTABLE                         R15 0 0
      123 DUPTABLE                         R16 K21 [{"Border", "Sphere", "SphereOverModel", "X", "Y", "Z"}]
      124 GETUPVAL                         R18 1
      125 GETTABLEKS                       R17 R18 K13 ["createElement"]
      127 LOADK                            R18 K22 ["SphereHandleAdornment"]
      128 DUPTABLE                         R19 K30 [{"Adornee", "AlwaysOnTop", "ref", "Color3", "Radius", "Transparency", "ZIndex"}]
      129 GETTABLEKS                       R20 R0 K31 ["adornee"]
      131 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      133 LOADB                            R20 1
      134 SETTABLEKS                       R20 R19 K24 ["AlwaysOnTop"]
      136 SETTABLEKS                       R7 R19 K25 ["ref"]
      138 GETIMPORT                        R20 K32 [Color3.new]
      140 LOADN                            R21 0
      141 LOADN                            R22 0
      142 LOADN                            R23 0
      143 CALL                             R20 3 1
      144 SETTABLEKS                       R20 R19 K26 ["Color3"]
      146 LOADK                            R20 K33 [0.11]
      147 SETTABLEKS                       R20 R19 K27 ["Radius"]
      149 LOADN                            R20 0
      150 SETTABLEKS                       R20 R19 K28 ["Transparency"]
      152 LOADN                            R20 255
      153 SETTABLEKS                       R20 R19 K29 ["ZIndex"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K15 ["Border"]
      158 GETUPVAL                         R18 1
      159 GETTABLEKS                       R17 R18 K13 ["createElement"]
      161 LOADK                            R18 K22 ["SphereHandleAdornment"]
      162 NEWTABLE                         R19 16 0
      164 GETTABLEKS                       R20 R0 K31 ["adornee"]
      166 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      168 LOADB                            R20 1
      169 SETTABLEKS                       R20 R19 K24 ["AlwaysOnTop"]
      171 GETTABLEKS                       R20 R0 K34 ["color"]
      173 SETTABLEKS                       R20 R19 K26 ["Color3"]
      175 LOADK                            R20 K35 [0.1]
      176 SETTABLEKS                       R20 R19 K27 ["Radius"]
      178 GETTABLEKS                       R20 R0 K36 ["transparency"]
      180 SETTABLEKS                       R20 R19 K28 ["Transparency"]
      182 LOADN                            R20 1
      183 SETTABLEKS                       R20 R19 K29 ["ZIndex"]
      185 SETTABLEKS                       R6 R19 K25 ["ref"]
      187 GETUPVAL                         R22 1
      188 GETTABLEKS                       R21 R22 K37 ["Event"]
      190 GETTABLEKS                       R20 R21 K38 ["MouseEnter"]
      192 SETTABLE                         R2 R19 R20
      193 GETUPVAL                         R22 1
      194 GETTABLEKS                       R21 R22 K37 ["Event"]
      196 GETTABLEKS                       R20 R21 K39 ["MouseLeave"]
      198 SETTABLE                         R3 R19 R20
      199 CALL                             R17 2 1
      200 SETTABLEKS                       R17 R16 K16 ["Sphere"]
      202 GETUPVAL                         R18 1
      203 GETTABLEKS                       R17 R18 K13 ["createElement"]
      205 LOADK                            R18 K22 ["SphereHandleAdornment"]
      206 DUPTABLE                         R19 K40 [{"Adornee", "AlwaysOnTop", "Color3", "Radius", "Transparency", "ZIndex", "ref"}]
      207 GETTABLEKS                       R20 R0 K31 ["adornee"]
      209 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      211 LOADB                            R20 0
      212 SETTABLEKS                       R20 R19 K24 ["AlwaysOnTop"]
      214 GETTABLEKS                       R20 R0 K34 ["color"]
      216 SETTABLEKS                       R20 R19 K26 ["Color3"]
      218 LOADK                            R20 K35 [0.1]
      219 SETTABLEKS                       R20 R19 K27 ["Radius"]
      221 GETTABLEKS                       R20 R0 K41 ["transparencyOverModel"]
      223 SETTABLEKS                       R20 R19 K28 ["Transparency"]
      225 LOADN                            R20 2
      226 SETTABLEKS                       R20 R19 K29 ["ZIndex"]
      228 SETTABLEKS                       R8 R19 K25 ["ref"]
      230 CALL                             R17 2 1
      231 SETTABLEKS                       R17 R16 K17 ["SphereOverModel"]
      233 MOVE                             R17 R4
      234 JUMPIFNOT                        R17 ; [+32]
      235 GETUPVAL                         R18 1
      236 GETTABLEKS                       R17 R18 K13 ["createElement"]
      238 LOADK                            R18 K42 ["LineHandleAdornment"]
      239 DUPTABLE                         R19 K45 [{"Adornee", "AlwaysOnTop", "Length", "Thickness", "Color3", "ZIndex", "ref"}]
      240 GETTABLEKS                       R20 R0 K31 ["adornee"]
      242 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      244 LOADB                            R20 1
      245 SETTABLEKS                       R20 R19 K24 ["AlwaysOnTop"]
      247 LOADK                            R20 K46 [0.25]
      248 SETTABLEKS                       R20 R19 K43 ["Length"]
      250 LOADN                            R20 3
      251 SETTABLEKS                       R20 R19 K44 ["Thickness"]
      253 GETIMPORT                        R20 K32 [Color3.new]
      255 LOADN                            R21 1
      256 LOADN                            R22 0
      257 LOADN                            R23 0
      258 CALL                             R20 3 1
      259 SETTABLEKS                       R20 R19 K26 ["Color3"]
      261 LOADN                            R20 3
      262 SETTABLEKS                       R20 R19 K29 ["ZIndex"]
      264 SETTABLEKS                       R9 R19 K25 ["ref"]
      266 CALL                             R17 2 1
      267 SETTABLEKS                       R17 R16 K18 ["X"]
      269 MOVE                             R17 R4
      270 JUMPIFNOT                        R17 ; [+32]
      271 GETUPVAL                         R18 1
      272 GETTABLEKS                       R17 R18 K13 ["createElement"]
      274 LOADK                            R18 K42 ["LineHandleAdornment"]
      275 DUPTABLE                         R19 K45 [{"Adornee", "AlwaysOnTop", "Length", "Thickness", "Color3", "ZIndex", "ref"}]
      276 GETTABLEKS                       R20 R0 K31 ["adornee"]
      278 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      280 LOADB                            R20 1
      281 SETTABLEKS                       R20 R19 K24 ["AlwaysOnTop"]
      283 LOADK                            R20 K46 [0.25]
      284 SETTABLEKS                       R20 R19 K43 ["Length"]
      286 LOADN                            R20 3
      287 SETTABLEKS                       R20 R19 K44 ["Thickness"]
      289 GETIMPORT                        R20 K32 [Color3.new]
      291 LOADN                            R21 0
      292 LOADN                            R22 1
      293 LOADN                            R23 0
      294 CALL                             R20 3 1
      295 SETTABLEKS                       R20 R19 K26 ["Color3"]
      297 LOADN                            R20 3
      298 SETTABLEKS                       R20 R19 K29 ["ZIndex"]
      300 SETTABLEKS                       R10 R19 K25 ["ref"]
      302 CALL                             R17 2 1
      303 SETTABLEKS                       R17 R16 K19 ["Y"]
      305 MOVE                             R17 R4
      306 JUMPIFNOT                        R17 ; [+32]
      307 GETUPVAL                         R18 1
      308 GETTABLEKS                       R17 R18 K13 ["createElement"]
      310 LOADK                            R18 K42 ["LineHandleAdornment"]
      311 DUPTABLE                         R19 K45 [{"Adornee", "AlwaysOnTop", "Length", "Thickness", "Color3", "ZIndex", "ref"}]
      312 GETTABLEKS                       R20 R0 K31 ["adornee"]
      314 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      316 LOADB                            R20 1
      317 SETTABLEKS                       R20 R19 K24 ["AlwaysOnTop"]
      319 LOADK                            R20 K46 [0.25]
      320 SETTABLEKS                       R20 R19 K43 ["Length"]
      322 LOADN                            R20 3
      323 SETTABLEKS                       R20 R19 K44 ["Thickness"]
      325 GETIMPORT                        R20 K32 [Color3.new]
      327 LOADN                            R21 0
      328 LOADN                            R22 0
      329 LOADN                            R23 1
      330 CALL                             R20 3 1
      331 SETTABLEKS                       R20 R19 K26 ["Color3"]
      333 LOADN                            R20 3
      334 SETTABLEKS                       R20 R19 K29 ["ZIndex"]
      336 SETTABLEKS                       R11 R19 K25 ["ref"]
      338 CALL                             R17 2 1
      339 SETTABLEKS                       R17 R16 K20 ["Z"]
      341 CALL                             R13 3 -1
      342 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Hooks"]
       20 GETTABLEKS                       R3 R4 K10 ["useToggleState"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R8 R0 K8 ["Src"]
       27 GETTABLEKS                       R7 R8 K11 ["Components"]
       29 GETTABLEKS                       R6 R7 K12 ["EditingTools"]
       31 GETTABLEKS                       R5 R6 K13 ["BodyPointsTool"]
       33 GETTABLEKS                       R4 R5 K14 ["Types"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K15 [PROTO_4]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 RETURN                           R4 1
