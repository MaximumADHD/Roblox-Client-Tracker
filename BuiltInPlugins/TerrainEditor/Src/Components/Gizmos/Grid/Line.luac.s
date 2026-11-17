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
       19 DUPTABLE                         R7 K15 [{["Adornee"], ["AlwaysOnTop"], ["Archivable"] = False, ["CFrame"], ["Color"], ["Size"], ["Transparency"], ["Visible"], ["ZIndex"]}]
       20 GETTABLEKS                       R8 R0 K7 ["Adornee"]
       22 SETTABLEKS                       R8 R7 K7 ["Adornee"]
       24 GETTABLEKS                       R8 R0 K8 ["AlwaysOnTop"]
       26 SETTABLEKS                       R8 R7 K8 ["AlwaysOnTop"]
       28 GETTABLEKS                       R8 R0 K11 ["CFrame"]
       30 SETTABLEKS                       R8 R7 K11 ["CFrame"]
       32 SETTABLEKS                       R2 R7 K2 ["Color"]
       34 GETTABLEKS                       R8 R0 K12 ["Size"]
       36 SETTABLEKS                       R8 R7 K12 ["Size"]
       38 GETTABLEKS                       R9 R0 K8 ["AlwaysOnTop"]
       40 JUMPIFNOT                        R9 ; [+5]
       41 LOADK                            R9 K16 [0.5]
       42 LOADK                            R11 K16 [0.5]
       43 MUL                              R10 R11 R4
       44 ADD                              R8 R9 R10
       45 JUMP                             ; [+1]
       46 MOVE                             R8 R4
       47 SETTABLEKS                       R8 R7 K4 ["Transparency"]
       49 GETTABLEKS                       R8 R0 K13 ["Visible"]
       51 SETTABLEKS                       R8 R7 K13 ["Visible"]
       53 GETTABLEKS                       R9 R0 K8 ["AlwaysOnTop"]
       55 JUMPIFNOT                        R9 ; [+2]
       56 LOADN                            R8 0
       57 JUMP                             ; [+1]
       58 LOADN                            R8 -1
       59 SETTABLEKS                       R8 R7 K14 ["ZIndex"]
       61 CALL                             R5 2 -1
       62 RETURN                           R5 -1

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
