PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Line"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R1 K2 ["Color"]
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R1 K3 ["TransparencyActive"]
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R4 R1 K4 ["Transparency"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K5 ["createElement"]
       18 LOADK                            R6 K6 ["BoxHandleAdornment"]
       19 DUPTABLE                         R7 K14 [{"Adornee", "AlwaysOnTop", "Archivable", "CFrame", "Color", "Size", "Transparency", "Visible", "ZIndex"}]
       20 GETTABLEKS                       R8 R0 K7 ["Adornee"]
       22 SETTABLEKS                       R8 R7 K7 ["Adornee"]
       24 GETTABLEKS                       R8 R0 K8 ["AlwaysOnTop"]
       26 SETTABLEKS                       R8 R7 K8 ["AlwaysOnTop"]
       28 LOADB                            R8 0
       29 SETTABLEKS                       R8 R7 K9 ["Archivable"]
       31 GETTABLEKS                       R8 R0 K10 ["CFrame"]
       33 SETTABLEKS                       R8 R7 K10 ["CFrame"]
       35 SETTABLEKS                       R2 R7 K2 ["Color"]
       37 GETTABLEKS                       R8 R0 K11 ["Size"]
       39 SETTABLEKS                       R8 R7 K11 ["Size"]
       41 GETTABLEKS                       R9 R0 K8 ["AlwaysOnTop"]
       43 JUMPIFNOT                        R9 ; [+5]
       44 LOADK                            R9 K15 [0.5]
       45 LOADK                            R11 K15 [0.5]
       46 MUL                              R10 R11 R4
       47 ADD                              R8 R9 R10
       48 JUMP                             ; [+1]
       49 MOVE                             R8 R4
       50 SETTABLEKS                       R8 R7 K4 ["Transparency"]
       52 GETTABLEKS                       R8 R0 K12 ["Visible"]
       54 SETTABLEKS                       R8 R7 K12 ["Visible"]
       56 GETTABLEKS                       R9 R0 K8 ["AlwaysOnTop"]
       58 JUMPIFNOT                        R9 ; [+2]
       59 LOADN                            R8 0
       60 JUMP                             ; [+1]
       61 LOADN                            R8 255
       62 SETTABLEKS                       R8 R7 K13 ["ZIndex"]
       64 CALL                             R5 2 -1
       65 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Stylizer"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       31 GETTABLEKS                       R5 R5 K13 ["useMouseDown"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Resources"]
       40 GETTABLEKS                       R6 R6 K15 ["Theme"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K16 [PROTO_0]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
