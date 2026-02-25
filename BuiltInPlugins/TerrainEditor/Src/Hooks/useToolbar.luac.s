PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnToolIndexChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnTabIndexChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["getToolIndex"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 2
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R4 R0 K1 ["getTabIndex"]
        8 CALL                             R4 1 -1
        9 CALL                             R3 -1 2
       10 GETUPVAL                         R5 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R7 0 0
       16 CALL                             R5 2 0
       17 GETUPVAL                         R5 1
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R4
       21 NEWTABLE                         R7 0 0
       23 CALL                             R5 2 0
       24 DUPTABLE                         R5 K6 [{"Tabs", "TabIndex", "Tools", "ToolIndex"}]
       25 NAMECALL                         R6 R0 K7 ["getTabs"]
       27 CALL                             R6 1 1
       28 SETTABLEKS                       R6 R5 K2 ["Tabs"]
       30 SETTABLEKS                       R3 R5 K3 ["TabIndex"]
       32 NAMECALL                         R6 R0 K8 ["getToolbar"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K4 ["Tools"]
       37 SETTABLEKS                       R1 R5 K5 ["ToolIndex"]
       39 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Controllers"]
       20 GETTABLEKS                       R3 R4 K10 ["ToolController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Tools"]
       29 GETTABLEKS                       R4 R5 K12 ["BaseTool"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K13 ["useState"]
       34 GETTABLEKS                       R5 R1 K14 ["useEffect"]
       36 DUPCLOSURE                       R6 K15 [PROTO_4]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 RETURN                           R6 1
