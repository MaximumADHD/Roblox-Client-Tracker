PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getStudioPlayState"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 MOVE                             R2 R0
        6 JUMPIFNOT                        R2 ; [+4]
        7 JUMPIFEQKB                       R1 TRUE ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+3]
        1 JUMPIF                           R1 ; [+2]
        2 LOADK                            R2 K0 ["dead"]
        3 RETURN                           R2 1
        4 LOADK                            R2 K1 ["not_started"]
        5 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+11]
        7 GETTABLEKS                       R3 R0 K3 ["content"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+3]
       15 JUMPIFNOTEQKS                    R1 K4 [""] ; [+2]
       17 RETURN                           R0 1
       18 GETTABLEKS                       R3 R0 K3 ["content"]
       20 DUPTABLE                         R4 K7 [{["type"] = "text", ["text"]}]
       21 SETTABLEKS                       R1 R4 K6 ["text"]
       23 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       25 GETIMPORT                        R2 K9 [table.insert]
       27 CALL                             R2 2 0
       28 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFEQ                         R2 R0 ; [+13]
        7 GETIMPORT                        R3 K2 [os.clock]
        9 CALL                             R3 0 1
       10 SUB                              R2 R3 R1
       11 GETUPVAL                         R3 1
       12 JUMPIFNOTLT                      R2 R3 ; [+6]
       14 GETIMPORT                        R2 K5 [task.wait]
       16 LOADK                            R3 K6 [0.2]
       17 CALL                             R2 1 0
       18 JUMPBACK                         ; [-16]
       19 GETUPVAL                         R3 0
       20 CALL                             R3 0 1
       21 JUMPIFEQ                         R3 R0 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["StartStopPlay"]
        3 JUMPIFNOTEQ                      R0 R3 ; [+13]
        5 GETTABLEKS                       R3 R1 K1 ["is_start"]
        7 JUMPIFEQKB                       R3 FALSE ; [+9]
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K2 ["beenLive"]
       15 DUPTABLE                         R3 K7 [{["shortCircuit"] = True, ["message"] = "Play mode is already running. No action needed."}]
       16 RETURN                           R3 1
       17 GETUPVAL                         R4 2
       18 GETTABLE                         R3 R4 R0
       19 JUMPIFNOT                        R3 ; [+45]
       20 GETUPVAL                         R3 1
       21 CALL                             R3 0 1
       22 JUMPIF                           R3 ; [+42]
       23 GETTABLEKS                       R5 R2 K2 ["beenLive"]
       25 JUMPIFEQKB                       R5 TRUE ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 GETTABLEKS                       R6 R2 K8 ["intentionalStop"]
       31 JUMPIFEQKB                       R6 TRUE ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 JUMPIFNOT                        R4 ; [+3]
       36 JUMPIF                           R5 ; [+2]
       37 LOADK                            R3 K9 ["dead"]
       38 JUMP                             ; [+1]
       39 LOADK                            R3 K10 ["not_started"]
       40 LOADNIL                          R4
       41 JUMPIFNOTEQKS                    R3 K9 ["dead"] ; [+16]
       43 GETTABLEKS                       R7 R2 K13 ["deaths"]
       45 ORK                              R6 R7 K12 [0]
       46 ADDK                             R5 R6 K11 [1]
       47 SETTABLEKS                       R5 R2 K13 ["deaths"]
       49 GETTABLEKS                       R5 R2 K13 ["deaths"]
       51 LOADN                            R6 2
       52 JUMPIFNOTLT                      R6 R5 ; [+3]
       54 LOADK                            R4 K14 ["dead_broken"]
       55 JUMP                             ; [+3]
       56 LOADK                            R4 K9 ["dead"]
       57 JUMP                             ; [+1]
       58 LOADK                            R4 K10 ["not_started"]
       59 DUPTABLE                         R5 K16 [{["shortCircuit"] = True, ["isError"] = True, ["message"]}]
       60 GETUPVAL                         R7 3
       61 GETTABLE                         R6 R7 R4
       62 SETTABLEKS                       R6 R5 K5 ["message"]
       64 RETURN                           R5 1
       65 GETUPVAL                         R4 2
       66 GETTABLE                         R3 R4 R0
       67 JUMPIFNOT                        R3 ; [+11]
       68 GETIMPORT                        R3 K19 [table.clone]
       70 MOVE                             R4 R1
       71 CALL                             R3 1 1
       72 LOADB                            R4 1
       73 SETTABLEKS                       R4 R3 K20 ["__playtestToolFix"]
       75 DUPTABLE                         R4 K22 [{"args"}]
       76 SETTABLEKS                       R3 R4 K21 ["args"]
       78 RETURN                           R4 1
       79 NEWTABLE                         R3 0 0
       81 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["StartStopPlay"]
        3 JUMPIFNOTEQ                      R0 R4 ; [+70]
        5 GETTABLEKS                       R4 R2 K1 ["isError"]
        7 JUMPIF                           R4 ; [+66]
        8 GETTABLEKS                       R5 R1 K2 ["is_start"]
       10 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 JUMPIFNOT                        R4 ; [+53]
       15 GETUPVAL                         R5 1
       16 LOADB                            R6 1
       17 CALL                             R5 1 1
       18 LOADB                            R6 1
       19 GETTABLEKS                       R7 R3 K3 ["beenLive"]
       21 JUMPIFEQKB                       R7 TRUE ; [+2]
       23 MOVE                             R6 R5
       24 SETTABLEKS                       R6 R3 K3 ["beenLive"]
       26 LOADB                            R6 0
       27 SETTABLEKS                       R6 R3 K4 ["intentionalStop"]
       29 JUMPIF                           R5 ; [+44]
       30 MOVE                             R6 R2
       31 LOADK                            R8 K5 ["Play did not reach a live state within %*s; the experience may be broken."]
       32 GETUPVAL                         R10 2
       33 NAMECALL                         R8 R8 K6 ["format"]
       35 CALL                             R8 2 1
       36 MOVE                             R7 R8
       37 FASTCALL1                        TYPEOF R6 ; [+3]
       38 MOVE                             R9 R6
       39 GETIMPORT                        R8 K8 [typeof]
       41 CALL                             R8 1 1
       42 JUMPIFNOTEQKS                    R8 K9 ["table"] ; [+11]
       44 GETTABLEKS                       R9 R6 K10 ["content"]
       46 FASTCALL1                        TYPEOF R9 ; [+2]
       47 GETIMPORT                        R8 K8 [typeof]
       49 CALL                             R8 1 1
       50 JUMPIFNOTEQKS                    R8 K9 ["table"] ; [+3]
       52 JUMPIFNOTEQKS                    R7 K11 [""] ; [+3]
       54 MOVE                             R2 R6
       55 RETURN                           R2 1
       56 GETTABLEKS                       R9 R6 K10 ["content"]
       58 DUPTABLE                         R10 K14 [{["type"] = "text", ["text"]}]
       59 SETTABLEKS                       R7 R10 K13 ["text"]
       61 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       63 GETIMPORT                        R8 K16 [table.insert]
       65 CALL                             R8 2 0
       66 MOVE                             R2 R6
       67 RETURN                           R2 1
       68 GETUPVAL                         R5 1
       69 LOADB                            R6 0
       70 CALL                             R5 1 0
       71 LOADB                            R5 1
       72 SETTABLEKS                       R5 R3 K4 ["intentionalStop"]
       74 RETURN                           R2 1

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R1 K0 ["isPlayLive"]
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R4 R1 K2 ["liveTimeoutSeconds"]
       10 ORK                              R3 R4 K1 [30]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 NEWCLOSURE                       R6 P2
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 DUPTABLE                         R7 K5 [{"transformToolCall", "transformToolResult"}]
       24 SETTABLEKS                       R5 R7 K3 ["transformToolCall"]
       26 SETTABLEKS                       R6 R7 K4 ["transformToolResult"]
       28 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["SubagentDefinition"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Tools"]
       27 GETTABLEKS                       R4 R4 K11 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ToolNames"]
       32 NEWTABLE                         R5 1 0
       34 NEWTABLE                         R6 4 0
       36 GETTABLEKS                       R7 R4 K13 ["CharacterNavigation"]
       38 LOADB                            R8 1
       39 SETTABLE                         R8 R6 R7
       40 GETTABLEKS                       R7 R4 K14 ["UserMouseInput"]
       42 LOADB                            R8 1
       43 SETTABLE                         R8 R6 R7
       44 GETTABLEKS                       R7 R4 K15 ["UserKeyboardInput"]
       46 LOADB                            R8 1
       47 SETTABLE                         R8 R6 R7
       48 DUPTABLE                         R7 K22 [{["not_started"] = "Not in play mode. Call start_stop_play with is_start = true first (it returns once the game is live), then retry this action.", ["dead"] = "The play session ended. Call start_stop_play with is_start = true to restart, then retry.", ["dead_broken"] = "The play session keeps ending -- the experience may be broken. Report INCONCLUSIVE."}]
       49 DUPCLOSURE                       R8 K23 [PROTO_1]
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R9 K24 [PROTO_2]
       52 DUPCLOSURE                       R10 K25 [PROTO_3]
       53 DUPCLOSURE                       R11 K26 [PROTO_7]
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 SETTABLEKS                       R11 R5 K27 ["create"]
       60 RETURN                           R5 1
