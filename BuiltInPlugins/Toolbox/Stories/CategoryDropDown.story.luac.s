PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"CategoryDropDown"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"OnCategorySelect", "Categories"}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["OnCategorySelect"]
       15 GETUPVAL                         R7 4
       16 SETTABLEKS                       R7 R6 K4 ["Categories"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["CategoryDropDown"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R7 R0 K8 ["Src"]
       18 GETTABLEKS                       R6 R7 K9 ["Components"]
       20 GETTABLEKS                       R5 R6 K10 ["CategoryDropDown"]
       22 GETTABLEKS                       R4 R5 K10 ["CategoryDropDown"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Stories"]
       29 GETTABLEKS                       R5 R6 K12 ["ToolboxStoryWrapper"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 0 24
       34 LOADK                            R6 K13 ["rock"]
       35 LOADK                            R7 K14 ["pop"]
       36 LOADK                            R8 K15 ["scores-orchestral"]
       37 LOADK                            R9 K16 ["children"]
       38 LOADK                            R10 K17 ["ethnic-folk"]
       39 LOADK                            R11 K18 ["kitsch-retro"]
       40 LOADK                            R12 K19 ["electronic"]
       41 LOADK                            R13 K20 ["latin"]
       42 LOADK                            R14 K21 ["classical"]
       43 LOADK                            R15 K22 ["jazz"]
       44 LOADK                            R16 K23 ["corporate"]
       45 LOADK                            R17 K24 ["blues"]
       46 LOADK                            R18 K25 ["atmosphere"]
       47 LOADK                            R19 K26 ["easy-listening"]
       48 LOADK                            R20 K27 ["religious"]
       49 LOADK                            R21 K28 ["world-beat"]
       50 SETLIST                          R5 R6 16 [1]
       52 LOADK                            R6 K29 ["hip-hop"]
       53 LOADK                            R7 K30 ["folk-contemporary"]
       54 LOADK                            R8 K31 ["dance-traditional"]
       55 LOADK                            R9 K32 ["funk-soul-r-b"]
       56 LOADK                            R10 K33 ["ethnic-pop"]
       57 LOADK                            R11 K34 ["country"]
       58 LOADK                            R12 K35 ["marches-military"]
       59 LOADK                            R13 K36 ["electronica"]
       60 SETLIST                          R5 R6 8 [17]
       62 DUPCLOSURE                       R6 K37 [PROTO_0]
       63 DUPTABLE                         R7 K40 [{"name", "story"}]
       64 LOADK                            R8 K41 ["Category drop down"]
       65 SETTABLEKS                       R8 R7 K38 ["name"]
       67 DUPCLOSURE                       R8 K42 [PROTO_1]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R8 R7 K39 ["story"]
       75 RETURN                           R7 1
