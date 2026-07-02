PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["ExplorerController"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R4 R2 K1 ["Scope"]
        5 JUMPIFNOT                        R4 ; [+7]
        6 GETTABLEKS                       R6 R2 K1 ["Scope"]
        8 GETTABLEKS                       R6 R6 K2 ["Uid"]
       10 NAMECALL                         R4 R3 K3 ["toggleVisibleInventory"]
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R3 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R4 R4 K1 ["Sidebar"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+22]
        8 LOADB                            R3 0
        9 JUMPIFEQKNIL                     R2 ; [+19]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R4 R2 K2 ["Scope"]
       14 JUMPIFEQKNIL                     R4 ; [+14]
       16 GETTABLEKS                       R4 R2 K2 ["Scope"]
       18 GETTABLEKS                       R4 R4 K3 ["Type"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["ScopeType"]
       23 GETTABLEKS                       R5 R5 K5 ["Group"]
       25 JUMPIFEQ                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["ExplorerController"]
        2 NAMECALL                         R3 R3 K1 ["enableScopeOptions"]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Sidebar"]
        5 JUMPIFEQ                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["ExplorerController"]
        2 NAMECALL                         R3 R3 K1 ["refreshScopes"]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Sidebar"]
        5 JUMPIFEQ                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K14 [{["TextKey"] = "Scopes", ["TextSubKey"] = "Hide", ["OnItemClicked"], ["ShouldRender"]}]
       15 DUPCLOSURE                       R3 K15 [PROTO_0]
       16 SETTABLEKS                       R3 R2 K12 ["OnItemClicked"]
       18 DUPCLOSURE                       R3 K16 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K13 ["ShouldRender"]
       22 DUPTABLE                         R3 K18 [{["TextKey"] = "Scopes", ["TextSubKey"] = "Customize", ["OnItemClicked"], ["ShouldRender"]}]
       23 DUPCLOSURE                       R4 K19 [PROTO_2]
       24 SETTABLEKS                       R4 R3 K12 ["OnItemClicked"]
       26 DUPCLOSURE                       R4 K20 [PROTO_3]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K13 ["ShouldRender"]
       30 DUPTABLE                         R4 K22 [{["TextKey"] = "Scopes", ["TextSubKey"] = "Refresh", ["OnItemClicked"], ["ShouldRender"]}]
       31 DUPCLOSURE                       R5 K23 [PROTO_4]
       32 SETTABLEKS                       R5 R4 K12 ["OnItemClicked"]
       34 DUPCLOSURE                       R5 K24 [PROTO_5]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K13 ["ShouldRender"]
       38 NEWTABLE                         R5 0 3
       40 MOVE                             R6 R2
       41 MOVE                             R7 R3
       42 MOVE                             R8 R4
       43 SETLIST                          R5 R6 3 [1]
       45 RETURN                           R5 1
