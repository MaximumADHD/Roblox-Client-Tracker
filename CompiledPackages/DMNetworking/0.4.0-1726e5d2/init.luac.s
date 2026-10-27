PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["implementation"]
        2 JUMPIFNOT                        R1 ; [+22]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R5 R0 K0 ["implementation"]
        6 GETTABLE                         R3 R4 R5
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 LOADK                            R3 K1 ["Unknown implementation \"%*\"; expected one of Studio, Game, Callback"]
       12 GETTABLEKS                       R5 R0 K0 ["implementation"]
       14 NAMECALL                         R3 R3 K2 ["format"]
       16 CALL                             R3 2 1
       17 FASTCALL2                        ASSERT R2 R3 ; [+3]
       19 GETIMPORT                        R1 K4 [assert]
       21 CALL                             R1 2 0
       22 GETTABLEKS                       R1 R0 K0 ["implementation"]
       24 RETURN                           R1 1
       25 GETTABLEKS                       R1 R0 K5 ["plugin"]
       27 JUMPIFNOT                        R1 ; [+4]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K6 ["Studio"]
       31 RETURN                           R1 1
       32 GETUPVAL                         R1 1
       33 NAMECALL                         R1 R1 K7 ["IsRunning"]
       35 CALL                             R1 1 1
       36 JUMPIFNOT                        R1 ; [+4]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K8 ["Game"]
       40 RETURN                           R1 1
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K9 ["Callback"]
       44 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R3 R1 K0 ["implementation"]
        6 JUMPIFNOT                        R3 ; [+22]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R7 R1 K0 ["implementation"]
       10 GETTABLE                         R5 R6 R7
       11 JUMPIFNOTEQKNIL                  R5 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 LOADK                            R5 K1 ["Unknown implementation \"%*\"; expected one of Studio, Game, Callback"]
       16 GETTABLEKS                       R7 R1 K0 ["implementation"]
       18 NAMECALL                         R5 R5 K2 ["format"]
       20 CALL                             R5 2 1
       21 FASTCALL2                        ASSERT R4 R5 ; [+3]
       23 GETIMPORT                        R3 K4 [assert]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R2 R1 K0 ["implementation"]
       28 JUMP                             ; [+19]
       29 GETTABLEKS                       R3 R1 K5 ["plugin"]
       31 JUMPIFNOT                        R3 ; [+4]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K6 ["Studio"]
       35 JUMP                             ; [+12]
       36 GETUPVAL                         R3 1
       37 NAMECALL                         R3 R3 K7 ["IsRunning"]
       39 CALL                             R3 1 1
       40 JUMPIFNOT                        R3 ; [+4]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K8 ["Game"]
       44 JUMP                             ; [+3]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K9 ["Callback"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K6 ["Studio"]
       51 JUMPIFNOTEQ                      R2 R3 ; [+7]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K10 ["new"]
       56 MOVE                             R4 R1
       57 CALL                             R3 1 -1
       58 RETURN                           R3 -1
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K8 ["Game"]
       62 JUMPIFNOTEQ                      R2 R3 ; [+7]
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R3 R3 K10 ["new"]
       67 MOVE                             R4 R1
       68 CALL                             R3 1 -1
       69 RETURN                           R3 -1
       70 GETUPVAL                         R3 4
       71 GETTABLEKS                       R3 R3 K10 ["new"]
       73 MOVE                             R4 R1
       74 CALL                             R3 1 -1
       75 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [game]
        5 LOADK                            R3 K4 ["RunService"]
        6 NAMECALL                         R1 R1 K5 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K7 [require]
       11 GETTABLEKS                       R3 R0 K8 ["Implementations"]
       13 GETTABLEKS                       R3 R3 K9 ["CallbackNetworking"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Implementations"]
       20 GETTABLEKS                       R4 R4 K10 ["GameNetworking"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K7 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Utils"]
       27 GETTABLEKS                       R5 R5 K12 ["Logger"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K7 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Remote"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K7 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Implementations"]
       39 GETTABLEKS                       R7 R7 K14 ["StudioNetworking"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K7 [require]
       44 GETTABLEKS                       R8 R0 K15 ["Types"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K16 ["ImplementationKind"]
       49 DUPCLOSURE                       R9 K17 [PROTO_0]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R1
       52 DUPCLOSURE                       R10 K18 [PROTO_1]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 DUPTABLE                         R11 K24 [{"new", "Remote", "Identity", "ALL", "FOCUSED", "ImplementationKind", "LogLevel"}]
       59 SETTABLEKS                       R10 R11 K19 ["new"]
       61 SETTABLEKS                       R5 R11 K13 ["Remote"]
       63 GETTABLEKS                       R12 R7 K20 ["Identity"]
       65 SETTABLEKS                       R12 R11 K20 ["Identity"]
       67 GETTABLEKS                       R12 R7 K20 ["Identity"]
       69 GETTABLEKS                       R12 R12 K21 ["ALL"]
       71 SETTABLEKS                       R12 R11 K21 ["ALL"]
       73 GETTABLEKS                       R12 R7 K20 ["Identity"]
       75 GETTABLEKS                       R12 R12 K22 ["FOCUSED"]
       77 SETTABLEKS                       R12 R11 K22 ["FOCUSED"]
       79 SETTABLEKS                       R8 R11 K16 ["ImplementationKind"]
       81 GETTABLEKS                       R12 R4 K25 ["Level"]
       83 SETTABLEKS                       R12 R11 K23 ["LogLevel"]
       85 RETURN                           R11 1
