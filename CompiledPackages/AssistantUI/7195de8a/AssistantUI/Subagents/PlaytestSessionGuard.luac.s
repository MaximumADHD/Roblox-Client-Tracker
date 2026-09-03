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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FIntPlaytestLookBudget"]
        3 GETTABLEKS                       R3 R0 K2 ["lookCount"]
        5 ORK                              R2 R3 K1 [0]
        6 JUMPIFNOTLE                      R1 R2 ; [+10]
        8 DUPTABLE                         R3 K7 [{["shortCircuit"] = True, ["isError"] = True, ["message"]}]
        9 GETIMPORT                        R4 K10 [string.format]
       11 LOADK                            R5 K11 ["look budget reached (%d looks this test). Stop verifying visually - read the data model with execute_luau / inspect_instance / search_game_tree and commit your verdict from the evidence you have."]
       12 MOVE                             R6 R1
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K6 ["message"]
       16 RETURN                           R3 1
       17 ADDK                             R3 R2 K12 [1]
       18 SETTABLEKS                       R3 R0 K2 ["lookCount"]
       20 NEWTABLE                         R3 0 0
       22 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+9]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["PlaytestLook"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+5]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 3
       12 JUMPIF                           R3 ; [+3]
       13 NEWTABLE                         R3 0 0
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["StartStopPlay"]
       19 JUMPIFNOTEQ                      R0 R3 ; [+13]
       21 GETTABLEKS                       R3 R1 K2 ["is_start"]
       23 JUMPIFEQKB                       R3 FALSE ; [+9]
       25 GETUPVAL                         R3 4
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+5]
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R2 K3 ["beenLive"]
       31 DUPTABLE                         R3 K8 [{["shortCircuit"] = True, ["message"] = "Play mode is already running. No action needed."}]
       32 RETURN                           R3 1
       33 GETUPVAL                         R4 5
       34 GETTABLE                         R3 R4 R0
       35 JUMPIFNOT                        R3 ; [+45]
       36 GETUPVAL                         R3 4
       37 CALL                             R3 0 1
       38 JUMPIF                           R3 ; [+42]
       39 GETTABLEKS                       R5 R2 K3 ["beenLive"]
       41 JUMPIFEQKB                       R5 TRUE ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 GETTABLEKS                       R6 R2 K9 ["intentionalStop"]
       47 JUMPIFEQKB                       R6 TRUE ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 JUMPIFNOT                        R4 ; [+3]
       52 JUMPIF                           R5 ; [+2]
       53 LOADK                            R3 K10 ["dead"]
       54 JUMP                             ; [+1]
       55 LOADK                            R3 K11 ["not_started"]
       56 LOADNIL                          R4
       57 JUMPIFNOTEQKS                    R3 K10 ["dead"] ; [+16]
       59 GETTABLEKS                       R7 R2 K14 ["deaths"]
       61 ORK                              R6 R7 K13 [0]
       62 ADDK                             R5 R6 K12 [1]
       63 SETTABLEKS                       R5 R2 K14 ["deaths"]
       65 GETTABLEKS                       R5 R2 K14 ["deaths"]
       67 LOADN                            R6 2
       68 JUMPIFNOTLT                      R6 R5 ; [+3]
       70 LOADK                            R4 K15 ["dead_broken"]
       71 JUMP                             ; [+3]
       72 LOADK                            R4 K10 ["dead"]
       73 JUMP                             ; [+1]
       74 LOADK                            R4 K11 ["not_started"]
       75 DUPTABLE                         R5 K17 [{["shortCircuit"] = True, ["isError"] = True, ["message"]}]
       76 GETUPVAL                         R7 6
       77 GETTABLE                         R6 R7 R4
       78 SETTABLEKS                       R6 R5 K6 ["message"]
       80 RETURN                           R5 1
       81 GETUPVAL                         R4 5
       82 GETTABLE                         R3 R4 R0
       83 JUMPIFNOT                        R3 ; [+11]
       84 GETIMPORT                        R3 K20 [table.clone]
       86 MOVE                             R4 R1
       87 CALL                             R3 1 1
       88 LOADB                            R4 1
       89 SETTABLEKS                       R4 R3 K21 ["__playtestToolFix"]
       91 DUPTABLE                         R4 K23 [{"args"}]
       92 SETTABLEKS                       R3 R4 K22 ["args"]
       94 RETURN                           R4 1
       95 NEWTABLE                         R3 0 0
       97 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+1]
        2 RETURN                           R2 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["StartStopPlay"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+70]
        8 GETTABLEKS                       R4 R2 K1 ["isError"]
       10 JUMPIF                           R4 ; [+66]
       11 GETTABLEKS                       R5 R1 K2 ["is_start"]
       13 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 JUMPIFNOT                        R4 ; [+53]
       18 GETUPVAL                         R5 2
       19 LOADB                            R6 1
       20 CALL                             R5 1 1
       21 LOADB                            R6 1
       22 GETTABLEKS                       R7 R3 K3 ["beenLive"]
       24 JUMPIFEQKB                       R7 TRUE ; [+2]
       26 MOVE                             R6 R5
       27 SETTABLEKS                       R6 R3 K3 ["beenLive"]
       29 LOADB                            R6 0
       30 SETTABLEKS                       R6 R3 K4 ["intentionalStop"]
       32 JUMPIF                           R5 ; [+44]
       33 MOVE                             R6 R2
       34 LOADK                            R8 K5 ["Play did not reach a live state within %*s; the experience may be broken."]
       35 GETUPVAL                         R10 3
       36 NAMECALL                         R8 R8 K6 ["format"]
       38 CALL                             R8 2 1
       39 MOVE                             R7 R8
       40 FASTCALL1                        TYPEOF R6 ; [+3]
       41 MOVE                             R9 R6
       42 GETIMPORT                        R8 K8 [typeof]
       44 CALL                             R8 1 1
       45 JUMPIFNOTEQKS                    R8 K9 ["table"] ; [+11]
       47 GETTABLEKS                       R9 R6 K10 ["content"]
       49 FASTCALL1                        TYPEOF R9 ; [+2]
       50 GETIMPORT                        R8 K8 [typeof]
       52 CALL                             R8 1 1
       53 JUMPIFNOTEQKS                    R8 K9 ["table"] ; [+3]
       55 JUMPIFNOTEQKS                    R7 K11 [""] ; [+3]
       57 MOVE                             R2 R6
       58 RETURN                           R2 1
       59 GETTABLEKS                       R9 R6 K10 ["content"]
       61 DUPTABLE                         R10 K14 [{["type"] = "text", ["text"]}]
       62 SETTABLEKS                       R7 R10 K13 ["text"]
       64 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       66 GETIMPORT                        R8 K16 [table.insert]
       68 CALL                             R8 2 0
       69 MOVE                             R2 R6
       70 RETURN                           R2 1
       71 GETUPVAL                         R5 2
       72 LOADB                            R6 0
       73 CALL                             R5 1 0
       74 LOADB                            R5 1
       75 SETTABLEKS                       R5 R3 K4 ["intentionalStop"]
       77 RETURN                           R2 1

