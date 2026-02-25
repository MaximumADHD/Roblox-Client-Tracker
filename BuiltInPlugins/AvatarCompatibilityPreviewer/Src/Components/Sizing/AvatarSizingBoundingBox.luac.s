PROTO_0:
        0 JUMPIFNOTEQ                      R2 R1 ; [+5]
        2 GETIMPORT                        R5 K1 [error]
        4 LOADK                            R6 K2 ["Range of zero"]
        5 CALL                             R5 1 0
        6 SUB                              R8 R0 R1
        7 SUB                              R9 R4 R3
        8 MUL                              R7 R8 R9
        9 SUB                              R8 R2 R1
       10 DIV                              R6 R7 R8
       11 ADD                              R5 R6 R3
       12 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["IsValid"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["AllValid"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["NeutralColor"]
       11 RETURN                           R0 1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K3 ["ValidColor"]
       15 RETURN                           R0 1
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R0 R1 K4 ["InvalidColor"]
       19 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        5 LOADK                            R3 K2 ["AvatarSizingBoundingBox"]
        6 NAMECALL                         R1 R1 K3 ["use"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K4 ["useState"]
       12 LOADNIL                          R3
       13 CALL                             R2 1 2
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K5 ["useCallback"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 0
       21 CALL                             R4 2 1
       22 GETTABLEKS                       R6 R0 K6 ["BoundingBoxCFrame"]
       24 GETIMPORT                        R7 K9 [CFrame.new]
       26 GETTABLEKS                       R9 R0 K10 ["BoundingBoxSize"]
       28 LOADK                            R10 K11 [{0, -0.5, 0}]
       29 MUL                              R8 R9 R10
       30 CALL                             R7 1 1
       31 MUL                              R5 R6 R7
       32 GETIMPORT                        R8 K9 [CFrame.new]
       34 GETTABLEKS                       R10 R0 K12 ["Size"]
       36 LOADK                            R11 K13 [{0, 0.5, 0}]
       37 MUL                              R9 R10 R11
       38 CALL                             R8 1 -1
       39 NAMECALL                         R6 R5 K14 ["ToWorldSpace"]
       41 CALL                             R6 -1 1
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R7 R8 K15 ["useMemo"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R9 0 2
       50 GETTABLEKS                       R10 R0 K16 ["IsValid"]
       52 GETTABLEKS                       R11 R0 K17 ["AllValid"]
       54 SETLIST                          R9 R10 2 [1]
       56 CALL                             R7 2 1
       57 LOADN                            R8 0
       58 GETTABLEKS                       R9 R0 K16 ["IsValid"]
       60 JUMPIFNOT                        R9 ; [+8]
       61 GETTABLEKS                       R9 R0 K17 ["AllValid"]
       63 JUMPIFNOT                        R9 ; [+3]
       64 GETTABLEKS                       R8 R1 K18 ["NeutralTransparency"]
       66 JUMP                             ; [+2]
       67 GETTABLEKS                       R8 R1 K19 ["ValidTransparency"]
       69 GETTABLEKS                       R9 R0 K20 ["Inside"]
       71 JUMPIFNOT                        R9 ; [+1]
       72 MULK                             R8 R8 K21 [0.5]
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R9 R10 K22 ["createElement"]
       76 LOADK                            R10 K23 ["Part"]
       77 DUPTABLE                         R11 K34 [{"Size", "CFrame", "Color", "ref", "Archivable", "CanCollide", "CanQuery", "Anchored", "Locked", "TopSurface", "BottomSurface", "Transparency"}]
       78 GETTABLEKS                       R12 R0 K12 ["Size"]
       80 SETTABLEKS                       R12 R11 K12 ["Size"]
       82 SETTABLEKS                       R6 R11 K7 ["CFrame"]
       84 SETTABLEKS                       R7 R11 K24 ["Color"]
       86 SETTABLEKS                       R4 R11 K25 ["ref"]
       88 LOADB                            R12 0
       89 SETTABLEKS                       R12 R11 K26 ["Archivable"]
       91 LOADB                            R12 0
       92 SETTABLEKS                       R12 R11 K27 ["CanCollide"]
       94 LOADB                            R12 0
       95 SETTABLEKS                       R12 R11 K28 ["CanQuery"]
       97 LOADB                            R12 1
       98 SETTABLEKS                       R12 R11 K29 ["Anchored"]
      100 LOADB                            R12 1
      101 SETTABLEKS                       R12 R11 K30 ["Locked"]
      103 GETIMPORT                        R12 K38 [Enum.SurfaceType.Smooth]
      105 SETTABLEKS                       R12 R11 K31 ["TopSurface"]
      107 GETIMPORT                        R12 K38 [Enum.SurfaceType.Smooth]
      109 SETTABLEKS                       R12 R11 K32 ["BottomSurface"]
      111 LOADN                            R12 1
      112 SETTABLEKS                       R12 R11 K33 ["Transparency"]
      114 DUPTABLE                         R12 K42 [{"TopAdornment", "BottomAdornment", "SelectionBox"}]
      115 GETUPVAL                         R14 1
      116 GETTABLEKS                       R13 R14 K22 ["createElement"]
      118 LOADK                            R14 K43 ["BoxHandleAdornment"]
      119 DUPTABLE                         R15 K47 [{"Size", "Archivable", "AlwaysOnTop", "CFrame", "Transparency", "Color3", "Adornee"}]
      120 GETTABLEKS                       R16 R0 K12 ["Size"]
      122 SETTABLEKS                       R16 R15 K12 ["Size"]
      124 LOADB                            R16 0
      125 SETTABLEKS                       R16 R15 K26 ["Archivable"]
      127 LOADB                            R16 1
      128 SETTABLEKS                       R16 R15 K44 ["AlwaysOnTop"]
      130 GETIMPORT                        R16 K9 [CFrame.new]
      132 LOADN                            R17 0
      133 LOADN                            R18 0
      134 LOADN                            R19 0
      135 CALL                             R16 3 1
      136 SETTABLEKS                       R16 R15 K7 ["CFrame"]
      138 GETGLOBAL                        R16 K48 ["mapNumberRange"]
      140 MOVE                             R17 R8
      141 LOADN                            R18 0
      142 LOADN                            R19 1
      143 LOADK                            R20 K49 [0.9]
      144 LOADN                            R21 1
      145 CALL                             R16 5 1
      146 SETTABLEKS                       R16 R15 K33 ["Transparency"]
      148 SETTABLEKS                       R7 R15 K45 ["Color3"]
      150 SETTABLEKS                       R2 R15 K46 ["Adornee"]
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K39 ["TopAdornment"]
      155 GETUPVAL                         R14 1
      156 GETTABLEKS                       R13 R14 K22 ["createElement"]
      158 LOADK                            R14 K43 ["BoxHandleAdornment"]
      159 DUPTABLE                         R15 K47 [{"Size", "Archivable", "AlwaysOnTop", "CFrame", "Transparency", "Color3", "Adornee"}]
      160 GETTABLEKS                       R16 R0 K12 ["Size"]
      162 SETTABLEKS                       R16 R15 K12 ["Size"]
      164 LOADB                            R16 0
      165 SETTABLEKS                       R16 R15 K26 ["Archivable"]
      167 LOADB                            R16 0
      168 SETTABLEKS                       R16 R15 K44 ["AlwaysOnTop"]
      170 GETIMPORT                        R16 K9 [CFrame.new]
      172 LOADN                            R17 0
      173 LOADN                            R18 0
      174 LOADN                            R19 0
      175 CALL                             R16 3 1
      176 SETTABLEKS                       R16 R15 K7 ["CFrame"]
      178 GETGLOBAL                        R16 K48 ["mapNumberRange"]
      180 MOVE                             R17 R8
      181 LOADN                            R18 0
      182 LOADN                            R19 1
      183 LOADK                            R20 K49 [0.9]
      184 LOADN                            R21 1
      185 CALL                             R16 5 1
      186 SETTABLEKS                       R16 R15 K33 ["Transparency"]
      188 SETTABLEKS                       R7 R15 K45 ["Color3"]
      190 SETTABLEKS                       R2 R15 K46 ["Adornee"]
      192 CALL                             R13 2 1
      193 SETTABLEKS                       R13 R12 K40 ["BottomAdornment"]
      195 GETUPVAL                         R14 1
      196 GETTABLEKS                       R13 R14 K22 ["createElement"]
      198 LOADK                            R14 K41 ["SelectionBox"]
      199 DUPTABLE                         R15 K52 [{"Archivable", "Color3", "SurfaceColor3", "Adornee", "LineThickness", "Transparency"}]
      200 LOADB                            R16 0
      201 SETTABLEKS                       R16 R15 K26 ["Archivable"]
      203 SETTABLEKS                       R7 R15 K45 ["Color3"]
      205 SETTABLEKS                       R7 R15 K50 ["SurfaceColor3"]
      207 SETTABLEKS                       R2 R15 K46 ["Adornee"]
      209 LOADK                            R16 K53 [0.01]
      210 SETTABLEKS                       R16 R15 K51 ["LineThickness"]
      212 GETGLOBAL                        R16 K48 ["mapNumberRange"]
      214 MOVE                             R17 R8
      215 LOADN                            R18 0
      216 LOADN                            R19 1
      217 LOADK                            R20 K21 [0.5]
      218 LOADN                            R21 1
      219 CALL                             R16 5 1
      220 SETTABLEKS                       R16 R15 K33 ["Transparency"]
      222 CALL                             R13 2 1
      223 SETTABLEKS                       R13 R12 K41 ["SelectionBox"]
      225 CALL                             R9 3 -1
      226 RETURN                           R9 -1

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
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 SETGLOBAL                        R4 K13 ["mapNumberRange"]
       33 DUPCLOSURE                       R4 K14 [PROTO_3]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 RETURN                           R4 1
