PROTO_0:
        0 GETIMPORT                        R1 K1 [wait]
        2 LOADN                            R2 1
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R0 K2 ["UserId"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+8]
        9 NAMECALL                         R2 R1 K3 ["destroy"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R3 R0 K2 ["UserId"]
       15 LOADNIL                          R4
       16 SETTABLE                         R4 R2 R3
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onCharacterAdded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CharacterAdded"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K2 ["_characterAddedConnection"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onCharacterAdded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_player"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["_data"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K4 ["_abilityManagerActor"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K5 ["_inputMap"]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K6 ["_character"]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K7 ["_humanoid"]
       27 GETIMPORT                        R2 K10 [Instance.new]
       29 LOADK                            R3 K11 ["BindableEvent"]
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R1 K12 ["_enabledChangedEvent"]
       33 GETIMPORT                        R2 K10 [Instance.new]
       35 LOADK                            R3 K11 ["BindableEvent"]
       36 CALL                             R2 1 1
       37 SETTABLEKS                       R2 R1 K13 ["_abilitiesChangedEvent"]
       39 LOADNIL                          R2
       40 SETTABLEKS                       R2 R1 K14 ["_evaluateStateMachineChangedConnection"]
       42 NEWTABLE                         R2 0 0
       44 SETTABLEKS                       R2 R1 K15 ["_abilityChangedEvents"]
       46 NEWTABLE                         R2 0 0
       48 SETTABLEKS                       R2 R1 K16 ["_abilityChangedConnections"]
       50 GETUPVAL                         R2 1
       51 JUMPIFNOT                        R2 ; [+7]
       52 GETIMPORT                        R2 K19 [task.spawn]
       54 NEWCLOSURE                       R3 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R0
       57 CALL                             R2 1 0
       58 JUMP                             ; [+9]
       59 GETTABLEKS                       R2 R0 K20 ["CharacterAdded"]
       61 NEWCLOSURE                       R4 P1
       62 CAPTURE                          VAL R1
       63 NAMECALL                         R2 R2 K21 ["Connect"]
       65 CALL                             R2 2 1
       66 SETTABLEKS                       R2 R1 K22 ["_characterAddedConnection"]
       68 GETTABLEKS                       R2 R0 K23 ["Character"]
       70 JUMPIFNOT                        R2 ; [+5]
       71 GETTABLEKS                       R4 R0 K23 ["Character"]
       73 NAMECALL                         R2 R1 K24 ["_onCharacterAdded"]
       75 CALL                             R2 2 0
       76 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+32]
        2 GETIMPORT                        R0 K1 [game]
        4 LOADK                            R2 K2 ["ReplicatedStorage"]
        5 NAMECALL                         R0 R0 K3 ["GetService"]
        7 CALL                             R0 2 1
        8 LOADK                            R2 K4 ["Packages"]
        9 NAMECALL                         R0 R0 K5 ["FindFirstChild"]
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+5]
       13 LOADK                            R3 K6 ["AvatarAbilities"]
       14 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       16 CALL                             R1 2 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETIMPORT                        R2 K8 [require]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R2
       26 SETUPVAL                         R2 0
       27 GETUPVAL                         R2 0
       28 JUMPIF                           R2 ; [+5]
       29 GETIMPORT                        R2 K8 [require]
       31 LOADK                            R3 K9 ["@rbx/AvatarAbilities"]
       32 CALL                             R2 1 1
       33 SETUPVAL                         R2 0
       34 GETUPVAL                         R0 0
       35 RETURN                           R0 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETTABLEKS                       R1 R0 K0 ["UserId"]
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K0 ["UserId"]
       10 GETTABLE                         R1 R2 R3
       11 JUMPIF                           R1 ; [+10]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["_new"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 MOVE                             R1 R2
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R3 R0 K0 ["UserId"]
       21 SETTABLE                         R1 R2 R3
       22 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_abilityChangedEvents"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 2
        6 GETTABLE                         R0 R1 R2
        7 NAMECALL                         R0 R0 K1 ["Fire"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["_inputMap"]
        2 GETTABLE                         R3 R4 R1
        3 LENGTH                           R4 R3
        4 LOADN                            R5 1
        5 JUMPIFNOTLT                      R4 R5 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEN                        R4 R3 1
        9 JUMPIF                           R4 ; [+1]
       10 RETURN                           R0 0
       11 LOADK                            R7 K1 ["SyncedState"]
       12 NAMECALL                         R5 R4 K2 ["FindFirstChild"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R7 R0 K3 ["_abilityChangedConnections"]
       19 GETTABLE                         R6 R7 R2
       20 JUMPIF                           R6 ; [+5]
       21 GETTABLEKS                       R6 R0 K3 ["_abilityChangedConnections"]
       23 NEWTABLE                         R7 0 0
       25 SETTABLE                         R7 R6 R2
       26 GETTABLEKS                       R8 R0 K3 ["_abilityChangedConnections"]
       28 GETTABLE                         R7 R8 R2
       29 GETTABLE                         R6 R7 R1
       30 JUMPIFNOT                        R6 ; [+12]
       31 GETTABLEKS                       R8 R0 K3 ["_abilityChangedConnections"]
       33 GETTABLE                         R7 R8 R2
       34 GETTABLE                         R6 R7 R1
       35 NAMECALL                         R6 R6 K4 ["Disconnect"]
       37 CALL                             R6 1 0
       38 GETTABLEKS                       R7 R0 K3 ["_abilityChangedConnections"]
       40 GETTABLE                         R6 R7 R2
       41 LOADNIL                          R7
       42 SETTABLE                         R7 R6 R1
       43 GETTABLEKS                       R7 R0 K3 ["_abilityChangedConnections"]
       45 GETTABLE                         R6 R7 R2
       46 MOVE                             R9 R2
       47 NAMECALL                         R7 R5 K5 ["GetAttributeChangedSignal"]
       49 CALL                             R7 2 1
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R7 R7 K6 ["Connect"]
       56 CALL                             R7 2 1
       57 SETTABLE                         R7 R6 R1
       58 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_abilitiesChangedEvent"]
        3 NAMECALL                         R1 R1 K1 ["Fire"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isEnabled"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+69]
        5 LOADNIL                          R0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["_avatarAbilities"]
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R3 R3 K2 ["createMaintainedInputMap"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["_character"]
       17 CALL                             R3 1 3
       18 SETTABLEKS                       R3 R1 K4 ["_inputMap"]
       20 SETTABLEKS                       R4 R2 K5 ["_inputMapCleanup"]
       22 MOVE                             R0 R5
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K6 ["_inputMapChangedConnection"]
       26 JUMPIFNOT                        R1 ; [+10]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K6 ["_inputMapChangedConnection"]
       30 NAMECALL                         R1 R1 K7 ["Disconnect"]
       32 CALL                             R1 1 0
       33 GETUPVAL                         R1 0
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K6 ["_inputMapChangedConnection"]
       37 GETUPVAL                         R1 0
       38 NEWCLOSURE                       R4 P0
       39 CAPTURE                          UPVAL U0
       40 NAMECALL                         R2 R0 K8 ["Connect"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K6 ["_inputMapChangedConnection"]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K9 ["_abilitiesChangedEvent"]
       48 NAMECALL                         R1 R1 K10 ["Fire"]
       50 CALL                             R1 1 0
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K11 ["_abilityChangedEvents"]
       54 LOADNIL                          R2
       55 LOADNIL                          R3
       56 FORGPREP                         R1
       57 MOVE                             R6 R5
       58 LOADNIL                          R7
       59 LOADNIL                          R8
       60 FORGPREP                         R6
       61 NAMECALL                         R11 R10 K10 ["Fire"]
       63 CALL                             R11 1 0
       64 GETUPVAL                         R11 0
       65 MOVE                             R13 R9
       66 MOVE                             R14 R4
       67 NAMECALL                         R11 R11 K12 ["_hookUpAbilityChangedEvent"]
       69 CALL                             R11 3 0
       70 FORGLOOP                         R6 2 ; [-10]
       72 FORGLOOP                         R1 2 ; [-16]
       74 GETUPVAL                         R0 0
       75 GETTABLEKS                       R0 R0 K13 ["_enabledChangedEvent"]
       77 NAMECALL                         R0 R0 K10 ["Fire"]
       79 CALL                             R0 1 0
       80 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["_character"]
        4 LOADK                            R3 K1 ["AbilityManagerActor"]
        5 LOADN                            R4 5
        6 NAMECALL                         R1 R1 K2 ["WaitForChild"]
        8 CALL                             R1 3 1
        9 SETTABLEKS                       R1 R0 K3 ["_abilityManagerActor"]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K3 ["_abilityManagerActor"]
       14 JUMPIFNOT                        R0 ; [+71]
       15 GETUPVAL                         R0 0
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K4 ["_data"]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["_character"]
       24 LOADK                            R3 K5 ["Humanoid"]
       25 NAMECALL                         R1 R1 K6 ["FindFirstChildOfClass"]
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K7 ["_humanoid"]
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K7 ["_humanoid"]
       33 JUMPIF                           R0 ; [+19]
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K0 ["_character"]
       37 GETTABLEKS                       R0 R0 K8 ["ChildAdded"]
       39 NAMECALL                         R0 R0 K9 ["Wait"]
       41 CALL                             R0 1 0
       42 GETUPVAL                         R0 0
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K0 ["_character"]
       46 LOADK                            R3 K5 ["Humanoid"]
       47 NAMECALL                         R1 R1 K6 ["FindFirstChildOfClass"]
       49 CALL                             R1 2 1
       50 SETTABLEKS                       R1 R0 K7 ["_humanoid"]
       52 JUMPBACK                         ; [-23]
       53 GETUPVAL                         R0 0
       54 GETTABLEKS                       R0 R0 K10 ["_evaluateStateMachineChangedConnection"]
       56 JUMPIFNOT                        R0 ; [+10]
       57 GETUPVAL                         R0 0
       58 GETTABLEKS                       R0 R0 K10 ["_evaluateStateMachineChangedConnection"]
       60 NAMECALL                         R0 R0 K11 ["Disconnect"]
       62 CALL                             R0 1 0
       63 GETUPVAL                         R0 0
       64 LOADNIL                          R1
       65 SETTABLEKS                       R1 R0 K10 ["_evaluateStateMachineChangedConnection"]
       67 NEWCLOSURE                       R0 P0
       68 CAPTURE                          UPVAL U0
       69 GETUPVAL                         R1 0
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R2 R2 K7 ["_humanoid"]
       73 LOADK                            R4 K12 ["EvaluateStateMachine"]
       74 NAMECALL                         R2 R2 K13 ["GetPropertyChangedSignal"]
       76 CALL                             R2 2 1
       77 NEWCLOSURE                       R4 P1
       78 CAPTURE                          VAL R0
       79 NAMECALL                         R2 R2 K14 ["Connect"]
       81 CALL                             R2 2 1
       82 SETTABLEKS                       R2 R1 K10 ["_evaluateStateMachineChangedConnection"]
       84 MOVE                             R1 R0
       85 CALL                             R1 0 0
       86 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R0 K0 ["_abilityManagerActor"]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K1 ["_humanoid"]
        6 SETTABLEKS                       R1 R0 K2 ["_character"]
        8 GETTABLEKS                       R2 R0 K3 ["_evaluateStateMachineChangedConnection"]
       10 JUMPIFNOT                        R2 ; [+8]
       11 GETTABLEKS                       R2 R0 K3 ["_evaluateStateMachineChangedConnection"]
       13 NAMECALL                         R2 R2 K4 ["Disconnect"]
       15 CALL                             R2 1 0
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R0 K3 ["_evaluateStateMachineChangedConnection"]
       19 GETTABLEKS                       R2 R0 K2 ["_character"]
       21 JUMPIFNOT                        R2 ; [+5]
       22 GETIMPORT                        R2 K7 [task.spawn]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_abilityManagerActor"]
        3 JUMPIFEQKNIL                     R2 ; [+9]
        5 GETTABLEKS                       R1 R0 K1 ["_humanoid"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R2 R0 K1 ["_humanoid"]
       10 GETTABLEKS                       R2 R2 K2 ["EvaluateStateMachine"]
       12 NOT                              R1 R2
       13 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_enabledChangedEvent"]
        2 GETTABLEKS                       R1 R1 K1 ["Event"]
        4 RETURN                           R1 1

PROTO_16:
        0 NAMECALL                         R3 R0 K0 ["isEnabled"]
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K1 ["_data"]
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFEQ                         R2 R3 ; [+14]
       10 GETTABLEKS                       R4 R0 K1 ["_data"]
       12 SETTABLE                         R2 R4 R1
       13 GETTABLEKS                       R4 R0 K2 ["_avatarAbilities"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R4 R4 K3 ["setAbilityManagerCommand"]
       18 GETTABLEKS                       R5 R0 K4 ["_character"]
       20 MOVE                             R6 R1
       21 MOVE                             R7 R2
       22 CALL                             R4 3 0
       23 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R5 R0 K0 ["_inputMap"]
        2 GETTABLE                         R4 R5 R1
        3 LENGTH                           R5 R4
        4 LOADN                            R6 1
        5 JUMPIFNOTLT                      R5 R6 ; [+2]
        7 RETURN                           R3 1
        8 GETTABLEN                        R5 R4 1
        9 JUMPIF                           R5 ; [+1]
       10 RETURN                           R3 1
       11 LOADK                            R8 K1 ["SyncedState"]
       12 NAMECALL                         R6 R5 K2 ["FindFirstChild"]
       14 CALL                             R6 2 1
       15 JUMPIF                           R6 ; [+1]
       16 RETURN                           R3 1
       17 MOVE                             R9 R2
       18 NAMECALL                         R7 R6 K3 ["GetAttribute"]
       20 CALL                             R7 2 1
       21 JUMPIFNOTEQKNIL                  R7 ; [+2]
       23 RETURN                           R3 1
       24 RETURN                           R7 1

PROTO_18:
        0 GETTABLEKS                       R4 R0 K0 ["_abilityChangedEvents"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+5]
        4 GETTABLEKS                       R3 R0 K0 ["_abilityChangedEvents"]
        6 NEWTABLE                         R4 0 0
        8 SETTABLE                         R4 R3 R2
        9 GETTABLEKS                       R5 R0 K0 ["_abilityChangedEvents"]
       11 GETTABLE                         R4 R5 R2
       12 GETTABLE                         R3 R4 R1
       13 JUMPIFNOT                        R3 ; [+7]
       14 GETTABLEKS                       R5 R0 K0 ["_abilityChangedEvents"]
       16 GETTABLE                         R4 R5 R2
       17 GETTABLE                         R3 R4 R1
       18 GETTABLEKS                       R3 R3 K1 ["Event"]
       20 RETURN                           R3 1
       21 GETIMPORT                        R3 K4 [Instance.new]
       23 LOADK                            R4 K5 ["BindableEvent"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R0 K0 ["_abilityChangedEvents"]
       27 GETTABLE                         R4 R5 R2
       28 SETTABLE                         R3 R4 R1
       29 MOVE                             R6 R1
       30 MOVE                             R7 R2
       31 NAMECALL                         R4 R0 K6 ["_hookUpAbilityChangedEvent"]
       33 CALL                             R4 3 0
       34 GETTABLEKS                       R4 R3 K1 ["Event"]
       36 RETURN                           R4 1

PROTO_19:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Enabled"]
        2 LOADB                            R6 0
        3 NAMECALL                         R2 R0 K1 ["GetAbilityAttribute"]
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_20:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Enabled"]
        2 NAMECALL                         R2 R0 K1 ["GetAbilityAttributeChangedSignal"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_21:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Suspended"]
        2 LOADB                            R6 0
        3 NAMECALL                         R2 R0 K1 ["GetAbilityAttribute"]
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_22:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Suspended"]
        2 NAMECALL                         R2 R0 K1 ["GetAbilityAttributeChangedSignal"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_23:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Active"]
        2 LOADB                            R6 0
        3 NAMECALL                         R2 R0 K1 ["GetAbilityAttribute"]
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_24:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["Active"]
        2 NAMECALL                         R2 R0 K1 ["GetAbilityAttributeChangedSignal"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_25:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["IsValid"]
        2 LOADB                            R6 1
        3 NAMECALL                         R2 R0 K1 ["GetAbilityAttribute"]
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_26:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["IsValid"]
        2 NAMECALL                         R2 R0 K1 ["GetAbilityAttributeChangedSignal"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_27:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_inputMap"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_abilitiesChangedEvent"]
        2 GETTABLEKS                       R1 R1 K1 ["Event"]
        4 RETURN                           R1 1

PROTO_29:
        0 DUPTABLE                         R2 K2 [{[1] = -1}]
        1 GETTABLEKS                       R4 R0 K3 ["_inputMap"]
        3 GETTABLE                         R3 R4 R1
        4 LENGTH                           R4 R3
        5 LOADN                            R5 1
        6 JUMPIFNOTLT                      R4 R5 ; [+2]
        8 RETURN                           R2 1
        9 GETTABLEN                        R4 R3 1
       10 JUMPIF                           R4 ; [+1]
       11 RETURN                           R2 1
       12 LOADK                            R7 K4 ["ActionSlot"]
       13 NAMECALL                         R5 R4 K5 ["GetAttribute"]
       15 CALL                             R5 2 1
       16 JUMPIF                           R5 ; [+1]
       17 RETURN                           R2 1
       18 FASTCALL1                        TONUMBER R5 ; [+3]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K7 [tonumber]
       22 CALL                             R6 1 1
       23 LOADK                            R9 K8 ["CustomIcon"]
       24 NAMECALL                         R7 R4 K5 ["GetAttribute"]
       26 CALL                             R7 2 1
       27 LOADK                            R10 K9 ["CustomIconActive"]
       28 NAMECALL                         R8 R4 K5 ["GetAttribute"]
       30 CALL                             R8 2 1
       31 LOADK                            R11 K10 ["CustomIconInvalid"]
       32 NAMECALL                         R9 R4 K5 ["GetAttribute"]
       34 CALL                             R9 2 1
       35 DUPTABLE                         R10 K14 [{"Slot", "ButtonAssetId", "ButtonPressedAssetId", "ButtonInvalidAssetId"}]
       36 SETTABLEKS                       R6 R10 K0 ["Slot"]
       38 SETTABLEKS                       R7 R10 K11 ["ButtonAssetId"]
       40 SETTABLEKS                       R8 R10 K12 ["ButtonPressedAssetId"]
       42 SETTABLEKS                       R9 R10 K13 ["ButtonInvalidAssetId"]
       44 RETURN                           R10 1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_characterAddedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_characterAddedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_characterAddedConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["_evaluateStateMachineChangedConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_evaluateStateMachineChangedConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_evaluateStateMachineChangedConnection"]
       22 GETTABLEKS                       R1 R0 K3 ["_abilityChangedConnections"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 MOVE                             R6 R5
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 NAMECALL                         R11 R10 K1 ["Disconnect"]
       33 CALL                             R11 1 0
       34 FORGLOOP                         R6 2 ; [-4]
       36 FORGLOOP                         R1 2 ; [-10]
       38 NEWTABLE                         R1 0 0
       40 SETTABLEKS                       R1 R0 K3 ["_abilityChangedConnections"]
       42 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 LOADNIL                          R1
        3 SETUPVAL                         R1 1
        4 GETUPVAL                         R1 2
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 2
        7 NAMECALL                         R1 R1 K0 ["Disconnect"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 2
       12 JUMPIFNOT                        R0 ; [+38]
       13 LOADK                            R3 K1 ["AbilityManagerActor"]
       14 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
       16 CALL                             R1 2 1
       17 SETUPVAL                         R1 0
       18 LOADK                            R3 K3 ["Humanoid"]
       19 NAMECALL                         R1 R0 K4 ["FindFirstChildOfClass"]
       21 CALL                             R1 2 1
       22 SETUPVAL                         R1 1
       23 GETUPVAL                         R1 1
       24 JUMPIF                           R1 ; [+11]
       25 GETTABLEKS                       R1 R0 K5 ["ChildAdded"]
       27 NAMECALL                         R1 R1 K6 ["wait"]
       29 CALL                             R1 1 0
       30 LOADK                            R3 K3 ["Humanoid"]
       31 NAMECALL                         R1 R0 K4 ["FindFirstChildOfClass"]
       33 CALL                             R1 2 1
       34 SETUPVAL                         R1 1
       35 JUMPBACK                         ; [-13]
       36 GETUPVAL                         R1 3
       37 NAMECALL                         R1 R1 K7 ["Fire"]
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 1
       41 LOADK                            R3 K8 ["EvaluateStateMachine"]
       42 NAMECALL                         R1 R1 K9 ["GetPropertyChangedSignal"]
       44 CALL                             R1 2 1
       45 DUPCLOSURE                       R3 K10 [PROTO_31]
       46 CAPTURE                          UPVAL U3
       47 NAMECALL                         R1 R1 K11 ["Connect"]
       49 CALL                             R1 2 1
       50 SETUPVAL                         R1 2
       51 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        8 JUMPIFNOT                        R0 ; [+13]
        9 GETTABLEKS                       R1 R0 K1 ["characterAdded"]
       11 GETUPVAL                         R3 2
       12 NAMECALL                         R1 R1 K2 ["Connect"]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K3 ["Character"]
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R2 R0 K3 ["Character"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 JUMP                             ; [+19]
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        8 JUMPIFNOT                        R0 ; [+13]
        9 GETTABLEKS                       R1 R0 K1 ["characterAdded"]
       11 GETUPVAL                         R3 2
       12 NAMECALL                         R1 R1 K2 ["Connect"]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K3 ["Character"]
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R2 R0 K3 ["Character"]
       21 CALL                             R1 1 0
       22 LOADB                            R0 0
       23 GETUPVAL                         R1 3
       24 JUMPIFEQKNIL                     R1 ; [+7]
       26 GETUPVAL                         R0 4
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R1 R1 K4 ["EvaluateStateMachine"]
       31 NOT                              R0 R1
       32 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 JUMP                             ; [+19]
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        8 JUMPIFNOT                        R0 ; [+13]
        9 GETTABLEKS                       R1 R0 K1 ["characterAdded"]
       11 GETUPVAL                         R3 2
       12 NAMECALL                         R1 R1 K2 ["Connect"]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K3 ["Character"]
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R2 R0 K3 ["Character"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K4 ["Event"]
       25 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 LOADK                            R4 K9 ["CommonUtils"]
       16 NAMECALL                         R2 R2 K10 ["WaitForChild"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 1
       20 GETTABLEKS                       R2 R1 K11 ["get"]
       22 LOADK                            R3 K12 ["FlagUtil"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K13 ["getUserFlag"]
       26 LOADK                            R4 K14 ["UserPlayerScriptsCCLIntegrationD"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K13 ["getUserFlag"]
       30 LOADK                            R5 K15 ["UserPlayerScriptsPlayerControlState2"]
       31 CALL                             R4 1 1
       32 JUMPIFNOT                        R3 ; [+87]
       33 NEWTABLE                         R5 32 0
       35 SETTABLEKS                       R5 R5 K16 ["__index"]
       37 NEWTABLE                         R6 0 0
       39 GETTABLEKS                       R7 R0 K17 ["PlayerRemoving"]
       41 DUPCLOSURE                       R9 K18 [PROTO_0]
       42 CAPTURE                          VAL R6
       43 NAMECALL                         R7 R7 K19 ["Connect"]
       45 CALL                             R7 2 0
       46 DUPCLOSURE                       R7 K20 [PROTO_4]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R7 R5 K21 ["_new"]
       51 LOADNIL                          R7
       52 NEWCLOSURE                       R8 P2
       53 CAPTURE                          REF R7
       54 SETTABLEKS                       R8 R5 K22 ["_avatarAbilities"]
       56 DUPCLOSURE                       R8 K23 [PROTO_6]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R8 R5 K11 ["get"]
       61 DUPCLOSURE                       R8 K24 [PROTO_8]
       62 SETTABLEKS                       R8 R5 K25 ["_hookUpAbilityChangedEvent"]
       64 DUPCLOSURE                       R8 K26 [PROTO_13]
       65 SETTABLEKS                       R8 R5 K27 ["_onCharacterAdded"]
       67 DUPCLOSURE                       R8 K28 [PROTO_14]
       68 SETTABLEKS                       R8 R5 K29 ["isEnabled"]
       70 DUPCLOSURE                       R8 K30 [PROTO_15]
       71 SETTABLEKS                       R8 R5 K31 ["GetEnabledChangedSignal"]
       73 DUPCLOSURE                       R8 K32 [PROTO_16]
       74 SETTABLEKS                       R8 R5 K33 ["SendInput"]
       76 DUPCLOSURE                       R8 K34 [PROTO_17]
       77 SETTABLEKS                       R8 R5 K35 ["GetAbilityAttribute"]
       79 DUPCLOSURE                       R8 K36 [PROTO_18]
       80 SETTABLEKS                       R8 R5 K37 ["GetAbilityAttributeChangedSignal"]
       82 DUPCLOSURE                       R8 K38 [PROTO_19]
       83 SETTABLEKS                       R8 R5 K39 ["GetAbilityEnabled"]
       85 DUPCLOSURE                       R8 K40 [PROTO_20]
       86 SETTABLEKS                       R8 R5 K41 ["GetAbilityEnabledChangedSignal"]
       88 DUPCLOSURE                       R8 K42 [PROTO_21]
       89 SETTABLEKS                       R8 R5 K43 ["GetAbilitySuspended"]
       91 DUPCLOSURE                       R8 K44 [PROTO_22]
       92 SETTABLEKS                       R8 R5 K45 ["GetAbilitySuspendedChangedSignal"]
       94 DUPCLOSURE                       R8 K46 [PROTO_23]
       95 SETTABLEKS                       R8 R5 K47 ["GetAbilityActive"]
       97 DUPCLOSURE                       R8 K48 [PROTO_24]
       98 SETTABLEKS                       R8 R5 K49 ["GetAbilityActiveChangedSignal"]
      100 DUPCLOSURE                       R8 K50 [PROTO_25]
      101 SETTABLEKS                       R8 R5 K51 ["GetAbilityValid"]
      103 DUPCLOSURE                       R8 K52 [PROTO_26]
      104 SETTABLEKS                       R8 R5 K53 ["GetAbilityValidChangedSignal"]
      106 DUPCLOSURE                       R8 K54 [PROTO_27]
      107 SETTABLEKS                       R8 R5 K55 ["GetAbilities"]
      109 DUPCLOSURE                       R8 K56 [PROTO_28]
      110 SETTABLEKS                       R8 R5 K57 ["GetAbilitiesChangedSignal"]
      112 DUPCLOSURE                       R8 K58 [PROTO_29]
      113 SETTABLEKS                       R8 R5 K59 ["GetAbilityConfig"]
      115 DUPCLOSURE                       R8 K60 [PROTO_30]
      116 SETTABLEKS                       R8 R5 K61 ["destroy"]
      118 CLOSEUPVALS                      R7
      119 RETURN                           R5 1
      120 GETIMPORT                        R5 K1 [game]
      122 LOADK                            R7 K2 ["Players"]
      123 NAMECALL                         R5 R5 K3 ["GetService"]
      125 CALL                             R5 2 1
      126 NEWTABLE                         R6 2 0
      128 LOADNIL                          R7
      129 LOADNIL                          R8
      130 GETIMPORT                        R9 K64 [Instance.new]
      132 LOADK                            R10 K65 ["BindableEvent"]
      133 CALL                             R9 1 1
      134 LOADNIL                          R10
      135 LOADB                            R11 0
      136 NEWCLOSURE                       R12 P23
      137 CAPTURE                          REF R7
      138 CAPTURE                          REF R8
      139 CAPTURE                          REF R10
      140 CAPTURE                          VAL R9
      141 NEWCLOSURE                       R13 P24
      142 CAPTURE                          REF R11
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R12
      145 NEWCLOSURE                       R14 P25
      146 CAPTURE                          REF R11
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R12
      149 CAPTURE                          REF R7
      150 CAPTURE                          REF R8
      151 SETTABLEKS                       R14 R6 K29 ["isEnabled"]
      153 NEWCLOSURE                       R14 P26
      154 CAPTURE                          REF R11
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R9
      158 SETTABLEKS                       R14 R6 K31 ["GetEnabledChangedSignal"]
      160 CLOSEUPVALS                      R7
      161 RETURN                           R6 1
