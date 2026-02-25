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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["theme"]
        3 JUMPIFEQKS                       R0 K1 ["system"] ; [+16]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["theme"]
        8 JUMPIFNOTEQKS                    R0 K2 ["dark"] ; [+3]
       10 LOADK                            R0 K3 ["Dark"]
       11 RETURN                           R0 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["theme"]
       15 JUMPIFNOTEQKS                    R0 K4 ["light"] ; [+12]
       17 LOADK                            R0 K5 ["Light"]
       18 RETURN                           R0 1
       19 JUMP                             ; [+8]
       20 GETUPVAL                         R0 1
       21 JUMPIFEQKS                       R0 K3 ["Dark"] ; [+4]
       23 GETUPVAL                         R0 1
       24 JUMPIFNOTEQKS                    R0 K5 ["Light"] ; [+3]
       26 GETUPVAL                         R0 1
       27 RETURN                           R0 1
       28 LOADK                            R0 K3 ["Dark"]
       29 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Theme"]
        4 GETTABLEKS                       R1 R2 K1 ["Name"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ThemeChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["get"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K1 ["getStorage"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 DUPCLOSURE                       R3 K2 [PROTO_1]
       11 CAPTURE                          UPVAL U3
       12 NEWTABLE                         R4 0 0
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R5 R2 K3 ["Theme"]
       18 GETTABLEKS                       R4 R5 K4 ["Name"]
       20 CALL                             R3 1 2
       21 GETUPVAL                         R5 2
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R7 0 2
       27 GETTABLEKS                       R8 R1 K5 ["theme"]
       29 MOVE                             R9 R3
       30 SETLIST                          R7 R8 2 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 5
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R8 0 1
       39 MOVE                             R9 R2
       40 SETLIST                          R8 R9 1 [1]
       42 CALL                             R6 2 0
       43 RETURN                           R5 1

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
       40 GETTABLEKS                       R3 R0 K11 ["useMemo"]
       42 GETTABLEKS                       R4 R0 K12 ["useState"]
       44 GETTABLEKS                       R5 R0 K13 ["useEffect"]
       46 GETTABLEKS                       R6 R1 K14 ["useSignalState"]
       48 DUPTABLE                         R7 K17 [{"ThemeChanged", "Theme"}]
       49 GETIMPORT                        R9 K20 [Instance.new]
       51 LOADK                            R10 K21 ["BindableEvent"]
       52 CALL                             R9 1 1
       53 GETTABLEKS                       R8 R9 K22 ["Event"]
       55 SETTABLEKS                       R8 R7 K15 ["ThemeChanged"]
       57 DUPTABLE                         R8 K24 [{"Name"}]
       58 LOADK                            R9 K25 ["Light"]
       59 SETTABLEKS                       R9 R8 K23 ["Name"]
       61 SETTABLEKS                       R8 R7 K16 ["Theme"]
       63 DUPCLOSURE                       R8 K26 [PROTO_6]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 RETURN                           R8 1
