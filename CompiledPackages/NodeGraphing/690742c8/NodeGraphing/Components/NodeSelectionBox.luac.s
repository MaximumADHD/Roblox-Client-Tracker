PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionStart"]
        3 JUMPIFNOT                        R0 ; [+68]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["selectionEnd"]
        7 JUMPIFNOT                        R0 ; [+64]
        8 GETIMPORT                        R0 K4 [Rect.new]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["selectionStart"]
       13 GETTABLEKS                       R2 R2 K5 ["X"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K1 ["selectionEnd"]
       18 GETTABLEKS                       R3 R3 K5 ["X"]
       20 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       22 GETIMPORT                        R1 K8 [math.min]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["selectionStart"]
       28 GETTABLEKS                       R3 R3 K9 ["Y"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K1 ["selectionEnd"]
       33 GETTABLEKS                       R4 R4 K9 ["Y"]
       35 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       37 GETIMPORT                        R2 K8 [math.min]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K0 ["selectionStart"]
       43 GETTABLEKS                       R4 R4 K5 ["X"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K1 ["selectionEnd"]
       48 GETTABLEKS                       R5 R5 K5 ["X"]
       50 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       52 GETIMPORT                        R3 K11 [math.max]
       54 CALL                             R3 2 1
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K0 ["selectionStart"]
       58 GETTABLEKS                       R5 R5 K9 ["Y"]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K1 ["selectionEnd"]
       63 GETTABLEKS                       R6 R6 K9 ["Y"]
       65 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       67 GETIMPORT                        R4 K11 [math.max]
       69 CALL                             R4 2 1
       70 CALL                             R0 4 -1
       71 RETURN                           R0 -1
       72 GETIMPORT                        R0 K4 [Rect.new]
       74 LOADN                            R1 0
       75 LOADN                            R2 0
       76 LOADN                            R3 0
       77 LOADN                            R4 0
       78 CALL                             R0 4 -1
       79 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionStart"]
        3 JUMPIFNOT                        R0 ; [+39]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["selectionEnd"]
        7 JUMPIFNOT                        R0 ; [+35]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["createElement"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["Panel"]
       14 DUPTABLE                         R2 K12 [{["Rect"], ["BackgroundColor3"], ["BorderColor3"], ["BackgroundTransparency"] = 0.8, ["BorderThickness"] = 1, ["ZIndex"]}]
       15 GETUPVAL                         R3 3
       16 SETTABLEKS                       R3 R2 K4 ["Rect"]
       18 GETIMPORT                        R3 K15 [Color3.fromRGB]
       20 LOADN                            R4 0
       21 LOADN                            R5 162
       22 LOADN                            R6 255
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K5 ["BackgroundColor3"]
       26 GETIMPORT                        R3 K15 [Color3.fromRGB]
       28 LOADN                            R4 0
       29 LOADN                            R5 162
       30 LOADN                            R6 255
       31 CALL                             R3 3 1
       32 SETTABLEKS                       R3 R2 K6 ["BorderColor3"]
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K11 ["ZIndex"]
       37 ORK                              R4 R5 K10 [1]
       38 ADDK                             R3 R4 K16 [90]
       39 SETTABLEKS                       R3 R2 K11 ["ZIndex"]
       41 CALL                             R0 2 -1
       42 RETURN                           R0 -1
       43 LOADNIL                          R0
       44 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 2
       14 GETTABLEKS                       R5 R1 K3 ["selectionStart"]
       16 GETTABLEKS                       R6 R1 K4 ["selectionEnd"]
       18 SETLIST                          R4 R5 2 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R5 0 2
       32 MOVE                             R6 R2
       33 GETTABLEKS                       R7 R0 K5 ["ZIndex"]
       35 SETLIST                          R5 R6 2 [1]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K6 ["createElement"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K7 ["Fragment"]
       44 NEWTABLE                         R6 0 0
       46 DUPTABLE                         R7 K9 [{"Box"}]
       47 SETTABLEKS                       R3 R7 K8 ["Box"]
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Graphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeSelectionBoxDragContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
