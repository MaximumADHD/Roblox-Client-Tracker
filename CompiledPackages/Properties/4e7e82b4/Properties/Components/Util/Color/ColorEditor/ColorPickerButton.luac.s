PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K2 [{"LayoutOrder", "onActivated"}]
        5 GETTABLEKS                       R5 R0 K3 ["layoutOrder"]
        7 SETTABLEKS                       R5 R4 K0 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R0 K1 ["onActivated"]
       11 SETTABLEKS                       R5 R4 K1 ["onActivated"]
       13 DUPTABLE                         R5 K5 [{"ColorSwatch"}]
       14 GETUPVAL                         R6 1
       15 GETUPVAL                         R7 3
       16 DUPTABLE                         R8 K8 [{"tag", "backgroundStyle"}]
       17 LOADK                            R9 K9 ["size-300-300 anchor-center-center position-center-center radius-xsmall"]
       18 SETTABLEKS                       R9 R8 K6 ["tag"]
       20 DUPTABLE                         R9 K11 [{"Color3"}]
       21 GETTABLEKS                       R10 R0 K12 ["swatchColor"]
       23 SETTABLEKS                       R10 R9 K10 ["Color3"]
       25 SETTABLEKS                       R9 R8 K7 ["backgroundStyle"]
       27 DUPTABLE                         R9 K14 [{"Border"}]
       28 GETUPVAL                         R10 1
       29 LOADK                            R11 K15 ["UIStroke"]
       30 DUPTABLE                         R12 K21 [{"BorderStrokePosition", "Color", "LineJoinMode", "Thickness", "Transparency"}]
       31 GETIMPORT                        R13 K24 [Enum.BorderStrokePosition.Inner]
       33 SETTABLEKS                       R13 R12 K16 ["BorderStrokePosition"]
       35 GETTABLEKS                       R13 R1 K17 ["Color"]
       37 GETTABLEKS                       R13 R13 K25 ["Stroke"]
       39 GETTABLEKS                       R13 R13 K26 ["Default"]
       41 GETTABLEKS                       R13 R13 K10 ["Color3"]
       43 SETTABLEKS                       R13 R12 K17 ["Color"]
       45 GETIMPORT                        R13 K28 [Enum.LineJoinMode.Round]
       47 SETTABLEKS                       R13 R12 K18 ["LineJoinMode"]
       49 LOADN                            R13 1
       50 SETTABLEKS                       R13 R12 K19 ["Thickness"]
       52 GETTABLEKS                       R13 R1 K17 ["Color"]
       54 GETTABLEKS                       R13 R13 K25 ["Stroke"]
       56 GETTABLEKS                       R13 R13 K26 ["Default"]
       58 GETTABLEKS                       R13 R13 K20 ["Transparency"]
       60 SETTABLEKS                       R13 R12 K20 ["Transparency"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K13 ["Border"]
       65 CALL                             R6 3 1
       66 SETTABLEKS                       R6 R5 K4 ["ColorSwatch"]
       68 CALL                             R2 3 -1
       69 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["PopoverButton"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["createElement"]
       32 GETTABLEKS                       R5 R1 K13 ["View"]
       34 GETTABLEKS                       R6 R1 K14 ["Hooks"]
       36 GETTABLEKS                       R6 R6 K15 ["useTokens"]
       38 DUPCLOSURE                       R7 K16 [PROTO_0]
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 RETURN                           R7 1
