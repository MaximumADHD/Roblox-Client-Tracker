PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R4 R1 K0 ["GetUri"]
        2 CALL                             R4 1 1
        3 LOADK                            R7 K1 ["Actions"]
        4 NAMECALL                         R5 R1 K2 ["GetPluginComponent"]
        6 CALL                             R5 2 1
        7 DUPTABLE                         R8 K9 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Text"]}]
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K10 ["join"]
       11 MOVE                             R10 R4
       12 DUPTABLE                         R11 K14 [{["Category"] = "Actions", ["ItemId"] = "ManageTabs"}]
       13 CALL                             R9 2 1
       14 SETTABLEKS                       R9 R8 K3 ["Uri"]
       16 LOADK                            R11 K15 ["Plugin"]
       17 LOADK                            R12 K13 ["ManageTabs"]
       18 NAMECALL                         R9 R0 K16 ["getText"]
       20 CALL                             R9 3 1
       21 SETTABLEKS                       R9 R8 K8 ["Text"]
       23 LOADB                            R9 1
       24 NAMECALL                         R6 R5 K17 ["CreateAsync"]
       26 CALL                             R6 3 1
       27 GETTABLEN                        R7 R6 1
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          VAL R2
       30 NAMECALL                         R7 R7 K18 ["Connect"]
       32 CALL                             R7 2 1
       33 DUPTABLE                         R10 K9 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Text"]}]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K10 ["join"]
       37 MOVE                             R12 R4
       38 DUPTABLE                         R13 K20 [{["Category"] = "Actions", ["ItemId"] = "ResetTabs"}]
       39 CALL                             R11 2 1
       40 SETTABLEKS                       R11 R10 K3 ["Uri"]
       42 LOADK                            R13 K15 ["Plugin"]
       43 LOADK                            R14 K19 ["ResetTabs"]
       44 NAMECALL                         R11 R0 K16 ["getText"]
       46 CALL                             R11 3 1
       47 SETTABLEKS                       R11 R10 K8 ["Text"]
       49 LOADB                            R11 1
       50 NAMECALL                         R8 R5 K17 ["CreateAsync"]
       52 CALL                             R8 3 1
       53 GETTABLEN                        R9 R8 1
       54 NEWCLOSURE                       R11 P1
       55 CAPTURE                          VAL R3
       56 NAMECALL                         R9 R9 K18 ["Connect"]
       58 CALL                             R9 2 1
       59 NEWTABLE                         R10 0 2
       61 MOVE                             R11 R7
       62 MOVE                             R12 R9
       63 SETLIST                          R10 R11 2 [1]
       65 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["StudioUri"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K12 [PROTO_2]
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
