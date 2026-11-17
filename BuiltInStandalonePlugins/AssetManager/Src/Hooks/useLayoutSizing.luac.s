PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Sidebar", "MainView"}]
        1 NAMECALL                         R2 R0 K3 ["getSidebarSizing"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["Sidebar"]
        6 NAMECALL                         R2 R0 K4 ["getMainViewSizing"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["MainView"]
       11 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Size"]
        3 GETTABLEKS                       R4 R1 K0 ["Size"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+16]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["MinWidth"]
       10 GETTABLEKS                       R4 R1 K1 ["MinWidth"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+9]
       14 GETTABLEKS                       R3 R0 K2 ["MaxWidth"]
       16 GETTABLEKS                       R4 R1 K2 ["MaxWidth"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R1 K2 [{"Sidebar", "MainView"}]
        2 NAMECALL                         R3 R2 K3 ["getSidebarSizing"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R1 K0 ["Sidebar"]
        7 NAMECALL                         R3 R2 K4 ["getMainViewSizing"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R1 K1 ["MainView"]
       12 GETTABLEKS                       R3 R1 K0 ["Sidebar"]
       14 GETTABLEKS                       R4 R0 K0 ["Sidebar"]
       16 LOADB                            R2 0
       17 GETTABLEKS                       R5 R3 K5 ["Size"]
       19 GETTABLEKS                       R6 R4 K5 ["Size"]
       21 JUMPIFNOTEQ                      R5 R6 ; [+16]
       23 LOADB                            R2 0
       24 GETTABLEKS                       R5 R3 K6 ["MinWidth"]
       26 GETTABLEKS                       R6 R4 K6 ["MinWidth"]
       28 JUMPIFNOTEQ                      R5 R6 ; [+9]
       30 GETTABLEKS                       R5 R3 K7 ["MaxWidth"]
       32 GETTABLEKS                       R6 R4 K7 ["MaxWidth"]
       34 JUMPIFEQ                         R5 R6 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 JUMPIFNOT                        R2 ; [+28]
       39 GETTABLEKS                       R3 R1 K1 ["MainView"]
       41 GETTABLEKS                       R4 R0 K1 ["MainView"]
       43 LOADB                            R2 0
       44 GETTABLEKS                       R5 R3 K5 ["Size"]
       46 GETTABLEKS                       R6 R4 K5 ["Size"]
       48 JUMPIFNOTEQ                      R5 R6 ; [+16]
       50 LOADB                            R2 0
       51 GETTABLEKS                       R5 R3 K6 ["MinWidth"]
       53 GETTABLEKS                       R6 R4 K6 ["MinWidth"]
       55 JUMPIFNOTEQ                      R5 R6 ; [+9]
       57 GETTABLEKS                       R5 R3 K7 ["MaxWidth"]
       59 GETTABLEKS                       R6 R4 K7 ["MaxWidth"]
       61 JUMPIFEQ                         R5 R6 ; [+2]
       63 LOADB                            R2 0 +1
       64 LOADB                            R2 1
       65 JUMPIFNOT                        R2 ; [+1]
       66 RETURN                           R0 1
       67 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnAppSizesChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K3 [{"Sidebar", "MainView"}]
        6 NAMECALL                         R3 R0 K4 ["getSidebarSizing"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["Sidebar"]
       11 NAMECALL                         R3 R0 K5 ["getMainViewSizing"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["MainView"]
       16 CALL                             R1 1 2
       17 GETUPVAL                         R3 2
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R5 0 0
       23 CALL                             R3 2 0
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Controllers"]
       20 GETTABLEKS                       R3 R3 K10 ["LayoutController"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["useState"]
       25 GETTABLEKS                       R4 R1 K12 ["useEffect"]
       27 DUPCLOSURE                       R5 K13 [PROTO_0]
       28 DUPCLOSURE                       R6 K14 [PROTO_1]
       29 DUPCLOSURE                       R7 K15 [PROTO_6]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 RETURN                           R7 1
