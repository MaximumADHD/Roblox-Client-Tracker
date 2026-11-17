PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["NONE"]
        6 RETURN                           R0 1
        7 GETIMPORT                        R0 K2 [settings]
        9 CALL                             R0 0 1
       10 GETTABLEKS                       R0 R0 K3 ["Studio"]
       12 GETTABLEKS                       R0 R0 K4 ["Theme"]
       14 GETTABLEKS                       R0 R0 K5 ["Name"]
       16 JUMPIFNOTEQKS                    R0 K6 ["Light"] ; [+5]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K7 ["WHITE"]
       21 RETURN                           R1 1
       22 JUMPIFNOTEQKS                    R0 K8 ["Dark"] ; [+5]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K0 ["NONE"]
       27 RETURN                           R1 1
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K0 ["NONE"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["isCli"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 8 0
       20 NEWTABLE                         R3 0 3
       22 DUPTABLE                         R4 K11 [{["name"] = "White", ["color"] = "White"}]
       23 DUPTABLE                         R5 K13 [{["name"] = "Black", ["color"] = "Black"}]
       24 DUPTABLE                         R6 K15 [{["name"] = "None", ["color"] = "None"}]
       25 SETLIST                          R3 R4 3 [1]
       27 SETTABLEKS                       R3 R2 K16 ["BACKGROUNDS"]
       29 LOADN                            R3 1
       30 SETTABLEKS                       R3 R2 K17 ["WHITE"]
       32 LOADN                            R3 2
       33 SETTABLEKS                       R3 R2 K18 ["BLACK"]
       35 LOADN                            R3 3
       36 SETTABLEKS                       R3 R2 K19 ["NONE"]
       38 DUPCLOSURE                       R3 K20 [PROTO_0]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R3 R2 K21 ["getBackgroundForStudioTheme"]
       43 RETURN                           R2 1
