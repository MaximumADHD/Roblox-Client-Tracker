PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["plugin"]
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADK                            R2 K1 ["PlaceManager"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+1]
        6 JUMPIF                           R1 ; [+4]
        7 GETUPVAL                         R2 1
        8 LOADB                            R3 1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R1 K2 ["PlaceDocPanelShown"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R2 R2 K3 ["Connect"]
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R3 R1 K4 ["PlaceDocPanelClosed"]
       20 NEWCLOSURE                       R5 P2
       21 CAPTURE                          UPVAL U1
       22 NAMECALL                         R3 R3 K3 ["Connect"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R4 P3
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K1 ["plugin"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       17 DUPCLOSURE                       R3 K2 [PROTO_1]
       18 CAPTURE                          UPVAL U3
       19 NEWTABLE                         R4 0 0
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K3 ["useState"]
       25 GETIMPORT                        R5 K5 [game]
       27 GETTABLEKS                       R5 R5 K6 ["GameId"]
       29 JUMPIFNOTEQKN                    R5 K7 [0] ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 CALL                             R3 1 2
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K8 ["useEffect"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R7 0 1
       42 GETTABLEKS                       R8 R0 K1 ["plugin"]
       44 SETLIST                          R7 R8 1 [1]
       46 CALL                             R5 2 0
       47 JUMPIF                           R3 ; [+2]
       48 LOADNIL                          R5
       49 RETURN                           R5 1
       50 GETUPVAL                         R5 4
       51 DUPTABLE                         R6 K11 [{"Design", "Plugin"}]
       52 GETUPVAL                         R7 5
       53 GETTABLEKS                       R7 R7 K12 ["new"]
       55 MOVE                             R8 R1
       56 CALL                             R7 1 1
       57 SETTABLEKS                       R7 R6 K9 ["Design"]
       59 GETUPVAL                         R7 6
       60 GETTABLEKS                       R7 R7 K12 ["new"]
       62 GETTABLEKS                       R8 R0 K1 ["plugin"]
       64 CALL                             R7 1 1
       65 SETTABLEKS                       R7 R6 K10 ["Plugin"]
       67 DUPTABLE                         R7 K16 [{"QueueManager", "SnackbarManager", "StatusBarQueue"}]
       68 GETUPVAL                         R8 7
       69 GETUPVAL                         R9 8
       70 DUPTABLE                         R10 K18 [{"queueStatusBarSignals"}]
       71 SETTABLEKS                       R2 R10 K17 ["queueStatusBarSignals"]
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K13 ["QueueManager"]
       76 GETUPVAL                         R8 7
       77 GETUPVAL                         R9 9
       78 CALL                             R8 1 1
       79 SETTABLEKS                       R8 R7 K14 ["SnackbarManager"]
       81 GETUPVAL                         R8 7
       82 GETUPVAL                         R9 10
       83 DUPTABLE                         R10 K18 [{"queueStatusBarSignals"}]
       84 SETTABLEKS                       R2 R10 K17 ["queueStatusBarSignals"]
       86 CALL                             R8 2 1
       87 SETTABLEKS                       R8 R7 K15 ["StatusBarQueue"]
       89 CALL                             R5 2 -1
       90 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["QueueManager"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K12 ["SnackbarManager"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K9 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["StatusBarQueue"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Util"]
       54 GETTABLEKS                       R7 R7 K15 ["createQueueStatusSignals"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R1 K16 ["ContextServices"]
       59 GETTABLEKS                       R7 R7 K17 ["Design"]
       61 GETTABLEKS                       R8 R1 K16 ["ContextServices"]
       63 GETTABLEKS                       R8 R8 K18 ["Plugin"]
       65 GETTABLEKS                       R9 R3 K19 ["createElement"]
       67 GETTABLEKS                       R10 R1 K16 ["ContextServices"]
       69 GETTABLEKS                       R10 R10 K20 ["provide"]
       71 GETTABLEKS                       R11 R1 K21 ["Styling"]
       73 GETTABLEKS                       R11 R11 K22 ["registerPluginStyles"]
       75 DUPCLOSURE                       R12 K23 [PROTO_7]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 GETTABLEKS                       R13 R3 K24 ["memo"]
       89 MOVE                             R14 R12
       90 CALL                             R13 1 -1
       91 RETURN                           R13 -1
