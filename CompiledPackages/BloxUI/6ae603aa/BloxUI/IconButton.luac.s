PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["ImageLabel"]
       18 GETTABLEKS                       R5 R1 K10 ["TextButton"]
       20 MOVE                             R6 R3
       21 LOADK                            R7 K11 ["IconButton"]
       22 DUPTABLE                         R8 K15 [{"icon", "disabled", "onActivated"}]
       23 LOADK                            R9 K16 [""]
       24 SETTABLEKS                       R9 R8 K12 ["icon"]
       26 LOADB                            R9 0
       27 SETTABLEKS                       R9 R8 K13 ["disabled"]
       29 DUPCLOSURE                       R9 K17 [PROTO_0]
       30 SETTABLEKS                       R9 R8 K14 ["onActivated"]
       32 NEWTABLE                         R9 0 1
       34 MOVE                             R10 R5
       35 NEWTABLE                         R11 4 1
       37 LOADK                            R13 K11 ["IconButton"]
       38 SETTABLEKS                       R13 R11 K18 ["Name"]
       40 MOVE                             R13 R2
       41 LOADK                            R14 K19 ["{ \"icon-button\", [\"state-disabled\"] = disabled }"]
       42 CALL                             R13 1 1
       43 SETTABLEKS                       R13 R11 K20 ["Tags"]
       45 MOVE                             R13 R2
       46 LOADK                            R14 K21 ["fn() if not disabled then onActivated() else nil"]
       47 CALL                             R13 1 1
       48 SETTABLEKS                       R13 R11 K22 ["OnActivated"]
       50 MOVE                             R13 R2
       51 LOADK                            R14 K23 ["api.childOrder"]
       52 CALL                             R13 1 1
       53 SETTABLEKS                       R13 R11 K24 ["LayoutOrder"]
       55 MOVE                             R12 R4
       56 DUPTABLE                         R13 K26 [{"Name", "Tags", "Image"}]
       57 LOADK                            R14 K27 ["IconButtonImage"]
       58 SETTABLEKS                       R14 R13 K18 ["Name"]
       60 LOADK                            R14 K28 ["icon-button-image"]
       61 SETTABLEKS                       R14 R13 K20 ["Tags"]
       63 MOVE                             R14 R2
       64 LOADK                            R15 K12 ["icon"]
       65 CALL                             R14 1 1
       66 SETTABLEKS                       R14 R13 K25 ["Image"]
       68 CALL                             R12 1 -1
       69 SETLIST                          R11 R12 -1 [1]
       71 CALL                             R10 1 -1
       72 SETLIST                          R9 R10 -1 [1]
       74 CALL                             R6 3 1
       75 RETURN                           R6 1
