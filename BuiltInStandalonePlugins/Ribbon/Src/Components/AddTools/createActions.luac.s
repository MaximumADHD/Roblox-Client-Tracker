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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["wrap"]
        3 NAMECALL                         R5 R1 K1 ["GetUri"]
        5 CALL                             R5 1 -1
        6 CALL                             R4 -1 1
        7 LOADK                            R7 K2 ["Actions"]
        8 NAMECALL                         R5 R1 K3 ["GetPluginComponent"]
       10 CALL                             R5 2 1
       11 DUPTABLE                         R8 K12 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Icon"] = "RibbonAddTools", ["Text"]}]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K13 ["join"]
       15 MOVE                             R10 R4
       16 DUPTABLE                         R11 K17 [{["Category"] = "Actions", ["ItemId"] = "AddTools"}]
       17 CALL                             R9 2 1
       18 SETTABLEKS                       R9 R8 K4 ["Uri"]
       20 LOADK                            R11 K18 ["Plugin"]
       21 LOADK                            R12 K16 ["AddTools"]
       22 NAMECALL                         R9 R0 K19 ["getText"]
       24 CALL                             R9 3 1
       25 SETTABLEKS                       R9 R8 K11 ["Text"]
       27 LOADB                            R9 1
       28 NAMECALL                         R6 R5 K20 ["CreateAsync"]
       30 CALL                             R6 3 1
       31 GETTABLEN                        R7 R6 1
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R2
       34 NAMECALL                         R7 R7 K21 ["Connect"]
       36 CALL                             R7 2 1
       37 DUPTABLE                         R10 K22 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Text"]}]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R11 R11 K13 ["join"]
       41 MOVE                             R12 R4
       42 DUPTABLE                         R13 K24 [{["Category"] = "Actions", ["ItemId"] = "AddSeparator"}]
       43 CALL                             R11 2 1
       44 SETTABLEKS                       R11 R10 K4 ["Uri"]
       46 LOADK                            R13 K18 ["Plugin"]
       47 LOADK                            R14 K23 ["AddSeparator"]
       48 NAMECALL                         R11 R0 K19 ["getText"]
       50 CALL                             R11 3 1
       51 SETTABLEKS                       R11 R10 K11 ["Text"]
       53 LOADB                            R11 1
       54 NAMECALL                         R8 R5 K20 ["CreateAsync"]
       56 CALL                             R8 3 1
       57 GETTABLEN                        R9 R8 1
       58 NEWCLOSURE                       R11 P1
       59 CAPTURE                          VAL R3
       60 NAMECALL                         R9 R9 K21 ["Connect"]
       62 CALL                             R9 2 1
       63 NEWTABLE                         R10 0 2
       65 MOVE                             R11 R7
       66 MOVE                             R12 R9
       67 SETLIST                          R10 R11 2 [1]
       69 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["StudioUri"]
       25 DUPCLOSURE                       R4 K12 [PROTO_2]
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
