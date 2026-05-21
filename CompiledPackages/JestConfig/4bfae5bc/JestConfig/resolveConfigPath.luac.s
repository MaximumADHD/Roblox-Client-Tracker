PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["Instance"] ; [+13]
        8 LOADK                            R3 K3 ["ModuleScript"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+7]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["endsWith"]
       16 GETTABLEKS                       R2 R0 K6 ["Name"]
       18 LOADK                            R3 K7 [".config"]
       19 CALL                             R1 2 1
       20 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_2:
        0 GETTABLE                         R2 R0 R1
        1 RETURN                           R2 1

PROTO_3:
        0 JUMPIFEQKNIL                     R2 ; [+3]
        2 MOVE                             R3 R2
        3 JUMP                             ; [+1]
        4 LOADB                            R3 0
        5 DUPCLOSURE                       R4 K0 [PROTO_2]
        6 LOADNIL                          R5
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R7 R0
        9 GETIMPORT                        R6 K2 [typeof]
       11 CALL                             R6 1 1
       12 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+3]
       14 GETTABLE                         R5 R1 R0
       15 JUMP                             ; [+1]
       16 MOVE                             R5 R0
       17 MOVE                             R7 R5
       18 LOADB                            R6 0
       19 FASTCALL1                        TYPEOF R7 ; [+3]
       20 MOVE                             R9 R7
       21 GETIMPORT                        R8 K2 [typeof]
       23 CALL                             R8 1 1
       24 JUMPIFNOTEQKS                    R8 K4 ["Instance"] ; [+15]
       26 LOADK                            R10 K5 ["ModuleScript"]
       27 NAMECALL                         R8 R7 K6 ["IsA"]
       29 CALL                             R8 2 1
       30 MOVE                             R6 R8
       31 JUMPIFNOT                        R6 ; [+8]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K7 ["endsWith"]
       35 GETTABLEKS                       R9 R7 K8 ["Name"]
       37 LOADK                            R10 K9 [".config"]
       38 CALL                             R8 2 1
       39 MOVE                             R6 R8
       40 JUMPIFNOT                        R6 ; [+1]
       41 RETURN                           R5 1
       42 JUMPIFNOTEQKNIL                  R5 ; [+29]
       44 GETIMPORT                        R6 K11 [error]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K12 ["new"]
       49 LOADK                            R9 K13 ["Can't find a root directory while resolving a config file path.\n"]
       50 LOADK                            R12 K14 ["Provided path to resolve: %s\n"]
       51 FASTCALL1                        TOSTRING R0 ; [+3]
       52 MOVE                             R15 R0
       53 GETIMPORT                        R14 K16 [tostring]
       55 CALL                             R14 1 1
       56 NAMECALL                         R12 R12 K17 ["format"]
       58 CALL                             R12 2 1
       59 MOVE                             R10 R12
       60 LOADK                            R11 K18 ["cwd: %s"]
       61 FASTCALL1                        TOSTRING R1 ; [+3]
       62 MOVE                             R14 R1
       63 GETIMPORT                        R13 K16 [tostring]
       65 CALL                             R13 1 1
       66 NAMECALL                         R11 R11 K17 ["format"]
       68 CALL                             R11 2 1
       69 CONCAT                           R8 R9 R11
       70 CALL                             R7 1 -1
       71 CALL                             R6 -1 0
       72 GETUPVAL                         R6 2
       73 MOVE                             R7 R5
       74 MOVE                             R8 R0
       75 MOVE                             R9 R1
       76 MOVE                             R10 R3
       77 CALL                             R6 4 -1
       78 RETURN                           R6 -1

