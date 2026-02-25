PROTO_0:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R0 R1 K2 ["Studio"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 MOVE                             R2 R1
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["system"] ; [+11]
        3 GETUPVAL                         R0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["dark"] ; [+3]
        6 LOADK                            R0 K2 ["Dark"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 0
        9 JUMPIFNOTEQKS                    R0 K3 ["light"] ; [+3]
       11 LOADK                            R0 K4 ["Light"]
       12 RETURN                           R0 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K5 ["Theme"]
       16 GETTABLEKS                       R0 R1 K6 ["Name"]
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+6]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R2 3
        6 GETUPVAL                         R3 4
        7 GETTABLE                         R1 R2 R3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["Theme"]
        5 GETTABLEKS                       R3 R4 K1 ["Name"]
        7 GETTABLE                         R1 R2 R3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["system"] ; [+14]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["ThemeChanged"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K2 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1
       16 LOADNIL                          R0
       17 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["get"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K1 ["getStorage"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["theme"]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 3
       15 DUPCLOSURE                       R5 K3 [PROTO_1]
       16 CAPTURE                          UPVAL U4
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 3
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R7 0 2
       26 MOVE                             R8 R2
       27 MOVE                             R9 R4
       28 SETLIST                          R7 R8 2 [1]
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 5
       32 GETUPVAL                         R8 6
       33 GETTABLE                         R7 R8 R5
       34 CALL                             R6 1 2
       35 GETUPVAL                         R8 7
       36 NEWCLOSURE                       R9 P2
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R7
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R5
       42 NEWTABLE                         R10 0 3
       44 MOVE                             R11 R2
       45 MOVE                             R12 R3
       46 MOVE                             R13 R5
       47 SETLIST                          R10 R11 3 [1]
       49 CALL                             R8 2 0
       50 GETUPVAL                         R8 7
       51 NEWCLOSURE                       R9 P3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R7
       55 CAPTURE                          UPVAL U6
       56 NEWTABLE                         R10 0 1
       58 MOVE                             R11 R2
       59 SETLIST                          R10 R11 1 [1]
       61 CALL                             R8 2 0
       62 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Packages"]
       11 GETTABLEKS                       R1 R2 K6 ["React"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["RobloxPackages"]
       24 GETTABLEKS                       R2 R3 K8 ["SignalsReact"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R7 K3 [script]
       31 GETTABLEKS                       R6 R7 K4 ["Parent"]
       33 GETTABLEKS                       R5 R6 K4 ["Parent"]
       35 GETTABLEKS                       R4 R5 K9 ["UserSettings"]
       37 GETTABLEKS                       R3 R4 K10 ["UserSettingsStore"]
       39 CALL                             R2 1 1
       40 GETIMPORT                        R3 K1 [require]
       42 GETIMPORT                        R7 K3 [script]
       44 GETTABLEKS                       R6 R7 K4 ["Parent"]
       46 GETTABLEKS                       R5 R6 K4 ["Parent"]
       48 GETTABLEKS                       R4 R5 K11 ["themes"]
       50 CALL                             R3 1 1
       51 GETIMPORT                        R4 K1 [require]
       53 GETIMPORT                        R7 K3 [script]
       55 GETTABLEKS                       R6 R7 K4 ["Parent"]
       57 GETTABLEKS                       R5 R6 K12 ["usePrevious"]
       59 CALL                             R4 1 1
       60 GETTABLEKS                       R5 R0 K13 ["useMemo"]
       62 GETTABLEKS                       R6 R0 K14 ["useState"]
       64 GETTABLEKS                       R7 R0 K15 ["useEffect"]
       66 GETTABLEKS                       R8 R1 K16 ["useSignalState"]
       68 DUPTABLE                         R9 K19 [{"ThemeChanged", "Theme"}]
       69 GETIMPORT                        R11 K22 [Instance.new]
       71 LOADK                            R12 K23 ["BindableEvent"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R10 R11 K24 ["Event"]
       75 SETTABLEKS                       R10 R9 K17 ["ThemeChanged"]
       77 DUPTABLE                         R10 K26 [{"Name"}]
       78 LOADK                            R11 K27 ["Light"]
       79 SETTABLEKS                       R11 R10 K25 ["Name"]
       81 SETTABLEKS                       R10 R9 K18 ["Theme"]
       83 DUPCLOSURE                       R10 K28 [PROTO_7]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R7
       92 RETURN                           R10 1
