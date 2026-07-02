PROTO_0:
        0 MOVE                             R2 R0
        1 CALL                             R2 0 1
        2 GETIMPORT                        R3 K1 [tick]
        4 CALL                             R3 0 1
        5 LOADN                            R6 1
        6 LOADK                            R4 K2 [2000000]
        7 LOADN                            R5 1
        8 FORNPREP                         R4
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 CALL                             R7 1 0
       12 FORNLOOP                         R4
       13 GETIMPORT                        R6 K1 [tick]
       15 CALL                             R6 0 1
       16 SUB                              R5 R6 R3
       17 DIVK                             R4 R5 K2 [2000000]
       18 RETURN                           R4 1

PROTO_1:
        0 LOADK                            R3 K0 ["foo"]
        1 NAMECALL                         R1 R0 K1 ["info"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["foo {}"]
        1 LOADN                            R4 2
        2 NAMECALL                         R1 R0 K1 ["info"]
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R0 0
        1 DUPTABLE                         R1 K2 [{"maxLevel", "log"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["Levels"]
        5 GETTABLEKS                       R2 R2 K4 ["Info"]
        7 SETTABLEKS                       R2 R1 K0 ["maxLevel"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R2 R1 K1 ["log"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["new"]
       16 CALL                             R2 0 1
       17 DUPTABLE                         R5 K8 [{["number"] = 1}]
       18 NAMECALL                         R3 R2 K9 ["setContext"]
       20 CALL                             R3 2 0
       21 MOVE                             R5 R1
       22 NAMECALL                         R3 R2 K10 ["addSink"]
       24 CALL                             R3 2 0
       25 CLOSEUPVALS                      R0
       26 RETURN                           R2 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"info"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_5]
        2 SETTABLEKS                       R1 R0 K0 ["info"]
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R0 0
        1 DUPTABLE                         R1 K2 [{"maxLevel", "log"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["Levels"]
        5 GETTABLEKS                       R2 R2 K4 ["Error"]
        7 SETTABLEKS                       R2 R1 K0 ["maxLevel"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R2 R1 K1 ["log"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["new"]
       16 CALL                             R2 0 1
       17 DUPTABLE                         R5 K8 [{["number"] = 1}]
       18 NAMECALL                         R3 R2 K9 ["setContext"]
       20 CALL                             R3 2 0
       21 MOVE                             R5 R1
       22 NAMECALL                         R3 R2 K10 ["addSink"]
       24 CALL                             R3 2 0
       25 CLOSEUPVALS                      R0
       26 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_10:
        0 LOADN                            R0 0
        1 DUPTABLE                         R1 K2 [{"maxLevel", "log"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["Levels"]
        5 GETTABLEKS                       R2 R2 K4 ["Info"]
        7 SETTABLEKS                       R2 R1 K0 ["maxLevel"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R2 R1 K1 ["log"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["new"]
       16 CALL                             R2 0 1
       17 NAMECALL                         R3 R2 K5 ["new"]
       19 CALL                             R3 1 1
       20 DUPTABLE                         R6 K8 [{["number"] = 1}]
       21 NAMECALL                         R4 R2 K9 ["setContext"]
       23 CALL                             R4 2 0
       24 MOVE                             R6 R1
       25 NAMECALL                         R4 R2 K10 ["addSink"]
       27 CALL                             R4 2 0
       28 CLOSEUPVALS                      R0
       29 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_12:
        0 LOADN                            R0 0
        1 DUPTABLE                         R1 K2 [{"maxLevel", "log"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["Levels"]
        5 GETTABLEKS                       R2 R2 K4 ["Info"]
        7 SETTABLEKS                       R2 R1 K0 ["maxLevel"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R2 R1 K1 ["log"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["new"]
       16 CALL                             R2 0 1
       17 DUPTABLE                         R5 K8 [{["number"] = 1}]
       18 NAMECALL                         R3 R2 K9 ["setContext"]
       20 CALL                             R3 2 0
       21 MOVE                             R5 R1
       22 NAMECALL                         R3 R2 K10 ["addSink"]
       24 CALL                             R3 2 0
       25 NAMECALL                         R3 R2 K5 ["new"]
       27 CALL                             R3 1 1
       28 NAMECALL                         R4 R3 K5 ["new"]
       30 CALL                             R4 1 1
       31 NAMECALL                         R5 R4 K5 ["new"]
       33 CALL                             R5 1 1
       34 NAMECALL                         R6 R5 K5 ["new"]
       36 CALL                             R6 1 1
       37 CLOSEUPVALS                      R0
       38 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["number"]
        3 ADD                              R3 R4 R5
        4 SETUPVAL                         R3 0
        5 RETURN                           R0 0

PROTO_18:
        0 LOADN                            R0 0
        1 DUPTABLE                         R1 K2 [{"maxLevel", "log"}]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["Levels"]
        5 GETTABLEKS                       R2 R2 K4 ["Error"]
        7 SETTABLEKS                       R2 R1 K0 ["maxLevel"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R2 R1 K1 ["log"]
       13 DUPTABLE                         R2 K2 [{"maxLevel", "log"}]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["Levels"]
       17 GETTABLEKS                       R3 R3 K5 ["Warning"]
       19 SETTABLEKS                       R3 R2 K0 ["maxLevel"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          REF R0
       23 SETTABLEKS                       R3 R2 K1 ["log"]
       25 DUPTABLE                         R3 K2 [{"maxLevel", "log"}]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K3 ["Levels"]
       29 GETTABLEKS                       R4 R4 K6 ["Info"]
       31 SETTABLEKS                       R4 R3 K0 ["maxLevel"]
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          REF R0
       35 SETTABLEKS                       R4 R3 K1 ["log"]
       37 DUPTABLE                         R4 K2 [{"maxLevel", "log"}]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K3 ["Levels"]
       41 GETTABLEKS                       R5 R5 K7 ["Debug"]
       43 SETTABLEKS                       R5 R4 K0 ["maxLevel"]
       45 NEWCLOSURE                       R5 P3
       46 CAPTURE                          REF R0
       47 SETTABLEKS                       R5 R4 K1 ["log"]
       49 DUPTABLE                         R5 K2 [{"maxLevel", "log"}]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K3 ["Levels"]
       53 GETTABLEKS                       R6 R6 K8 ["Trace"]
       55 SETTABLEKS                       R6 R5 K0 ["maxLevel"]
       57 NEWCLOSURE                       R6 P4
       58 CAPTURE                          REF R0
       59 SETTABLEKS                       R6 R5 K1 ["log"]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K9 ["new"]
       64 CALL                             R6 0 1
       65 DUPTABLE                         R9 K12 [{["number"] = 1}]
       66 NAMECALL                         R7 R6 K13 ["setContext"]
       68 CALL                             R7 2 0
       69 MOVE                             R9 R1
       70 NAMECALL                         R7 R6 K14 ["addSink"]
       72 CALL                             R7 2 0
       73 MOVE                             R9 R2
       74 NAMECALL                         R7 R6 K14 ["addSink"]
       76 CALL                             R7 2 0
       77 MOVE                             R9 R3
       78 NAMECALL                         R7 R6 K14 ["addSink"]
       80 CALL                             R7 2 0
       81 MOVE                             R9 R4
       82 NAMECALL                         R7 R6 K14 ["addSink"]
       84 CALL                             R7 2 0
       85 MOVE                             R9 R5
       86 NAMECALL                         R7 R6 K14 ["addSink"]
       88 CALL                             R7 2 0
       89 CLOSEUPVALS                      R0
       90 RETURN                           R6 1

PROTO_19:
        0 GETIMPORT                        R3 K1 [print]
        2 GETIMPORT                        R4 K4 [string.format]
        4 LOADK                            R5 K5 ["%-40s %0.3e [%0.4fx]"]
        5 MOVE                             R7 R0
        6 LOADK                            R8 K6 [" - "]
        7 MOVE                             R9 R1
        8 CONCAT                           R6 R7 R9
        9 MOVE                             R7 R2
       10 GETUPVAL                         R9 0
       11 DIV                              R8 R2 R9
       12 CALL                             R4 4 -1
       13 CALL                             R3 -1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [game]
        5 GETTABLEKS                       R1 R1 K4 ["LoadedCode"]
        7 GETTABLEKS                       R1 R1 K5 ["Packages"]
        9 GETTABLEKS                       R1 R1 K6 ["Lumberyak"]
       11 GETTABLEKS                       R1 R1 K7 ["Logger"]
       13 CALL                             R0 1 1
       14 DUPCLOSURE                       R1 K8 [PROTO_0]
       15 DUPCLOSURE                       R2 K9 [PROTO_1]
       16 DUPCLOSURE                       R3 K10 [PROTO_2]
       17 DUPCLOSURE                       R4 K11 [PROTO_4]
       18 CAPTURE                          VAL R0
       19 DUPCLOSURE                       R5 K12 [PROTO_6]
       20 DUPCLOSURE                       R6 K13 [PROTO_8]
       21 CAPTURE                          VAL R0
       22 DUPCLOSURE                       R7 K14 [PROTO_10]
       23 CAPTURE                          VAL R0
       24 DUPCLOSURE                       R8 K15 [PROTO_12]
       25 CAPTURE                          VAL R0
       26 DUPCLOSURE                       R9 K16 [PROTO_18]
       27 CAPTURE                          VAL R0
       28 MOVE                             R10 R1
       29 MOVE                             R11 R5
       30 MOVE                             R12 R2
       31 CALL                             R10 2 1
       32 MOVE                             R11 R1
       33 MOVE                             R12 R5
       34 MOVE                             R13 R3
       35 CALL                             R11 2 1
       36 NEWTABLE                         R12 8 0
       38 SETTABLEKS                       R6 R12 K17 ["Log level off"]
       40 SETTABLEKS                       R4 R12 K18 ["Simple logger"]
       42 SETTABLEKS                       R7 R12 K19 ["Short chain"]
       44 SETTABLEKS                       R8 R12 K20 ["Long chain"]
       46 SETTABLEKS                       R9 R12 K21 ["Many sinks"]
       48 DUPCLOSURE                       R13 K22 [PROTO_19]
       49 CAPTURE                          VAL R10
       50 GETIMPORT                        R14 K24 [print]
       52 GETIMPORT                        R15 K27 [string.format]
       54 LOADK                            R16 K28 ["%-40s %0.3e [%0.4fx]"]
       55 LOADK                            R17 K29 ["Empty function - Simple"]
       56 MOVE                             R18 R10
       57 DIV                              R19 R10 R10
       58 CALL                             R15 4 -1
       59 CALL                             R14 -1 0
       60 GETIMPORT                        R14 K24 [print]
       62 GETIMPORT                        R15 K27 [string.format]
       64 LOADK                            R16 K28 ["%-40s %0.3e [%0.4fx]"]
       65 LOADK                            R17 K30 ["Empty function - Interpolation"]
       66 MOVE                             R18 R11
       67 DIV                              R19 R11 R10
       68 CALL                             R15 4 -1
       69 CALL                             R14 -1 0
       70 GETIMPORT                        R14 K32 [pairs]
       72 MOVE                             R15 R12
       73 CALL                             R14 1 3
       74 FORGPREP_NEXT                    R14
       75 MOVE                             R19 R1
       76 MOVE                             R20 R18
       77 MOVE                             R21 R2
       78 CALL                             R19 2 1
       79 GETIMPORT                        R20 K24 [print]
       81 GETIMPORT                        R21 K27 [string.format]
       83 LOADK                            R22 K28 ["%-40s %0.3e [%0.4fx]"]
       84 MOVE                             R24 R17
       85 LOADK                            R25 K33 [" - "]
       86 LOADK                            R26 K34 ["Simple"]
       87 CONCAT                           R23 R24 R26
       88 MOVE                             R24 R19
       89 DIV                              R25 R19 R10
       90 CALL                             R21 4 -1
       91 CALL                             R20 -1 0
       92 MOVE                             R20 R1
       93 MOVE                             R21 R18
       94 MOVE                             R22 R3
       95 CALL                             R20 2 1
       96 GETIMPORT                        R21 K24 [print]
       98 GETIMPORT                        R22 K27 [string.format]
      100 LOADK                            R23 K28 ["%-40s %0.3e [%0.4fx]"]
      101 MOVE                             R25 R17
      102 LOADK                            R26 K33 [" - "]
      103 LOADK                            R27 K35 ["Interpolation"]
      104 CONCAT                           R24 R25 R27
      105 MOVE                             R25 R20
      106 DIV                              R26 R20 R10
      107 CALL                             R22 4 -1
      108 CALL                             R21 -1 0
      109 FORGLOOP                         R14 2 ; [-35]
      111 RETURN                           R0 0
