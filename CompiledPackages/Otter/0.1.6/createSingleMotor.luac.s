PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 DUPTABLE                         R1 K10 [{"__goal", "__state", "__onComplete", "__onStep", "__running"}]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K5 ["__goal"]
       17 DUPTABLE                         R2 K13 [{"value", "complete"}]
       18 SETTABLEKS                       R0 R2 K11 ["value"]
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R2 K12 ["complete"]
       23 SETTABLEKS                       R2 R1 K6 ["__state"]
       25 GETUPVAL                         R2 0
       26 CALL                             R2 0 1
       27 SETTABLEKS                       R2 R1 K7 ["__onComplete"]
       29 GETUPVAL                         R2 0
       30 CALL                             R2 0 1
       31 SETTABLEKS                       R2 R1 K8 ["__onStep"]
       33 LOADB                            R2 0
       34 SETTABLEKS                       R2 R1 K9 ["__running"]
       36 GETUPVAL                         R4 1
       37 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K15 [setmetatable]
       42 CALL                             R2 2 0
       43 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["step"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["__running"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["Heartbeat"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K2 ["Connect"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K3 ["__connection"]
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K0 ["__running"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["__connection"]
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["__connection"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["__running"]
       12 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R0 K5 ["__state"]
       15 GETTABLEKS                       R2 R2 K6 ["complete"]
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R0 K7 ["__goal"]
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R2 R0 K7 ["__goal"]
       26 GETTABLEKS                       R4 R0 K5 ["__state"]
       28 MOVE                             R5 R1
       29 NAMECALL                         R2 R2 K8 ["step"]
       31 CALL                             R2 3 1
       32 JUMPIFEQKNIL                     R2 ; [+3]
       34 SETTABLEKS                       R2 R0 K5 ["__state"]
       36 GETTABLEKS                       R3 R0 K9 ["__onStep"]
       38 GETTABLEKS                       R5 R0 K5 ["__state"]
       40 GETTABLEKS                       R5 R5 K10 ["value"]
       42 NAMECALL                         R3 R3 K11 ["fire"]
       44 CALL                             R3 2 0
       45 GETTABLEKS                       R3 R0 K5 ["__state"]
       47 GETTABLEKS                       R3 R3 K6 ["complete"]
       49 JUMPIFNOT                        R3 ; [+15]
       50 GETTABLEKS                       R3 R0 K12 ["__running"]
       52 JUMPIFNOT                        R3 ; [+12]
       53 NAMECALL                         R3 R0 K13 ["stop"]
       55 CALL                             R3 1 0
       56 GETTABLEKS                       R3 R0 K14 ["__onComplete"]
       58 GETTABLEKS                       R5 R0 K5 ["__state"]
       60 GETTABLEKS                       R5 R5 K10 ["value"]
       62 NAMECALL                         R3 R3 K11 ["fire"]
       64 CALL                             R3 2 0
       65 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["__goal"]
        2 GETTABLEKS                       R2 R0 K1 ["__state"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K2 ["complete"]
        7 NAMECALL                         R2 R0 K3 ["start"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R0 K5 ["__onStep"]
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K6 ["subscribe"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_7:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R0 K5 ["__onComplete"]
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K6 ["subscribe"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["stop"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["createSignal"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R2 K10 ["prototype"]
       22 GETTABLEKS                       R3 R2 K10 ["prototype"]
       24 SETTABLEKS                       R3 R2 K11 ["__index"]
       26 DUPCLOSURE                       R3 K12 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 DUPCLOSURE                       R4 K13 [PROTO_2]
       30 CAPTURE                          VAL R0
       31 GETTABLEKS                       R5 R2 K10 ["prototype"]
       33 SETTABLEKS                       R4 R5 K14 ["start"]
       35 DUPCLOSURE                       R4 K15 [PROTO_3]
       36 GETTABLEKS                       R5 R2 K10 ["prototype"]
       38 SETTABLEKS                       R4 R5 K16 ["stop"]
       40 DUPCLOSURE                       R4 K17 [PROTO_4]
       41 GETTABLEKS                       R5 R2 K10 ["prototype"]
       43 SETTABLEKS                       R4 R5 K18 ["step"]
       45 DUPCLOSURE                       R4 K19 [PROTO_5]
       46 GETTABLEKS                       R5 R2 K10 ["prototype"]
       48 SETTABLEKS                       R4 R5 K20 ["setGoal"]
       50 DUPCLOSURE                       R4 K21 [PROTO_6]
       51 GETTABLEKS                       R5 R2 K10 ["prototype"]
       53 SETTABLEKS                       R4 R5 K22 ["onStep"]
       55 DUPCLOSURE                       R4 K23 [PROTO_7]
       56 GETTABLEKS                       R5 R2 K10 ["prototype"]
       58 SETTABLEKS                       R4 R5 K24 ["onComplete"]
       60 DUPCLOSURE                       R4 K25 [PROTO_8]
       61 GETTABLEKS                       R5 R2 K10 ["prototype"]
       63 SETTABLEKS                       R4 R5 K26 ["destroy"]
       65 RETURN                           R3 1
