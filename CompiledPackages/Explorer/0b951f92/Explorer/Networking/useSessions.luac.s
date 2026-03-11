PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 LOADNIL                          R6
       10 SETTABLE                         R6 R0 R5
       11 FORGLOOP                         R1 2 ; [-3]
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETUPVAL                         R7 2
       18 GETTABLE                         R6 R7 R5
       19 SETTABLE                         R6 R0 R5
       20 FORGLOOP                         R1 2 ; [-4]
       22 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R3 R4 K0 ["current"]
        8 CALL                             R2 1 -1
        9 CALL                             R0 -1 3
       10 MOVE                             R3 R2
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETUPVAL                         R9 2
       15 GETTABLE                         R8 R9 R7
       16 GETUPVAL                         R11 3
       17 GETTABLEKS                       R10 R11 K0 ["current"]
       19 GETTABLE                         R9 R10 R7
       20 JUMPIFEQ                         R8 R9 ; [+15]
       22 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       24 MOVE                             R9 R0
       25 MOVE                             R10 R7
       26 GETIMPORT                        R8 K3 [table.insert]
       28 CALL                             R8 2 0
       29 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       31 MOVE                             R9 R1
       32 MOVE                             R10 R7
       33 GETIMPORT                        R8 K3 [table.insert]
       35 CALL                             R8 2 0
       36 FORGLOOP                         R3 2 ; [-23]
       38 GETUPVAL                         R3 3
       39 GETUPVAL                         R4 2
       40 SETTABLEKS                       R4 R3 K0 ["current"]
       42 LENGTH                           R3 R0
       43 JUMPIFNOTEQKN                    R3 K4 [0] ; [+5]
       45 LENGTH                           R3 R1
       46 JUMPIFNOTEQKN                    R3 K4 [0] ; [+2]
       48 RETURN                           R0 0
       49 NEWTABLE                         R3 0 0
       51 MOVE                             R4 R0
       52 LOADNIL                          R5
       53 LOADNIL                          R6
       54 FORGPREP                         R4
       55 GETUPVAL                         R9 4
       56 GETUPVAL                         R11 2
       57 GETTABLE                         R10 R11 R8
       58 DUPTABLE                         R11 K8 [{"waitForNextSearchAsync", "getExpandHierarchySetting", "analyticsInterface"}]
       59 GETUPVAL                         R13 5
       60 GETTABLEKS                       R12 R13 K5 ["waitForNextSearchAsync"]
       62 SETTABLEKS                       R12 R11 K5 ["waitForNextSearchAsync"]
       64 GETUPVAL                         R13 6
       65 GETTABLEKS                       R12 R13 K9 ["getExpandHierarchy"]
       67 SETTABLEKS                       R12 R11 K6 ["getExpandHierarchySetting"]
       69 GETUPVAL                         R12 7
       70 SETTABLEKS                       R12 R11 K7 ["analyticsInterface"]
       72 CALL                             R9 2 1
       73 SETTABLE                         R9 R3 R8
       74 FORGLOOP                         R4 2 ; [-20]
       76 GETUPVAL                         R4 8
       77 NEWCLOSURE                       R5 P0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R3
       81 CALL                             R4 1 0
       82 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["destroy"]
        8 CALL                             R5 0 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["AnalyticsContext"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 2
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["useRefToState"]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K4 ["useRef"]
       21 NEWTABLE                         R6 0 0
       23 CALL                             R5 1 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K0 ["useContext"]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K5 ["Context"]
       30 CALL                             R6 1 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K0 ["useContext"]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R8 R9 K5 ["Context"]
       37 CALL                             R7 1 1
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R10 0 1
       53 MOVE                             R11 R0
       54 SETLIST                          R10 R11 1 [1]
       56 CALL                             R8 2 0
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       60 NEWCLOSURE                       R9 P1
       61 CAPTURE                          VAL R4
       62 NEWTABLE                         R10 0 0
       64 CALL                             R8 2 0
       65 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K13 ["SearchThrottlingContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K11 ["Components"]
       46 GETTABLEKS                       R8 R9 K12 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K14 ["SettingsContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K15 ["Networking"]
       55 GETTABLEKS                       R8 R9 K16 ["createSession"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Util"]
       62 GETTABLEKS                       R9 R10 K18 ["diffArray"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Util"]
       69 GETTABLEKS                       R10 R11 K19 ["keys"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K15 ["Networking"]
       76 GETTABLEKS                       R11 R12 K20 ["useServe"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K21 [PROTO_4]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R7
       88 RETURN                           R11 1
