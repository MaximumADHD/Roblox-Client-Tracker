PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromHost"]
        3 GETTABLEKS                       R0 R0 K1 ["connectSelectAll"]
        5 GETTABLEKS                       R0 R0 K2 ["fire"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromHost"]
        3 GETTABLEKS                       R0 R0 K1 ["disconnectSelectAll"]
        5 GETTABLEKS                       R0 R0 K2 ["fire"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Connect"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEventConnection"]
        3 GETTABLEKS                       R2 R0 K1 ["dockWidget"]
        5 GETTABLEKS                       R2 R2 K2 ["WindowFocused"]
        7 DUPCLOSURE                       R3 K3 [PROTO_0]
        8 CAPTURE                          UPVAL U1
        9 NEWTABLE                         R4 0 0
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["useEventConnection"]
       15 GETTABLEKS                       R2 R0 K1 ["dockWidget"]
       17 GETTABLEKS                       R2 R2 K4 ["WindowFocusReleased"]
       19 DUPCLOSURE                       R3 K5 [PROTO_1]
       20 CAPTURE                          UPVAL U1
       21 NEWTABLE                         R4 0 0
       23 CALL                             R1 3 0
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K6 ["useState"]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K7 ["Signal"]
       30 GETTABLEKS                       R2 R2 K8 ["new"]
       32 CALL                             R1 1 1
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K9 ["fromGuest"]
       36 GETTABLEKS                       R2 R2 K10 ["performSelectAll"]
       38 GETTABLEKS                       R2 R2 K11 ["useListenToGuest"]
       40 NEWCLOSURE                       R3 P2
       41 CAPTURE                          VAL R1
       42 NEWTABLE                         R4 0 0
       44 CALL                             R2 2 0
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K12 ["useCallback"]
       48 NEWCLOSURE                       R3 P3
       49 CAPTURE                          VAL R1
       50 NEWTABLE                         R4 0 1
       52 MOVE                             R5 R1
       53 SETLIST                          R4 R5 1 [1]
       55 CALL                             R2 2 1
       56 GETUPVAL                         R3 4
       57 GETUPVAL                         R4 3
       58 GETTABLEKS                       R4 R4 K13 ["Components"]
       60 GETTABLEKS                       R4 R4 K14 ["Contexts"]
       62 GETTABLEKS                       R4 R4 K15 ["SelectAllContextProvider"]
       64 DUPTABLE                         R5 K17 [{"registerSelectAll"}]
       65 SETTABLEKS                       R2 R5 K16 ["registerSelectAll"]
       67 GETTABLEKS                       R6 R0 K18 ["children"]
       69 CALL                             R3 3 -1
       70 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K2 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["thread"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["connection"]
       13 JUMPIFEQKNIL                     R0 ; [+7]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K4 ["connection"]
       18 NAMECALL                         R0 R0 K5 ["Disconnect"]
       20 CALL                             R0 1 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromGuest"]
        3 GETTABLEKS                       R0 R0 K1 ["performSelectAll"]
        5 GETTABLEKS                       R0 R0 K2 ["fire"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADN                            R3 1
        3 DUPCLOSURE                       R4 K0 [PROTO_7]
        4 CAPTURE                          UPVAL U2
        5 NAMECALL                         R1 R1 K1 ["AddOverrideAsync"]
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K2 ["connection"]
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 LOADNIL                          R0
        5 DUPTABLE                         R1 K3 [{[1] = , ["thread"]}]
        6 GETIMPORT                        R2 K6 [task.defer]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          REF R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K2 ["thread"]
       15 MOVE                             R0 R1
       16 SETUPVAL                         R0 0
       17 CLOSEUPVALS                      R0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K2 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["thread"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["connection"]
       13 JUMPIFEQKNIL                     R0 ; [+7]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K4 ["connection"]
       18 NAMECALL                         R0 R0 K5 ["Disconnect"]
       20 CALL                             R0 1 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 JUMP                             ; [+19]
        4 GETIMPORT                        R0 K2 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["thread"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["connection"]
       13 JUMPIFEQKNIL                     R0 ; [+7]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K4 ["connection"]
       18 NAMECALL                         R0 R0 K5 ["Disconnect"]
       20 CALL                             R0 1 0
       21 LOADNIL                          R0
       22 SETUPVAL                         R0 0
       23 GETUPVAL                         R0 1
       24 CALL                             R0 0 0
       25 GETUPVAL                         R0 2
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R3 K0 ["SelectAll"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 LOADNIL                          R2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["fromHost"]
       10 GETTABLEKS                       R4 R4 K3 ["connectSelectAll"]
       12 GETTABLEKS                       R4 R4 K4 ["listen"]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          REF R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["fromHost"]
       22 GETTABLEKS                       R5 R5 K5 ["disconnectSelectAll"]
       24 GETTABLEKS                       R5 R5 K4 ["listen"]
       26 NEWCLOSURE                       R6 P2
       27 CAPTURE                          REF R2
       28 CALL                             R5 1 1
       29 NEWCLOSURE                       R6 P3
       30 CAPTURE                          REF R2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 CLOSEUPVALS                      R2
       34 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["SharedFeatures"]
       34 GETTABLEKS                       R5 R5 K12 ["createPluginRpcMethod"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["createElement"]
       39 NEWTABLE                         R6 2 0
       41 DUPTABLE                         R7 K16 [{"fromGuest", "fromHost"}]
       42 DUPTABLE                         R8 K18 [{"performSelectAll"}]
       43 MOVE                             R9 R4
       44 LOADK                            R10 K19 ["PerformSelectAll"]
       45 CALL                             R9 1 1
       46 SETTABLEKS                       R9 R8 K17 ["performSelectAll"]
       48 SETTABLEKS                       R8 R7 K14 ["fromGuest"]
       50 DUPTABLE                         R8 K22 [{"connectSelectAll", "disconnectSelectAll"}]
       51 MOVE                             R9 R4
       52 LOADK                            R10 K23 ["ConnectSelectAll"]
       53 CALL                             R9 1 1
       54 SETTABLEKS                       R9 R8 K20 ["connectSelectAll"]
       56 MOVE                             R9 R4
       57 LOADK                            R10 K24 ["DisconnectSelectAll"]
       58 CALL                             R9 1 1
       59 SETTABLEKS                       R9 R8 K21 ["disconnectSelectAll"]
       61 SETTABLEKS                       R8 R7 K15 ["fromHost"]
       63 DUPCLOSURE                       R8 K25 [PROTO_5]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R8 R6 K26 ["Provider"]
       71 DUPCLOSURE                       R8 K27 [PROTO_12]
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R8 R6 K28 ["connectGuest"]
       75 RETURN                           R6 1
