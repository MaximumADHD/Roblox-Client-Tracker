PROTO_0:
        0 DUPTABLE                         R0 K2 [{"selectedTab", "allTabsData"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["selectedTab"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["allTabsData"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedTab"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedTab"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedTab"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"allTabsData"}]
        7 GETTABLEKS                       R5 R1 K2 ["allTabsData"]
        9 SETTABLEKS                       R5 R4 K2 ["allTabsData"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SetSelectedTab"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["SetAllTabsData"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 GETTABLEKS                       R7 R1 K13 ["createReducer"]
       40 DUPTABLE                         R8 K16 [{"selectedTab", "allTabsData"}]
       41 LOADNIL                          R9
       42 SETTABLEKS                       R9 R8 K14 ["selectedTab"]
       44 LOADNIL                          R9
       45 SETTABLEKS                       R9 R8 K15 ["allTabsData"]
       47 NEWTABLE                         R9 2 0
       49 GETTABLEKS                       R10 R4 K17 ["name"]
       51 DUPCLOSURE                       R11 K18 [PROTO_1]
       52 CAPTURE                          VAL R2
       53 SETTABLE                         R11 R9 R10
       54 GETTABLEKS                       R10 R5 K17 ["name"]
       56 DUPCLOSURE                       R11 K19 [PROTO_2]
       57 CAPTURE                          VAL R2
       58 SETTABLE                         R11 R9 R10
       59 CALL                             R7 2 1
       60 RETURN                           R7 1
