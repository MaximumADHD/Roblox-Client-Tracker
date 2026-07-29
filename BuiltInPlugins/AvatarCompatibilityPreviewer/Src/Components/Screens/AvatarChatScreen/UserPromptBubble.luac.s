PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["tag"] = "row align-x-right size-full-0 auto-y", ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
        9 DUPTABLE                         R4 K6 [{"Bubble"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K9 [{["tag"] = "col auto-xy padding-medium radius-large bg-shift-300", ["sizeConstraint"]}]
       15 DUPTABLE                         R8 K11 [{"MaxSize"}]
       16 GETIMPORT                        R9 K14 [Vector2.new]
       18 LOADN                            R10 280
       19 LOADK                            R11 K15 [∞]
       20 CALL                             R9 2 1
       21 SETTABLEKS                       R9 R8 K10 ["MaxSize"]
       23 SETTABLEKS                       R8 R7 K8 ["sizeConstraint"]
       25 DUPTABLE                         R8 K17 [{"Prompt"}]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K0 ["createElement"]
       29 GETUPVAL                         R10 2
       30 DUPTABLE                         R11 K20 [{["Text"], ["tag"] = "auto-xy text-body-medium text-wrap text-align-x-left content-default"}]
       31 GETTABLEKS                       R12 R0 K21 ["promptText"]
       33 SETTABLEKS                       R12 R11 K18 ["Text"]
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K16 ["Prompt"]
       38 CALL                             R5 3 1
       39 SETTABLEKS                       R5 R4 K5 ["Bubble"]
       41 CALL                             R1 3 -1
       42 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Text"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 RETURN                           R5 1
