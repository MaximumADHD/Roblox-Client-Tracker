PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+6]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R2 R1 K3 ["Theme"]
        8 GETTABLEKS                       R2 R2 K4 ["Name"]
       10 RETURN                           R2 1
       11 LOADK                            R2 K5 ["Dark"]
       12 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [pcall]
        3 DUPCLOSURE                       R3 K2 [PROTO_0]
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+6]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETTABLEKS                       R1 R3 K3 ["Theme"]
        9 GETTABLEKS                       R1 R1 K4 ["Name"]
       11 JUMP                             ; [+1]
       12 LOADK                            R1 K5 ["Dark"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R1 R0 K3 ["ThemeChanged"]
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETTABLEKS                       R1 R0 K3 ["ThemeChanged"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R1 R1 K4 ["Connect"]
       14 CALL                             R1 2 1
       15 SETUPVAL                         R1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          REF R0
        9 CLOSEUPVALS                      R0
       10 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 0
       13 JUMPIFNOTEQKS                    R0 K2 ["Dark"] ; [+5]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K2 ["Dark"]
       18 RETURN                           R2 1
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K3 ["Light"]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Enums"]
       23 GETTABLEKS                       R3 R3 K10 ["Theme"]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 DUPCLOSURE                       R5 K12 [PROTO_6]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 RETURN                           R5 1
