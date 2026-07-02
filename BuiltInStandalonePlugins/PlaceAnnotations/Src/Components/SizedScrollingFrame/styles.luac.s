MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-SizedScrollingFrame"]
       20 DUPTABLE                         R5 K18 [{["ScrollingDirection"], ["ScrollBarThickness"] = 4, ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       21 GETIMPORT                        R6 K21 [Enum.ScrollingDirection.Y]
       23 SETTABLEKS                       R6 R5 K11 ["ScrollingDirection"]
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R2
       28 LOADK                            R8 K22 ["PadScrollBar"]
       29 NEWTABLE                         R9 0 0
       31 NEWTABLE                         R10 0 1
       33 MOVE                             R11 R2
       34 LOADK                            R12 K23 ["::UIPadding"]
       35 DUPTABLE                         R13 K25 [{"PaddingRight"}]
       36 GETIMPORT                        R14 K28 [UDim.new]
       38 LOADN                            R15 0
       39 LOADN                            R16 4
       40 CALL                             R14 2 1
       41 SETTABLEKS                       R14 R13 K24 ["PaddingRight"]
       43 CALL                             R11 2 -1
       44 SETLIST                          R10 R11 -1 [1]
       46 CALL                             R7 3 -1
       47 SETLIST                          R6 R7 -1 [1]
       49 CALL                             R3 3 -1
       50 RETURN                           R3 -1
