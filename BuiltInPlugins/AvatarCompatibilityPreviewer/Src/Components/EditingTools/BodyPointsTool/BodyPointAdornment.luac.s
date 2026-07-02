PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onMouseEnter"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onMouseLeave"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["point"]
        3 GETTABLEKS                       R0 R0 K1 ["getCFrame"]
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
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K2 ["current"]
       22 JUMPIFNOT                        R1 ; [+9]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K2 ["current"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R4 R0 K4 ["Position"]
       29 ADD                              R2 R3 R4
       30 SETTABLEKS                       R2 R1 K3 ["CFrame"]
       32 GETUPVAL                         R1 4
       33 GETTABLEKS                       R1 R1 K2 ["current"]
       35 JUMPIFNOT                        R1 ; [+12]
       36 GETUPVAL                         R1 4
       37 GETTABLEKS                       R1 R1 K2 ["current"]
       39 GETIMPORT                        R3 K6 [CFrame.Angles]
       41 LOADN                            R4 0
       42 LOADK                            R5 K7 [1.5707963267949]
       43 LOADN                            R6 0
       44 CALL                             R3 3 1
       45 MUL                              R2 R0 R3
       46 SETTABLEKS                       R2 R1 K3 ["CFrame"]
       48 GETUPVAL                         R1 5
       49 GETTABLEKS                       R1 R1 K2 ["current"]
       51 JUMPIFNOT                        R1 ; [+12]
       52 GETUPVAL                         R1 5
       53 GETTABLEKS                       R1 R1 K2 ["current"]
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
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["point"]
       12 GETTABLEKS                       R1 R1 K1 ["connectChanged"]
       14 JUMPIF                           R1 ; [+2]
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["point"]
       20 GETTABLEKS                       R1 R1 K1 ["connectChanged"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K1 ["onMouseEnter"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K0 ["useCallback"]
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
       43 LOADN                            R9 -1
       44 LOADN                            R10 0
       45 LOADN                            R11 0
       46 LOADN                            R12 0
       47 LOADN                            R13 1
       48 LOADN                            R14 0
       49 LOADN                            R15 0
       50 LOADN                            R16 0
       51 LOADN                            R17 1
       52 CALL                             R5 12 1
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K8 ["useRef"]
       56 LOADNIL                          R7
       57 CALL                             R6 1 1
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K8 ["useRef"]
       61 LOADNIL                          R8
       62 CALL                             R7 1 1
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R8 R8 K8 ["useRef"]
       66 LOADNIL                          R9
       67 CALL                             R8 1 1
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K8 ["useRef"]
       71 LOADNIL                          R10
       72 CALL                             R9 1 1
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K8 ["useRef"]
       76 LOADNIL                          R11
       77 CALL                             R10 1 1
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R11 R11 K8 ["useRef"]
       81 LOADNIL                          R12
       82 CALL                             R11 1 1
       83 NEWTABLE                         R12 0 3
       85 MOVE                             R13 R6
       86 MOVE                             R14 R8
       87 MOVE                             R15 R11
       88 SETLIST                          R12 R13 3 [1]
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R13 R13 K9 ["useEffect"]
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
      115 GETUPVAL                         R13 1
      116 GETTABLEKS                       R13 R13 K13 ["createElement"]
      118 GETUPVAL                         R14 1
      119 GETTABLEKS                       R14 R14 K14 ["Fragment"]
      121 NEWTABLE                         R15 0 0
      123 DUPTABLE                         R16 K21 [{"Border", "Sphere", "SphereOverModel", "X", "Y", "Z"}]
      124 GETUPVAL                         R17 1
      125 GETTABLEKS                       R17 R17 K13 ["createElement"]
      127 LOADK                            R18 K22 ["SphereHandleAdornment"]
      128 DUPTABLE                         R19 K34 [{["Adornee"], ["AlwaysOnTop"] = True, ["ref"], ["Color3"], ["Radius"] = 0.11, ["Transparency"] = 0, ["ZIndex"] = -1}]
      129 GETTABLEKS                       R20 R0 K35 ["adornee"]
      131 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      133 SETTABLEKS                       R7 R19 K26 ["ref"]
      135 GETIMPORT                        R20 K36 [Color3.new]
      137 LOADN                            R21 0
      138 LOADN                            R22 0
      139 LOADN                            R23 0
      140 CALL                             R20 3 1
      141 SETTABLEKS                       R20 R19 K27 ["Color3"]
      143 CALL                             R17 2 1
      144 SETTABLEKS                       R17 R16 K15 ["Border"]
      146 GETUPVAL                         R17 1
      147 GETTABLEKS                       R17 R17 K13 ["createElement"]
      149 LOADK                            R18 K22 ["SphereHandleAdornment"]
      150 NEWTABLE                         R19 16 0
      152 GETTABLEKS                       R20 R0 K35 ["adornee"]
      154 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      156 LOADB                            R20 1
      157 SETTABLEKS                       R20 R19 K24 ["AlwaysOnTop"]
      159 GETTABLEKS                       R20 R0 K37 ["color"]
      161 SETTABLEKS                       R20 R19 K27 ["Color3"]
      163 LOADK                            R20 K38 [0.1]
      164 SETTABLEKS                       R20 R19 K28 ["Radius"]
      166 GETTABLEKS                       R20 R0 K39 ["transparency"]
      168 SETTABLEKS                       R20 R19 K30 ["Transparency"]
      170 LOADN                            R20 1
      171 SETTABLEKS                       R20 R19 K32 ["ZIndex"]
      173 SETTABLEKS                       R6 R19 K26 ["ref"]
      175 GETUPVAL                         R20 1
      176 GETTABLEKS                       R20 R20 K40 ["Event"]
      178 GETTABLEKS                       R20 R20 K41 ["MouseEnter"]
      180 SETTABLE                         R2 R19 R20
      181 GETUPVAL                         R20 1
      182 GETTABLEKS                       R20 R20 K40 ["Event"]
      184 GETTABLEKS                       R20 R20 K42 ["MouseLeave"]
      186 SETTABLE                         R3 R19 R20
      187 CALL                             R17 2 1
      188 SETTABLEKS                       R17 R16 K16 ["Sphere"]
      190 GETUPVAL                         R17 1
      191 GETTABLEKS                       R17 R17 K13 ["createElement"]
      193 LOADK                            R18 K22 ["SphereHandleAdornment"]
      194 DUPTABLE                         R19 K45 [{["Adornee"], ["AlwaysOnTop"] = False, ["Color3"], ["Radius"] = 0.1, ["Transparency"], ["ZIndex"] = 2, ["ref"]}]
      195 GETTABLEKS                       R20 R0 K35 ["adornee"]
      197 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      199 GETTABLEKS                       R20 R0 K37 ["color"]
      201 SETTABLEKS                       R20 R19 K27 ["Color3"]
      203 GETTABLEKS                       R20 R0 K46 ["transparencyOverModel"]
      205 SETTABLEKS                       R20 R19 K30 ["Transparency"]
      207 SETTABLEKS                       R8 R19 K26 ["ref"]
      209 CALL                             R17 2 1
      210 SETTABLEKS                       R17 R16 K17 ["SphereOverModel"]
      212 MOVE                             R17 R4
      213 JUMPIFNOT                        R17 ; [+20]
      214 GETUPVAL                         R17 1
      215 GETTABLEKS                       R17 R17 K13 ["createElement"]
      217 LOADK                            R18 K47 ["LineHandleAdornment"]
      218 DUPTABLE                         R19 K52 [{["Adornee"], ["AlwaysOnTop"] = True, ["Length"] = 0.25, ["Thickness"] = 3, ["Color3"], ["ZIndex"] = 3, ["ref"]}]
      219 GETTABLEKS                       R20 R0 K35 ["adornee"]
      221 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      223 GETIMPORT                        R20 K36 [Color3.new]
      225 LOADN                            R21 1
      226 LOADN                            R22 0
      227 LOADN                            R23 0
      228 CALL                             R20 3 1
      229 SETTABLEKS                       R20 R19 K27 ["Color3"]
      231 SETTABLEKS                       R9 R19 K26 ["ref"]
      233 CALL                             R17 2 1
      234 SETTABLEKS                       R17 R16 K18 ["X"]
      236 MOVE                             R17 R4
      237 JUMPIFNOT                        R17 ; [+20]
      238 GETUPVAL                         R17 1
      239 GETTABLEKS                       R17 R17 K13 ["createElement"]
      241 LOADK                            R18 K47 ["LineHandleAdornment"]
      242 DUPTABLE                         R19 K52 [{["Adornee"], ["AlwaysOnTop"] = True, ["Length"] = 0.25, ["Thickness"] = 3, ["Color3"], ["ZIndex"] = 3, ["ref"]}]
      243 GETTABLEKS                       R20 R0 K35 ["adornee"]
      245 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      247 GETIMPORT                        R20 K36 [Color3.new]
      249 LOADN                            R21 0
      250 LOADN                            R22 1
      251 LOADN                            R23 0
      252 CALL                             R20 3 1
      253 SETTABLEKS                       R20 R19 K27 ["Color3"]
      255 SETTABLEKS                       R10 R19 K26 ["ref"]
      257 CALL                             R17 2 1
      258 SETTABLEKS                       R17 R16 K19 ["Y"]
      260 MOVE                             R17 R4
      261 JUMPIFNOT                        R17 ; [+20]
      262 GETUPVAL                         R17 1
      263 GETTABLEKS                       R17 R17 K13 ["createElement"]
      265 LOADK                            R18 K47 ["LineHandleAdornment"]
      266 DUPTABLE                         R19 K52 [{["Adornee"], ["AlwaysOnTop"] = True, ["Length"] = 0.25, ["Thickness"] = 3, ["Color3"], ["ZIndex"] = 3, ["ref"]}]
      267 GETTABLEKS                       R20 R0 K35 ["adornee"]
      269 SETTABLEKS                       R20 R19 K23 ["Adornee"]
      271 GETIMPORT                        R20 K36 [Color3.new]
      273 LOADN                            R21 0
      274 LOADN                            R22 0
      275 LOADN                            R23 1
      276 CALL                             R20 3 1
      277 SETTABLEKS                       R20 R19 K27 ["Color3"]
      279 SETTABLEKS                       R11 R19 K26 ["ref"]
      281 CALL                             R17 2 1
      282 SETTABLEKS                       R17 R16 K20 ["Z"]
      284 CALL                             R13 3 -1
      285 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Hooks"]
       20 GETTABLEKS                       R3 R3 K10 ["useToggleState"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["EditingTools"]
       31 GETTABLEKS                       R4 R4 K13 ["BodyPointsTool"]
       33 GETTABLEKS                       R4 R4 K14 ["Types"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K15 [PROTO_4]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 RETURN                           R4 1
