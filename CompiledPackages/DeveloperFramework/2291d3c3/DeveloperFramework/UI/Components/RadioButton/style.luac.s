MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R6 K11 ["Components"]
       29 GETTABLEKS                       R4 R5 K12 ["Image"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K16 [{"Padding", "ImageSize", "BackgroundStyle"}]
       33 LOADN                            R5 6
       34 SETTABLEKS                       R5 R4 K13 ["Padding"]
       36 GETIMPORT                        R5 K19 [UDim2.new]
       38 LOADN                            R6 0
       39 LOADN                            R7 20
       40 LOADN                            R8 0
       41 LOADN                            R9 20
       42 CALL                             R5 4 1
       43 SETTABLEKS                       R5 R4 K14 ["ImageSize"]
       45 NEWTABLE                         R5 8 0
       47 SETTABLEKS                       R3 R5 K20 ["Background"]
       49 DUPTABLE                         R6 K21 [{"Image"}]
       50 GETTABLEKS                       R7 R1 K22 ["RadioOffImage"]
       52 SETTABLEKS                       R7 R6 K12 ["Image"]
       54 SETTABLEKS                       R6 R5 K15 ["BackgroundStyle"]
       56 GETTABLEKS                       R6 R2 K23 ["Selected"]
       58 DUPTABLE                         R7 K24 [{"BackgroundStyle"}]
       59 DUPTABLE                         R8 K21 [{"Image"}]
       60 GETTABLEKS                       R9 R1 K25 ["RadioOnImage"]
       62 SETTABLEKS                       R9 R8 K12 ["Image"]
       64 SETTABLEKS                       R8 R7 K15 ["BackgroundStyle"]
       66 SETTABLE                         R7 R5 R6
       67 GETTABLEKS                       R6 R2 K26 ["Disabled"]
       69 DUPTABLE                         R7 K24 [{"BackgroundStyle"}]
       70 DUPTABLE                         R8 K21 [{"Image"}]
       71 GETTABLEKS                       R9 R1 K22 ["RadioOffImage"]
       73 SETTABLEKS                       R9 R8 K12 ["Image"]
       75 SETTABLEKS                       R8 R7 K15 ["BackgroundStyle"]
       77 SETTABLE                         R7 R5 R6
       78 GETTABLEKS                       R6 R2 K27 ["Indeterminate"]
       80 DUPTABLE                         R7 K24 [{"BackgroundStyle"}]
       81 DUPTABLE                         R8 K21 [{"Image"}]
       82 GETTABLEKS                       R9 R1 K22 ["RadioOffImage"]
       84 SETTABLEKS                       R9 R8 K12 ["Image"]
       86 SETTABLEKS                       R8 R7 K15 ["BackgroundStyle"]
       88 SETTABLE                         R7 R5 R6
       89 SETTABLEKS                       R5 R4 K15 ["BackgroundStyle"]
       91 RETURN                           R4 1
