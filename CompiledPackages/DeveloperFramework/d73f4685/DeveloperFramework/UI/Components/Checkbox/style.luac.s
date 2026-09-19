MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["Image"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 SETTABLEKS                       R3 R4 K13 ["Background"]
       36 DUPTABLE                         R5 K14 [{"Image"}]
       37 GETTABLEKS                       R6 R1 K15 ["CheckboxUncheckedImage"]
       39 SETTABLEKS                       R6 R5 K12 ["Image"]
       41 SETTABLEKS                       R5 R4 K16 ["BackgroundStyle"]
       43 GETTABLEKS                       R5 R2 K17 ["Selected"]
       45 DUPTABLE                         R6 K18 [{"BackgroundStyle"}]
       46 DUPTABLE                         R7 K14 [{"Image"}]
       47 GETTABLEKS                       R8 R1 K19 ["CheckboxCheckedImage"]
       49 SETTABLEKS                       R8 R7 K12 ["Image"]
       51 SETTABLEKS                       R7 R6 K16 ["BackgroundStyle"]
       53 SETTABLE                         R6 R4 R5
       54 GETTABLEKS                       R5 R2 K20 ["Indeterminate"]
       56 DUPTABLE                         R6 K18 [{"BackgroundStyle"}]
       57 DUPTABLE                         R7 K14 [{"Image"}]
       58 GETTABLEKS                       R8 R1 K21 ["CheckboxIndeterminateImage"]
       60 SETTABLEKS                       R8 R7 K12 ["Image"]
       62 SETTABLEKS                       R7 R6 K16 ["BackgroundStyle"]
       64 SETTABLE                         R6 R4 R5
       65 GETTABLEKS                       R5 R2 K22 ["Disabled"]
       67 DUPTABLE                         R6 K18 [{"BackgroundStyle"}]
       68 DUPTABLE                         R7 K14 [{"Image"}]
       69 GETTABLEKS                       R8 R1 K23 ["CheckboxDisabledImage"]
       71 SETTABLEKS                       R8 R7 K12 ["Image"]
       73 SETTABLEKS                       R7 R6 K16 ["BackgroundStyle"]
       75 SETTABLE                         R6 R4 R5
       76 GETIMPORT                        R5 K26 [UDim2.new]
       78 LOADN                            R6 0
       79 LOADN                            R7 16
       80 LOADN                            R8 0
       81 LOADN                            R9 16
       82 CALL                             R5 4 1
       83 SETTABLEKS                       R5 R4 K27 ["ImageSize"]
       85 LOADN                            R5 6
       86 SETTABLEKS                       R5 R4 K28 ["Spacing"]
       88 RETURN                           R4 1
