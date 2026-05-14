PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 LOADK                            R3 K1 ["WireframeHandleAdornment"]
        5 NAMECALL                         R1 R0 K2 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+13]
        9 NAMECALL                         R1 R0 K3 ["clear"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K4 ["Lines"]
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["Lines"]
       19 NAMECALL                         R1 R0 K5 ["addLines"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K0 ["Lines"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R0 K1 ["Adornee"]
       16 GETTABLEKS                       R3 R0 K2 ["AlwaysOnTop"]
       18 GETTABLEKS                       R4 R0 K3 ["Color"]
       20 GETTABLEKS                       R5 R0 K4 ["LineThickness"]
       22 GETTABLEKS                       R6 R0 K0 ["Lines"]
       24 GETTABLEKS                       R7 R0 K5 ["Scale"]
       26 GETTABLEKS                       R8 R0 K6 ["Size"]
       28 GETTABLEKS                       R9 R0 K7 ["Transform"]
       30 GETTABLEKS                       R10 R0 K8 ["Transparency"]
       32 GETUPVAL                         R11 2
       33 MOVE                             R12 R9
       34 MOVE                             R13 R8
       35 MOVE                             R14 R5
       36 CALL                             R11 3 1
       37 NEWTABLE                         R12 0 0
       39 MOVE                             R13 R11
       40 LOADNIL                          R14
       41 LOADNIL                          R15
       42 FORGPREP                         R13
       43 GETUPVAL                         R18 3
       44 GETTABLEKS                       R18 R18 K9 ["createElement"]
       46 GETUPVAL                         R19 4
       47 DUPTABLE                         R20 K10 [{"Adornee", "AlwaysOnTop", "Transform", "Color", "Size", "Transparency"}]
       48 SETTABLEKS                       R2 R20 K1 ["Adornee"]
       50 SETTABLEKS                       R3 R20 K2 ["AlwaysOnTop"]
       52 GETTABLEKS                       R21 R17 K7 ["Transform"]
       54 SETTABLEKS                       R21 R20 K7 ["Transform"]
       56 SETTABLEKS                       R4 R20 K3 ["Color"]
       58 GETTABLEKS                       R21 R17 K6 ["Size"]
       60 SETTABLEKS                       R21 R20 K6 ["Size"]
       62 SETTABLEKS                       R10 R20 K8 ["Transparency"]
       64 CALL                             R18 2 1
       65 SETTABLE                         R18 R12 R16
       66 FORGLOOP                         R13 2 ; [-24]
       68 GETUPVAL                         R13 3
       69 GETTABLEKS                       R13 R13 K9 ["createElement"]
       71 LOADK                            R14 K11 ["Folder"]
       72 NEWTABLE                         R15 0 0
       74 DUPTABLE                         R16 K14 [{"Borders", "Main", "Lines"}]
       75 GETUPVAL                         R17 3
       76 GETTABLEKS                       R17 R17 K9 ["createElement"]
       78 LOADK                            R18 K11 ["Folder"]
       79 NEWTABLE                         R19 0 0
       81 MOVE                             R20 R12
       82 CALL                             R17 3 1
       83 SETTABLEKS                       R17 R16 K12 ["Borders"]
       85 GETUPVAL                         R17 3
       86 GETTABLEKS                       R17 R17 K9 ["createElement"]
       88 LOADK                            R18 K15 ["BoxHandleAdornment"]
       89 DUPTABLE                         R19 K19 [{"AlwaysOnTop", "Adornee", "CFrame", "Color3", "Transparency", "Size", "ZIndex"}]
       90 SETTABLEKS                       R3 R19 K2 ["AlwaysOnTop"]
       92 SETTABLEKS                       R2 R19 K1 ["Adornee"]
       94 SETTABLEKS                       R9 R19 K16 ["CFrame"]
       96 SETTABLEKS                       R4 R19 K17 ["Color3"]
       98 SETTABLEKS                       R10 R19 K8 ["Transparency"]
      100 SETTABLEKS                       R8 R19 K6 ["Size"]
      102 LOADN                            R20 0
      103 SETTABLEKS                       R20 R19 K18 ["ZIndex"]
      105 CALL                             R17 2 1
      106 SETTABLEKS                       R17 R16 K13 ["Main"]
      108 JUMPIFNOT                        R6 ; [+28]
      109 GETUPVAL                         R17 3
      110 GETTABLEKS                       R17 R17 K9 ["createElement"]
      112 LOADK                            R18 K20 ["WireframeHandleAdornment"]
      113 NEWTABLE                         R19 8 0
      115 SETTABLEKS                       R3 R19 K2 ["AlwaysOnTop"]
      117 SETTABLEKS                       R2 R19 K1 ["Adornee"]
      119 SETTABLEKS                       R9 R19 K16 ["CFrame"]
      121 SETTABLEKS                       R4 R19 K17 ["Color3"]
      123 MULK                             R20 R10 K21 [0.8]
      124 SETTABLEKS                       R20 R19 K8 ["Transparency"]
      126 SETTABLEKS                       R7 R19 K5 ["Scale"]
      128 LOADN                            R20 0
      129 SETTABLEKS                       R20 R19 K18 ["ZIndex"]
      131 GETUPVAL                         R20 5
      132 GETTABLEKS                       R20 R20 K22 ["Ref"]
      134 SETTABLE                         R1 R19 R20
      135 CALL                             R17 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R17
      138 SETTABLEKS                       R17 R16 K0 ["Lines"]
      140 CALL                             R13 3 -1
      141 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       23 GETTABLEKS                       R4 R1 K10 ["useRef"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R6 R6 K11 ["Parent"]
       31 GETTABLEKS                       R6 R6 K12 ["Border"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K13 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Util"]
       40 GETTABLEKS                       R7 R7 K15 ["getBoxBorderDimensions"]
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K16 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R2
       50 RETURN                           R7 1
