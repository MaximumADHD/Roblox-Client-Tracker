PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["Text"], ["fontStyle"], ["tag"] = "auto-xy content-default"}]
        5 GETTABLEKS                       R4 R0 K6 ["controls"]
        7 GETTABLEKS                       R4 R4 K7 ["text"]
        9 SETTABLEKS                       R4 R3 K1 ["Text"]
       11 DUPTABLE                         R4 K9 [{"FontSize"}]
       12 GETTABLEKS                       R5 R0 K6 ["controls"]
       14 GETTABLEKS                       R5 R5 K10 ["textSize"]
       16 SETTABLEKS                       R5 R4 K8 ["FontSize"]
       18 SETTABLEKS                       R4 R3 K2 ["fontStyle"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R2 K0 ["State: "]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBinding"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Initialize"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K9 [{["Text"], ["fontStyle"], ["backgroundStyle"], ["tag"] = "col align-x-center align-y-center size-2800 content-default", ["onStateChanged"]}]
       16 DUPCLOSURE                       R9 K10 [PROTO_2]
       17 NAMECALL                         R7 R0 K11 ["map"]
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R6 K3 ["Text"]
       22 DUPTABLE                         R7 K14 [{["FontSize"] = 20}]
       23 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       25 GETTABLEKS                       R7 R2 K15 ["Color"]
       27 GETTABLEKS                       R7 R7 K16 ["Extended"]
       29 GETTABLEKS                       R7 R7 K17 ["Purple"]
       31 GETTABLEKS                       R7 R7 K18 ["Purple_500"]
       33 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       35 SETTABLEKS                       R3 R6 K8 ["onStateChanged"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["ControlState"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Providers"]
       32 GETTABLEKS                       R6 R6 K13 ["Style"]
       34 GETTABLEKS                       R6 R6 K14 ["useTokens"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K15 [PROTO_0]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 DUPCLOSURE                       R7 K16 [PROTO_3]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 DUPTABLE                         R8 K20 [{["summary"] = "Text", ["stories"], ["controls"]}]
       46 NEWTABLE                         R9 0 2
       48 DUPTABLE                         R10 K24 [{["name"] = "Basic Text", ["story"]}]
       49 SETTABLEKS                       R6 R10 K23 ["story"]
       51 DUPTABLE                         R11 K26 [{["name"] = "GUI State Use", ["story"]}]
       52 SETTABLEKS                       R7 R11 K23 ["story"]
       54 SETLIST                          R9 R10 2 [1]
       56 SETTABLEKS                       R9 R8 K18 ["stories"]
       58 DUPTABLE                         R9 K31 [{["text"] = "Hello, world!", ["textSize"] = 24}]
       59 SETTABLEKS                       R9 R8 K19 ["controls"]
       61 RETURN                           R8 1
