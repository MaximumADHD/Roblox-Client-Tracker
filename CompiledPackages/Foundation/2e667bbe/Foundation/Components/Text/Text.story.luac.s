PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"Text", "fontStyle", "tag"}]
        5 GETTABLEKS                       R5 R0 K5 ["controls"]
        7 GETTABLEKS                       R4 R5 K6 ["text"]
        9 SETTABLEKS                       R4 R3 K1 ["Text"]
       11 DUPTABLE                         R4 K8 [{"FontSize"}]
       12 GETTABLEKS                       R6 R0 K5 ["controls"]
       14 GETTABLEKS                       R5 R6 K9 ["textSize"]
       16 SETTABLEKS                       R5 R4 K7 ["FontSize"]
       18 SETTABLEKS                       R4 R3 K2 ["fontStyle"]
       20 LOADK                            R4 K10 ["auto-xy content-default"]
       21 SETTABLEKS                       R4 R3 K3 ["tag"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useBinding"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Initialize"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K8 [{"Text", "fontStyle", "backgroundStyle", "tag", "onStateChanged"}]
       16 DUPCLOSURE                       R9 K9 [PROTO_2]
       17 NAMECALL                         R7 R0 K10 ["map"]
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R6 K3 ["Text"]
       22 DUPTABLE                         R7 K12 [{"FontSize"}]
       23 LOADN                            R8 20
       24 SETTABLEKS                       R8 R7 K11 ["FontSize"]
       26 SETTABLEKS                       R7 R6 K4 ["fontStyle"]
       28 GETTABLEKS                       R10 R2 K13 ["Color"]
       30 GETTABLEKS                       R9 R10 K14 ["Extended"]
       32 GETTABLEKS                       R8 R9 K15 ["Purple"]
       34 GETTABLEKS                       R7 R8 K16 ["Purple_500"]
       36 SETTABLEKS                       R7 R6 K5 ["backgroundStyle"]
       38 LOADK                            R7 K17 ["col align-x-center align-y-center size-2800 content-default"]
       39 SETTABLEKS                       R7 R6 K6 ["tag"]
       41 SETTABLEKS                       R3 R6 K7 ["onStateChanged"]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Text"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R7 K11 ["Style"]
       27 GETTABLEKS                       R5 R6 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Enums"]
       34 GETTABLEKS                       R6 R7 K14 ["ControlState"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K15 [PROTO_0]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 DUPCLOSURE                       R7 K16 [PROTO_3]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 DUPTABLE                         R8 K20 [{"summary", "stories", "controls"}]
       46 LOADK                            R9 K9 ["Text"]
       47 SETTABLEKS                       R9 R8 K17 ["summary"]
       49 NEWTABLE                         R9 0 2
       51 DUPTABLE                         R10 K23 [{"name", "story"}]
       52 LOADK                            R11 K24 ["Basic Text"]
       53 SETTABLEKS                       R11 R10 K21 ["name"]
       55 SETTABLEKS                       R6 R10 K22 ["story"]
       57 DUPTABLE                         R11 K23 [{"name", "story"}]
       58 LOADK                            R12 K25 ["GUI State Use"]
       59 SETTABLEKS                       R12 R11 K21 ["name"]
       61 SETTABLEKS                       R7 R11 K22 ["story"]
       63 SETLIST                          R9 R10 2 [1]
       65 SETTABLEKS                       R9 R8 K18 ["stories"]
       67 DUPTABLE                         R9 K28 [{"text", "textSize"}]
       68 LOADK                            R10 K29 ["Hello, world!"]
       69 SETTABLEKS                       R10 R9 K26 ["text"]
       71 LOADN                            R10 24
       72 SETTABLEKS                       R10 R9 K27 ["textSize"]
       74 SETTABLEKS                       R9 R8 K19 ["controls"]
       76 RETURN                           R8 1
