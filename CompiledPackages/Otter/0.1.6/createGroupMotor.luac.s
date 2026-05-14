PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 NEWTABLE                         R1 0 0
       15 GETIMPORT                        R2 K6 [pairs]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 3
       19 FORGPREP_NEXT                    R2
       20 DUPTABLE                         R7 K9 [{"value", "complete"}]
       21 SETTABLEKS                       R6 R7 K7 ["value"]
       23 LOADB                            R8 1
       24 SETTABLEKS                       R8 R7 K8 ["complete"]
       26 SETTABLE                         R7 R1 R5
       27 FORGLOOP                         R2 2 ; [-8]
       29 DUPTABLE                         R2 K16 [{"__goals", "__states", "__allComplete", "__onComplete", "__onStep", "__running"}]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K10 ["__goals"]
       34 SETTABLEKS                       R1 R2 K11 ["__states"]
       36 LOADB                            R3 1
       37 SETTABLEKS                       R3 R2 K12 ["__allComplete"]
       39 GETUPVAL                         R3 0
       40 CALL                             R3 0 1
       41 SETTABLEKS                       R3 R2 K13 ["__onComplete"]
       43 GETUPVAL                         R3 0
       44 CALL                             R3 0 1
       45 SETTABLEKS                       R3 R2 K14 ["__onStep"]
       47 LOADB                            R3 0
       48 SETTABLEKS                       R3 R2 K15 ["__running"]
       50 GETUPVAL                         R5 1
       51 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       53 MOVE                             R4 R2
       54 GETIMPORT                        R3 K18 [setmetatable]
       56 CALL                             R3 2 0
       57 RETURN                           R2 1

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
        2 JUMPIFEQKNIL                     R1 ; [+9]
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
       13 GETTABLEKS                       R2 R0 K5 ["__allComplete"]
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R0 0
       17 LOADB                            R2 1
       18 NEWTABLE                         R3 0 0
       20 GETIMPORT                        R4 K7 [pairs]
       22 GETTABLEKS                       R5 R0 K8 ["__states"]
       24 CALL                             R4 1 3
       25 FORGPREP_NEXT                    R4
       26 GETTABLEKS                       R9 R8 K9 ["complete"]
       28 JUMPIF                           R9 ; [+24]
       29 GETTABLEKS                       R10 R0 K10 ["__goals"]
       31 GETTABLE                         R9 R10 R7
       32 JUMPIFEQKNIL                     R9 ; [+13]
       34 MOVE                             R12 R8
       35 MOVE                             R13 R1
       36 NAMECALL                         R10 R9 K11 ["step"]
       38 CALL                             R10 3 1
       39 JUMPIFEQKNIL                     R10 ; [+9]
       41 MOVE                             R8 R10
       42 GETTABLEKS                       R11 R0 K8 ["__states"]
       44 SETTABLE                         R10 R11 R7
       45 JUMP                             ; [+3]
       46 LOADB                            R10 1
       47 SETTABLEKS                       R10 R8 K9 ["complete"]
       49 GETTABLEKS                       R10 R8 K9 ["complete"]
       51 JUMPIF                           R10 ; [+1]
       52 LOADB                            R2 0
       53 GETTABLEKS                       R9 R8 K12 ["value"]
       55 SETTABLE                         R9 R3 R7
       56 FORGLOOP                         R4 2 ; [-31]
       58 GETTABLEKS                       R4 R0 K5 ["__allComplete"]
       60 SETTABLEKS                       R2 R0 K5 ["__allComplete"]
       62 GETTABLEKS                       R5 R0 K13 ["__onStep"]
       64 MOVE                             R7 R3
       65 NAMECALL                         R5 R5 K14 ["fire"]
       67 CALL                             R5 2 0
       68 GETTABLEKS                       R5 R0 K5 ["__allComplete"]
       70 JUMPIFNOT                        R5 ; [+13]
       71 JUMPIF                           R4 ; [+12]
       72 GETTABLEKS                       R5 R0 K15 ["__running"]
       74 JUMPIFNOT                        R5 ; [+9]
       75 NAMECALL                         R5 R0 K16 ["stop"]
       77 CALL                             R5 1 0
       78 GETTABLEKS                       R5 R0 K17 ["__onComplete"]
       80 MOVE                             R7 R3
       81 NAMECALL                         R5 R5 K14 ["fire"]
       83 CALL                             R5 2 0
       84 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R4 R0 K5 ["__goals"]
       18 MOVE                             R5 R1
       19 CALL                             R2 3 1
       20 SETTABLEKS                       R2 R0 K5 ["__goals"]
       22 GETIMPORT                        R2 K7 [pairs]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 3
       26 FORGPREP_NEXT                    R2
       27 GETTABLEKS                       R8 R0 K8 ["__states"]
       29 GETTABLE                         R7 R8 R5
       30 JUMPIFNOTEQKNIL                  R7 ; [+14]
       32 GETIMPORT                        R8 K10 [error]
       34 LOADK                            R9 K11 ["Cannot set goal for the value %s because it doesn't exist"]
       35 FASTCALL1                        TOSTRING R5 ; [+3]
       36 MOVE                             R12 R5
       37 GETIMPORT                        R11 K13 [tostring]
       39 CALL                             R11 1 1
       40 NAMECALL                         R9 R9 K14 ["format"]
       42 CALL                             R9 2 1
       43 LOADN                            R10 2
       44 CALL                             R8 2 0
       45 LOADB                            R8 0
       46 SETTABLEKS                       R8 R7 K15 ["complete"]
       48 FORGLOOP                         R2 1 ; [-22]
       50 LOADB                            R2 0
       51 SETTABLEKS                       R2 R0 K16 ["__allComplete"]
       53 NAMECALL                         R2 R0 K17 ["start"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

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
       13 GETTABLEKS                       R2 R2 K9 ["assign"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K7 [script]
       20 GETTABLEKS                       R3 R3 K8 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["createSignal"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 2 0
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K11 ["prototype"]
       31 GETTABLEKS                       R4 R3 K11 ["prototype"]
       33 SETTABLEKS                       R4 R3 K12 ["__index"]
       35 DUPCLOSURE                       R4 K13 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R5 K14 [PROTO_2]
       39 CAPTURE                          VAL R0
       40 GETTABLEKS                       R6 R3 K11 ["prototype"]
       42 SETTABLEKS                       R5 R6 K15 ["start"]
       44 DUPCLOSURE                       R5 K16 [PROTO_3]
       45 GETTABLEKS                       R6 R3 K11 ["prototype"]
       47 SETTABLEKS                       R5 R6 K17 ["stop"]
       49 DUPCLOSURE                       R5 K18 [PROTO_4]
       50 GETTABLEKS                       R6 R3 K11 ["prototype"]
       52 SETTABLEKS                       R5 R6 K19 ["step"]
       54 DUPCLOSURE                       R5 K20 [PROTO_5]
       55 CAPTURE                          VAL R1
       56 GETTABLEKS                       R6 R3 K11 ["prototype"]
       58 SETTABLEKS                       R5 R6 K21 ["setGoal"]
       60 DUPCLOSURE                       R5 K22 [PROTO_6]
       61 GETTABLEKS                       R6 R3 K11 ["prototype"]
       63 SETTABLEKS                       R5 R6 K23 ["onStep"]
       65 DUPCLOSURE                       R5 K24 [PROTO_7]
       66 GETTABLEKS                       R6 R3 K11 ["prototype"]
       68 SETTABLEKS                       R5 R6 K25 ["onComplete"]
       70 DUPCLOSURE                       R5 K26 [PROTO_8]
       71 GETTABLEKS                       R6 R3 K11 ["prototype"]
       73 SETTABLEKS                       R5 R6 K27 ["destroy"]
       75 RETURN                           R4 1
