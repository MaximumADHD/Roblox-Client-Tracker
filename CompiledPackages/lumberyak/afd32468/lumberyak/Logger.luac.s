PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K4 [pairs]
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 3
       13 FORGPREP_NEXT                    R1
       14 GETIMPORT                        R6 K6 [string.lower]
       16 MOVE                             R7 R5
       17 CALL                             R6 1 1
       18 GETIMPORT                        R7 K6 [string.lower]
       20 MOVE                             R8 R0
       21 CALL                             R7 1 1
       22 JUMPIFNOTEQ                      R6 R7 ; [+2]
       24 RETURN                           R5 1
       25 FORGLOOP                         R1 2 ; [-12]
       27 LOADNIL                          R1
       28 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K8 [{"name", "sinks", "children", "parent", "context", "dirty", "active", "cache"}]
        1 SETTABLEKS                       R1 R2 K0 ["name"]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R2 K1 ["sinks"]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R2 K2 ["children"]
       11 SETTABLEKS                       R0 R2 K3 ["parent"]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K4 ["context"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K5 ["dirty"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K6 ["active"]
       24 DUPTABLE                         R3 K9 [{"sinks", "context"}]
       25 NEWTABLE                         R4 0 0
       27 SETTABLEKS                       R4 R3 K1 ["sinks"]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K4 ["context"]
       33 SETTABLEKS                       R3 R2 K7 ["cache"]
       35 GETIMPORT                        R3 K11 [pairs]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R4 R6 K12 ["Levels"]
       40 CALL                             R3 1 3
       41 FORGPREP_NEXT                    R3
       42 JUMPIFNOT                        R0 ; [+7]
       43 GETTABLEKS                       R8 R2 K6 ["active"]
       45 GETTABLEKS                       R10 R0 K6 ["active"]
       47 GETTABLE                         R9 R10 R6
       48 SETTABLE                         R9 R8 R6
       49 JUMP                             ; [+4]
       50 GETTABLEKS                       R8 R2 K6 ["active"]
       52 LOADB                            R9 0
       53 SETTABLE                         R9 R8 R6
       54 FORGLOOP                         R3 2 ; [-13]
       56 JUMPIFNOT                        R0 ; [+4]
       57 GETTABLEKS                       R3 R0 K2 ["children"]
       59 LOADB                            R4 1
       60 SETTABLE                         R4 R3 R2
       61 GETUPVAL                         R5 0
       62 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       64 MOVE                             R4 R2
       65 GETIMPORT                        R3 K14 [setmetatable]
       67 CALL                             R3 2 0
       68 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+23]
        3 LOADN                            R5 1
        4 MOVE                             R3 R2
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 GETTABLEKS                       R6 R1 K0 ["active"]
        9 GETUPVAL                         R8 1
       10 GETTABLE                         R7 R8 R5
       11 LOADB                            R8 1
       12 SETTABLE                         R8 R6 R7
       13 FORNLOOP                         R3
       14 GETIMPORT                        R3 K2 [pairs]
       16 GETTABLEKS                       R4 R1 K3 ["children"]
       18 CALL                             R3 1 3
       19 FORGPREP_NEXT                    R3
       20 GETUPVAL                         R8 2
       21 MOVE                             R9 R0
       22 MOVE                             R10 R6
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-5]
       26 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["dirty"]
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETTABLEKS                       R2 R0 K3 ["children"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R4
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 ; [-4]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["dirty"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["parent"]
        6 JUMPIF                           R1 ; [+16]
        7 GETTABLEKS                       R1 R0 K2 ["cache"]
        9 GETTABLEKS                       R2 R0 K3 ["context"]
       11 SETTABLEKS                       R2 R1 K3 ["context"]
       13 GETTABLEKS                       R1 R0 K2 ["cache"]
       15 GETTABLEKS                       R2 R0 K4 ["sinks"]
       17 SETTABLEKS                       R2 R1 K4 ["sinks"]
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K0 ["dirty"]
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R2 R0 K1 ["parent"]
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R1 R0 K2 ["cache"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K5 ["Dictionary"]
       32 GETTABLEKS                       R2 R3 K6 ["join"]
       34 GETTABLEKS                       R5 R0 K1 ["parent"]
       36 GETTABLEKS                       R4 R5 K2 ["cache"]
       38 GETTABLEKS                       R3 R4 K3 ["context"]
       40 GETTABLEKS                       R4 R0 K3 ["context"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K3 ["context"]
       45 GETTABLEKS                       R4 R0 K1 ["parent"]
       47 GETTABLEKS                       R3 R4 K2 ["cache"]
       49 GETTABLEKS                       R2 R3 K3 ["context"]
       51 GETTABLEKS                       R1 R2 K7 ["prefix"]
       53 JUMPIFNOT                        R1 ; [+24]
       54 GETTABLEKS                       R2 R0 K3 ["context"]
       56 GETTABLEKS                       R1 R2 K7 ["prefix"]
       58 JUMPIFNOT                        R1 ; [+19]
       59 GETTABLEKS                       R2 R0 K2 ["cache"]
       61 GETTABLEKS                       R1 R2 K3 ["context"]
       63 GETTABLEKS                       R7 R0 K1 ["parent"]
       65 GETTABLEKS                       R6 R7 K2 ["cache"]
       67 GETTABLEKS                       R5 R6 K3 ["context"]
       69 GETTABLEKS                       R3 R5 K7 ["prefix"]
       71 GETTABLEKS                       R5 R0 K3 ["context"]
       73 GETTABLEKS                       R4 R5 K7 ["prefix"]
       75 CONCAT                           R2 R3 R4
       76 SETTABLEKS                       R2 R1 K7 ["prefix"]
       78 GETTABLEKS                       R1 R0 K2 ["cache"]
       80 GETUPVAL                         R4 1
       81 GETTABLEKS                       R3 R4 K8 ["List"]
       83 GETTABLEKS                       R2 R3 K6 ["join"]
       85 GETTABLEKS                       R5 R0 K1 ["parent"]
       87 GETTABLEKS                       R4 R5 K2 ["cache"]
       89 GETTABLEKS                       R3 R4 K4 ["sinks"]
       91 GETTABLEKS                       R4 R0 K4 ["sinks"]
       93 CALL                             R2 2 1
       94 SETTABLEKS                       R2 R1 K4 ["sinks"]
       96 LOADB                            R1 0
       97 SETTABLEKS                       R1 R0 K0 ["dirty"]
       99 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["parent"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R3 R0 K0 ["parent"]
        5 GETTABLEKS                       R2 R3 K1 ["children"]
        7 LOADNIL                          R3
        8 SETTABLE                         R3 R2 R0
        9 GETUPVAL                         R2 0
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 SETTABLEKS                       R1 R0 K0 ["parent"]
       14 GETTABLEKS                       R3 R0 K0 ["parent"]
       16 GETTABLEKS                       R2 R3 K1 ["children"]
       18 LOADB                            R3 1
       19 SETTABLE                         R3 R2 R0
       20 LOADN                            R2 255
       21 GETIMPORT                        R3 K3 [pairs]
       23 GETTABLEKS                       R6 R1 K4 ["cache"]
       25 GETTABLEKS                       R4 R6 K5 ["sinks"]
       27 CALL                             R3 1 3
       28 FORGPREP_NEXT                    R3
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R10 R7 K6 ["maxLevel"]
       32 GETTABLE                         R8 R9 R10
       33 JUMPIFNOT                        R8 ; [+11]
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R13 R7 K6 ["maxLevel"]
       37 GETTABLE                         R11 R12 R13
       38 FASTCALL2                        MATH_MAX R2 R11 ; [+4]
       40 MOVE                             R10 R2
       41 GETIMPORT                        R9 K9 [math.max]
       43 CALL                             R9 2 1
       44 MOVE                             R2 R9
       45 FORGLOOP                         R3 2 ; [-17]
       47 LOADN                            R3 255
       48 JUMPIFNOTLT                      R3 R2 ; [+6]
       50 GETUPVAL                         R3 2
       51 GETUPVAL                         R5 3
       52 GETTABLE                         R4 R5 R2
       53 MOVE                             R5 R0
       54 CALL                             R3 2 0
       55 LOADB                            R3 1
       56 SETTABLEKS                       R3 R0 K10 ["dirty"]
       58 GETIMPORT                        R3 K3 [pairs]
       60 GETTABLEKS                       R4 R0 K1 ["children"]
       62 CALL                             R3 1 3
       63 FORGPREP_NEXT                    R3
       64 GETUPVAL                         R8 4
       65 MOVE                             R9 R6
       66 CALL                             R8 1 0
       67 FORGLOOP                         R3 2 ; [-4]
       69 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["maxLevel"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 0
        5 GETTABLEKS                       R3 R0 K1 ["sinks"]
        7 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R2 K4 [table.insert]
       12 CALL                             R2 2 0
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R0 K5 ["dirty"]
       16 GETIMPORT                        R2 K7 [pairs]
       18 GETTABLEKS                       R3 R0 K8 ["children"]
       20 CALL                             R2 1 3
       21 FORGPREP_NEXT                    R2
       22 GETUPVAL                         R7 1
       23 MOVE                             R8 R5
       24 CALL                             R7 1 0
       25 FORGLOOP                         R2 2 ; [-4]
       27 RETURN                           R0 0

PROTO_7:
        0 SETTABLEKS                       R1 R0 K0 ["context"]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K1 ["dirty"]
        5 GETIMPORT                        R2 K3 [pairs]
        7 GETTABLEKS                       R3 R0 K4 ["children"]
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 GETUPVAL                         R7 0
       12 MOVE                             R8 R5
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 2 ; [-4]
       16 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+12]
        2 GETUPVAL                         R2 0
        3 ADDK                             R1 R2 K1 [1]
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R2 R3 R4
        8 FASTCALL1                        TOSTRING R2 ; [+2]
        9 GETIMPORT                        R1 K3 [tostring]
       11 CALL                             R1 1 1
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLE                         R1 R2 R0
       15 MOVE                             R2 R1
       16 JUMPIFNOT                        R2 ; [+5]
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R3 R1
       19 GETIMPORT                        R2 K3 [tostring]
       21 CALL                             R2 1 1
       22 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R3 R1 K0 ["dirty"]
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 0
        6 DUPTABLE                         R3 K4 [{"level", "rawMessage", "loggerName"}]
        7 SETTABLEKS                       R0 R3 K1 ["level"]
        9 SETTABLEKS                       R2 R3 K2 ["rawMessage"]
       11 GETTABLEKS                       R4 R1 K5 ["name"]
       13 SETTABLEKS                       R4 R3 K3 ["loggerName"]
       15 GETIMPORT                        R4 K7 [pairs]
       17 GETTABLEKS                       R7 R1 K8 ["cache"]
       19 GETTABLEKS                       R5 R7 K9 ["context"]
       21 CALL                             R4 1 3
       22 FORGPREP_NEXT                    R4
       23 FASTCALL1                        TYPE R8 ; [+3]
       24 MOVE                             R10 R8
       25 GETIMPORT                        R9 K11 [type]
       27 CALL                             R9 1 1
       28 JUMPIFNOTEQKS                    R9 K12 ["function"] ; [+5]
       30 MOVE                             R9 R8
       31 CALL                             R9 0 1
       32 SETTABLE                         R9 R3 R7
       33 JUMP                             ; [+1]
       34 SETTABLE                         R8 R3 R7
       35 FORGLOOP                         R4 2 ; [-13]
       37 LOADNIL                          R4
       38 GETTABLEKS                       R5 R2 K13 ["n"]
       40 JUMPIFNOTEQKN                    R5 K14 [0] ; [+3]
       42 LOADK                            R4 K15 ["LUMBERYAK INTERNAL: No log message given"]
       43 JUMP                             ; [+1]
       44 GETTABLEN                        R4 R2 1
       45 GETTABLEKS                       R5 R3 K16 ["prefix"]
       47 JUMPIFNOT                        R5 ; [+4]
       48 GETTABLEKS                       R5 R3 K16 ["prefix"]
       50 MOVE                             R6 R4
       51 CONCAT                           R4 R5 R6
       52 LOADK                            R7 K17 ["{"]
       53 NAMECALL                         R5 R4 K18 ["find"]
       55 CALL                             R5 2 1
       56 JUMPIFNOT                        R5 ; [+27]
       57 LOADN                            R5 1
       58 LOADK                            R8 K19 ["{(.-)}"]
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          REF R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 NAMECALL                         R6 R4 K20 ["gsub"]
       65 CALL                             R6 3 1
       66 MOVE                             R4 R6
       67 GETTABLEKS                       R6 R2 K13 ["n"]
       69 JUMPIFNOTLT                      R5 R6 ; [+5]
       71 MOVE                             R6 R4
       72 LOADK                            R7 K21 ["\nLUMBERYAK INTERNAL: Too many arguments given for format string"]
       73 CONCAT                           R4 R6 R7
       74 JUMP                             ; [+7]
       75 GETTABLEKS                       R6 R2 K13 ["n"]
       77 JUMPIFNOTLT                      R6 R5 ; [+4]
       79 MOVE                             R6 R4
       80 LOADK                            R7 K22 ["\nLUMBERYAK INTERNAL: Too few arguments given for format string"]
       81 CONCAT                           R4 R6 R7
       82 CLOSEUPVALS                      R5
       83 JUMP                             ; [+8]
       84 GETTABLEKS                       R5 R2 K13 ["n"]
       86 LOADN                            R6 1
       87 JUMPIFNOTLT                      R6 R5 ; [+4]
       89 MOVE                             R5 R4
       90 LOADK                            R6 K21 ["\nLUMBERYAK INTERNAL: Too many arguments given for format string"]
       91 CONCAT                           R4 R5 R6
       92 GETUPVAL                         R6 1
       93 GETTABLE                         R5 R6 R0
       94 GETIMPORT                        R6 K7 [pairs]
       96 GETTABLEKS                       R9 R1 K8 ["cache"]
       98 GETTABLEKS                       R7 R9 K23 ["sinks"]
      100 CALL                             R6 1 3
      101 FORGPREP_NEXT                    R6
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R13 R10 K24 ["maxLevel"]
      105 GETTABLE                         R11 R12 R13
      106 JUMPIFNOT                        R11 ; [+11]
      107 GETUPVAL                         R12 1
      108 GETTABLEKS                       R13 R10 K24 ["maxLevel"]
      110 GETTABLE                         R11 R12 R13
      111 JUMPIFNOTLE                      R5 R11 ; [+6]
      113 MOVE                             R13 R4
      114 MOVE                             R14 R3
      115 NAMECALL                         R11 R10 K25 ["log"]
      117 CALL                             R11 3 0
      118 FORGLOOP                         R6 2 ; [-17]
      120 RETURN                           R0 0

PROTO_10:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R2 R0 K0 ["active"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Levels"]
        6 GETTABLEKS                       R3 R4 K2 ["Error"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K1 ["Levels"]
       15 GETTABLEKS                       R2 R3 K2 ["Error"]
       17 MOVE                             R3 R0
       18 GETIMPORT                        R4 K5 [table.pack]
       20 GETVARARGS                       R5 -1
       21 CALL                             R4 -1 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R2 R0 K0 ["active"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Levels"]
        6 GETTABLEKS                       R3 R4 K2 ["Warning"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K1 ["Levels"]
       15 GETTABLEKS                       R2 R3 K2 ["Warning"]
       17 MOVE                             R3 R0
       18 GETIMPORT                        R4 K5 [table.pack]
       20 GETVARARGS                       R5 -1
       21 CALL                             R4 -1 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_12:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R2 R0 K0 ["active"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Levels"]
        6 GETTABLEKS                       R3 R4 K2 ["Info"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K1 ["Levels"]
       15 GETTABLEKS                       R2 R3 K2 ["Info"]
       17 MOVE                             R3 R0
       18 GETIMPORT                        R4 K5 [table.pack]
       20 GETVARARGS                       R5 -1
       21 CALL                             R4 -1 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_13:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R2 R0 K0 ["active"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Levels"]
        6 GETTABLEKS                       R3 R4 K2 ["Debug"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K1 ["Levels"]
       15 GETTABLEKS                       R2 R3 K2 ["Debug"]
       17 MOVE                             R3 R0
       18 GETIMPORT                        R4 K5 [table.pack]
       20 GETVARARGS                       R5 -1
       21 CALL                             R4 -1 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_14:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R2 R0 K0 ["active"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["Levels"]
        6 GETTABLEKS                       R3 R4 K2 ["Trace"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K1 ["Levels"]
       15 GETTABLEKS                       R2 R3 K2 ["Trace"]
       17 MOVE                             R3 R0
       18 GETIMPORT                        R4 K5 [table.pack]
       20 GETVARARGS                       R5 -1
       21 CALL                             R4 -1 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Cryo"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 16 0
       14 SETTABLEKS                       R2 R2 K6 ["__index"]
       16 DUPTABLE                         R3 K12 [{"Error", "Warning", "Info", "Debug", "Trace"}]
       17 LOADK                            R4 K7 ["Error"]
       18 SETTABLEKS                       R4 R3 K7 ["Error"]
       20 LOADK                            R4 K8 ["Warning"]
       21 SETTABLEKS                       R4 R3 K8 ["Warning"]
       23 LOADK                            R4 K9 ["Info"]
       24 SETTABLEKS                       R4 R3 K9 ["Info"]
       26 LOADK                            R4 K10 ["Debug"]
       27 SETTABLEKS                       R4 R3 K10 ["Debug"]
       29 LOADK                            R4 K11 ["Trace"]
       30 SETTABLEKS                       R4 R3 K11 ["Trace"]
       32 SETTABLEKS                       R3 R2 K13 ["Levels"]
       34 NEWTABLE                         R3 0 5
       36 GETTABLEKS                       R5 R2 K13 ["Levels"]
       38 GETTABLEKS                       R4 R5 K7 ["Error"]
       40 GETTABLEKS                       R6 R2 K13 ["Levels"]
       42 GETTABLEKS                       R5 R6 K8 ["Warning"]
       44 GETTABLEKS                       R7 R2 K13 ["Levels"]
       46 GETTABLEKS                       R6 R7 K9 ["Info"]
       48 GETTABLEKS                       R8 R2 K13 ["Levels"]
       50 GETTABLEKS                       R7 R8 K10 ["Debug"]
       52 GETTABLEKS                       R9 R2 K13 ["Levels"]
       54 GETTABLEKS                       R8 R9 K11 ["Trace"]
       56 SETLIST                          R3 R4 5 [1]
       58 NEWTABLE                         R4 0 0
       60 GETIMPORT                        R5 K15 [pairs]
       62 MOVE                             R6 R3
       63 CALL                             R5 1 3
       64 FORGPREP_NEXT                    R5
       65 SETTABLE                         R8 R4 R9
       66 FORGLOOP                         R5 2 ; [-2]
       68 DUPCLOSURE                       R5 K16 [PROTO_0]
       69 CAPTURE                          VAL R3
       70 GETTABLEKS                       R6 R2 K13 ["Levels"]
       72 SETTABLEKS                       R5 R6 K17 ["fromString"]
       74 DUPCLOSURE                       R5 K18 [PROTO_1]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R5 R2 K19 ["new"]
       78 DUPCLOSURE                       R5 K20 [PROTO_2]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 DUPCLOSURE                       R6 K21 [PROTO_3]
       83 CAPTURE                          VAL R6
       84 DUPCLOSURE                       R7 K22 [PROTO_4]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R1
       87 DUPCLOSURE                       R8 K23 [PROTO_5]
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R6
       93 SETTABLEKS                       R8 R2 K24 ["setParent"]
       95 DUPCLOSURE                       R8 K25 [PROTO_6]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R8 R2 K26 ["addSink"]
      100 DUPCLOSURE                       R8 K27 [PROTO_7]
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R8 R2 K28 ["setContext"]
      104 DUPCLOSURE                       R8 K29 [PROTO_9]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R4
      107 DUPCLOSURE                       R9 K30 [PROTO_10]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R8
      110 SETTABLEKS                       R9 R2 K31 ["error"]
      112 DUPCLOSURE                       R9 K32 [PROTO_11]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R8
      115 SETTABLEKS                       R9 R2 K33 ["warning"]
      117 DUPCLOSURE                       R9 K34 [PROTO_12]
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R8
      120 SETTABLEKS                       R9 R2 K35 ["info"]
      122 DUPCLOSURE                       R9 K36 [PROTO_13]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R8
      125 SETTABLEKS                       R9 R2 K37 ["debug"]
      127 DUPCLOSURE                       R9 K38 [PROTO_14]
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R8
      130 SETTABLEKS                       R9 R2 K39 ["trace"]
      132 RETURN                           R2 1
