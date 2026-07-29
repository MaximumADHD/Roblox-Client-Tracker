PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["ImageLabel"]
       20 GETTABLEKS                       R6 R2 K11 ["TextButton"]
       22 MOVE                             R7 R4
       23 LOADK                            R8 K12 ["IconButton"]
       24 DUPTABLE                         R9 K18 [{["icon"] = "", ["disabled"] = False, ["onActivated"]}]
       25 DUPCLOSURE                       R10 K19 [PROTO_0]
       26 SETTABLEKS                       R10 R9 K17 ["onActivated"]
       28 NEWTABLE                         R10 0 1
       30 MOVE                             R11 R6
       31 NEWTABLE                         R12 4 1
       33 LOADK                            R14 K12 ["IconButton"]
       34 SETTABLEKS                       R14 R12 K20 ["Name"]
       36 MOVE                             R14 R3
       37 LOADK                            R15 K21 ["{ \"icon-button\", [\"state-disabled\"] = disabled }"]
       38 CALL                             R14 1 1
       39 SETTABLEKS                       R14 R12 K22 ["Tags"]
       41 MOVE                             R14 R3
       42 LOADK                            R15 K23 ["fn() if not disabled then onActivated() else nil"]
       43 CALL                             R14 1 1
       44 SETTABLEKS                       R14 R12 K24 ["OnActivated"]
       46 MOVE                             R14 R3
       47 LOADK                            R15 K25 ["api.childOrder"]
       48 CALL                             R14 1 1
       49 SETTABLEKS                       R14 R12 K26 ["LayoutOrder"]
       51 MOVE                             R13 R5
       52 DUPTABLE                         R14 K30 [{["Name"] = "IconButtonImage", ["Tags"] = "icon-button-image", ["Image"]}]
       53 MOVE                             R15 R3
       54 LOADK                            R16 K13 ["icon"]
       55 CALL                             R15 1 1
       56 SETTABLEKS                       R15 R14 K29 ["Image"]
       58 CALL                             R13 1 -1
       59 SETLIST                          R12 R13 -1 [1]
       61 CALL                             R11 1 -1
       62 SETLIST                          R10 R11 -1 [1]
       64 CALL                             R7 3 1
       65 RETURN                           R7 1
