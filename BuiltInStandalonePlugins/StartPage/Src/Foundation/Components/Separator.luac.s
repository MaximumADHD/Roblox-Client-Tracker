PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 LOADK                            R3 K1 ["Frame"]
        6 DUPTABLE                         R4 K7 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
        7 GETTABLEKS                       R6 R0 K8 ["isVertical"]
        9 JUMPIFNOT                        R6 ; [+8]
       10 GETIMPORT                        R5 K11 [UDim2.new]
       12 LOADN                            R6 0
       13 LOADN                            R7 1
       14 LOADN                            R8 1
       15 LOADN                            R9 0
       16 CALL                             R5 4 1
       17 JUMP                             ; [+7]
       18 GETIMPORT                        R5 K11 [UDim2.new]
       20 LOADN                            R6 1
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 LOADN                            R9 1
       24 CALL                             R5 4 1
       25 SETTABLEKS                       R5 R4 K2 ["Size"]
       27 GETTABLEKS                       R5 R1 K12 ["Color"]
       29 GETTABLEKS                       R5 R5 K13 ["Stroke"]
       31 GETTABLEKS                       R5 R5 K14 ["Default"]
       33 GETTABLEKS                       R5 R5 K15 ["Color3"]
       35 SETTABLEKS                       R5 R4 K3 ["BackgroundColor3"]
       37 GETTABLEKS                       R5 R1 K12 ["Color"]
       39 GETTABLEKS                       R5 R5 K13 ["Stroke"]
       41 GETTABLEKS                       R5 R5 K14 ["Default"]
       43 GETTABLEKS                       R5 R5 K16 ["Transparency"]
       45 SETTABLEKS                       R5 R4 K4 ["BackgroundTransparency"]
       47 LOADN                            R5 0
       48 SETTABLEKS                       R5 R4 K5 ["BorderSizePixel"]
       50 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       52 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Hooks"]
       25 GETTABLEKS                       R3 R3 K12 ["useTokens"]
       27 DUPCLOSURE                       R4 K13 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 GETTABLEKS                       R5 R1 K14 ["memo"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 -1
       34 RETURN                           R5 -1
