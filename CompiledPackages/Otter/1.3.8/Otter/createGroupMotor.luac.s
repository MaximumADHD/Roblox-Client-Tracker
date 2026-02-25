PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 DUPTABLE                         R7 K4 [{"value", "complete"}]
        8 SETTABLEKS                       R6 R7 K2 ["value"]
       10 LOADB                            R8 1
       11 SETTABLEKS                       R8 R7 K3 ["complete"]
       13 SETTABLE                         R7 R1 R5
       14 FORGLOOP                         R2 2 ; [-8]
       16 GETUPVAL                         R2 0
       17 CALL                             R2 0 2
       18 GETUPVAL                         R4 0
       19 CALL                             R4 0 2
       20 DUPTABLE                         R6 K13 [{"__goals", "__states", "__allComplete", "__onComplete", "__fireOnComplete", "__onStep", "__fireOnStep", "__running"}]
       21 NEWTABLE                         R7 0 0
       23 SETTABLEKS                       R7 R6 K5 ["__goals"]
       25 SETTABLEKS                       R1 R6 K6 ["__states"]
       27 LOADB                            R7 1
       28 SETTABLEKS                       R7 R6 K7 ["__allComplete"]
       30 SETTABLEKS                       R2 R6 K8 ["__onComplete"]
       32 SETTABLEKS                       R3 R6 K9 ["__fireOnComplete"]
       34 SETTABLEKS                       R4 R6 K10 ["__onStep"]
       36 SETTABLEKS                       R5 R6 K11 ["__fireOnStep"]
       38 LOADB                            R7 0
       39 SETTABLEKS                       R7 R6 K12 ["__running"]
       41 GETUPVAL                         R9 1
       42 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
       44 MOVE                             R8 R6
       45 GETIMPORT                        R7 K15 [setmetatable]
       47 CALL                             R7 2 0
       48 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["step"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__running"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R2 R2 K1 ["Connect"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R0 K2 ["__connection"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R0 K0 ["__running"]
       15 JUMPIFNOT                        R1 ; [+4]
       16 LOADN                            R4 0
       17 NAMECALL                         R2 R0 K3 ["step"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["__allComplete"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R2 1
        5 NEWTABLE                         R3 0 0
        7 GETIMPORT                        R4 K2 [pairs]
        9 GETTABLEKS                       R5 R0 K3 ["__states"]
       11 CALL                             R4 1 3
       12 FORGPREP_NEXT                    R4
       13 GETTABLEKS                       R9 R8 K4 ["complete"]
       15 JUMPIF                           R9 ; [+24]
       16 GETTABLEKS                       R10 R0 K5 ["__goals"]
       18 GETTABLE                         R9 R10 R7
       19 JUMPIFEQKNIL                     R9 ; [+13]
       21 GETTABLEKS                       R10 R9 K6 ["step"]
       23 MOVE                             R11 R8
       24 MOVE                             R12 R1
       25 CALL                             R10 2 1
       26 JUMPIFEQKNIL                     R10 ; [+9]
       28 MOVE                             R8 R10
       29 GETTABLEKS                       R11 R0 K3 ["__states"]
       31 SETTABLE                         R10 R11 R7
       32 JUMP                             ; [+3]
       33 LOADB                            R10 1
       34 SETTABLEKS                       R10 R8 K4 ["complete"]
       36 GETTABLEKS                       R10 R8 K4 ["complete"]
       38 JUMPIF                           R10 ; [+1]
       39 LOADB                            R2 0
       40 GETTABLEKS                       R9 R8 K7 ["value"]
       42 SETTABLE                         R9 R3 R7
       43 FORGLOOP                         R4 2 ; [-31]
       45 GETTABLEKS                       R4 R0 K0 ["__allComplete"]
       47 SETTABLEKS                       R2 R0 K0 ["__allComplete"]
       49 GETTABLEKS                       R5 R0 K8 ["__fireOnStep"]
       51 MOVE                             R6 R3
       52 CALL                             R5 1 0
       53 GETTABLEKS                       R5 R0 K0 ["__allComplete"]
       55 JUMPIFNOT                        R5 ; [+11]
       56 JUMPIF                           R4 ; [+10]
       57 GETTABLEKS                       R5 R0 K9 ["__running"]
       59 JUMPIFNOT                        R5 ; [+7]
       60 NAMECALL                         R5 R0 K10 ["stop"]
       62 CALL                             R5 1 0
       63 GETTABLEKS                       R5 R0 K11 ["__fireOnComplete"]
       65 MOVE                             R6 R3
       66 CALL                             R5 1 0
       67 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["assign"]
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R4 R0 K1 ["__goals"]
        7 MOVE                             R5 R1
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R0 K1 ["__goals"]
       11 LOADB                            R2 0
       12 NEWTABLE                         R3 0 0
       14 GETIMPORT                        R4 K3 [pairs]
       16 MOVE                             R5 R1
       17 CALL                             R4 1 3
       18 FORGPREP_NEXT                    R4
       19 GETTABLEKS                       R10 R0 K4 ["__states"]
       21 GETTABLE                         R9 R10 R7
       22 GETTABLEKS                       R10 R8 K5 ["startingValue"]
       24 JUMPIFNOT                        R10 ; [+12]
       25 LOADB                            R2 1
       26 GETTABLEKS                       R10 R8 K5 ["startingValue"]
       28 SETTABLEKS                       R10 R9 K6 ["value"]
       30 GETTABLEKS                       R10 R9 K7 ["initialValue"]
       32 JUMPIFNOT                        R10 ; [+4]
       33 GETTABLEKS                       R10 R8 K5 ["startingValue"]
       35 SETTABLEKS                       R10 R9 K7 ["initialValue"]
       37 GETTABLEKS                       R10 R9 K6 ["value"]
       39 SETTABLE                         R10 R3 R7
       40 JUMPIFNOTEQKNIL                  R9 ; [+14]
       42 GETIMPORT                        R10 K9 [error]
       44 LOADK                            R11 K10 ["Cannot set goal for the value %s because it doesn't exist"]
       45 FASTCALL1                        TOSTRING R7 ; [+3]
       46 MOVE                             R14 R7
       47 GETIMPORT                        R13 K12 [tostring]
       49 CALL                             R13 1 1
       50 NAMECALL                         R11 R11 K13 ["format"]
       52 CALL                             R11 2 1
       53 LOADN                            R12 2
       54 CALL                             R10 2 0
       55 LOADB                            R10 0
       56 SETTABLEKS                       R10 R9 K14 ["complete"]
       58 FORGLOOP                         R4 2 ; [-40]
       60 LOADB                            R4 0
       61 SETTABLEKS                       R4 R0 K15 ["__allComplete"]
       63 MOVE                             R6 R2
       64 NAMECALL                         R4 R0 K16 ["start"]
       66 CALL                             R4 2 0
       67 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unsubscribe"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["__onStep"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["subscribe"]
        5 CALL                             R2 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R2
        8 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unsubscribe"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["__onComplete"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["subscribe"]
        5 CALL                             R2 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R2
        8 RETURN                           R3 1

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["stop"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Collections"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["Object"]
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Signal"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K8 ["createSignal"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K2 ["Parent"]
       27 GETTABLEKS                       R5 R6 K9 ["AnimationStepSignal"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R7 R8 K2 ["Parent"]
       36 GETTABLEKS                       R6 R7 K10 ["types"]
       38 CALL                             R5 1 1
       39 NEWTABLE                         R6 0 0
       41 SETTABLEKS                       R6 R6 K11 ["__index"]
       43 DUPCLOSURE                       R7 K12 [PROTO_0]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R6
       46 DUPCLOSURE                       R8 K13 [PROTO_2]
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R8 R6 K14 ["start"]
       50 DUPCLOSURE                       R8 K15 [PROTO_3]
       51 SETTABLEKS                       R8 R6 K16 ["stop"]
       53 DUPCLOSURE                       R8 K17 [PROTO_4]
       54 SETTABLEKS                       R8 R6 K18 ["step"]
       56 DUPCLOSURE                       R8 K19 [PROTO_5]
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R8 R6 K20 ["setGoal"]
       60 DUPCLOSURE                       R8 K21 [PROTO_7]
       61 SETTABLEKS                       R8 R6 K22 ["onStep"]
       63 DUPCLOSURE                       R8 K23 [PROTO_9]
       64 SETTABLEKS                       R8 R6 K24 ["onComplete"]
       66 DUPCLOSURE                       R8 K25 [PROTO_10]
       67 SETTABLEKS                       R8 R6 K26 ["destroy"]
       69 RETURN                           R7 1
