PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.clone]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K3 ["getInputItems"]
        6 LOADNIL                          R3
        7 LOADK                            R4 K4 ["InputContext"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.clone]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K3 ["getInputItems"]
        6 LOADNIL                          R3
        7 LOADK                            R4 K4 ["InputAction"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.clone]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K3 ["getInputItems"]
        6 LOADNIL                          R3
        7 LOADK                            R4 K4 ["InputBinding"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["requestInputItems"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ContextsChanged"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
        7 CALL                             R0 3 2
        8 GETUPVAL                         R2 0
        9 LOADK                            R4 K2 ["ActionsChanged"]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       15 CALL                             R2 3 2
       16 GETUPVAL                         R4 0
       17 LOADK                            R6 K3 ["BindingsChanged"]
       18 NEWCLOSURE                       R7 P2
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U2
       21 NAMECALL                         R4 R4 K1 ["OnGuestEvent"]
       23 CALL                             R4 3 2
       24 GETIMPORT                        R6 K6 [task.spawn]
       26 NEWCLOSURE                       R7 P3
       27 CAPTURE                          UPVAL U2
       28 CALL                             R6 1 0
       29 NEWCLOSURE                       R6 P4
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 RETURN                           R6 1

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R8 K3 [{"Item", "ItemType", "Parent"}]
        7 SETTABLEKS                       R5 R8 K0 ["Item"]
        9 LOADK                            R9 K4 ["InputContext"]
       10 SETTABLEKS                       R9 R8 K1 ["ItemType"]
       12 LOADNIL                          R9
       13 SETTABLEKS                       R9 R8 K2 ["Parent"]
       15 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K7 [table.insert]
       20 CALL                             R6 2 0
       21 GETTABLEKS                       R6 R5 K8 ["actions"]
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 GETUPVAL                         R12 1
       27 GETTABLE                         R11 R12 R10
       28 JUMPIFNOT                        R11 ; [+16]
       29 DUPTABLE                         R14 K3 [{"Item", "ItemType", "Parent"}]
       30 SETTABLEKS                       R11 R14 K0 ["Item"]
       32 LOADK                            R15 K9 ["InputAction"]
       33 SETTABLEKS                       R15 R14 K1 ["ItemType"]
       35 GETTABLEKS                       R15 R5 K10 ["uuid"]
       37 SETTABLEKS                       R15 R14 K2 ["Parent"]
       39 FASTCALL2                        TABLE_INSERT R0 R14 ; [+4]
       41 MOVE                             R13 R0
       42 GETIMPORT                        R12 K7 [table.insert]
       44 CALL                             R12 2 0
       45 FORGLOOP                         R6 2 ; [-20]
       47 FORGLOOP                         R1 2 ; [-42]
       49 RETURN                           R0 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["uuid"]
        8 NEWTABLE                         R7 0 0
       10 SETTABLE                         R7 R0 R6
       11 GETTABLEKS                       R6 R5 K1 ["bindings"]
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETTABLEKS                       R13 R5 K0 ["uuid"]
       18 GETTABLE                         R12 R0 R13
       19 GETUPVAL                         R14 1
       20 GETTABLE                         R13 R14 R10
       21 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       23 GETIMPORT                        R11 K4 [table.insert]
       25 CALL                             R11 2 0
       26 FORGLOOP                         R6 2 ; [-11]
       28 FORGLOOP                         R1 2 ; [-23]
       30 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["useState"]
       17 NEWTABLE                         R3 0 0
       19 CALL                             R2 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K2 ["useState"]
       23 NEWTABLE                         R5 0 0
       25 CALL                             R4 1 2
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K2 ["useState"]
       29 NEWTABLE                         R7 0 0
       31 CALL                             R6 1 2
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R8 R9 K3 ["useEffect"]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R10 0 0
       43 CALL                             R8 2 0
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R8 R9 K4 ["useMemo"]
       47 NEWCLOSURE                       R9 P1
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R4
       50 NEWTABLE                         R10 0 2
       52 MOVE                             R11 R4
       53 MOVE                             R12 R6
       54 SETLIST                          R10 R11 2 [1]
       56 CALL                             R8 2 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K4 ["useMemo"]
       60 NEWCLOSURE                       R10 P2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 NEWTABLE                         R11 0 2
       65 MOVE                             R12 R4
       66 MOVE                             R13 R2
       67 SETLIST                          R11 R12 2 [1]
       69 CALL                             R9 2 1
       70 DUPTABLE                         R10 K10 [{"Items", "BindingReference", "Contexts", "Actions", "Bindings"}]
       71 SETTABLEKS                       R8 R10 K5 ["Items"]
       73 SETTABLEKS                       R9 R10 K6 ["BindingReference"]
       75 SETTABLEKS                       R6 R10 K7 ["Contexts"]
       77 SETTABLEKS                       R4 R10 K8 ["Actions"]
       79 SETTABLEKS                       R2 R10 K9 ["Bindings"]
       81 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["Networking"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K9 ["Guest"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R5 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R6 K12 ["Types"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_8]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 RETURN                           R5 1
