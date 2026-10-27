PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K2 ["enabled"]
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["actions"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [script]
        2 GETTABLEKS                       R0 R0 K2 ["Parent"]
        4 GETTABLEKS                       R0 R0 K2 ["Parent"]
        6 GETTABLEKS                       R0 R0 K3 ["InputContexts"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K4 ["isServerAuthority"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["player"]
       15 GETTABLEKS                       R0 R1 K3 ["InputContexts"]
       17 GETTABLEKS                       R1 R0 K6 ["CharacterContext"]
       19 GETUPVAL                         R2 1
       20 DUPTABLE                         R3 K9 [{"MoveAction", "JumpAction"}]
       21 GETTABLEKS                       R4 R1 K7 ["MoveAction"]
       23 SETTABLEKS                       R4 R3 K7 ["MoveAction"]
       25 GETTABLEKS                       R4 R1 K8 ["JumpAction"]
       27 SETTABLEKS                       R4 R3 K8 ["JumpAction"]
       29 SETTABLEKS                       R3 R2 K10 ["actions"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K11 ["eventBus"]
       34 LOADK                            R4 K12 ["ACTIONS_RELOADED"]
       35 NAMECALL                         R2 R2 K13 ["publish"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["connectionUtil"]
        2 LOADK                            R4 K1 ["SERVER_AUTHORITY_CHANGED"]
        3 GETTABLEKS                       R5 R0 K2 ["eventBus"]
        5 LOADK                            R7 K1 ["SERVER_AUTHORITY_CHANGED"]
        6 NAMECALL                         R5 R5 K3 ["subscribe"]
        8 CALL                             R5 2 1
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R5 R5 K4 ["Connect"]
       13 CALL                             R5 2 -1
       14 NAMECALL                         R2 R2 K5 ["trackConnection"]
       16 CALL                             R2 -1 0
       17 GETTABLEKS                       R2 R1 K6 ["actions"]
       19 GETTABLEKS                       R2 R2 K7 ["MoveAction"]
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETTABLEKS                       R2 R1 K6 ["actions"]
       24 GETTABLEKS                       R2 R2 K8 ["JumpAction"]
       26 JUMPIFNOT                        R2 ; [+1]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R2 R1 K9 ["player"]
       30 JUMPIF                           R2 ; [+1]
       31 RETURN                           R0 0
       32 GETIMPORT                        R2 K11 [pcall]
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["actions"]
        2 GETTABLEKS                       R1 R1 K1 ["MoveAction"]
        4 NAMECALL                         R1 R1 K2 ["GetState"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K3 ["moveVector"]
        9 GETTABLEKS                       R1 R0 K0 ["actions"]
       11 GETTABLEKS                       R1 R1 K4 ["JumpAction"]
       13 NAMECALL                         R1 R1 K2 ["GetState"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K5 ["isJumping"]
       18 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 LOADK                            R3 K5 ["CommonUtils"]
       10 NAMECALL                         R1 R1 K6 ["WaitForChild"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 1
       14 GETTABLEKS                       R1 R0 K7 ["get"]
       16 LOADK                            R2 K8 ["FlagUtil"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K11 [{["SERVER_AUTHORITY_CHANGED"] = "SERVER_AUTHORITY_CHANGED", ["ACTIONS_RELOADED"] = "ACTIONS_RELOADED"}]
       19 NEWTABLE                         R3 0 0
       21 SETTABLEKS                       R3 R3 K12 ["__index"]
       23 DUPCLOSURE                       R4 K13 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R4 R3 K14 ["new"]
       27 DUPCLOSURE                       R4 K15 [PROTO_3]
       28 SETTABLEKS                       R4 R3 K16 ["initializeActions"]
       30 DUPCLOSURE                       R4 K17 [PROTO_4]
       31 SETTABLEKS                       R4 R3 K18 ["update"]
       33 DUPCLOSURE                       R4 K19 [PROTO_5]
       34 SETTABLEKS                       R4 R3 K20 ["Enable"]
       36 RETURN                           R3 1
