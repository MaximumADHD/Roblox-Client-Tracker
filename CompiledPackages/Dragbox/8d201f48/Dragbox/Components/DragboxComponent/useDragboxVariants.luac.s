PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["VariantEnum"]
        5 GETTABLEKS                       R2 R2 K1 ["Standard"]
        7 DUPTABLE                         R3 K4 [{"container", "knob"}]
        8 DUPTABLE                         R4 K8 [{"tag", "backgroundStyle", "stroke"}]
        9 LOADK                            R5 K9 ["button"]
       10 SETTABLEKS                       R5 R4 K5 ["tag"]
       12 GETTABLEKS                       R5 R0 K10 ["Color"]
       14 GETTABLEKS                       R5 R5 K11 ["Shift"]
       16 GETTABLEKS                       R5 R5 K12 ["Shift_200"]
       18 SETTABLEKS                       R5 R4 K6 ["backgroundStyle"]
       20 DUPTABLE                         R5 K15 [{"style", "thickness"}]
       21 GETTABLEKS                       R6 R0 K10 ["Color"]
       23 GETTABLEKS                       R6 R6 K16 ["Stroke"]
       25 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       27 SETTABLEKS                       R6 R5 K13 ["style"]
       29 GETTABLEKS                       R6 R0 K16 ["Stroke"]
       31 GETTABLEKS                       R6 R6 K18 ["Thicker"]
       33 SETTABLEKS                       R6 R5 K14 ["thickness"]
       35 SETTABLEKS                       R5 R4 K7 ["stroke"]
       37 SETTABLEKS                       R4 R3 K2 ["container"]
       39 DUPTABLE                         R4 K21 [{"style", "dragStyle", "hasShadow"}]
       40 GETTABLEKS                       R5 R0 K10 ["Color"]
       42 GETTABLEKS                       R5 R5 K22 ["Content"]
       44 GETTABLEKS                       R5 R5 K23 ["Default"]
       46 SETTABLEKS                       R5 R4 K13 ["style"]
       48 GETTABLEKS                       R5 R0 K10 ["Color"]
       50 GETTABLEKS                       R5 R5 K22 ["Content"]
       52 GETTABLEKS                       R5 R5 K17 ["Emphasis"]
       54 SETTABLEKS                       R5 R4 K19 ["dragStyle"]
       56 LOADB                            R5 1
       57 SETTABLEKS                       R5 R4 K20 ["hasShadow"]
       59 SETTABLEKS                       R4 R3 K3 ["knob"]
       61 SETTABLE                         R3 R1 R2
       62 DUPTABLE                         R2 K25 [{"variants"}]
       63 SETTABLEKS                       R1 R2 K24 ["variants"]
       65 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K0 ["variants"]
        5 GETTABLE                         R3 R4 R1
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dragbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["DragboxComponent"]
       13 GETTABLEKS                       R2 R2 K8 ["DragboxTypes"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 DUPCLOSURE                       R3 K10 [PROTO_1]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
