PROTO_0:
        0 DUPTABLE                         R1 K1 [{"Sidebar"}]
        1 NAMECALL                         R2 R0 K2 ["getSidebarSizing"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["Sidebar"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R1 K1 [{"Sidebar"}]
        2 NAMECALL                         R3 R2 K2 ["getSidebarSizing"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R1 K0 ["Sidebar"]
        7 GETTABLEKS                       R2 R1 K0 ["Sidebar"]
        9 GETTABLEKS                       R3 R0 K0 ["Sidebar"]
       11 GETTABLEKS                       R4 R2 K3 ["Size"]
       13 GETTABLEKS                       R5 R3 K3 ["Size"]
       15 JUMPIFNOTEQ                      R4 R5 ; [+14]
       17 GETTABLEKS                       R4 R2 K4 ["MinWidth"]
       19 GETTABLEKS                       R5 R3 K4 ["MinWidth"]
       21 JUMPIFNOTEQ                      R4 R5 ; [+8]
       23 GETTABLEKS                       R4 R2 K5 ["MaxWidth"]
       25 GETTABLEKS                       R5 R3 K5 ["MaxWidth"]
       27 JUMPIFNOTEQ                      R4 R5 ; [+2]
       29 RETURN                           R0 1
       30 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K2 [{"Sidebar"}]
        6 NAMECALL                         R3 R0 K3 ["getSidebarSizing"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["Sidebar"]
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 2
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R5 0 0
       18 CALL                             R3 2 0
       19 RETURN                           R1 1

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
       28 DUPCLOSURE                       R6 K14 [PROTO_5]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 RETURN                           R6 1
