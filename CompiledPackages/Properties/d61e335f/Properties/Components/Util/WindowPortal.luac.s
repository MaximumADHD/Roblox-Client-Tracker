PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["propertyInfo"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 GETTABLEKS                       R0 R0 K1 ["beginEditingPropertyAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["session"]
        3 GETTABLEKS                       R2 R2 K1 ["setPropertyPart"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["session"]
        3 GETTABLEKS                       R1 R1 K1 ["finishEditingProperty"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["window"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useSignalState"]
        5 GETTABLEKS                       R3 R1 K2 ["propertyId"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R5 0 1
       16 GETTABLEKS                       R6 R1 K4 ["propertyInfo"]
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R6 0 2
       29 GETTABLEKS                       R7 R0 K6 ["session"]
       31 GETTABLEKS                       R7 R7 K7 ["beginEditingPropertyAsync"]
       33 MOVE                             R8 R2
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       40 NEWCLOSURE                       R6 P2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R7 0 2
       45 GETTABLEKS                       R8 R0 K6 ["session"]
       47 GETTABLEKS                       R8 R8 K8 ["setPropertyPart"]
       49 MOVE                             R9 R2
       50 SETLIST                          R7 R8 2 [1]
       52 CALL                             R5 2 1
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       56 NEWCLOSURE                       R7 P3
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R2
       59 NEWTABLE                         R8 0 2
       61 GETTABLEKS                       R9 R0 K6 ["session"]
       63 GETTABLEKS                       R9 R9 K9 ["finishEditingProperty"]
       65 MOVE                             R10 R2
       66 SETLIST                          R8 R9 2 [1]
       68 CALL                             R6 2 1
       69 GETUPVAL                         R7 3
       70 GETTABLEKS                       R7 R7 K10 ["createPortal"]
       72 GETUPVAL                         R8 4
       73 GETUPVAL                         R9 5
       74 DUPTABLE                         R10 K12 [{"overlayGui"}]
       75 GETTABLEKS                       R11 R1 K13 ["handle"]
       77 GETTABLEKS                       R11 R11 K14 ["instance"]
       79 SETTABLEKS                       R11 R10 K11 ["overlayGui"]
       81 GETUPVAL                         R11 4
       82 GETTABLEKS                       R12 R1 K15 ["render"]
       84 DUPTABLE                         R13 K21 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils"}]
       85 SETTABLEKS                       R3 R13 K16 ["getInfo"]
       87 SETTABLEKS                       R4 R13 K17 ["beginEditingAsync"]
       89 SETTABLEKS                       R5 R13 K18 ["setPart"]
       91 SETTABLEKS                       R6 R13 K19 ["finishEditing"]
       93 GETTABLEKS                       R14 R0 K6 ["session"]
       95 GETTABLEKS                       R14 R14 K20 ["specializedEditingUtils"]
       97 SETTABLEKS                       R14 R13 K20 ["specializedEditingUtils"]
       99 CALL                             R11 2 -1
      100 CALL                             R8 -1 1
      101 GETTABLEKS                       R9 R1 K13 ["handle"]
      103 GETTABLEKS                       R9 R9 K14 ["instance"]
      105 CALL                             R7 2 -1
      106 RETURN                           R7 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["RpcTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K10 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["Signals"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K10 ["Parent"]
       51 GETTABLEKS                       R8 R8 K15 ["SignalsReact"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R3 K16 ["createElement"]
       56 DUPCLOSURE                       R9 K17 [PROTO_4]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R1
       63 RETURN                           R9 1