PROTO_8:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R1 K0 ["isPlayLive"]
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R4 R1 K2 ["liveTimeoutSeconds"]
       10 ORK                              R3 R4 K1 [30]
       11 GETTABLEKS                       R5 R1 K3 ["sessionRules"]
       13 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETTABLEKS                       R6 R1 K4 ["lookRules"]
       19 JUMPIFNOTEQKB                    R6 FALSE ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 DUPCLOSURE                       R7 K5 [PROTO_5]
       27 CAPTURE                          UPVAL U1
       28 NEWCLOSURE                       R8 P2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R7
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 NEWCLOSURE                       R9 P3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R3
       41 DUPTABLE                         R10 K8 [{"transformToolCall", "transformToolResult"}]
       42 SETTABLEKS                       R8 R10 K6 ["transformToolCall"]
       44 SETTABLEKS                       R9 R10 K7 ["transformToolResult"]
       46 RETURN                           R10 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["SubagentDefinition"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K13 ["ToolNames"]
       37 NEWTABLE                         R6 1 0
       39 NEWTABLE                         R7 4 0
       41 GETTABLEKS                       R8 R5 K14 ["CharacterNavigation"]
       43 LOADB                            R9 1
       44 SETTABLE                         R9 R7 R8
       45 GETTABLEKS                       R8 R5 K15 ["UserMouseInput"]
       47 LOADB                            R9 1
       48 SETTABLE                         R9 R7 R8
       49 GETTABLEKS                       R8 R5 K16 ["UserKeyboardInput"]
       51 LOADB                            R9 1
       52 SETTABLE                         R9 R7 R8
       53 DUPTABLE                         R8 K23 [{["not_started"] = "Not in play mode. Call start_stop_play with is_start = true first (it returns once the game is live), then retry this action.", ["dead"] = "The play session ended. Call start_stop_play with is_start = true to restart, then retry.", ["dead_broken"] = "The play session keeps ending -- the experience may be broken. Report INCONCLUSIVE."}]
       54 DUPCLOSURE                       R9 K24 [PROTO_1]
       55 CAPTURE                          VAL R1
       56 DUPCLOSURE                       R10 K25 [PROTO_2]
       57 DUPCLOSURE                       R11 K26 [PROTO_3]
       58 DUPCLOSURE                       R12 K27 [PROTO_8]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R12 R6 K28 ["create"]
       66 RETURN                           R6 1
