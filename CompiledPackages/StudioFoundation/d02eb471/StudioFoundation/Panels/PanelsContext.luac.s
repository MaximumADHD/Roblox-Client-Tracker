PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K2 [error]
        8 LOADK                            R2 K3 ["usePanelsContext must be used within a PanelsContext.Provider"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["uriScope"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["uriScope"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["closeAll"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unsubscribe"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K1 ["destroy"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["onWillOpen"]
        5 CALL                             R0 2 1
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["close"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K4 [{"targetWidgetUri", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
        2 SETTABLEKS                       R0 R5 K0 ["targetWidgetUri"]
        4 GETTABLEKS                       R6 R1 K1 ["targetAnchorPoint"]
        6 SETTABLEKS                       R6 R5 K1 ["targetAnchorPoint"]
        8 GETTABLEKS                       R6 R1 K2 ["subjectAnchorPoint"]
       10 SETTABLEKS                       R6 R5 K2 ["subjectAnchorPoint"]
       12 GETTABLEKS                       R6 R1 K3 ["offset"]
       14 SETTABLEKS                       R6 R5 K3 ["offset"]
       16 NAMECALL                         R3 R3 K5 ["openAsync"]
       18 CALL                             R3 2 1
       19 MOVE                             R4 R3
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 2

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["close"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 DUPTABLE                         R7 K4 [{"targetWidgetUri", "targetAnchorPoint", "subjectAnchorPoint", "offset"}]
        3 SETTABLEKS                       R1 R7 K0 ["targetWidgetUri"]
        5 GETTABLEKS                       R8 R2 K1 ["targetAnchorPoint"]
        7 SETTABLEKS                       R8 R7 K1 ["targetAnchorPoint"]
        9 GETTABLEKS                       R8 R2 K2 ["subjectAnchorPoint"]
       11 SETTABLEKS                       R8 R7 K2 ["subjectAnchorPoint"]
       13 GETTABLEKS                       R8 R2 K3 ["offset"]
       15 SETTABLEKS                       R8 R7 K3 ["offset"]
       17 MOVE                             R8 R3
       18 NAMECALL                         R4 R4 K5 ["openAtAsync"]
       20 CALL                             R4 4 1
       21 MOVE                             R5 R4
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R4
       25 RETURN                           R5 2

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 2
       16 MOVE                             R5 R1
       17 GETTABLEKS                       R6 R0 K3 ["uriScope"]
       19 SETLIST                          R4 R5 2 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R5 0 2
       31 MOVE                             R6 R1
       32 GETTABLEKS                       R7 R0 K3 ["uriScope"]
       34 SETLIST                          R5 R6 2 [1]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K4 ["useEffect"]
       40 NEWCLOSURE                       R5 P2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R6 0 2
       45 MOVE                             R7 R3
       46 MOVE                             R8 R2
       47 SETLIST                          R6 R7 2 [1]
       49 CALL                             R4 2 0
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       53 NEWCLOSURE                       R5 P3
       54 CAPTURE                          VAL R2
       55 NEWTABLE                         R6 0 1
       57 MOVE                             R7 R2
       58 SETLIST                          R6 R7 1 [1]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       64 NEWCLOSURE                       R6 P4
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R7 0 1
       68 MOVE                             R8 R3
       69 SETLIST                          R7 R8 1 [1]
       71 CALL                             R5 2 1
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K6 ["createElement"]
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R7 R7 K7 ["Provider"]
       78 DUPTABLE                         R8 K9 [{"value"}]
       79 DUPTABLE                         R9 K12 [{"registerMenuAsync", "registerTooltipAsync"}]
       80 SETTABLEKS                       R5 R9 K10 ["registerMenuAsync"]
       82 SETTABLEKS                       R4 R9 K11 ["registerTooltipAsync"]
       84 SETTABLEKS                       R9 R8 K8 ["value"]
       86 GETTABLEKS                       R9 R0 K13 ["children"]
       88 CALL                             R6 3 -1
       89 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K10 ["Plugin"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Panels"]
       27 GETTABLEKS                       R7 R7 K12 ["TooltipManager"]
       29 CALL                             R6 1 1
       30 GETIMPORT                        R7 K6 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Panels"]
       34 GETTABLEKS                       R8 R8 K13 ["MenuManager"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K6 [require]
       39 GETTABLEKS                       R9 R0 K14 ["Types"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R2 K15 ["createContext"]
       44 LOADNIL                          R10
       45 CALL                             R9 1 1
       46 DUPCLOSURE                       R10 K16 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R9
       49 DUPCLOSURE                       R11 K17 [PROTO_10]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R9
       55 DUPTABLE                         R12 K20 [{"Provider", "useValue"}]
       56 SETTABLEKS                       R11 R12 K18 ["Provider"]
       58 SETTABLEKS                       R10 R12 K19 ["useValue"]
       60 RETURN                           R12 1
