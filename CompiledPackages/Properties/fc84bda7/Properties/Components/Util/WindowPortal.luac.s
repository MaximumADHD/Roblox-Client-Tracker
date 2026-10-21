PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["propertyInfo"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["session"]
        3 GETTABLEKS                       R1 R1 K1 ["editProperty"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["propertyId"]
        8 CALL                             R2 0 1
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["window"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 NEWTABLE                         R4 0 1
       10 GETTABLEKS                       R5 R1 K2 ["propertyInfo"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K3 ["useEventCallback"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K4 ["createPortal"]
       25 GETUPVAL                         R5 4
       26 GETUPVAL                         R6 5
       27 DUPTABLE                         R7 K6 [{"overlayGui"}]
       28 GETTABLEKS                       R8 R1 K7 ["handle"]
       30 GETTABLEKS                       R8 R8 K8 ["instance"]
       32 SETTABLEKS                       R8 R7 K5 ["overlayGui"]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R9 R1 K9 ["render"]
       37 DUPTABLE                         R10 K13 [{"getInfo", "editProperty", "specializedEditingUtils"}]
       38 SETTABLEKS                       R2 R10 K10 ["getInfo"]
       40 SETTABLEKS                       R3 R10 K11 ["editProperty"]
       42 GETTABLEKS                       R11 R0 K14 ["session"]
       44 GETTABLEKS                       R11 R11 K12 ["specializedEditingUtils"]
       46 SETTABLEKS                       R11 R10 K12 ["specializedEditingUtils"]
       48 CALL                             R8 2 -1
       49 CALL                             R5 -1 1
       50 GETTABLEKS                       R6 R1 K7 ["handle"]
       52 GETTABLEKS                       R6 R6 K8 ["instance"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["FoundationContextProvider"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["PropertyEditorTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["ReactRoblox"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["RpcTypes"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K11 ["Parent"]
       56 GETTABLEKS                       R9 R9 K16 ["Signals"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R4 K17 ["createElement"]
       61 DUPCLOSURE                       R10 K18 [PROTO_2]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R1
       68 RETURN                           R10 1
