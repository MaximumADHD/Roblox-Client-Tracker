PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["propertyInfo"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["session"]
        3 GETTABLEKS                       R2 R2 K1 ["editProperty"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["propertyId"]
        8 CALL                             R3 0 1
        9 DUPTABLE                         R4 K6 [{["type"] = "Stage", ["part"]}]
       10 DUPTABLE                         R5 K9 [{"name", "value"}]
       11 SETTABLEKS                       R0 R5 K7 ["name"]
       13 SETTABLEKS                       R1 R5 K8 ["value"]
       15 SETTABLEKS                       R5 R4 K5 ["part"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K3 [Enum.FinishRecordingOperation.Commit]
        2 JUMPIFNOTEQ                      R0 R2 ; [+3]
        4 DUPTABLE                         R1 K5 [{["type"] = "Commit"}]
        5 JUMP                             ; [+1]
        6 DUPTABLE                         R1 K7 [{["type"] = "Cancel"}]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K8 ["session"]
       10 GETTABLEKS                       R2 R2 K9 ["editProperty"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K10 ["propertyId"]
       15 CALL                             R3 0 1
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_4:
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
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       18 DUPCLOSURE                       R4 K4 [PROTO_1]
       19 NEWTABLE                         R5 0 0
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       25 NEWCLOSURE                       R5 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R6 0 2
       30 GETTABLEKS                       R7 R0 K5 ["session"]
       32 GETTABLEKS                       R8 R1 K6 ["propertyId"]
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       40 NEWCLOSURE                       R6 P3
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 NEWTABLE                         R7 0 2
       45 GETTABLEKS                       R8 R0 K5 ["session"]
       47 GETTABLEKS                       R9 R1 K6 ["propertyId"]
       49 SETLIST                          R7 R8 2 [1]
       51 CALL                             R5 2 1
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R6 R6 K7 ["createPortal"]
       55 GETUPVAL                         R7 3
       56 GETUPVAL                         R8 4
       57 DUPTABLE                         R9 K9 [{"overlayGui"}]
       58 GETTABLEKS                       R10 R1 K10 ["handle"]
       60 GETTABLEKS                       R10 R10 K11 ["instance"]
       62 SETTABLEKS                       R10 R9 K8 ["overlayGui"]
       64 GETUPVAL                         R10 3
       65 GETTABLEKS                       R11 R1 K12 ["render"]
       67 DUPTABLE                         R12 K18 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils"}]
       68 SETTABLEKS                       R2 R12 K13 ["getInfo"]
       70 SETTABLEKS                       R3 R12 K14 ["beginEditingAsync"]
       72 SETTABLEKS                       R4 R12 K15 ["setPart"]
       74 SETTABLEKS                       R5 R12 K16 ["finishEditing"]
       76 GETTABLEKS                       R13 R0 K5 ["session"]
       78 GETTABLEKS                       R13 R13 K17 ["specializedEditingUtils"]
       80 SETTABLEKS                       R13 R12 K17 ["specializedEditingUtils"]
       82 CALL                             R10 2 -1
       83 CALL                             R7 -1 1
       84 GETTABLEKS                       R8 R1 K10 ["handle"]
       86 GETTABLEKS                       R8 R8 K11 ["instance"]
       88 CALL                             R6 2 -1
       89 RETURN                           R6 -1

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
       42 GETTABLEKS                       R7 R0 K14 ["RpcTypes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Parent"]
       49 GETTABLEKS                       R8 R8 K15 ["Signals"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R4 K16 ["createElement"]
       54 DUPCLOSURE                       R9 K17 [PROTO_4]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R1
       60 RETURN                           R9 1
