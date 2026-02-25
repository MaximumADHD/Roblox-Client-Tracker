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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["wrap"]
        3 NAMECALL                         R5 R1 K1 ["GetUri"]
        5 CALL                             R5 1 -1
        6 CALL                             R4 -1 1
        7 LOADK                            R7 K2 ["Actions"]
        8 NAMECALL                         R5 R1 K3 ["GetPluginComponent"]
       10 CALL                             R5 2 1
       11 DUPTABLE                         R8 K10 [{"Uri", "Enabled", "Exists", "Visible", "Icon", "Text"}]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R9 R10 K11 ["join"]
       15 MOVE                             R10 R4
       16 DUPTABLE                         R11 K14 [{"Category", "ItemId"}]
       17 LOADK                            R12 K2 ["Actions"]
       18 SETTABLEKS                       R12 R11 K12 ["Category"]
       20 LOADK                            R12 K15 ["AddTools"]
       21 SETTABLEKS                       R12 R11 K13 ["ItemId"]
       23 CALL                             R9 2 1
       24 SETTABLEKS                       R9 R8 K4 ["Uri"]
       26 LOADB                            R9 1
       27 SETTABLEKS                       R9 R8 K5 ["Enabled"]
       29 LOADB                            R9 1
       30 SETTABLEKS                       R9 R8 K6 ["Exists"]
       32 LOADB                            R9 1
       33 SETTABLEKS                       R9 R8 K7 ["Visible"]
       35 LOADK                            R9 K16 ["RibbonAddTools"]
       36 SETTABLEKS                       R9 R8 K8 ["Icon"]
       38 LOADK                            R11 K17 ["Plugin"]
       39 LOADK                            R12 K15 ["AddTools"]
       40 NAMECALL                         R9 R0 K18 ["getText"]
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K9 ["Text"]
       45 LOADB                            R9 1
       46 NAMECALL                         R6 R5 K19 ["CreateAsync"]
       48 CALL                             R6 3 1
       49 GETTABLEN                        R7 R6 1
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R2
       52 NAMECALL                         R7 R7 K20 ["Connect"]
       54 CALL                             R7 2 1
       55 DUPTABLE                         R10 K21 [{"Uri", "Enabled", "Exists", "Visible", "Text"}]
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R11 R12 K11 ["join"]
       59 MOVE                             R12 R4
       60 DUPTABLE                         R13 K14 [{"Category", "ItemId"}]
       61 LOADK                            R14 K2 ["Actions"]
       62 SETTABLEKS                       R14 R13 K12 ["Category"]
       64 LOADK                            R14 K22 ["AddSeparator"]
       65 SETTABLEKS                       R14 R13 K13 ["ItemId"]
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K4 ["Uri"]
       70 LOADB                            R11 1
       71 SETTABLEKS                       R11 R10 K5 ["Enabled"]
       73 LOADB                            R11 1
       74 SETTABLEKS                       R11 R10 K6 ["Exists"]
       76 LOADB                            R11 1
       77 SETTABLEKS                       R11 R10 K7 ["Visible"]
       79 LOADK                            R13 K17 ["Plugin"]
       80 LOADK                            R14 K22 ["AddSeparator"]
       81 NAMECALL                         R11 R0 K18 ["getText"]
       83 CALL                             R11 3 1
       84 SETTABLEKS                       R11 R10 K9 ["Text"]
       86 LOADB                            R11 1
       87 NAMECALL                         R8 R5 K19 ["CreateAsync"]
       89 CALL                             R8 3 1
       90 GETTABLEN                        R9 R8 1
       91 NEWCLOSURE                       R11 P1
       92 CAPTURE                          VAL R3
       93 NAMECALL                         R9 R9 K20 ["Connect"]
       95 CALL                             R9 2 1
       96 NEWTABLE                         R10 0 2
       98 MOVE                             R11 R7
       99 MOVE                             R12 R9
      100 SETLIST                          R10 R11 2 [1]
      102 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K10 ["Util"]
       23 GETTABLEKS                       R3 R4 K11 ["StudioUri"]
       25 DUPCLOSURE                       R4 K12 [PROTO_2]
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
