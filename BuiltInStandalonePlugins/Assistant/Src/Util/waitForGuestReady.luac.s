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
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["ALL"]
        7 NAMECALL                         R0 R0 K2 ["FireHost"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["Util_waitForGuestReady_IsReady"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K1 ["FireHost"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R4 ; [+79]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R5 R1
        7 LOADK                            R6 K1 ["waitForGuestReady requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
        8 GETIMPORT                        R4 K3 [assert]
       10 CALL                             R4 2 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["event"]
       14 MOVE                             R5 R1
       15 LOADK                            R6 K5 ["waitForGuestReady.IsReady"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K4 ["event"]
       20 MOVE                             R6 R1
       21 LOADK                            R7 K6 ["waitForGuestReady.Ping"]
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R2 ; [+27]
       24 FASTCALL2K                       ASSERT R3 K7 ; [+5]
       26 MOVE                             R7 R3
       27 LOADK                            R8 K7 ["waitForGuestReady requires the environment in the UI DataModel"]
       28 GETIMPORT                        R6 K3 [assert]
       30 CALL                             R6 2 0
       31 LOADB                            R6 0
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          REF R6
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U2
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          REF R6
       38 CAPTURE                          VAL R4
       39 NAMECALL                         R8 R5 K8 ["Connect"]
       41 CALL                             R8 2 1
       42 GETTABLEKS                       R9 R3 K9 ["Destroying"]
       44 NEWCLOSURE                       R11 P2
       45 CAPTURE                          VAL R8
       46 NAMECALL                         R9 R9 K10 ["Once"]
       48 CALL                             R9 2 0
       49 CLOSEUPVALS                      R6
       50 RETURN                           R7 1
       51 GETIMPORT                        R6 K13 [coroutine.running]
       53 CALL                             R6 0 1
       54 LOADB                            R7 0
       55 NEWCLOSURE                       R10 P3
       56 CAPTURE                          REF R7
       57 CAPTURE                          VAL R6
       58 NAMECALL                         R8 R4 K8 ["Connect"]
       60 CALL                             R8 2 1
       61 JUMPIF                           R7 ; [+6]
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K14 ["ALL"]
       65 NAMECALL                         R9 R5 K15 ["Fire"]
       67 CALL                             R9 2 0
       68 JUMPIF                           R7 ; [+9]
       69 GETIMPORT                        R9 K18 [task.delay]
       71 LOADN                            R10 10
       72 NEWCLOSURE                       R11 P4
       73 CAPTURE                          REF R7
       74 CALL                             R9 2 0
       75 GETIMPORT                        R9 K20 [coroutine.yield]
       77 CALL                             R9 0 0
       78 NAMECALL                         R9 R8 K21 ["Disconnect"]
       80 CALL                             R9 1 0
       81 CLOSEUPVALS                      R7
       82 JUMP                             ; [+56]
       83 FASTCALL2K                       ASSERT R0 K22 ; [+5]
       85 MOVE                             R5 R0
       86 LOADK                            R6 K22 ["waitForGuestReady requires networking"]
       87 GETIMPORT                        R4 K3 [assert]
       89 CALL                             R4 2 0
       90 NAMECALL                         R4 R0 K23 ["IsGuest"]
       92 CALL                             R4 1 1
       93 JUMPIFNOT                        R4 ; [+14]
       94 LOADB                            R4 0
       95 NEWCLOSURE                       R5 P5
       96 CAPTURE                          REF R4
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U3
       99 LOADK                            R8 K24 ["Util_waitForGuestReady_Ping"]
      100 NEWCLOSURE                       R9 P6
      101 CAPTURE                          REF R4
      102 CAPTURE                          VAL R0
      103 NAMECALL                         R6 R0 K25 ["OnGuestEvent"]
      105 CALL                             R6 3 0
      106 CLOSEUPVALS                      R4
      107 RETURN                           R5 1
      108 NAMECALL                         R4 R0 K26 ["IsHost"]
      110 CALL                             R4 1 1
      111 JUMPIFNOT                        R4 ; [+27]
      112 GETIMPORT                        R4 K13 [coroutine.running]
      114 CALL                             R4 0 1
      115 LOADB                            R5 0
      116 LOADK                            R8 K27 ["Util_waitForGuestReady_IsReady"]
      117 NEWCLOSURE                       R9 P7
      118 CAPTURE                          REF R5
      119 CAPTURE                          VAL R4
      120 NAMECALL                         R6 R0 K28 ["OnHostEvent"]
      122 CALL                             R6 3 2
      123 JUMPIF                           R5 ; [+7]
      124 LOADK                            R10 K24 ["Util_waitForGuestReady_Ping"]
      125 GETUPVAL                         R11 3
      126 GETTABLEKS                       R11 R11 K14 ["ALL"]
      128 NAMECALL                         R8 R0 K29 ["FireGuest"]
      130 CALL                             R8 3 0
      131 JUMPIF                           R5 ; [+3]
      132 GETIMPORT                        R8 K20 [coroutine.yield]
      134 CALL                             R8 0 0
      135 JUMPIFNOT                        R7 ; [+2]
      136 MOVE                             R8 R7
      137 CALL                             R8 0 0
      138 CLOSEUPVALS                      R5
      139 DUPCLOSURE                       R4 K30 [PROTO_8]
      140 RETURN                           R4 1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["DMNetworkingOLD"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K12 ["Remote"]
       37 DUPCLOSURE                       R6 K13 [PROTO_9]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 RETURN                           R6 1
