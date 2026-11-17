PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K3 [{"push", "pop", "popToTop"}]
        1 DUPCLOSURE                       R2 K4 [PROTO_0]
        2 SETTABLEKS                       R2 R1 K0 ["push"]
        4 DUPCLOSURE                       R2 K5 [PROTO_1]
        5 SETTABLEKS                       R2 R1 K1 ["pop"]
        7 DUPCLOSURE                       R2 K6 [PROTO_2]
        8 SETTABLEKS                       R2 R1 K2 ["popToTop"]
       10 DUPTABLE                         R2 K11 [{"navigation", "observedNavStack", "observedRouteStack", "rootRoute"}]
       11 SETTABLEKS                       R1 R2 K7 ["navigation"]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R0
       16 SETLIST                          R3 R4 1 [1]
       18 SETTABLEKS                       R3 R2 K8 ["observedNavStack"]
       20 NEWTABLE                         R3 0 1
       22 MOVE                             R4 R0
       23 SETLIST                          R3 R4 1 [1]
       25 SETTABLEKS                       R3 R2 K9 ["observedRouteStack"]
       27 SETTABLEKS                       R0 R2 K10 ["rootRoute"]
       29 GETUPVAL                         R5 0
       30 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       32 MOVE                             R4 R2
       33 GETIMPORT                        R3 K13 [setmetatable]
       35 CALL                             R3 2 0
       36 RETURN                           R2 1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["navigation"]
        2 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["observedNavStack"]
        2 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
        4 MOVE                             R6 R2
        5 GETIMPORT                        R4 K3 [table.insert]
        7 CALL                             R4 2 0
        8 GETTABLEKS                       R5 R0 K4 ["observedRouteStack"]
       10 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       12 MOVE                             R6 R1
       13 GETIMPORT                        R4 K3 [table.insert]
       15 CALL                             R4 2 0
       16 GETTABLEKS                       R4 R0 K5 ["navigation"]
       18 GETTABLEKS                       R4 R4 K6 ["push"]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R3
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.remove]
        2 GETTABLEKS                       R2 R0 K3 ["observedNavStack"]
        4 GETTABLEKS                       R4 R0 K3 ["observedNavStack"]
        6 LENGTH                           R3 R4
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K3 ["observedNavStack"]
       10 LENGTH                           R1 R2
       11 LOADN                            R2 0
       12 JUMPIFNOTLE                      R1 R2 ; [+9]
       14 NEWTABLE                         R1 0 1
       16 GETTABLEKS                       R2 R0 K4 ["rootRoute"]
       18 SETLIST                          R1 R2 1 [1]
       20 SETTABLEKS                       R1 R0 K3 ["observedNavStack"]
       22 GETIMPORT                        R1 K2 [table.remove]
       24 GETTABLEKS                       R2 R0 K5 ["observedRouteStack"]
       26 GETTABLEKS                       R4 R0 K5 ["observedRouteStack"]
       28 LENGTH                           R3 R4
       29 CALL                             R1 2 0
       30 GETTABLEKS                       R2 R0 K5 ["observedRouteStack"]
       32 LENGTH                           R1 R2
       33 LOADN                            R2 0
       34 JUMPIFNOTLE                      R1 R2 ; [+9]
       36 NEWTABLE                         R1 0 1
       38 GETTABLEKS                       R2 R0 K4 ["rootRoute"]
       40 SETLIST                          R1 R2 1 [1]
       42 SETTABLEKS                       R1 R0 K5 ["observedRouteStack"]
       44 GETTABLEKS                       R1 R0 K6 ["navigation"]
       46 GETTABLEKS                       R1 R1 K7 ["pop"]
       48 CALL                             R1 0 0
       49 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["rootRoute"]
        4 SETLIST                          R1 R2 1 [1]
        6 SETTABLEKS                       R1 R0 K1 ["observedNavStack"]
        8 NEWTABLE                         R1 0 1
       10 GETTABLEKS                       R2 R0 K0 ["rootRoute"]
       12 SETLIST                          R1 R2 1 [1]
       14 SETTABLEKS                       R1 R0 K2 ["observedRouteStack"]
       16 GETTABLEKS                       R1 R0 K3 ["navigation"]
       18 GETTABLEKS                       R1 R1 K4 ["popToTop"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["observedNavStack"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["observedRouteStack"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["observedNavStack"]
        2 GETTABLEKS                       R4 R0 K0 ["observedNavStack"]
        4 LENGTH                           R3 R4
        5 GETTABLE                         R1 R2 R3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       18 GETTABLEKS                       R3 R3 K8 ["ContextItem"]
       20 LOADK                            R6 K9 ["NavigationContext"]
       21 NAMECALL                         R4 R3 K10 ["extend"]
       23 CALL                             R4 2 1
       24 DUPCLOSURE                       R5 K11 [PROTO_3]
       25 CAPTURE                          VAL R4
       26 SETTABLEKS                       R5 R4 K12 ["new"]
       28 DUPCLOSURE                       R5 K13 [PROTO_4]
       29 SETTABLEKS                       R5 R4 K14 ["updateNavigation"]
       31 DUPCLOSURE                       R5 K15 [PROTO_5]
       32 SETTABLEKS                       R5 R4 K16 ["get"]
       34 DUPCLOSURE                       R5 K17 [PROTO_6]
       35 SETTABLEKS                       R5 R4 K18 ["push"]
       37 DUPCLOSURE                       R5 K19 [PROTO_7]
       38 SETTABLEKS                       R5 R4 K20 ["pop"]
       40 DUPCLOSURE                       R5 K21 [PROTO_8]
       41 SETTABLEKS                       R5 R4 K22 ["popToTop"]
       43 DUPCLOSURE                       R5 K23 [PROTO_9]
       44 SETTABLEKS                       R5 R4 K24 ["getBreadcrumbRoute"]
       46 DUPCLOSURE                       R5 K25 [PROTO_10]
       47 SETTABLEKS                       R5 R4 K26 ["getNavigationRoute"]
       49 DUPCLOSURE                       R5 K27 [PROTO_11]
       50 SETTABLEKS                       R5 R4 K28 ["getCurrentPath"]
       52 RETURN                           R4 1
