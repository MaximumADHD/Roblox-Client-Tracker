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
       22 DUPTABLE                         R4 K10 [{"name", "color"}]
       23 LOADK                            R5 K11 ["White"]
       24 SETTABLEKS                       R5 R4 K8 ["name"]
       26 LOADK                            R5 K11 ["White"]
       27 SETTABLEKS                       R5 R4 K9 ["color"]
       29 DUPTABLE                         R5 K10 [{"name", "color"}]
       30 LOADK                            R6 K12 ["Black"]
       31 SETTABLEKS                       R6 R5 K8 ["name"]
       33 LOADK                            R6 K12 ["Black"]
       34 SETTABLEKS                       R6 R5 K9 ["color"]
       36 DUPTABLE                         R6 K10 [{"name", "color"}]
       37 LOADK                            R7 K13 ["None"]
       38 SETTABLEKS                       R7 R6 K8 ["name"]
       40 LOADK                            R7 K13 ["None"]
       41 SETTABLEKS                       R7 R6 K9 ["color"]
       43 SETLIST                          R3 R4 3 [1]
       45 SETTABLEKS                       R3 R2 K14 ["BACKGROUNDS"]
       47 LOADN                            R3 1
       48 SETTABLEKS                       R3 R2 K15 ["WHITE"]
       50 LOADN                            R3 2
       51 SETTABLEKS                       R3 R2 K16 ["BLACK"]
       53 LOADN                            R3 3
       54 SETTABLEKS                       R3 R2 K17 ["NONE"]
       56 DUPCLOSURE                       R3 K18 [PROTO_0]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R3 R2 K19 ["getBackgroundForStudioTheme"]
       61 RETURN                           R2 1
