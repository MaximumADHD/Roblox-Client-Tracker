PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["extraFields"]
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K3 [table.clone]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R1 R4 K0 ["extraFields"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 SETTABLE                         R5 R0 R4
       18 FORGLOOP                         R1 2 ; [-2]
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["logCounter"]
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R1
        6 CALL                             R5 1 1
        7 MOVE                             R6 R2
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["logEvent"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 CALL                             R4 1 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["logStat"]
        3 MOVE                             R4 R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R1
        6 CALL                             R5 1 1
        7 MOVE                             R6 R2
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"logCounter", "logEvent", "logStat"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["logCounter"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["logEvent"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["logStat"]
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 1
       12 GETTABLEKS                       R5 R0 K2 ["extraFields"]
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R5 0 2
       25 GETTABLEKS                       R6 R1 K3 ["logCounter"]
       27 MOVE                             R7 R2
       28 SETLIST                          R5 R6 2 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       34 NEWCLOSURE                       R5 P2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R6 0 2
       39 GETTABLEKS                       R7 R1 K4 ["logEvent"]
       41 MOVE                             R8 R2
       42 SETLIST                          R6 R7 2 [1]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       48 NEWCLOSURE                       R6 P3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 NEWTABLE                         R7 0 2
       53 GETTABLEKS                       R8 R1 K5 ["logStat"]
       55 MOVE                             R9 R2
       56 SETLIST                          R7 R8 2 [1]
       58 CALL                             R5 2 1
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R6 R7 K6 ["useMemo"]
       62 NEWCLOSURE                       R7 P4
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 NEWTABLE                         R8 0 3
       68 MOVE                             R9 R3
       69 MOVE                             R10 R4
       70 MOVE                             R11 R5
       71 SETLIST                          R8 R9 3 [1]
       73 CALL                             R6 2 1
       74 GETUPVAL                         R7 2
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R8 R9 K7 ["Provider"]
       78 DUPTABLE                         R9 K9 [{"value"}]
       79 SETTABLEKS                       R6 R9 K8 ["value"]
       81 GETTABLEKS                       R10 R0 K10 ["children"]
       83 CALL                             R7 3 -1
       84 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Analytics"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["AnalyticsContext"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["AnalyticsTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R5 R0 K8 ["Parent"]
       21 GETTABLEKS                       R4 R5 K9 ["React"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K10 ["createElement"]
       26 DUPCLOSURE                       R5 K11 [PROTO_5]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R4
       30 RETURN                           R5 1
