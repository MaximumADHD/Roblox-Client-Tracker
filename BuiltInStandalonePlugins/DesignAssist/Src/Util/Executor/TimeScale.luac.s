PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETVARARGS                       R3 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+5]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U0
       12 RETURN                           R3 1
       13 RETURN                           R2 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R4 K2 [TweenInfo.new]
        2 GETTABLEKS                       R6 R2 K3 ["Time"]
        4 GETUPVAL                         R7 0
        5 MUL                              R5 R6 R7
        6 GETTABLEKS                       R6 R2 K4 ["EasingStyle"]
        8 GETTABLEKS                       R7 R2 K5 ["EasingDirection"]
       10 GETTABLEKS                       R8 R2 K6 ["RepeatCount"]
       12 GETTABLEKS                       R9 R2 K7 ["Reverses"]
       14 GETTABLEKS                       R11 R2 K8 ["DelayTime"]
       16 GETUPVAL                         R12 0
       17 MUL                              R10 R11 R12
       18 CALL                             R4 6 1
       19 GETUPVAL                         R5 1
       20 MOVE                             R7 R1
       21 MOVE                             R8 R4
       22 MOVE                             R9 R3
       23 NAMECALL                         R5 R5 K9 ["Create"]
       25 CALL                             R5 4 -1
       26 RETURN                           R5 -1

