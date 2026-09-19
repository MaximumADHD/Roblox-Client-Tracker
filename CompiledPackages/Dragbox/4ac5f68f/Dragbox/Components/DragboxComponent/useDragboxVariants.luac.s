PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["VariantEnum"]
        5 GETTABLEKS                       R2 R2 K1 ["Standard"]
        7 DUPTABLE                         R3 K4 [{"container", "knob"}]
        8 DUPTABLE                         R4 K9 [{["tag"] = "button", ["backgroundStyle"], ["stroke"]}]
        9 GETTABLEKS                       R5 R0 K10 ["Color"]
       11 GETTABLEKS                       R5 R5 K11 ["Shift"]
       13 GETTABLEKS                       R5 R5 K12 ["Shift_200"]
       15 SETTABLEKS                       R5 R4 K7 ["backgroundStyle"]
       17 DUPTABLE                         R5 K15 [{"style", "thickness"}]
       18 GETTABLEKS                       R6 R0 K10 ["Color"]
       20 GETTABLEKS                       R6 R6 K16 ["Stroke"]
       22 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       24 SETTABLEKS                       R6 R5 K13 ["style"]
       26 GETTABLEKS                       R6 R0 K16 ["Stroke"]
       28 GETTABLEKS                       R6 R6 K18 ["Thicker"]
       30 SETTABLEKS                       R6 R5 K14 ["thickness"]
       32 SETTABLEKS                       R5 R4 K8 ["stroke"]
       34 SETTABLEKS                       R4 R3 K2 ["container"]
       36 DUPTABLE                         R4 K22 [{["style"], ["dragStyle"], ["hasShadow"] = True}]
       37 GETTABLEKS                       R5 R0 K10 ["Color"]
       39 GETTABLEKS                       R5 R5 K23 ["Content"]
       41 GETTABLEKS                       R5 R5 K24 ["Default"]
       43 SETTABLEKS                       R5 R4 K13 ["style"]
       45 GETTABLEKS                       R5 R0 K10 ["Color"]
       47 GETTABLEKS                       R5 R5 K23 ["Content"]
       49 GETTABLEKS                       R5 R5 K17 ["Emphasis"]
       51 SETTABLEKS                       R5 R4 K19 ["dragStyle"]
       53 SETTABLEKS                       R4 R3 K3 ["knob"]
       55 SETTABLE                         R3 R1 R2
       56 DUPTABLE                         R2 K26 [{"variants"}]
       57 SETTABLEKS                       R1 R2 K25 ["variants"]
       59 RETURN                           R2 1

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
