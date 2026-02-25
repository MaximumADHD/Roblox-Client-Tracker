PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["logStat"]
        3 DUPTABLE                         R2 K6 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
        4 LOADK                            R3 K7 ["LuaExplorerSelectAll"]
        5 SETTABLEKS                       R3 R2 K1 ["eventName"]
        7 NEWTABLE                         R3 0 1
        9 LOADK                            R4 K8 ["RobloxTelemetryStat"]
       10 SETLIST                          R3 R4 1 [1]
       12 SETTABLEKS                       R3 R2 K2 ["backends"]
       14 GETIMPORT                        R3 K10 [game]
       16 LOADK                            R5 K11 ["LuaExplorerSelectAllThrottlingHundredthsPercent"]
       17 LOADN                            R6 16
       18 NAMECALL                         R3 R3 K12 ["DefineFastInt"]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R2 K3 ["throttlingPercentage"]
       23 LOADK                            R3 K13 ["Time it takes to collect the IDs to select, and request from the guest. Does NOT count the time it actually takes to perform the selection."]
       24 SETTABLEKS                       R3 R2 K4 ["description"]
       26 LOADK                            R3 K14 ["2024-12-03"]
       27 SETTABLEKS                       R3 R2 K5 ["lastUpdated"]
       29 NEWTABLE                         R3 0 0
       31 MOVE                             R4 R0
       32 CALL                             R1 3 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K3 ["getSearch"]
        6 CALL                             R1 0 1
        7 JUMPIFEQKS                       R1 K4 [""] ; [+12]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K5 ["selectAllSearchedIds"]
       12 CALL                             R1 0 0
       13 GETUPVAL                         R1 1
       14 GETIMPORT                        R3 K2 [os.clock]
       16 CALL                             R3 0 1
       17 SUB                              R2 R3 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K6 ["focusedRootObservable"]
       23 GETTABLEKS                       R1 R2 K7 ["get"]
       25 CALL                             R1 0 1
       26 GETTABLEKS                       R2 R1 K8 ["children"]
       28 JUMPIFNOTEQKNIL                  R2 ; [+2]
       30 RETURN                           R0 0
       31 NEWTABLE                         R2 0 0
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R1
       35 CALL                             R3 1 3
       36 FORGPREP                         R3
       37 GETTABLEKS                       R11 R6 K9 ["datum"]
       39 GETTABLEKS                       R10 R11 K10 ["id"]
       41 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       43 MOVE                             R9 R2
       44 GETIMPORT                        R8 K13 [table.insert]
       46 CALL                             R8 2 0
       47 FORGLOOP                         R3 1 ; [-11]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R3 R4 K14 ["selectIds"]
       52 GETIMPORT                        R4 K16 [table.freeze]
       54 MOVE                             R5 R2
       55 CALL                             R4 1 -1
       56 CALL                             R3 -1 0
       57 GETUPVAL                         R3 1
       58 GETIMPORT                        R5 K2 [os.clock]
       60 CALL                             R5 0 1
       61 SUB                              R4 R5 R0
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["registerSelectAll"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 1
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["AnalyticsContext"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K3 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R1
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K4 ["useEffect"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U3
       33 NEWTABLE                         R6 0 3
       35 GETTABLEKS                       R7 R2 K5 ["registerSelectAll"]
       37 MOVE                             R8 R0
       38 MOVE                             R9 R3
       39 SETLIST                          R6 R7 3 [1]
       41 CALL                             R4 2 0
       42 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R4 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       30 GETTABLEKS                       R5 R6 K12 ["SelectAllContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Util"]
       37 GETTABLEKS                       R6 R7 K14 ["iterateExplorerNodeDescendants"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K15 [PROTO_3]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 RETURN                           R6 1
