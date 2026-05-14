PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"selectedTab"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["SOUND_EFFECTS"]
        4 GETTABLEKS                       R2 R2 K3 ["name"]
        6 SETTABLEKS                       R2 R1 K0 ["selectedTab"]
        8 SETTABLEKS                       R1 R0 K4 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["OnTabSelect"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K4 [{"Size", "BackgroundTransparency"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 74
        9 LOADN                            R7 0
       10 LOADN                            R8 30
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K2 ["Size"]
       14 LOADN                            R4 1
       15 SETTABLEKS                       R4 R3 K3 ["BackgroundTransparency"]
       17 DUPTABLE                         R4 K9 [{"AudioTabs"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 1
       22 DUPTABLE                         R7 K12 [{"SelectedTab", "OnTabSelect"}]
       23 GETTABLEKS                       R8 R0 K13 ["state"]
       25 GETTABLEKS                       R8 R8 K14 ["selectedTab"]
       27 SETTABLEKS                       R8 R7 K10 ["SelectedTab"]
       29 GETTABLEKS                       R8 R0 K11 ["OnTabSelect"]
       31 SETTABLEKS                       R8 R7 K11 ["OnTabSelect"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K8 ["AudioTabs"]
       36 CALL                             R1 3 -1
       37 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioTabs"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["AudioTabs"]
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K8 ["Parent"]
       20 GETTABLEKS                       R4 R4 K9 ["AudioTabs"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Stories"]
       27 GETTABLEKS                       R5 R5 K11 ["ToolboxStoryWrapper"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Types"]
       36 GETTABLEKS                       R6 R6 K14 ["Category"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R2 K15 ["PureComponent"]
       41 LOADK                            R8 K16 ["AudioTabsStroyWrapper"]
       42 NAMECALL                         R6 R6 K17 ["extend"]
       44 CALL                             R6 2 1
       45 DUPCLOSURE                       R7 K18 [PROTO_1]
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K19 ["init"]
       49 DUPCLOSURE                       R7 K20 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R7 R6 K21 ["render"]
       54 DUPTABLE                         R7 K25 [{"name", "summary", "story"}]
       55 LOADK                            R8 K26 ["Audio Tabs"]
       56 SETTABLEKS                       R8 R7 K22 ["name"]
       58 LOADK                            R8 K27 ["Tab selection with round edges"]
       59 SETTABLEKS                       R8 R7 K23 ["summary"]
       61 DUPCLOSURE                       R8 K28 [PROTO_3]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R8 R7 K24 ["story"]
       67 RETURN                           R7 1
