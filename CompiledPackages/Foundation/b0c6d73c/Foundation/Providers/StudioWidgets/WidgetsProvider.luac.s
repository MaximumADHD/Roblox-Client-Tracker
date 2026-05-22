PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["Widgets"]
        5 NAMECALL                         R1 R1 K2 ["GetPluginComponent"]
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["register"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["deregister"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["nextId"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R3 K2 ["WidgetsProvider must be used within a Plugin context"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R1
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K4 ["useEffect"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R5 0 1
       27 MOVE                             R6 R2
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       34 NEWCLOSURE                       R4 P2
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R5 0 1
       38 MOVE                             R6 R2
       39 SETLIST                          R5 R6 1 [1]
       41 CALL                             R3 2 1
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       45 NEWCLOSURE                       R5 P3
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R6 0 1
       49 MOVE                             R7 R2
       50 SETLIST                          R6 R7 1 [1]
       52 CALL                             R4 2 1
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       56 NEWCLOSURE                       R6 P4
       57 CAPTURE                          VAL R2
       58 NEWTABLE                         R7 0 1
       60 MOVE                             R8 R2
       61 SETLIST                          R7 R8 1 [1]
       63 CALL                             R5 2 1
       64 DUPTABLE                         R6 K9 [{"register", "deregister", "nextId"}]
       65 SETTABLEKS                       R3 R6 K6 ["register"]
       67 SETTABLEKS                       R4 R6 K7 ["deregister"]
       69 SETTABLEKS                       R5 R6 K8 ["nextId"]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K10 ["createElement"]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K11 ["Provider"]
       77 DUPTABLE                         R9 K13 [{"value"}]
       78 SETTABLEKS                       R6 R9 K12 ["value"]
       80 GETTABLEKS                       R10 R0 K14 ["children"]
       82 CALL                             R7 3 -1
       83 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Plugin"]
       20 GETTABLEKS                       R4 R4 K10 ["StudioUri"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Providers"]
       27 GETTABLEKS                       R5 R5 K9 ["Plugin"]
       29 GETTABLEKS                       R5 R5 K12 ["usePlugin"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K4 ["Parent"]
       38 GETTABLEKS                       R6 R6 K13 ["WidgetManager"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K4 ["Parent"]
       47 GETTABLEKS                       R7 R7 K14 ["WidgetsContext"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETIMPORT                        R8 K1 [script]
       54 GETTABLEKS                       R8 R8 K4 ["Parent"]
       56 GETTABLEKS                       R8 R8 K15 ["Types"]
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K16 [PROTO_6]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 RETURN                           R8 1
