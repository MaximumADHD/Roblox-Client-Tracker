PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onExpansionsChanged"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKS                    R0 K0 ["InputContext"] ; [+11]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["actions"]
        8 LENGTH                           R1 R2
        9 LOADN                            R2 0
       10 JUMPIFLT                         R2 R1 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 0
       16 JUMPIFNOT                        R0 ; [+13]
       17 GETUPVAL                         R0 1
       18 JUMPIFNOTEQKS                    R0 K2 ["InputAction"] ; [+11]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K3 ["bindings"]
       23 LENGTH                           R1 R2
       24 LOADN                            R2 0
       25 JUMPIFLT                         R2 R1 ; [+2]
       27 LOADB                            R0 0 +1
       28 LOADB                            R0 1
       29 RETURN                           R0 1
       30 LOADB                            R0 0
       31 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["expansionsRef"]
        4 GETTABLEKS                       R2 R3 K1 ["current"]
        6 GETUPVAL                         R3 2
        7 GETTABLE                         R1 R2 R3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useContext"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["Context"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["useState"]
       10 GETTABLEKS                       R7 R3 K3 ["expansionsRef"]
       12 GETTABLEKS                       R6 R7 K4 ["current"]
       14 GETTABLE                         R5 R6 R0
       15 CALL                             R4 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R5
       23 NEWTABLE                         R8 0 2
       25 MOVE                             R9 R0
       26 MOVE                             R10 R5
       27 SETLIST                          R8 R9 2 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R9 0 1
       38 MOVE                             R10 R1
       39 SETLIST                          R9 R10 1 [1]
       41 CALL                             R7 2 1
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R8 R9 K7 ["useEffect"]
       45 NEWCLOSURE                       R9 P2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R10 0 1
       51 MOVE                             R11 R0
       52 SETLIST                          R10 R11 1 [1]
       54 CALL                             R8 2 0
       55 MOVE                             R8 R4
       56 JUMPIF                           R8 ; [+4]
       57 JUMPIFEQKNIL                     R4 ; [+2]
       59 LOADB                            R8 0 +1
       60 LOADB                            R8 1
       61 JUMPIFNOT                        R7 ; [+2]
       62 MOVE                             R9 R8
       63 JUMP                             ; [+1]
       64 LOADNIL                          R9
       65 JUMPIFNOT                        R7 ; [+2]
       66 MOVE                             R10 R6
       67 RETURN                           R9 2
       68 LOADNIL                          R10
       69 RETURN                           R9 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["PluginConfiguration"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_3]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
