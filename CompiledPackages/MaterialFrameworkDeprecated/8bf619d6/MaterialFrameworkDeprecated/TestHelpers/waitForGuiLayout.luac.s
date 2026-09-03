PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADB                            R6 1
        5 RETURN                           R6 1
        6 FORGLOOP                         R1 2 ; [-3]
        8 NAMECALL                         R1 R0 K0 ["GetChildren"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 GETUPVAL                         R6 0
       13 MOVE                             R7 R5
       14 CALL                             R6 1 1
       15 JUMPIFNOT                        R6 ; [+2]
       16 LOADB                            R6 1
       17 RETURN                           R6 1
       18 FORGLOOP                         R1 2 ; [-7]
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R2 1
        1 GETUPVAL                         R0 0
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["Heartbeat"]
        7 NAMECALL                         R3 R3 K1 ["Wait"]
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+1]
       13 RETURN                           R0 0
       14 FORNLOOP                         R0
       15 GETIMPORT                        R0 K3 [error]
       17 LOADK                            R2 K4 ["waitWithHeartbeatUntil: predicate not satisfied after "]
       18 GETUPVAL                         R6 0
       19 FASTCALL1                        TOSTRING R6 ; [+2]
       20 GETIMPORT                        R5 K6 [tostring]
       22 CALL                             R5 1 1
       23 MOVE                             R3 R5
       24 LOADK                            R4 K7 [" RunService.Heartbeat yield(s)"]
       25 CONCAT                           R1 R2 R4
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_2:
        0 ORK                              R2 R1 K0 [60]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["act"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R2 1
        1 GETUPVAL                         R0 0
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["Heartbeat"]
        7 NAMECALL                         R3 R3 K1 ["Wait"]
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 2
       11 JUMPIFNOTLE                      R3 R2 ; [+6]
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 4
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R0 0
       18 FORNLOOP                         R0
       19 GETIMPORT                        R0 K3 [error]
       21 LOADK                            R2 K4 ["waitForGuiLayout: no instance tree under root after "]
       22 GETUPVAL                         R6 0
       23 FASTCALL1                        TOSTRING R6 ; [+2]
       24 GETIMPORT                        R5 K6 [tostring]
       26 CALL                             R5 1 1
       27 MOVE                             R3 R5
       28 LOADK                            R4 K7 [" RunService.Heartbeat yield(s)"]
       29 CONCAT                           R1 R2 R4
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_4:
        0 ORK                              R3 R1 K0 [60]
        1 ORK                              R4 R2 K1 [3]
        2 JUMPIFNOTLT                      R3 R4 ; [+5]
        4 GETIMPORT                        R5 K3 [error]
        6 LOADK                            R6 K4 ["waitForGuiLayout: maxHeartbeats must be >= minBeatsBeforeTreeReady"]
        7 CALL                             R5 1 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K5 ["act"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CALL                             R5 1 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["ReactRoblox"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K7 [game]
       16 LOADK                            R5 K8 ["RunService"]
       17 NAMECALL                         R3 R3 K9 ["GetService"]
       19 CALL                             R3 2 1
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 CAPTURE                          VAL R4
       22 DUPCLOSURE                       R5 K11 [PROTO_2]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 DUPCLOSURE                       R6 K12 [PROTO_4]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 DUPTABLE                         R7 K16 [{"treeHasAnyInstance", "waitForGuiLayout", "waitWithHeartbeatUntil"}]
       30 SETTABLEKS                       R4 R7 K13 ["treeHasAnyInstance"]
       32 SETTABLEKS                       R6 R7 K14 ["waitForGuiLayout"]
       34 SETTABLEKS                       R5 R7 K15 ["waitWithHeartbeatUntil"]
       36 RETURN                           R7 1
