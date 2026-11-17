PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["SelectedObjectGui"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 LOADNIL                          R1
        7 GETTABLEKS                       R2 R0 K0 ["SelectedObjectGui"]
        9 LOADK                            R4 K1 ["ScreenGui"]
       10 NAMECALL                         R2 R2 K2 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+18]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["createElement"]
       17 LOADK                            R3 K1 ["ScreenGui"]
       18 DUPTABLE                         R4 K6 [{"ZIndexBehavior", "DisplayOrder"}]
       19 GETTABLEKS                       R5 R0 K4 ["ZIndexBehavior"]
       21 SETTABLEKS                       R5 R4 K4 ["ZIndexBehavior"]
       23 GETTABLEKS                       R5 R0 K5 ["DisplayOrder"]
       25 SETTABLEKS                       R5 R4 K5 ["DisplayOrder"]
       27 GETTABLEKS                       R5 R0 K7 ["children"]
       29 CALL                             R2 3 1
       30 MOVE                             R1 R2
       31 RETURN                           R1 1
       32 GETTABLEKS                       R2 R0 K0 ["SelectedObjectGui"]
       34 LOADK                            R4 K8 ["SurfaceGui"]
       35 NAMECALL                         R2 R2 K2 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIFNOT                        R2 ; [+53]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K3 ["createElement"]
       42 LOADK                            R3 K8 ["SurfaceGui"]
       43 DUPTABLE                         R4 K16 [{["ZIndexBehavior"], ["AlwaysOnTop"] = True, ["Face"], ["SizingMode"], ["PixelsPerStud"], ["CanvasSize"], ["Adornee"]}]
       44 GETTABLEKS                       R5 R0 K4 ["ZIndexBehavior"]
       46 SETTABLEKS                       R5 R4 K4 ["ZIndexBehavior"]
       48 GETTABLEKS                       R5 R0 K0 ["SelectedObjectGui"]
       50 GETTABLEKS                       R5 R5 K11 ["Face"]
       52 SETTABLEKS                       R5 R4 K11 ["Face"]
       54 GETTABLEKS                       R5 R0 K0 ["SelectedObjectGui"]
       56 GETTABLEKS                       R5 R5 K12 ["SizingMode"]
       58 SETTABLEKS                       R5 R4 K12 ["SizingMode"]
       60 GETTABLEKS                       R5 R0 K0 ["SelectedObjectGui"]
       62 GETTABLEKS                       R5 R5 K13 ["PixelsPerStud"]
       64 SETTABLEKS                       R5 R4 K13 ["PixelsPerStud"]
       66 GETTABLEKS                       R5 R0 K0 ["SelectedObjectGui"]
       68 GETTABLEKS                       R5 R5 K14 ["CanvasSize"]
       70 SETTABLEKS                       R5 R4 K14 ["CanvasSize"]
       72 GETTABLEKS                       R6 R0 K0 ["SelectedObjectGui"]
       74 GETTABLEKS                       R6 R6 K15 ["Adornee"]
       76 JUMPIFNOT                        R6 ; [+5]
       77 GETTABLEKS                       R5 R0 K0 ["SelectedObjectGui"]
       79 GETTABLEKS                       R5 R5 K15 ["Adornee"]
       81 JUMP                             ; [+4]
       82 GETTABLEKS                       R5 R0 K0 ["SelectedObjectGui"]
       84 GETTABLEKS                       R5 R5 K17 ["Parent"]
       86 SETTABLEKS                       R5 R4 K15 ["Adornee"]
       88 GETTABLEKS                       R5 R0 K7 ["children"]
       90 CALL                             R2 3 1
       91 MOVE                             R1 R2
       92 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"SelectedObjectGui"}]
        1 GETTABLEKS                       R3 R0 K2 ["PathReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["SelectedObjectGui"]
        5 SETTABLEKS                       R3 R2 K0 ["SelectedObjectGui"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 GETTABLEKS                       R4 R2 K9 ["connect"]
       27 DUPCLOSURE                       R5 K10 [PROTO_1]
       28 CALL                             R4 1 1
       29 MOVE                             R5 R3
       30 CALL                             R4 1 -1
       31 RETURN                           R4 -1
