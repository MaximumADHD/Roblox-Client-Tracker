PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["ExplorerController"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R4 R2 K1 ["Scope"]
        5 JUMPIFNOT                        R4 ; [+7]
        6 GETTABLEKS                       R7 R2 K1 ["Scope"]
        8 GETTABLEKS                       R6 R7 K2 ["Uid"]
       10 NAMECALL                         R4 R3 K3 ["toggleVisibleInventory"]
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R3 0
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        4 GETTABLEKS                       R4 R5 K1 ["Sidebar"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+22]
        8 LOADB                            R3 0
        9 JUMPIFEQKNIL                     R2 ; [+19]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R4 R2 K2 ["Scope"]
       14 JUMPIFEQKNIL                     R4 ; [+14]
       16 GETTABLEKS                       R5 R2 K2 ["Scope"]
       18 GETTABLEKS                       R4 R5 K3 ["Type"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K4 ["ScopeType"]
       23 GETTABLEKS                       R5 R6 K5 ["Group"]
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
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Sidebar"]
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
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Sidebar"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K12 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       15 LOADK                            R3 K13 ["Scopes"]
       16 SETTABLEKS                       R3 R2 K8 ["TextKey"]
       18 LOADK                            R3 K14 ["Hide"]
       19 SETTABLEKS                       R3 R2 K9 ["TextSubKey"]
       21 DUPCLOSURE                       R3 K15 [PROTO_0]
       22 SETTABLEKS                       R3 R2 K10 ["OnItemClicked"]
       24 DUPCLOSURE                       R3 K16 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R3 R2 K11 ["ShouldRender"]
       28 DUPTABLE                         R3 K12 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       29 LOADK                            R4 K13 ["Scopes"]
       30 SETTABLEKS                       R4 R3 K8 ["TextKey"]
       32 LOADK                            R4 K17 ["Customize"]
       33 SETTABLEKS                       R4 R3 K9 ["TextSubKey"]
       35 DUPCLOSURE                       R4 K18 [PROTO_2]
       36 SETTABLEKS                       R4 R3 K10 ["OnItemClicked"]
       38 DUPCLOSURE                       R4 K19 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R3 K11 ["ShouldRender"]
       42 DUPTABLE                         R4 K12 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       43 LOADK                            R5 K13 ["Scopes"]
       44 SETTABLEKS                       R5 R4 K8 ["TextKey"]
       46 LOADK                            R5 K20 ["Refresh"]
       47 SETTABLEKS                       R5 R4 K9 ["TextSubKey"]
       49 DUPCLOSURE                       R5 K21 [PROTO_4]
       50 SETTABLEKS                       R5 R4 K10 ["OnItemClicked"]
       52 DUPCLOSURE                       R5 K22 [PROTO_5]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R5 R4 K11 ["ShouldRender"]
       56 NEWTABLE                         R5 0 3
       58 MOVE                             R6 R2
       59 MOVE                             R7 R3
       60 MOVE                             R8 R4
       61 SETLIST                          R5 R6 3 [1]
       63 RETURN                           R5 1
