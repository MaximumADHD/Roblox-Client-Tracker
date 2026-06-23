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
       24 DUPTABLE                         R9 K16 [{"icon", "disabled", "onActivated"}]
       25 LOADK                            R10 K17 [""]
       26 SETTABLEKS                       R10 R9 K13 ["icon"]
       28 LOADB                            R10 0
       29 SETTABLEKS                       R10 R9 K14 ["disabled"]
       31 DUPCLOSURE                       R10 K18 [PROTO_0]
       32 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       34 NEWTABLE                         R10 0 1
       36 MOVE                             R11 R6
       37 NEWTABLE                         R12 4 1
       39 LOADK                            R14 K12 ["IconButton"]
       40 SETTABLEKS                       R14 R12 K19 ["Name"]
       42 MOVE                             R14 R3
       43 LOADK                            R15 K20 ["{ \"icon-button\", [\"state-disabled\"] = disabled }"]
       44 CALL                             R14 1 1
       45 SETTABLEKS                       R14 R12 K21 ["Tags"]
       47 MOVE                             R14 R3
       48 LOADK                            R15 K22 ["fn() if not disabled then onActivated() else nil"]
       49 CALL                             R14 1 1
       50 SETTABLEKS                       R14 R12 K23 ["OnActivated"]
       52 MOVE                             R14 R3
       53 LOADK                            R15 K24 ["api.childOrder"]
       54 CALL                             R14 1 1
       55 SETTABLEKS                       R14 R12 K25 ["LayoutOrder"]
       57 MOVE                             R13 R5
       58 DUPTABLE                         R14 K27 [{"Name", "Tags", "Image"}]
       59 LOADK                            R15 K28 ["IconButtonImage"]
       60 SETTABLEKS                       R15 R14 K19 ["Name"]
       62 LOADK                            R15 K29 ["icon-button-image"]
       63 SETTABLEKS                       R15 R14 K21 ["Tags"]
       65 MOVE                             R15 R3
       66 LOADK                            R16 K13 ["icon"]
       67 CALL                             R15 1 1
       68 SETTABLEKS                       R15 R14 K26 ["Image"]
       70 CALL                             R13 1 -1
       71 SETLIST                          R12 R13 -1 [1]
       73 CALL                             R11 1 -1
       74 SETLIST                          R10 R11 -1 [1]
       76 CALL                             R7 3 1
       77 RETURN                           R7 1
