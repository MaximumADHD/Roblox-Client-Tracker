PROTO_0:
        0 DUPTABLE                         R2 K7 [{"changeDescriptions", "duration", "fiberActualDurations", "fiberSelfDurations", "interactionIDs", "priorityLevel", "timestamp"}]
        1 GETTABLEKS                       R4 R0 K0 ["changeDescriptions"]
        3 JUMPIFEQKNIL                     R4 ; [+8]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K8 ["new"]
        8 GETTABLEKS                       R4 R0 K0 ["changeDescriptions"]
       10 CALL                             R3 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K0 ["changeDescriptions"]
       15 GETTABLEKS                       R3 R0 K1 ["duration"]
       17 SETTABLEKS                       R3 R2 K1 ["duration"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K8 ["new"]
       22 GETTABLEKS                       R4 R0 K2 ["fiberActualDurations"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K2 ["fiberActualDurations"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K8 ["new"]
       30 GETTABLEKS                       R4 R0 K3 ["fiberSelfDurations"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K3 ["fiberSelfDurations"]
       35 GETTABLEKS                       R3 R0 K4 ["interactionIDs"]
       37 SETTABLEKS                       R3 R2 K4 ["interactionIDs"]
       39 GETTABLEKS                       R3 R0 K5 ["priorityLevel"]
       41 SETTABLEKS                       R3 R2 K5 ["priorityLevel"]
       43 GETTABLEKS                       R3 R0 K6 ["timestamp"]
       45 SETTABLEKS                       R3 R2 K6 ["timestamp"]
       47 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K1 ["dataForRoots"]
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 FORGPREP                         R9
       13 GETTABLEKS                       R14 R13 K2 ["commitData"]
       15 GETTABLEKS                       R15 R13 K3 ["displayName"]
       17 GETTABLEKS                       R16 R13 K4 ["initialTreeBaseDurations"]
       19 GETTABLEKS                       R17 R13 K5 ["interactionCommits"]
       21 GETTABLEKS                       R18 R13 K6 ["interactions"]
       23 GETTABLEKS                       R19 R13 K7 ["rootID"]
       25 MOVE                             R22 R19
       26 NAMECALL                         R20 R1 K8 ["get"]
       28 CALL                             R20 2 1
       29 JUMPIFNOTEQKNIL                  R20 ; [+17]
       31 GETIMPORT                        R21 K10 [error]
       33 GETUPVAL                         R22 1
       34 GETTABLEKS                       R22 R22 K0 ["new"]
       36 GETIMPORT                        R23 K13 [string.format]
       38 LOADK                            R24 K14 ["Could not find profiling operations for root %s"]
       39 FASTCALL1                        TOSTRING R19 ; [+3]
       40 MOVE                             R26 R19
       41 GETIMPORT                        R25 K16 [tostring]
       43 CALL                             R25 1 1
       44 CALL                             R23 2 -1
       45 CALL                             R22 -1 -1
       46 CALL                             R21 -1 0
       47 MOVE                             R23 R19
       48 NAMECALL                         R21 R2 K8 ["get"]
       50 CALL                             R21 2 1
       51 JUMPIFNOTEQKNIL                  R21 ; [+17]
       53 GETIMPORT                        R22 K10 [error]
       55 GETUPVAL                         R23 1
       56 GETTABLEKS                       R23 R23 K0 ["new"]
       58 GETIMPORT                        R24 K13 [string.format]
       60 LOADK                            R25 K17 ["Could not find profiling snapshots for root %s"]
       61 FASTCALL1                        TOSTRING R19 ; [+3]
       62 MOVE                             R27 R19
       63 GETIMPORT                        R26 K16 [tostring]
       65 CALL                             R26 1 1
       66 CALL                             R24 2 -1
       67 CALL                             R23 -1 -1
       68 CALL                             R22 -1 0
       69 GETUPVAL                         R22 2
       70 GETTABLEKS                       R22 R22 K18 ["map"]
       72 MOVE                             R23 R14
       73 DUPCLOSURE                       R24 K19 [PROTO_0]
       74 CAPTURE                          UPVAL U0
       75 CALL                             R22 2 1
       76 MOVE                             R25 R19
       77 DUPTABLE                         R26 K22 [{"commitData", "displayName", "initialTreeBaseDurations", "interactionCommits", "interactions", "operations", "rootID", "snapshots"}]
       78 SETTABLEKS                       R22 R26 K2 ["commitData"]
       80 SETTABLEKS                       R15 R26 K3 ["displayName"]
       82 GETUPVAL                         R27 0
       83 GETTABLEKS                       R27 R27 K0 ["new"]
       85 MOVE                             R28 R16
       86 CALL                             R27 1 1
       87 SETTABLEKS                       R27 R26 K4 ["initialTreeBaseDurations"]
       89 GETUPVAL                         R27 0
       90 GETTABLEKS                       R27 R27 K0 ["new"]
       92 MOVE                             R28 R17
       93 CALL                             R27 1 1
       94 SETTABLEKS                       R27 R26 K5 ["interactionCommits"]
       96 GETUPVAL                         R27 0
       97 GETTABLEKS                       R27 R27 K0 ["new"]
       99 MOVE                             R28 R18
      100 CALL                             R27 1 1
      101 SETTABLEKS                       R27 R26 K6 ["interactions"]
      103 SETTABLEKS                       R20 R26 K20 ["operations"]
      105 SETTABLEKS                       R19 R26 K7 ["rootID"]
      107 SETTABLEKS                       R21 R26 K21 ["snapshots"]
      109 NAMECALL                         R23 R3 K23 ["set"]
      111 CALL                             R23 3 0
      112 FORGLOOP                         R9 2 ; [-100]
      114 FORGLOOP                         R4 2 ; [-107]
      116 DUPTABLE                         R4 K25 [{"dataForRoots", "imported"}]
      117 SETTABLEKS                       R3 R4 K1 ["dataForRoots"]
      119 LOADB                            R5 0
      120 SETTABLEKS                       R5 R4 K24 ["imported"]
      122 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["changeDescriptions"]
        2 GETTABLEKS                       R2 R0 K1 ["duration"]
        4 GETTABLEKS                       R3 R0 K2 ["fiberActualDurations"]
        6 GETTABLEKS                       R4 R0 K3 ["fiberSelfDurations"]
        8 GETTABLEKS                       R5 R0 K4 ["interactionIDs"]
       10 GETTABLEKS                       R6 R0 K5 ["priorityLevel"]
       12 GETTABLEKS                       R7 R0 K6 ["timestamp"]
       14 DUPTABLE                         R8 K7 [{"changeDescriptions", "duration", "fiberActualDurations", "fiberSelfDurations", "interactionIDs", "priorityLevel", "timestamp"}]
       15 JUMPIFEQKNIL                     R1 ; [+7]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K8 ["new"]
       20 MOVE                             R10 R1
       21 CALL                             R9 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R9
       24 SETTABLEKS                       R9 R8 K0 ["changeDescriptions"]
       26 SETTABLEKS                       R2 R8 K1 ["duration"]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K8 ["new"]
       31 MOVE                             R10 R3
       32 CALL                             R9 1 1
       33 SETTABLEKS                       R9 R8 K2 ["fiberActualDurations"]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K8 ["new"]
       38 MOVE                             R10 R4
       39 CALL                             R9 1 1
       40 SETTABLEKS                       R9 R8 K3 ["fiberSelfDurations"]
       42 SETTABLEKS                       R5 R8 K4 ["interactionIDs"]
       44 SETTABLEKS                       R6 R8 K5 ["priorityLevel"]
       46 SETTABLEKS                       R7 R8 K6 ["timestamp"]
       48 RETURN                           R8 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["commitData"]
        2 GETTABLEKS                       R2 R0 K1 ["displayName"]
        4 GETTABLEKS                       R3 R0 K2 ["initialTreeBaseDurations"]
        6 GETTABLEKS                       R4 R0 K3 ["interactionCommits"]
        8 GETTABLEKS                       R5 R0 K4 ["interactions"]
       10 GETTABLEKS                       R6 R0 K5 ["operations"]
       12 GETTABLEKS                       R7 R0 K6 ["rootID"]
       14 GETTABLEKS                       R8 R0 K7 ["snapshots"]
       16 GETUPVAL                         R9 0
       17 MOVE                             R11 R7
       18 DUPTABLE                         R12 K8 [{"commitData", "displayName", "initialTreeBaseDurations", "interactionCommits", "interactions", "operations", "rootID", "snapshots"}]
       19 GETUPVAL                         R13 1
       20 GETTABLEKS                       R13 R13 K9 ["map"]
       22 MOVE                             R14 R1
       23 DUPCLOSURE                       R15 K10 [PROTO_2]
       24 CAPTURE                          UPVAL U2
       25 CALL                             R13 2 1
       26 SETTABLEKS                       R13 R12 K0 ["commitData"]
       28 SETTABLEKS                       R2 R12 K1 ["displayName"]
       30 GETUPVAL                         R13 2
       31 GETTABLEKS                       R13 R13 K11 ["new"]
       33 MOVE                             R14 R3
       34 CALL                             R13 1 1
       35 SETTABLEKS                       R13 R12 K2 ["initialTreeBaseDurations"]
       37 GETUPVAL                         R13 2
       38 GETTABLEKS                       R13 R13 K11 ["new"]
       40 MOVE                             R14 R4
       41 CALL                             R13 1 1
       42 SETTABLEKS                       R13 R12 K3 ["interactionCommits"]
       44 GETUPVAL                         R13 2
       45 GETTABLEKS                       R13 R13 K11 ["new"]
       47 MOVE                             R14 R5
       48 CALL                             R13 1 1
       49 SETTABLEKS                       R13 R12 K4 ["interactions"]
       51 SETTABLEKS                       R6 R12 K5 ["operations"]
       53 SETTABLEKS                       R7 R12 K6 ["rootID"]
       55 GETUPVAL                         R13 2
       56 GETTABLEKS                       R13 R13 K11 ["new"]
       58 MOVE                             R14 R8
       59 CALL                             R13 1 1
       60 SETTABLEKS                       R13 R12 K7 ["snapshots"]
       62 NAMECALL                         R9 R9 K12 ["set"]
       64 CALL                             R9 3 0
       65 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["version"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+13]
        5 GETIMPORT                        R2 K2 [error]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Unsupported profiler export version \"%s\""]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K8 [tostring]
       14 CALL                             R5 1 1
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K9 ["new"]
       20 CALL                             R2 0 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K10 ["forEach"]
       24 GETTABLEKS                       R4 R0 K11 ["dataForRoots"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U1
       30 CALL                             R3 2 0
       31 DUPTABLE                         R3 K13 [{"dataForRoots", "imported"}]
       32 SETTABLEKS                       R2 R3 K11 ["dataForRoots"]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K12 ["imported"]
       37 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["changeDescriptions"]
        2 GETTABLEKS                       R2 R0 K1 ["duration"]
        4 GETTABLEKS                       R3 R0 K2 ["fiberActualDurations"]
        6 GETTABLEKS                       R4 R0 K3 ["fiberSelfDurations"]
        8 GETTABLEKS                       R5 R0 K4 ["interactionIDs"]
       10 GETTABLEKS                       R6 R0 K5 ["priorityLevel"]
       12 GETTABLEKS                       R7 R0 K6 ["timestamp"]
       14 DUPTABLE                         R8 K7 [{"changeDescriptions", "duration", "fiberActualDurations", "fiberSelfDurations", "interactionIDs", "priorityLevel", "timestamp"}]
       15 JUMPIFEQKNIL                     R1 ; [+9]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K8 ["from"]
       20 NAMECALL                         R10 R1 K9 ["entries"]
       22 CALL                             R10 1 -1
       23 CALL                             R9 -1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R9
       26 SETTABLEKS                       R9 R8 K0 ["changeDescriptions"]
       28 SETTABLEKS                       R2 R8 K1 ["duration"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K8 ["from"]
       33 NAMECALL                         R10 R3 K9 ["entries"]
       35 CALL                             R10 1 -1
       36 CALL                             R9 -1 1
       37 SETTABLEKS                       R9 R8 K2 ["fiberActualDurations"]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K8 ["from"]
       42 NAMECALL                         R10 R4 K9 ["entries"]
       44 CALL                             R10 1 -1
       45 CALL                             R9 -1 1
       46 SETTABLEKS                       R9 R8 K3 ["fiberSelfDurations"]
       48 SETTABLEKS                       R5 R8 K4 ["interactionIDs"]
       50 SETTABLEKS                       R6 R8 K5 ["priorityLevel"]
       52 SETTABLEKS                       R7 R8 K6 ["timestamp"]
       54 RETURN                           R8 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["commitData"]
        2 GETTABLEKS                       R2 R0 K1 ["displayName"]
        4 GETTABLEKS                       R3 R0 K2 ["initialTreeBaseDurations"]
        6 GETTABLEKS                       R4 R0 K3 ["interactionCommits"]
        8 GETTABLEKS                       R5 R0 K4 ["interactions"]
       10 GETTABLEKS                       R6 R0 K5 ["operations"]
       12 GETTABLEKS                       R7 R0 K6 ["rootID"]
       14 GETTABLEKS                       R8 R0 K7 ["snapshots"]
       16 GETUPVAL                         R10 0
       17 DUPTABLE                         R11 K8 [{"commitData", "displayName", "initialTreeBaseDurations", "interactionCommits", "interactions", "operations", "rootID", "snapshots"}]
       18 GETUPVAL                         R12 1
       19 GETTABLEKS                       R12 R12 K9 ["map"]
       21 MOVE                             R13 R1
       22 DUPCLOSURE                       R14 K10 [PROTO_5]
       23 CAPTURE                          UPVAL U1
       24 CALL                             R12 2 1
       25 SETTABLEKS                       R12 R11 K0 ["commitData"]
       27 SETTABLEKS                       R2 R11 K1 ["displayName"]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K11 ["from"]
       32 NAMECALL                         R13 R3 K12 ["entries"]
       34 CALL                             R13 1 -1
       35 CALL                             R12 -1 1
       36 SETTABLEKS                       R12 R11 K2 ["initialTreeBaseDurations"]
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K11 ["from"]
       41 NAMECALL                         R13 R4 K12 ["entries"]
       43 CALL                             R13 1 -1
       44 CALL                             R12 -1 1
       45 SETTABLEKS                       R12 R11 K3 ["interactionCommits"]
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K11 ["from"]
       50 NAMECALL                         R13 R5 K12 ["entries"]
       52 CALL                             R13 1 -1
       53 CALL                             R12 -1 1
       54 SETTABLEKS                       R12 R11 K4 ["interactions"]
       56 SETTABLEKS                       R6 R11 K5 ["operations"]
       58 SETTABLEKS                       R7 R11 K6 ["rootID"]
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K11 ["from"]
       63 NAMECALL                         R13 R8 K12 ["entries"]
       65 CALL                             R13 1 -1
       66 CALL                             R12 -1 1
       67 SETTABLEKS                       R12 R11 K7 ["snapshots"]
       69 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       71 GETIMPORT                        R9 K15 [table.insert]
       73 CALL                             R9 2 0
       74 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["dataForRoots"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 NAMECALL                         R2 R2 K1 ["forEach"]
        9 CALL                             R2 2 0
       10 DUPTABLE                         R2 K3 [{"version", "dataForRoots"}]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K2 ["version"]
       14 SETTABLEKS                       R1 R2 K0 ["dataForRoots"]
       16 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["isNaN"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADN                            R2 0
       10 JUMP                             ; [+22]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["isFinite"]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+2]
       17 MOVE                             R2 R1
       18 JUMP                             ; [+14]
       19 LOADN                            R4 0
       20 FASTCALL2                        MATH_MIN R1 R0 ; [+5]
       22 MOVE                             R6 R1
       23 MOVE                             R7 R0
       24 GETIMPORT                        R5 K4 [math.min]
       26 CALL                             R5 2 1
       27 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       29 GETIMPORT                        R3 K6 [math.max]
       31 CALL                             R3 2 1
       32 MUL                              R2 R3 R1
       33 GETUPVAL                         R4 0
       34 FASTCALL1                        MATH_ROUND R2 ; [+3]
       35 MOVE                             R6 R2
       36 GETIMPORT                        R5 K8 [math.round]
       38 CALL                             R5 1 1
       39 GETTABLE                         R3 R4 R5
       40 RETURN                           R3 1

PROTO_9:
        0 MULK                             R3 R0 K0 [10]
        1 FASTCALL1                        MATH_ROUND R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.round]
        4 CALL                             R2 1 1
        5 DIVK                             R1 R2 K0 [10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["toJSBoolean"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+2]
       12 MOVE                             R2 R1
       13 RETURN                           R2 1
       14 LOADK                            R2 K5 ["<0.1"]
       15 RETURN                           R2 1

PROTO_10:
        0 MULK                             R2 R0 K0 [100]
        1 FASTCALL1                        MATH_ROUND R2 ; [+2]
        2 GETIMPORT                        R1 K3 [math.round]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_11:
        0 FASTCALL1                        MATH_ROUND R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K4 [math.round]
        4 CALL                             R4 1 1
        5 DIVK                             R3 R4 K1 [100]
        6 FASTCALL1                        MATH_ROUND R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.round]
        9 CALL                             R2 1 1
       10 DIVK                             R1 R2 K0 [10]
       11 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 SUB                              R3 R4 R5
        3 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        5 MOVE                             R2 R1
        6 RETURN                           R2 1
        7 GETUPVAL                         R5 1
        8 SUB                              R4 R0 R5
        9 GETUPVAL                         R6 0
       10 GETUPVAL                         R7 1
       11 SUB                              R5 R6 R7
       12 DIV                              R3 R4 R5
       13 GETUPVAL                         R5 2
       14 GETUPVAL                         R6 3
       15 SUB                              R4 R5 R6
       16 MUL                              R2 R3 R4
       17 RETURN                           R2 1

PROTO_13:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R3
        4 CAPTURE                          VAL R2
        5 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K6 ["Array"]
       20 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       22 GETTABLEKS                       R4 R1 K8 ["Error"]
       24 GETTABLEKS                       R5 R1 K9 ["Map"]
       26 GETTABLEKS                       R6 R1 K10 ["Number"]
       28 NEWTABLE                         R7 8 0
       30 GETIMPORT                        R8 K4 [require]
       32 GETIMPORT                        R9 K1 [script]
       34 GETTABLEKS                       R9 R9 K2 ["Parent"]
       36 GETTABLEKS                       R9 R9 K2 ["Parent"]
       38 GETTABLEKS                       R9 R9 K2 ["Parent"]
       40 GETTABLEKS                       R9 R9 K2 ["Parent"]
       42 GETTABLEKS                       R9 R9 K11 ["constants"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R8 R8 K12 ["PROFILER_EXPORT_VERSION"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETIMPORT                        R10 K1 [script]
       51 GETTABLEKS                       R10 R10 K2 ["Parent"]
       53 GETTABLEKS                       R10 R10 K2 ["Parent"]
       55 GETTABLEKS                       R10 R10 K2 ["Parent"]
       57 GETTABLEKS                       R10 R10 K2 ["Parent"]
       59 GETTABLEKS                       R10 R10 K13 ["backend"]
       61 GETTABLEKS                       R10 R10 K14 ["types"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETIMPORT                        R11 K1 [script]
       68 GETTABLEKS                       R11 R11 K2 ["Parent"]
       70 GETTABLEKS                       R11 R11 K14 ["types"]
       72 CALL                             R10 1 1
       73 NEWTABLE                         R11 0 10
       75 LOADK                            R12 K15 ["var(--color-commit-gradient-0)"]
       76 LOADK                            R13 K16 ["var(--color-commit-gradient-1)"]
       77 LOADK                            R14 K17 ["var(--color-commit-gradient-2)"]
       78 LOADK                            R15 K18 ["var(--color-commit-gradient-3)"]
       79 LOADK                            R16 K19 ["var(--color-commit-gradient-4)"]
       80 LOADK                            R17 K20 ["var(--color-commit-gradient-5)"]
       81 LOADK                            R18 K21 ["var(--color-commit-gradient-6)"]
       82 LOADK                            R19 K22 ["var(--color-commit-gradient-7)"]
       83 LOADK                            R20 K23 ["var(--color-commit-gradient-8)"]
       84 LOADK                            R21 K24 ["var(--color-commit-gradient-9)"]
       85 SETLIST                          R11 R12 10 [1]
       87 DUPCLOSURE                       R12 K25 [PROTO_1]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R12 R7 K26 ["prepareProfilingDataFrontendFromBackendAndStore"]
       93 DUPCLOSURE                       R13 K27 [PROTO_4]
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R13 R7 K28 ["prepareProfilingDataFrontendFromExport"]
       99 DUPCLOSURE                       R14 K29 [PROTO_7]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R8
      102 SETTABLEKS                       R14 R7 K30 ["prepareProfilingDataExport"]
      104 DUPCLOSURE                       R15 K31 [PROTO_8]
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R15 R7 K32 ["getGradientColor"]
      109 DUPCLOSURE                       R16 K33 [PROTO_9]
      110 CAPTURE                          VAL R3
      111 SETTABLEKS                       R16 R7 K34 ["formatDuration"]
      113 DUPCLOSURE                       R17 K35 [PROTO_10]
      114 SETTABLEKS                       R17 R7 K36 ["formatPercentage"]
      116 DUPCLOSURE                       R18 K37 [PROTO_11]
      117 SETTABLEKS                       R18 R7 K38 ["formatTime"]
      119 DUPCLOSURE                       R19 K39 [PROTO_13]
      120 SETTABLEKS                       R19 R7 K40 ["scale"]
      122 RETURN                           R7 1
