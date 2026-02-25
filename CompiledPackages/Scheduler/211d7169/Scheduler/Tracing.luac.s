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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R1 1
        7 NAMECALL                         R2 R0 K1 ["ipairs"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 MOVE                             R9 R6
       12 NAMECALL                         R7 R1 K2 ["add"]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-5]
       17 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onInteractionTraced"]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onWorkStarted"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onWorkStopped"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R3 ; [+2]
        2 LOADN                            R3 0
        3 GETUPVAL                         R4 0
        4 JUMPIF                           R4 ; [+4]
        5 MOVE                             R4 R2
        6 CALL                             R4 0 -1
        7 CLOSEUPVALS                      R3
        8 RETURN                           R4 -1
        9 DUPTABLE                         R4 K4 [{"__count", "id", "name", "timestamp"}]
       10 LOADN                            R5 1
       11 SETTABLEKS                       R5 R4 K0 ["__count"]
       13 GETUPVAL                         R5 1
       14 SETTABLEKS                       R5 R4 K1 ["id"]
       16 SETTABLEKS                       R0 R4 K2 ["name"]
       18 SETTABLEKS                       R1 R4 K3 ["timestamp"]
       20 GETUPVAL                         R5 1
       21 ADDK                             R5 R5 K5 [1]
       22 SETUPVAL                         R5 1
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R5 R6 K6 ["current"]
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 MOVE                             R9 R4
       30 NAMECALL                         R7 R6 K7 ["add"]
       32 CALL                             R7 2 0
       33 GETUPVAL                         R7 2
       34 SETTABLEKS                       R6 R7 K6 ["current"]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R7 R8 K6 ["current"]
       39 LOADNIL                          R8
       40 GETIMPORT                        R9 K9 [pcall]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R4
       45 CALL                             R9 1 2
       46 GETIMPORT                        R11 K9 [pcall]
       48 NEWCLOSURE                       R12 P1
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R6
       51 CAPTURE                          REF R3
       52 CALL                             R11 1 2
       53 GETIMPORT                        R13 K9 [pcall]
       55 NEWCLOSURE                       R14 P2
       56 CAPTURE                          REF R8
       57 CAPTURE                          VAL R2
       58 CALL                             R13 1 2
       59 GETUPVAL                         R15 2
       60 SETTABLEKS                       R5 R15 K6 ["current"]
       62 GETIMPORT                        R15 K9 [pcall]
       64 NEWCLOSURE                       R16 P3
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R6
       67 CAPTURE                          REF R3
       68 CALL                             R15 1 2
       69 GETTABLEKS                       R17 R4 K0 ["__count"]
       71 SUBK                             R17 R17 K5 [1]
       72 SETTABLEKS                       R17 R4 K0 ["__count"]
       74 JUMPIFEQKNIL                     R7 ; [+9]
       76 GETTABLEKS                       R17 R4 K0 ["__count"]
       78 JUMPIFNOTEQKN                    R17 K10 [0] ; [+5]
       80 GETTABLEKS                       R17 R7 K11 ["onInteractionScheduledWorkCompleted"]
       82 MOVE                             R18 R4
       83 CALL                             R17 1 0
       84 JUMPIF                           R15 ; [+4]
       85 GETIMPORT                        R17 K13 [error]
       87 MOVE                             R18 R16
       88 CALL                             R17 1 0
       89 JUMPIF                           R13 ; [+4]
       90 GETIMPORT                        R17 K13 [error]
       92 MOVE                             R18 R14
       93 CALL                             R17 1 0
       94 JUMPIF                           R11 ; [+4]
       95 GETIMPORT                        R17 K13 [error]
       97 MOVE                             R18 R12
       98 CALL                             R17 1 0
       99 JUMPIF                           R9 ; [+4]
      100 GETIMPORT                        R17 K13 [error]
      102 MOVE                             R18 R10
      103 CALL                             R17 1 0
      104 CLOSEUPVALS                      R3
      105 RETURN                           R8 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onWorkStarted"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 1
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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
       24 JUMPIF                           R4 ; [+26]
       25 LOADB                            R4 1
       26 SETUPVAL                         R4 6
       27 GETUPVAL                         R4 1
       28 NAMECALL                         R4 R4 K3 ["ipairs"]
       30 CALL                             R4 1 3
       31 FORGPREP                         R4
       32 GETTABLEKS                       R9 R8 K4 ["__count"]
       34 SUBK                             R9 R9 K5 [1]
       35 SETTABLEKS                       R9 R8 K4 ["__count"]
       37 GETUPVAL                         R9 2
       38 JUMPIFEQKNIL                     R9 ; [+10]
       40 GETTABLEKS                       R9 R8 K4 ["__count"]
       42 JUMPIFNOTEQKN                    R9 K6 [0] ; [+6]
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R9 R10 K7 ["onInteractionScheduledWorkCompleted"]
       47 MOVE                             R10 R8
       48 CALL                             R9 1 0
       49 FORGLOOP                         R4 2 ; [-18]
       51 JUMPIF                           R2 ; [+4]
       52 GETIMPORT                        R4 K9 [error]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 0
       56 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["onWorkCanceled"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_14:
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
       12 NAMECALL                         R2 R2 K3 ["ipairs"]
       14 CALL                             R2 1 3
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R6 K4 ["__count"]
       18 SUBK                             R7 R7 K5 [1]
       19 SETTABLEKS                       R7 R6 K4 ["__count"]
       21 GETUPVAL                         R7 0
       22 JUMPIFNOT                        R7 ; [+9]
       23 GETTABLEKS                       R7 R6 K4 ["__count"]
       25 JUMPIFNOTEQKN                    R7 K6 [0] ; [+6]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K7 ["onInteractionScheduledWorkCompleted"]
       30 MOVE                             R8 R6
       31 CALL                             R7 1 0
       32 FORGLOOP                         R2 2 ; [-17]
       34 JUMPIF                           R0 ; [+4]
       35 GETIMPORT                        R2 K9 [error]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_15:
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
       20 NAMECALL                         R4 R2 K2 ["ipairs"]
       22 CALL                             R4 1 3
       23 FORGPREP                         R4
       24 GETTABLEKS                       R9 R8 K3 ["__count"]
       26 ADDK                             R9 R9 K4 [1]
       27 SETTABLEKS                       R9 R8 K3 ["__count"]
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
       47 DUPTABLE                         R10 K6 [{"__call"}]
       48 SETTABLEKS                       R5 R10 K5 ["__call"]
       50 FASTCALL2                        SETMETATABLE R7 R10 ; [+4]
       52 MOVE                             R9 R7
       53 GETIMPORT                        R8 K8 [setmetatable]
       55 CALL                             R8 2 0
       56 SETTABLEKS                       R6 R7 K9 ["cancel"]
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
       61 DUPCLOSURE                       R10 K18 [PROTO_3]
       62 CAPTURE                          VAL R2
       63 NEWCLOSURE                       R11 P4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          REF R6
       66 CAPTURE                          REF R8
       67 CAPTURE                          VAL R10
       68 CAPTURE                          REF R9
       69 SETTABLEKS                       R11 R3 K19 ["unstable_trace"]
       71 NEWCLOSURE                       R11 P5
       72 CAPTURE                          VAL R5
       73 CAPTURE                          REF R8
       74 CAPTURE                          REF R9
       75 SETTABLEKS                       R11 R3 K20 ["unstable_wrap"]
       77 CLOSEUPVALS                      R6
       78 RETURN                           R3 1
