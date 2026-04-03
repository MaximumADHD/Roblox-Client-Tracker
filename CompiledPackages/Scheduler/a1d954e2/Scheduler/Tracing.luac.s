PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 MOVE                             R1 R0
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["current"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K1 ["new"]
       12 CALL                             R3 0 1
       13 SETTABLEKS                       R3 R2 K0 ["current"]
       15 GETIMPORT                        R2 K3 [pcall]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 2
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R1 R4 K0 ["current"]
       22 JUMPIF                           R2 ; [+4]
       23 GETIMPORT                        R4 K5 [error]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onInteractionTraced"]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onWorkStarted"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onWorkStopped"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 MOVE                             R4 R3
        3 JUMP                             ; [+1]
        4 LOADN                            R4 0
        5 GETUPVAL                         R5 0
        6 JUMPIF                           R5 ; [+3]
        7 MOVE                             R5 R2
        8 CALL                             R5 0 -1
        9 RETURN                           R5 -1
       10 DUPTABLE                         R5 K4 [{"__count", "id", "name", "timestamp"}]
       11 LOADN                            R6 1
       12 SETTABLEKS                       R6 R5 K0 ["__count"]
       14 GETUPVAL                         R6 1
       15 SETTABLEKS                       R6 R5 K1 ["id"]
       17 SETTABLEKS                       R0 R5 K2 ["name"]
       19 SETTABLEKS                       R1 R5 K3 ["timestamp"]
       21 GETUPVAL                         R6 1
       22 ADDK                             R6 R6 K5 [1]
       23 SETUPVAL                         R6 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K6 ["current"]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K7 ["new"]
       30 MOVE                             R8 R6
       31 CALL                             R7 1 1
       32 MOVE                             R10 R5
       33 NAMECALL                         R8 R7 K8 ["add"]
       35 CALL                             R8 2 0
       36 GETUPVAL                         R8 2
       37 SETTABLEKS                       R7 R8 K6 ["current"]
       39 GETUPVAL                         R9 4
       40 GETTABLEKS                       R8 R9 K6 ["current"]
       42 LOADNIL                          R9
       43 GETIMPORT                        R10 K10 [pcall]
       45 NEWCLOSURE                       R11 P0
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R5
       48 CALL                             R10 1 2
       49 GETIMPORT                        R12 K10 [pcall]
       51 NEWCLOSURE                       R13 P1
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R4
       55 CALL                             R12 1 2
       56 GETIMPORT                        R14 K10 [pcall]
       58 NEWCLOSURE                       R15 P2
       59 CAPTURE                          REF R9
       60 CAPTURE                          VAL R2
       61 CALL                             R14 1 2
       62 GETUPVAL                         R16 2
       63 SETTABLEKS                       R6 R16 K6 ["current"]
       65 GETIMPORT                        R16 K10 [pcall]
       67 NEWCLOSURE                       R17 P3
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R4
       71 CALL                             R16 1 2
       72 GETTABLEKS                       R18 R5 K0 ["__count"]
       74 SUBK                             R18 R18 K5 [1]
       75 SETTABLEKS                       R18 R5 K0 ["__count"]
       77 JUMPIFEQKNIL                     R8 ; [+9]
       79 GETTABLEKS                       R18 R5 K0 ["__count"]
       81 JUMPIFNOTEQKN                    R18 K11 [0] ; [+5]
       83 GETTABLEKS                       R18 R8 K12 ["onInteractionScheduledWorkCompleted"]
       85 MOVE                             R19 R5
       86 CALL                             R18 1 0
       87 JUMPIF                           R16 ; [+4]
       88 GETIMPORT                        R18 K14 [error]
       90 MOVE                             R19 R17
       91 CALL                             R18 1 0
       92 JUMPIF                           R14 ; [+4]
       93 GETIMPORT                        R18 K14 [error]
       95 MOVE                             R19 R15
       96 CALL                             R18 1 0
       97 JUMPIF                           R12 ; [+4]
       98 GETIMPORT                        R18 K14 [error]
      100 MOVE                             R19 R13
      101 CALL                             R18 1 0
      102 JUMPIF                           R10 ; [+4]
      103 GETIMPORT                        R18 K14 [error]
      105 MOVE                             R19 R11
      106 CALL                             R18 1 0
      107 CLOSEUPVALS                      R9
      108 RETURN                           R9 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onWorkStarted"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 1
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_10:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 GETIMPORT                        R1 K1 [pcall]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R1 1 2
        9 GETIMPORT                        R3 K1 [pcall]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          REF R0
       13 CAPTURE                          UPVAL U3
       14 GETVARARGS                       R5 -1
       15 CALL                             R3 -1 2
       16 GETUPVAL                         R5 4
       17 GETUPVAL                         R6 5
       18 SETTABLEKS                       R6 R5 K2 ["current"]
       20 GETUPVAL                         R5 0
       21 JUMPIFEQKNIL                     R5 ; [+7]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K3 ["onWorkStopped"]
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 2
       28 CALL                             R5 2 0
       29 JUMPIF                           R3 ; [+4]
       30 GETIMPORT                        R5 K5 [error]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 0
       34 JUMPIF                           R1 ; [+4]
       35 GETIMPORT                        R5 K5 [error]
       37 MOVE                             R6 R2
       38 CALL                             R5 1 0
       39 CLOSEUPVALS                      R0
       40 RETURN                           R0 1

PROTO_11:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLEKS                       R3 R2 K0 ["current"]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R2 R3 K0 ["current"]
       11 SETUPVAL                         R2 2
       12 GETIMPORT                        R2 K2 [pcall]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R1
       21 GETVARARGS                       R4 -1
       22 CALL                             R2 -1 2
       23 GETUPVAL                         R4 6
       24 JUMPIF                           R4 ; [+25]
       25 LOADB                            R4 1
       26 SETUPVAL                         R4 6
       27 GETUPVAL                         R4 1
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 GETTABLEKS                       R9 R8 K3 ["__count"]
       33 SUBK                             R9 R9 K4 [1]
       34 SETTABLEKS                       R9 R8 K3 ["__count"]
       36 GETUPVAL                         R9 2
       37 JUMPIFEQKNIL                     R9 ; [+10]
       39 GETTABLEKS                       R9 R8 K3 ["__count"]
       41 JUMPIFNOTEQKN                    R9 K5 [0] ; [+6]
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R9 R10 K6 ["onInteractionScheduledWorkCompleted"]
       46 MOVE                             R10 R8
       47 CALL                             R9 1 0
       48 FORGLOOP                         R4 2 ; [-18]
       50 JUMPIF                           R2 ; [+4]
       51 GETIMPORT                        R4 K8 [error]
       53 MOVE                             R5 R3
       54 CALL                             R4 1 0
       55 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onWorkCanceled"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 SETUPVAL                         R0 0
        4 GETIMPORT                        R0 K2 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 2
       11 GETUPVAL                         R2 2
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLEKS                       R7 R6 K3 ["__count"]
       17 SUBK                             R7 R7 K4 [1]
       18 SETTABLEKS                       R7 R6 K3 ["__count"]
       20 GETUPVAL                         R7 0
       21 JUMPIFEQKNIL                     R7 ; [+10]
       23 GETTABLEKS                       R7 R6 K3 ["__count"]
       25 JUMPIFNOTEQKN                    R7 K5 [0] ; [+6]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K6 ["onInteractionScheduledWorkCompleted"]
       30 MOVE                             R8 R6
       31 CALL                             R7 1 0
       32 FORGLOOP                         R2 2 ; [-18]
       34 JUMPIF                           R0 ; [+4]
       35 GETIMPORT                        R2 K8 [error]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADN                            R1 0
        3 GETUPVAL                         R2 0
        4 JUMPIF                           R2 ; [+2]
        5 CLOSEUPVALS                      R1
        6 RETURN                           R0 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K0 ["current"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K0 ["current"]
       13 JUMPIFEQKNIL                     R3 ; [+6]
       15 GETTABLEKS                       R4 R3 K1 ["onWorkScheduled"]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R1
       19 CALL                             R4 2 0
       20 MOVE                             R4 R2
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 GETTABLEKS                       R9 R8 K2 ["__count"]
       26 ADDK                             R9 R9 K3 [1]
       27 SETTABLEKS                       R9 R8 K2 ["__count"]
       29 FORGLOOP                         R4 2 ; [-6]
       31 LOADB                            R4 0
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          REF R3
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          REF R1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          REF R4
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          REF R3
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R2
       44 CAPTURE                          REF R1
       45 NEWTABLE                         R7 1 0
       47 DUPTABLE                         R10 K5 [{"__call"}]
       48 SETTABLEKS                       R5 R10 K4 ["__call"]
       50 FASTCALL2                        SETMETATABLE R7 R10 ; [+4]
       52 MOVE                             R9 R7
       53 GETIMPORT                        R8 K7 [setmetatable]
       55 CALL                             R8 2 0
       56 SETTABLEKS                       R6 R7 K8 ["cancel"]
       58 CLOSEUPVALS                      R1
       59 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Set"]
       14 NEWTABLE                         R3 8 0
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K7 ["Shared"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R4 R5 K8 ["ReactFeatureFlags"]
       23 GETTABLEKS                       R5 R4 K9 ["enableSchedulerTracing"]
       25 LOADN                            R6 0
       26 LOADN                            R7 0
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 JUMPIFNOT                        R5 ; [+12]
       30 DUPTABLE                         R10 K11 [{"current"}]
       31 GETTABLEKS                       R11 R2 K12 ["new"]
       33 CALL                             R11 0 1
       34 SETTABLEKS                       R11 R10 K10 ["current"]
       36 MOVE                             R8 R10
       37 DUPTABLE                         R10 K11 [{"current"}]
       38 LOADNIL                          R11
       39 SETTABLEKS                       R11 R10 K10 ["current"]
       41 MOVE                             R9 R10
       42 SETTABLEKS                       R8 R3 K13 ["__interactionsRef"]
       44 SETTABLEKS                       R9 R3 K14 ["__subscriberRef"]
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          VAL R5
       48 CAPTURE                          REF R8
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R10 R3 K15 ["unstable_clear"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          REF R8
       55 SETTABLEKS                       R10 R3 K16 ["unstable_getCurrent"]
       57 NEWCLOSURE                       R10 P2
       58 CAPTURE                          REF R7
       59 SETTABLEKS                       R10 R3 K17 ["unstable_getThreadID"]
       61 NEWCLOSURE                       R10 P3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          REF R6
       64 CAPTURE                          REF R8
       65 CAPTURE                          VAL R2
       66 CAPTURE                          REF R9
       67 SETTABLEKS                       R10 R3 K18 ["unstable_trace"]
       69 NEWCLOSURE                       R10 P4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          REF R8
       72 CAPTURE                          REF R9
       73 SETTABLEKS                       R10 R3 K19 ["unstable_wrap"]
       75 CLOSEUPVALS                      R6
       76 RETURN                           R3 1
