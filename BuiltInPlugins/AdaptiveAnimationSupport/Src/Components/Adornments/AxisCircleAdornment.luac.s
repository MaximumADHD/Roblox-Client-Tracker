PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["circlePoints"]
        8 GETTABLEKS                       R3 R4 K2 ["x"]
       10 LOADB                            R4 1
       11 NAMECALL                         R1 R0 K3 ["AddPath"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K1 ["circlePoints"]
       17 GETTABLEKS                       R3 R4 K4 ["y"]
       19 LOADB                            R4 1
       20 NAMECALL                         R1 R0 K3 ["AddPath"]
       22 CALL                             R1 3 0
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K1 ["circlePoints"]
       26 GETTABLEKS                       R3 R4 K5 ["z"]
       28 LOADB                            R4 1
       29 NAMECALL                         R1 R0 K3 ["AddPath"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["circlePoints"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K3 ["createElement"]
       21 LOADK                            R3 K4 ["WireframeHandleAdornment"]
       22 DUPTABLE                         R4 K12 [{"Adornee", "AlwaysOnTop", "ZIndex", "Transparency", "Color3", "CFrame", "ref"}]
       23 GETTABLEKS                       R5 R0 K13 ["adorneePart"]
       25 SETTABLEKS                       R5 R4 K5 ["Adornee"]
       27 LOADB                            R5 1
       28 SETTABLEKS                       R5 R4 K6 ["AlwaysOnTop"]
       30 LOADN                            R5 0
       31 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
       33 LOADN                            R5 0
       34 SETTABLEKS                       R5 R4 K8 ["Transparency"]
       36 GETTABLEKS                       R5 R0 K14 ["color"]
       38 SETTABLEKS                       R5 R4 K9 ["Color3"]
       40 GETTABLEKS                       R5 R0 K15 ["sphereCf"]
       42 SETTABLEKS                       R5 R4 K10 ["CFrame"]
       44 SETTABLEKS                       R1 R4 K11 ["ref"]
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
