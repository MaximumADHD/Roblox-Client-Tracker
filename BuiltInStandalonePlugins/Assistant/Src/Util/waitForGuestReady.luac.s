PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["ALL"]
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["Fire"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [coroutine.status]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 1
        6 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
        8 GETIMPORT                        R0 K6 [task.spawn]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["[Assistant] Still waiting for the Assistant UI to signal ready after %*s. If this persists, restart Roblox Studio so every DataModel runs the same Assistant plugin version."]
        5 LOADN                            R3 10
        6 NAMECALL                         R1 R1 K3 ["format"]
        8 CALL                             R1 2 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["event"]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K1 ["waitForGuestReady.IsReady"]
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["event"]
        9 MOVE                             R5 R0
       10 LOADK                            R6 K2 ["waitForGuestReady.Ping"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R1 ; [+27]
       13 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       15 MOVE                             R6 R2
       16 LOADK                            R7 K3 ["waitForGuestReady requires the environment in the UI DataModel"]
       17 GETIMPORT                        R5 K5 [assert]
       19 CALL                             R5 2 0
       20 LOADB                            R5 0
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          REF R5
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U1
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          REF R5
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R7 R4 K6 ["Connect"]
       30 CALL                             R7 2 1
       31 GETTABLEKS                       R8 R2 K7 ["Destroying"]
       33 NEWCLOSURE                       R10 P2
       34 CAPTURE                          VAL R7
       35 NAMECALL                         R8 R8 K8 ["Once"]
       37 CALL                             R8 2 0
       38 CLOSEUPVALS                      R5
       39 RETURN                           R6 1
       40 GETIMPORT                        R5 K11 [coroutine.running]
       42 CALL                             R5 0 1
       43 LOADB                            R6 0
       44 NEWCLOSURE                       R9 P3
       45 CAPTURE                          REF R6
       46 CAPTURE                          VAL R5
       47 NAMECALL                         R7 R3 K6 ["Connect"]
       49 CALL                             R7 2 1
       50 JUMPIF                           R6 ; [+6]
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K12 ["ALL"]
       54 NAMECALL                         R8 R4 K13 ["Fire"]
       56 CALL                             R8 2 0
       57 JUMPIF                           R6 ; [+9]
       58 GETIMPORT                        R8 K16 [task.delay]
       60 LOADN                            R9 10
       61 NEWCLOSURE                       R10 P4
       62 CAPTURE                          REF R6
       63 CALL                             R8 2 0
       64 GETIMPORT                        R8 K18 [coroutine.yield]
       66 CALL                             R8 0 0
       67 NAMECALL                         R8 R7 K19 ["Disconnect"]
       69 CALL                             R8 1 0
       70 DUPCLOSURE                       R8 K20 [PROTO_5]
       71 CLOSEUPVALS                      R6
       72 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Remote"]
       23 DUPCLOSURE                       R4 K10 [PROTO_6]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
