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
       32 DUPTABLE                         R4 K17 [{["Padding"] = 6, ["ImageSize"], ["BackgroundStyle"]}]
       33 GETIMPORT                        R5 K20 [UDim2.new]
       35 LOADN                            R6 0
       36 LOADN                            R7 20
       37 LOADN                            R8 0
       38 LOADN                            R9 20
       39 CALL                             R5 4 1
       40 SETTABLEKS                       R5 R4 K15 ["ImageSize"]
       42 NEWTABLE                         R5 8 0
       44 SETTABLEKS                       R3 R5 K21 ["Background"]
       46 DUPTABLE                         R6 K22 [{"Image"}]
       47 GETTABLEKS                       R7 R1 K23 ["RadioOffImage"]
       49 SETTABLEKS                       R7 R6 K12 ["Image"]
       51 SETTABLEKS                       R6 R5 K16 ["BackgroundStyle"]
       53 GETTABLEKS                       R6 R2 K24 ["Selected"]
       55 DUPTABLE                         R7 K25 [{"BackgroundStyle"}]
       56 DUPTABLE                         R8 K22 [{"Image"}]
       57 GETTABLEKS                       R9 R1 K26 ["RadioOnImage"]
       59 SETTABLEKS                       R9 R8 K12 ["Image"]
       61 SETTABLEKS                       R8 R7 K16 ["BackgroundStyle"]
       63 SETTABLE                         R7 R5 R6
       64 GETTABLEKS                       R6 R2 K27 ["Disabled"]
       66 DUPTABLE                         R7 K25 [{"BackgroundStyle"}]
       67 DUPTABLE                         R8 K22 [{"Image"}]
       68 GETTABLEKS                       R9 R1 K23 ["RadioOffImage"]
       70 SETTABLEKS                       R9 R8 K12 ["Image"]
       72 SETTABLEKS                       R8 R7 K16 ["BackgroundStyle"]
       74 SETTABLE                         R7 R5 R6
       75 GETTABLEKS                       R6 R2 K28 ["Indeterminate"]
       77 DUPTABLE                         R7 K25 [{"BackgroundStyle"}]
       78 DUPTABLE                         R8 K22 [{"Image"}]
       79 GETTABLEKS                       R9 R1 K23 ["RadioOffImage"]
       81 SETTABLEKS                       R9 R8 K12 ["Image"]
       83 SETTABLEKS                       R8 R7 K16 ["BackgroundStyle"]
       85 SETTABLE                         R7 R5 R6
       86 SETTABLEKS                       R5 R4 K16 ["BackgroundStyle"]
       88 RETURN                           R4 1