PROTO_6:
        0 JUMPIFNOTEQKS                    R1 K0 ["TweenService"] ; [+3]
        2 GETUPVAL                         R2 0
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K2 [game]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K3 ["GetService"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_7:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 0
        4 MOVE                             R3 R0
        5 GETVARARGS                       R4 -1
        6 NAMECALL                         R1 R1 K0 ["spawn"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["spawn"]
       13 MOVE                             R2 R0
       14 GETVARARGS                       R3 -1
       15 CALL                             R1 -1 -1
       16 RETURN                           R1 -1

PROTO_8:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 0
        4 MOVE                             R3 R0
        5 GETVARARGS                       R4 -1
        6 NAMECALL                         R1 R1 K0 ["defer"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["defer"]
       13 MOVE                             R2 R0
       14 GETVARARGS                       R3 -1
       15 CALL                             R1 -1 -1
       16 RETURN                           R1 -1

PROTO_9:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R5 1
        5 MUL                              R4 R0 R5
        6 MOVE                             R5 R1
        7 GETVARARGS                       R6 -1
        8 NAMECALL                         R2 R2 K0 ["delay"]
       10 CALL                             R2 -1 -1
       11 RETURN                           R2 -1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K0 ["delay"]
       15 GETUPVAL                         R4 1
       16 MUL                              R3 R0 R4
       17 MOVE                             R4 R1
       18 GETVARARGS                       R5 -1
       19 CALL                             R2 -1 -1
       20 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K0 ["cancel"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["cancel"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R1 0
        3 ORK                              R4 R0 K0 [0.03]
        4 GETUPVAL                         R5 1
        5 MUL                              R3 R4 R5
        6 NAMECALL                         R1 R1 K1 ["wait"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["wait"]
       13 ORK                              R3 R0 K0 [0.03]
       14 GETUPVAL                         R4 1
       15 MUL                              R2 R3 R4
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_12:
        0 GETIMPORT                        R1 K1 [task]
        2 GETIMPORT                        R2 K3 [game]
        4 LOADK                            R4 K4 ["TweenService"]
        5 NAMECALL                         R2 R2 K5 ["GetService"]
        7 CALL                             R2 2 1
        8 DUPTABLE                         R4 K7 [{"Create"}]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R2
       12 SETTABLEKS                       R5 R4 K6 ["Create"]
       14 DUPTABLE                         R5 K9 [{"__index"}]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R6 R5 K8 ["__index"]
       19 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       21 GETIMPORT                        R3 K11 [setmetatable]
       23 CALL                             R3 2 1
       24 DUPTABLE                         R5 K12 [{"GetService"}]
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R6 R5 K5 ["GetService"]
       29 DUPTABLE                         R6 K9 [{"__index"}]
       30 GETIMPORT                        R8 K3 [game]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R8
       34 SETTABLEKS                       R7 R6 K8 ["__index"]
       36 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       38 GETIMPORT                        R4 K11 [setmetatable]
       40 CALL                             R4 2 1
       41 DUPTABLE                         R6 K18 [{"spawn", "defer", "delay", "cancel", "wait"}]
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R7 R6 K13 ["spawn"]
       47 NEWCLOSURE                       R7 P4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R7 R6 K14 ["defer"]
       52 NEWCLOSURE                       R7 P5
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R7 R6 K15 ["delay"]
       58 NEWCLOSURE                       R7 P6
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R7 R6 K16 ["cancel"]
       63 NEWCLOSURE                       R7 P7
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R7 R6 K17 ["wait"]
       69 DUPTABLE                         R7 K9 [{"__index"}]
       70 SETTABLEKS                       R1 R7 K8 ["__index"]
       72 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       74 GETIMPORT                        R5 K11 [setmetatable]
       76 CALL                             R5 2 1
       77 RETURN                           R4 2

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["transition"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R5 R2 K2 ["duration"]
        8 ORK                              R4 R5 K1 [0.3]
        9 GETUPVAL                         R5 1
       10 MUL                              R3 R4 R5
       11 SETTABLEKS                       R3 R2 K2 ["duration"]
       13 GETTABLEKS                       R5 R2 K4 ["delay"]
       15 ORK                              R4 R5 K3 [0]
       16 GETUPVAL                         R5 1
       17 MUL                              R3 R4 R5
       18 SETTABLEKS                       R3 R2 K4 ["delay"]
       20 RETURN                           R2 1

PROTO_14:
        0 DUPTABLE                         R2 K1 [{"transition"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R3 R2 K0 ["transition"]
        6 DUPTABLE                         R3 K3 [{"__index"}]
        7 SETTABLEKS                       R0 R3 K2 ["__index"]
        9 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       11 GETIMPORT                        R1 K5 [setmetatable]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKN                    R2 K0 [1] ; [+6]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 JUMPIFNOT                        R1 ; [+13]
        9 GETIMPORT                        R2 K3 [table.clone]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 MOVE                             R1 R2
       14 GETTABLEKS                       R4 R1 K4 ["duration"]
       16 ORK                              R3 R4 K0 [1]
       17 GETUPVAL                         R4 0
       18 MUL                              R2 R3 R4
       19 SETTABLEKS                       R2 R1 K4 ["duration"]
       21 JUMP                             ; [+5]
       22 DUPTABLE                         R2 K5 [{"duration"}]
       23 GETUPVAL                         R3 0
       24 SETTABLEKS                       R3 R2 K4 ["duration"]
       26 MOVE                             R1 R2
       27 GETUPVAL                         R2 1
       28 MOVE                             R3 R0
       29 MOVE                             R4 R1
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADK                            R3 K0 ["_Workspace"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 MOVE                             R2 R1
        8 JUMPIFNOT                        R2 ; [+4]
        9 LOADK                            R4 K2 ["Foundation"]
       10 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       12 CALL                             R2 2 1
       13 MOVE                             R3 R2
       14 JUMPIFNOT                        R3 ; [+4]
       15 LOADK                            R5 K3 ["ReactOtter"]
       16 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+5]
       20 LOADK                            R6 K4 ["ModuleScript"]
       21 NAMECALL                         R4 R3 K5 ["IsA"]
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+1]
       25 RETURN                           R0 0
       26 GETIMPORT                        R4 K7 [pcall]
       28 GETIMPORT                        R5 K9 [require]
       30 MOVE                             R6 R3
       31 CALL                             R4 2 2
       32 JUMPIFNOT                        R4 ; [+10]
       33 FASTCALL1                        TYPE R5 ; [+3]
       34 MOVE                             R7 R5
       35 GETIMPORT                        R6 K11 [type]
       37 CALL                             R6 1 1
       38 JUMPIFNOTEQKS                    R6 K12 ["table"] ; [+4]
       40 GETTABLEKS                       R6 R5 K13 ["ease"]
       42 JUMPIF                           R6 ; [+1]
       43 RETURN                           R0 0
       44 GETTABLEKS                       R6 R5 K13 ["ease"]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R7 R5 K13 ["ease"]
       51 LOADB                            R7 1
       52 SETUPVAL                         R7 0
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADN                            R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 SETTABLEKS                       R2 R0 K0 ["set"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          REF R1
       10 SETTABLEKS                       R2 R0 K1 ["get"]
       12 DUPCLOSURE                       R2 K2 [PROTO_4]
       13 NEWCLOSURE                       R3 P3
       14 CAPTURE                          REF R1
       15 SETTABLEKS                       R3 R0 K3 ["createWrappedRuntime"]
       17 NEWCLOSURE                       R3 P4
       18 CAPTURE                          REF R1
       19 SETTABLEKS                       R3 R0 K4 ["createTimeScaledMotion"]
       21 LOADB                            R3 0
       22 NEWCLOSURE                       R4 P5
       23 CAPTURE                          REF R3
       24 CAPTURE                          REF R1
       25 SETTABLEKS                       R4 R0 K5 ["patchReactOtterEase"]
       27 CLOSEUPVALS                      R1
       28 RETURN                           R0 1
