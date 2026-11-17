PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+6]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R2 R1 K3 ["Theme"]
        9 GETTABLEKS                       R2 R2 K4 ["Name"]
       11 RETURN                           R2 1
       12 LOADK                            R2 K5 ["Dark"]
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R2 K2 [pcall]
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+6]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R1 R3 K3 ["Theme"]
       10 GETTABLEKS                       R1 R1 K4 ["Name"]
       12 JUMP                             ; [+1]
       13 LOADK                            R1 K5 ["Dark"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

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
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R1 K1 [pcall]
        7 CALL                             R1 1 0
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          REF R0
       10 CLOSEUPVALS                      R0
       11 RETURN                           R1 1

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
