PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["layer"]
        3 GETTABLE                         R1 R2 R3
        4 GETTABLEKS                       R3 R0 K1 ["zIndex"]
        6 GETTABLEKS                       R4 R1 K2 ["start"]
        8 SUB                              R2 R3 R4
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["ElevationLayer"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 GETTABLEKS                       R3 R1 K8 ["Popover"]
       18 DUPTABLE                         R4 K12 [{"start", "finish", "step"}]
       19 LOADN                            R5 4
       20 SETTABLEKS                       R5 R4 K9 ["start"]
       22 LOADN                            R5 99
       23 SETTABLEKS                       R5 R4 K10 ["finish"]
       25 LOADN                            R5 1
       26 SETTABLEKS                       R5 R4 K11 ["step"]
       28 SETTABLE                         R4 R2 R3
       29 GETTABLEKS                       R3 R1 K13 ["Drawer"]
       31 DUPTABLE                         R4 K12 [{"start", "finish", "step"}]
       32 LOADN                            R5 100
       33 SETTABLEKS                       R5 R4 K9 ["start"]
       35 LOADN                            R5 199
       36 SETTABLEKS                       R5 R4 K10 ["finish"]
       38 LOADN                            R5 10
       39 SETTABLEKS                       R5 R4 K11 ["step"]
       41 SETTABLE                         R4 R2 R3
       42 GETTABLEKS                       R3 R1 K14 ["Sheet"]
       44 DUPTABLE                         R4 K12 [{"start", "finish", "step"}]
       45 LOADN                            R5 200
       46 SETTABLEKS                       R5 R4 K9 ["start"]
       48 LOADN                            R5 43
       49 SETTABLEKS                       R5 R4 K10 ["finish"]
       51 LOADN                            R5 10
       52 SETTABLEKS                       R5 R4 K11 ["step"]
       54 SETTABLE                         R4 R2 R3
       55 GETTABLEKS                       R3 R1 K15 ["Dialog"]
       57 DUPTABLE                         R4 K12 [{"start", "finish", "step"}]
       58 LOADN                            R5 44
       59 SETTABLEKS                       R5 R4 K9 ["start"]
       61 LOADN                            R5 143
       62 SETTABLEKS                       R5 R4 K10 ["finish"]
       64 LOADN                            R5 10
       65 SETTABLEKS                       R5 R4 K11 ["step"]
       67 SETTABLE                         R4 R2 R3
       68 GETTABLEKS                       R3 R1 K16 ["Notification"]
       70 DUPTABLE                         R4 K12 [{"start", "finish", "step"}]
       71 LOADN                            R5 144
       72 SETTABLEKS                       R5 R4 K9 ["start"]
       74 LOADN                            R5 243
       75 SETTABLEKS                       R5 R4 K10 ["finish"]
       77 LOADN                            R5 1
       78 SETTABLEKS                       R5 R4 K11 ["step"]
       80 SETTABLE                         R4 R2 R3
       81 DUPCLOSURE                       R3 K17 [PROTO_0]
       82 CAPTURE                          VAL R2
       83 DUPTABLE                         R4 K20 [{"ELEVATION_LAYERS", "getRelativeIndex"}]
       84 SETTABLEKS                       R2 R4 K18 ["ELEVATION_LAYERS"]
       86 SETTABLEKS                       R3 R4 K19 ["getRelativeIndex"]
       88 RETURN                           R4 1
