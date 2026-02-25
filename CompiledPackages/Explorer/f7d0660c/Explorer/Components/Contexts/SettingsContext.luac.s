PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K10 [{"rememberedFields", "addField", "removeField", "getSearchHistory", "saveSearchHistory", "getIncrementNamesAsync", "setIncrementNames", "getExpandHierarchy", "setExpandHierarchy", "showPlusButtonOnHoverObservable"}]
        1 GETTABLEKS                       R2 R0 K0 ["rememberedFields"]
        3 SETTABLEKS                       R2 R1 K0 ["rememberedFields"]
        5 GETTABLEKS                       R2 R0 K1 ["addField"]
        7 SETTABLEKS                       R2 R1 K1 ["addField"]
        9 GETTABLEKS                       R2 R0 K2 ["removeField"]
       11 SETTABLEKS                       R2 R1 K2 ["removeField"]
       13 GETTABLEKS                       R2 R0 K3 ["getSearchHistory"]
       15 SETTABLEKS                       R2 R1 K3 ["getSearchHistory"]
       17 GETTABLEKS                       R2 R0 K4 ["saveSearchHistory"]
       19 SETTABLEKS                       R2 R1 K4 ["saveSearchHistory"]
       21 GETTABLEKS                       R2 R0 K5 ["getIncrementNamesAsync"]
       23 SETTABLEKS                       R2 R1 K5 ["getIncrementNamesAsync"]
       25 GETTABLEKS                       R2 R0 K6 ["setIncrementNames"]
       27 SETTABLEKS                       R2 R1 K6 ["setIncrementNames"]
       29 GETTABLEKS                       R2 R0 K7 ["getExpandHierarchy"]
       31 SETTABLEKS                       R2 R1 K7 ["getExpandHierarchy"]
       33 GETTABLEKS                       R2 R0 K8 ["setExpandHierarchy"]
       35 SETTABLEKS                       R2 R1 K8 ["setExpandHierarchy"]
       37 GETTABLEKS                       R2 R0 K9 ["showPlusButtonOnHoverObservable"]
       39 SETTABLEKS                       R2 R1 K9 ["showPlusButtonOnHoverObservable"]
       41 GETUPVAL                         R2 0
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R3 R4 K11 ["Provider"]
       45 DUPTABLE                         R4 K13 [{"value"}]
       46 SETTABLEKS                       R1 R4 K12 ["value"]
       48 GETTABLEKS                       R5 R0 K14 ["children"]
       50 CALL                             R2 3 -1
       51 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["createElement"]
       23 DUPTABLE                         R4 K21 [{"rememberedFields", "addField", "removeField", "getSearchHistory", "saveSearchHistory", "getIncrementNamesAsync", "setIncrementNames", "getExpandHierarchy", "setExpandHierarchy", "showPlusButtonOnHoverObservable"}]
       24 NEWTABLE                         R5 0 0
       26 SETTABLEKS                       R5 R4 K11 ["rememberedFields"]
       28 DUPCLOSURE                       R5 K22 [PROTO_0]
       29 SETTABLEKS                       R5 R4 K12 ["addField"]
       31 DUPCLOSURE                       R5 K23 [PROTO_1]
       32 SETTABLEKS                       R5 R4 K13 ["removeField"]
       34 DUPCLOSURE                       R5 K24 [PROTO_2]
       35 SETTABLEKS                       R5 R4 K14 ["getSearchHistory"]
       37 DUPCLOSURE                       R5 K25 [PROTO_3]
       38 SETTABLEKS                       R5 R4 K15 ["saveSearchHistory"]
       40 DUPCLOSURE                       R5 K26 [PROTO_4]
       41 SETTABLEKS                       R5 R4 K16 ["getIncrementNamesAsync"]
       43 DUPCLOSURE                       R5 K27 [PROTO_5]
       44 SETTABLEKS                       R5 R4 K17 ["setIncrementNames"]
       46 DUPCLOSURE                       R5 K28 [PROTO_6]
       47 SETTABLEKS                       R5 R4 K18 ["getExpandHierarchy"]
       49 DUPCLOSURE                       R5 K29 [PROTO_7]
       50 SETTABLEKS                       R5 R4 K19 ["setExpandHierarchy"]
       52 GETTABLEKS                       R5 R1 K30 ["create"]
       54 LOADB                            R6 0
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R5 R4 K20 ["showPlusButtonOnHoverObservable"]
       58 GETTABLEKS                       R5 R2 K31 ["createContext"]
       60 MOVE                             R6 R4
       61 CALL                             R5 1 1
       62 DUPCLOSURE                       R6 K32 [PROTO_8]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R5
       65 DUPTABLE                         R7 K35 [{"Context", "Provider"}]
       66 SETTABLEKS                       R5 R7 K33 ["Context"]
       68 SETTABLEKS                       R6 R7 K34 ["Provider"]
       70 RETURN                           R7 1
