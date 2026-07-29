PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["DraggerContext"]
        2 GETTABLEKS                       R3 R0 K1 ["CFrame"]
        4 GETTABLEKS                       R3 R3 K2 ["Position"]
        6 NAMECALL                         R1 R1 K3 ["getHandleScale"]
        8 CALL                             R1 2 1
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 GETTABLEKS                       R4 R0 K4 ["Dragging"]
       13 JUMPIFNOT                        R4 ; [+8]
       14 GETTABLEKS                       R4 R0 K0 ["DraggerContext"]
       16 NAMECALL                         R4 R4 K5 ["getChosenColor"]
       18 CALL                             R4 1 1
       19 MOVE                             R2 R4
       20 LOADK                            R3 K6 [0.4]
       21 JUMP                             ; [+12]
       22 GETTABLEKS                       R4 R0 K0 ["DraggerContext"]
       24 NAMECALL                         R4 R4 K7 ["getGridColor"]
       26 CALL                             R4 1 1
       27 MOVE                             R2 R4
       28 GETTABLEKS                       R4 R0 K8 ["Hovered"]
       30 JUMPIFNOT                        R4 ; [+2]
       31 LOADK                            R3 K9 [0.7]
       32 JUMP                             ; [+1]
       33 LOADK                            R3 K10 [0.5]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K11 ["createElement"]
       37 LOADK                            R5 K12 ["BoxHandleAdornment"]
       38 DUPTABLE                         R6 K21 [{["Adornee"], ["Color3"], ["CFrame"], ["Size"], ["AlwaysOnTop"] = False, ["Transparency"] = 0, ["ZIndex"] = 0}]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K22 ["Terrain"]
       42 SETTABLEKS                       R7 R6 K13 ["Adornee"]
       44 SETTABLEKS                       R2 R6 K14 ["Color3"]
       46 GETTABLEKS                       R7 R0 K1 ["CFrame"]
       48 SETTABLEKS                       R7 R6 K1 ["CFrame"]
       50 LOADK                            R8 K23 [{1, 1, 1}]
       51 MUL                              R9 R3 R1
       52 MUL                              R7 R8 R9
       53 SETTABLEKS                       R7 R6 K15 ["Size"]
       55 CALL                             R4 2 -1
       56 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R4 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K11 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R0
       27 RETURN                           R4 1
