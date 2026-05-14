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
        7 DUPTABLE                         R8 K8 [{"Uri", "Enabled", "Exists", "Visible", "Text"}]
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K9 ["join"]
       11 MOVE                             R10 R4
       12 DUPTABLE                         R11 K12 [{"Category", "ItemId"}]
       13 LOADK                            R12 K1 ["Actions"]
       14 SETTABLEKS                       R12 R11 K10 ["Category"]
       16 LOADK                            R12 K13 ["ManageTabs"]
       17 SETTABLEKS                       R12 R11 K11 ["ItemId"]
       19 CALL                             R9 2 1
       20 SETTABLEKS                       R9 R8 K3 ["Uri"]
       22 LOADB                            R9 1
       23 SETTABLEKS                       R9 R8 K4 ["Enabled"]
       25 LOADB                            R9 1
       26 SETTABLEKS                       R9 R8 K5 ["Exists"]
       28 LOADB                            R9 1
       29 SETTABLEKS                       R9 R8 K6 ["Visible"]
       31 LOADK                            R11 K14 ["Plugin"]
       32 LOADK                            R12 K13 ["ManageTabs"]
       33 NAMECALL                         R9 R0 K15 ["getText"]
       35 CALL                             R9 3 1
       36 SETTABLEKS                       R9 R8 K7 ["Text"]
       38 LOADB                            R9 1
       39 NAMECALL                         R6 R5 K16 ["CreateAsync"]
       41 CALL                             R6 3 1
       42 GETTABLEN                        R7 R6 1
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          VAL R2
       45 NAMECALL                         R7 R7 K17 ["Connect"]
       47 CALL                             R7 2 1
       48 DUPTABLE                         R10 K8 [{"Uri", "Enabled", "Exists", "Visible", "Text"}]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K9 ["join"]
       52 MOVE                             R12 R4
       53 DUPTABLE                         R13 K12 [{"Category", "ItemId"}]
       54 LOADK                            R14 K1 ["Actions"]
       55 SETTABLEKS                       R14 R13 K10 ["Category"]
       57 LOADK                            R14 K18 ["ResetTabs"]
       58 SETTABLEKS                       R14 R13 K11 ["ItemId"]
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K3 ["Uri"]
       63 LOADB                            R11 1
       64 SETTABLEKS                       R11 R10 K4 ["Enabled"]
       66 LOADB                            R11 1
       67 SETTABLEKS                       R11 R10 K5 ["Exists"]
       69 LOADB                            R11 1
       70 SETTABLEKS                       R11 R10 K6 ["Visible"]
       72 LOADK                            R13 K14 ["Plugin"]
       73 LOADK                            R14 K18 ["ResetTabs"]
       74 NAMECALL                         R11 R0 K15 ["getText"]
       76 CALL                             R11 3 1
       77 SETTABLEKS                       R11 R10 K7 ["Text"]
       79 LOADB                            R11 1
       80 NAMECALL                         R8 R5 K16 ["CreateAsync"]
       82 CALL                             R8 3 1
       83 GETTABLEN                        R9 R8 1
       84 NEWCLOSURE                       R11 P1
       85 CAPTURE                          VAL R3
       86 NAMECALL                         R9 R9 K17 ["Connect"]
       88 CALL                             R9 2 1
       89 NEWTABLE                         R10 0 2
       91 MOVE                             R11 R7
       92 MOVE                             R12 R9
       93 SETLIST                          R10 R11 2 [1]
       95 RETURN                           R10 1

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
