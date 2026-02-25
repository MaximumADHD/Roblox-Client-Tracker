MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-SizedScrollingFrame"]
       20 DUPTABLE                         R5 K15 [{"ScrollingDirection", "ScrollBarThickness", "BorderSizePixel", "BackgroundTransparency"}]
       21 GETIMPORT                        R6 K18 [Enum.ScrollingDirection.Y]
       23 SETTABLEKS                       R6 R5 K11 ["ScrollingDirection"]
       25 LOADN                            R6 4
       26 SETTABLEKS                       R6 R5 K12 ["ScrollBarThickness"]
       28 LOADN                            R6 0
       29 SETTABLEKS                       R6 R5 K13 ["BorderSizePixel"]
       31 LOADN                            R6 1
       32 SETTABLEKS                       R6 R5 K14 ["BackgroundTransparency"]
       34 NEWTABLE                         R6 0 1
       36 MOVE                             R7 R2
       37 LOADK                            R8 K19 ["PadScrollBar"]
       38 NEWTABLE                         R9 0 0
       40 NEWTABLE                         R10 0 1
       42 MOVE                             R11 R2
       43 LOADK                            R12 K20 ["::UIPadding"]
       44 DUPTABLE                         R13 K22 [{"PaddingRight"}]
       45 GETIMPORT                        R14 K25 [UDim.new]
       47 LOADN                            R15 0
       48 LOADN                            R16 4
       49 CALL                             R14 2 1
       50 SETTABLEKS                       R14 R13 K21 ["PaddingRight"]
       52 CALL                             R11 2 -1
       53 SETLIST                          R10 R11 -1 [1]
       55 CALL                             R7 3 -1
       56 SETLIST                          R6 R7 -1 [1]
       58 CALL                             R3 3 -1
       59 RETURN                           R3 -1