PROTO_4:
        0 LOADK                            R3 K0 ["ModuleScript"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["Name"]
        7 GETUPVAL                         R3 0
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 2
        5 AND                              R3 R1 R2
        6 RETURN                           R3 1

PROTO_6:
        0 JUMPIFEQKNIL                     R0 ; [+9]
        2 GETTABLEKS                       R5 R0 K0 ["GetChildren"]
        4 FASTCALL1                        TYPEOF R5 ; [+2]
        5 GETIMPORT                        R4 K2 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K3 ["function"] ; [+12]
       10 GETIMPORT                        R4 K5 [error]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K6 ["new"]
       15 GETUPVAL                         R6 1
       16 MOVE                             R7 R1
       17 MOVE                             R8 R2
       18 CALL                             R6 2 -1
       19 CALL                             R5 -1 -1
       20 CALL                             R4 -1 0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["filter"]
       24 NAMECALL                         R5 R0 K0 ["GetChildren"]
       26 CALL                             R5 1 1
       27 DUPCLOSURE                       R6 K8 [PROTO_5]
       28 CAPTURE                          UPVAL U3
       29 CALL                             R4 2 1
       30 JUMPIF                           R3 ; [+11]
       31 LENGTH                           R5 R4
       32 LOADN                            R6 1
       33 JUMPIFNOTLT                      R6 R5 ; [+8]
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K9 ["warn"]
       38 GETUPVAL                         R6 5
       39 MOVE                             R7 R4
       40 CALL                             R6 1 -1
       41 CALL                             R5 -1 0
       42 LENGTH                           R5 R4
       43 LOADN                            R6 0
       44 JUMPIFNOTLT                      R6 R5 ; [+3]
       46 GETTABLEN                        R5 R4 1
       47 RETURN                           R5 1
       48 GETIMPORT                        R5 K11 [game]
       50 JUMPIFNOTEQ                      R0 R5 ; [+12]
       52 GETIMPORT                        R5 K5 [error]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K6 ["new"]
       57 GETUPVAL                         R7 1
       58 MOVE                             R8 R1
       59 MOVE                             R9 R2
       60 CALL                             R7 2 -1
       61 CALL                             R6 -1 -1
       62 CALL                             R5 -1 0
       63 GETUPVAL                         R5 6
       64 GETTABLEKS                       R6 R0 K12 ["Parent"]
       66 MOVE                             R7 R1
       67 MOVE                             R8 R2
       68 MOVE                             R9 R3
       69 CALL                             R5 4 -1
       70 RETURN                           R5 -1

PROTO_7:
        0 LOADK                            R1 K0 ["\"%s\""]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CONCAT                           R3 R4 R5
        4 NAMECALL                         R1 R1 K1 ["format"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 LOADK                            R3 K0 ["Could not find a config file based on provided values:\n"]
        1 LOADK                            R9 K1 ["path: \"%s\"\n"]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R12 R0
        4 GETIMPORT                        R11 K3 [tostring]
        6 CALL                             R11 1 1
        7 NAMECALL                         R9 R9 K4 ["format"]
        9 CALL                             R9 2 1
       10 MOVE                             R4 R9
       11 LOADK                            R9 K5 ["cwd: \"%s\"\n"]
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R12 R1
       14 GETIMPORT                        R11 K3 [tostring]
       16 CALL                             R11 1 1
       17 NAMECALL                         R9 R9 K4 ["format"]
       19 CALL                             R9 2 1
       20 MOVE                             R5 R9
       21 LOADK                            R6 K6 ["Config paths must be specified by either a direct path to a config script\n"]
       22 LOADK                            R7 K7 ["or a path to a directory. If directory is given, Jest will try to\n"]
       23 LOADK                            R8 K8 ["traverse directory tree up, until it finds one of those files in exact order: %s."]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K9 ["join"]
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R11 R11 K10 ["map"]
       30 NEWTABLE                         R12 0 1
       32 LOADK                            R13 K11 [".lua"]
       33 SETLIST                          R12 R13 1 [1]
       35 DUPCLOSURE                       R13 K12 [PROTO_7]
       36 CAPTURE                          UPVAL U1
       37 CALL                             R11 2 1
       38 LOADK                            R12 K13 [" or "]
       39 CALL                             R10 2 -1
       40 NAMECALL                         R8 R8 K4 ["format"]
       42 CALL                             R8 -1 1
       43 CONCAT                           R2 R3 R8
       44 RETURN                           R2 1

PROTO_9:
        0 LOADK                            R1 K0 [""]
        1 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R1 K0 ["    * %s%s"]
        1 LOADK                            R4 K1 [""]
        2 FASTCALL1                        TOSTRING R4 ; [+2]
        3 GETIMPORT                        R3 K3 [tostring]
        5 CALL                             R3 1 1
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K3 [tostring]
       10 CALL                             R4 1 1
       11 NAMECALL                         R1 R1 K4 ["format"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["yellow"]
        3 NEWTABLE                         R2 0 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["join"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["concat"]
       11 NEWTABLE                         R5 0 0
       13 NEWTABLE                         R6 0 1
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K3 ["bold"]
       18 LOADK                            R8 K4 ["● Multiple configurations found:"]
       19 CALL                             R7 1 -1
       20 SETLIST                          R6 R7 -1 [1]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K5 ["map"]
       25 MOVE                             R8 R0
       26 DUPCLOSURE                       R9 K6 [PROTO_10]
       27 CALL                             R7 2 1
       28 NEWTABLE                         R8 0 3
       30 LOADK                            R9 K7 [""]
       31 LOADK                            R10 K8 ["  Implicit config resolution does not allow multiple configuration files."]
       32 LOADK                            R11 K9 ["  Either remove unused config files or select one explicitly with `--config`."]
       33 SETLIST                          R8 R9 3 [1]
       35 CALL                             R4 4 1
       36 LOADK                            R5 K10 ["\n"]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 2
       39 SETLIST                          R2 R3 2 [1]
       41 CALL                             R1 1 -1
       42 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETTABLEKS                       R4 R1 K8 ["String"]
       18 GETTABLEKS                       R5 R1 K9 ["console"]
       20 NEWTABLE                         R6 1 0
       22 GETIMPORT                        R7 K4 [require]
       24 GETTABLEKS                       R8 R0 K10 ["ChalkLua"]
       26 CALL                             R7 1 1
       27 GETIMPORT                        R8 K4 [require]
       29 GETTABLEKS                       R9 R0 K11 ["JestTypes"]
       31 CALL                             R8 1 1
       32 GETIMPORT                        R9 K4 [require]
       34 GETIMPORT                        R10 K1 [script]
       36 GETTABLEKS                       R10 R10 K2 ["Parent"]
       38 GETTABLEKS                       R10 R10 K12 ["constants"]
       40 CALL                             R9 1 1
       41 GETTABLEKS                       R10 R9 K13 ["JEST_CONFIG_BASE_NAME"]
       43 GETIMPORT                        R11 K4 [require]
       45 GETIMPORT                        R12 K1 [script]
       47 GETTABLEKS                       R12 R12 K2 ["Parent"]
       49 GETTABLEKS                       R12 R12 K14 ["utils"]
       51 CALL                             R11 1 1
       52 GETTABLEKS                       R12 R11 K15 ["DOCUMENTATION_NOTE"]
       54 LOADNIL                          R13
       55 LOADNIL                          R14
       56 LOADNIL                          R15
       57 DUPCLOSURE                       R16 K16 [PROTO_0]
       58 CAPTURE                          VAL R4
       59 DUPCLOSURE                       R17 K17 [PROTO_1]
       60 CAPTURE                          VAL R10
       61 NEWCLOSURE                       R18 P2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R3
       64 CAPTURE                          REF R13
       65 SETTABLEKS                       R18 R6 K18 ["default"]
       67 DUPCLOSURE                       R18 K19 [PROTO_4]
       68 CAPTURE                          VAL R10
       69 NEWCLOSURE                       R13 P4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          REF R14
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R18
       74 CAPTURE                          VAL R5
       75 CAPTURE                          REF R15
       76 CAPTURE                          REF R13
       77 DUPCLOSURE                       R14 K20 [PROTO_8]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R10
       80 DUPCLOSURE                       R19 K21 [PROTO_9]
       81 DUPCLOSURE                       R15 K22 [PROTO_11]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R12
       85 CLOSEUPVALS                      R13
       86 RETURN                           R6 1
