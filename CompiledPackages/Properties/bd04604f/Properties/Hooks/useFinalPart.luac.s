PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 DUPTABLE                         R1 K3 [{["type"] = "Cancel"}]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Stage"] ; [+10]
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R2 K4 [{[1] = "Edit", ["part"]}]
        6 GETTABLEKS                       R3 R0 K3 ["part"]
        8 SETTABLEKS                       R3 R2 K3 ["part"]
       10 SETTABLEKS                       R2 R1 K5 ["current"]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K0 ["type"]
       15 JUMPIFEQKS                       R1 K2 ["Edit"] ; [+5]
       17 GETTABLEKS                       R1 R0 K0 ["type"]
       19 JUMPIFNOTEQKS                    R1 K6 ["Cancel"] ; [+7]
       21 GETUPVAL                         R1 0
       22 SETTABLEKS                       R0 R1 K5 ["current"]
       24 GETUPVAL                         R1 1
       25 CALL                             R1 0 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R1 R0 K0 ["type"]
       29 JUMPIFNOTEQKS                    R1 K7 ["Commit"] ; [+4]
       31 GETUPVAL                         R1 1
       32 CALL                             R1 0 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R1 R0 K0 ["type"]
       36 JUMPIFEQKS                       R1 K8 ["Capture"] ; [+5]
       38 GETUPVAL                         R1 2
       39 GETTABLEKS                       R2 R0 K0 ["type"]
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useEventCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["useEventCallback"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U2
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["RpcTypes"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["exhaustiveMatch"]
       30 CALL                             R5 1 1
       31 DUPCLOSURE                       R6 K12 [PROTO_2]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1
