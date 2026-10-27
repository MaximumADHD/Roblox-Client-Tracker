PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["roots"] ; [+9]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["roots"]
        5 LENGTH                           R1 R2
        6 JUMPIFNOTEQKN                    R1 K1 [1] ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLE                         R1 R2 R0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["toJSBoolean"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+49]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["isArray"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K4 ["join"]
       27 MOVE                             R3 R1
       28 LOADK                            R4 K5 [", "]
       29 CALL                             R2 2 1
       30 JUMP                             ; [+5]
       31 FASTCALL1                        TOSTRING R1 ; [+3]
       32 MOVE                             R3 R1
       33 GETIMPORT                        R2 K7 [tostring]
       35 CALL                             R2 1 1
       36 GETUPVAL                         R3 3
       37 LOADK                            R4 K8 ["match"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K2 ["toJSBoolean"]
       41 GETUPVAL                         R8 4
       42 GETTABLE                         R7 R8 R0
       43 CALL                             R6 1 1
       44 JUMPIFNOT                        R6 ; [+3]
       45 GETUPVAL                         R6 4
       46 GETTABLE                         R5 R6 R0
       47 JUMPIF                           R5 ; [+1]
       48 LOADN                            R5 0
       49 LOADK                            R6 K9 ["es"]
       50 CALL                             R3 3 1
       51 LOADK                            R4 K10 ["  %s: %s - %s"]
       52 MOVE                             R6 R0
       53 GETUPVAL                         R7 5
       54 GETTABLEKS                       R7 R7 K11 ["yellow"]
       56 MOVE                             R8 R2
       57 CALL                             R7 1 1
       58 FASTCALL1                        TOSTRING R3 ; [+3]
       59 MOVE                             R9 R3
       60 GETIMPORT                        R8 K7 [tostring]
       62 CALL                             R8 1 1
       63 NAMECALL                         R4 R4 K12 ["format"]
       65 CALL                             R4 4 -1
       66 RETURN                           R4 -1
       67 LOADNIL                          R2
       68 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["matches"]
        2 GETTABLEKS                       R2 R2 K1 ["stats"]
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETTABLEKS                       R1 R0 K0 ["matches"]
        8 GETTABLEKS                       R1 R1 K1 ["stats"]
       10 JUMPIF                           R1 ; [+2]
       11 NEWTABLE                         R1 0 0
       13 GETTABLEKS                       R2 R0 K2 ["context"]
       15 GETTABLEKS                       R2 R2 K3 ["config"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["join"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K5 ["filter"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["map"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["keys"]
       29 MOVE                             R7 R1
       30 CALL                             R6 1 1
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U4
       38 CALL                             R5 2 1
       39 DUPCLOSURE                       R6 K8 [PROTO_1]
       40 CAPTURE                          UPVAL U2
       41 CALL                             R4 2 1
       42 LOADK                            R5 K9 ["\n"]
       43 CALL                             R3 2 1
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K10 ["toJSBoolean"]
       47 GETTABLEKS                       R6 R0 K0 ["matches"]
       49 GETTABLEKS                       R6 R6 K11 ["total"]
       51 CALL                             R5 1 1
       52 JUMPIFNOT                        R5 ; [+42]
       53 LOADK                            R8 K12 ["In %s\n"]
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R10 R10 K13 ["bold"]
       57 GETTABLEKS                       R12 R2 K14 ["rootDir"]
       59 FASTCALL1                        TOSTRING R12 ; [+2]
       60 GETIMPORT                        R11 K16 [tostring]
       62 CALL                             R11 1 1
       63 CALL                             R10 1 -1
       64 NAMECALL                         R8 R8 K17 ["format"]
       66 CALL                             R8 -1 1
       67 MOVE                             R5 R8
       68 LOADK                            R8 K18 ["  %s checked.\n"]
       69 GETUPVAL                         R10 3
       70 LOADK                            R11 K19 ["file"]
       71 GETUPVAL                         R13 2
       72 GETTABLEKS                       R13 R13 K10 ["toJSBoolean"]
       74 GETTABLEKS                       R14 R0 K0 ["matches"]
       76 GETTABLEKS                       R14 R14 K11 ["total"]
       78 CALL                             R13 1 1
       79 JUMPIFNOT                        R13 ; [+5]
       80 GETTABLEKS                       R12 R0 K0 ["matches"]
       82 GETTABLEKS                       R12 R12 K11 ["total"]
       84 JUMPIF                           R12 ; [+1]
       85 LOADN                            R12 0
       86 LOADK                            R13 K20 ["s"]
       87 CALL                             R10 3 -1
       88 NAMECALL                         R8 R8 K17 ["format"]
       90 CALL                             R8 -1 1
       91 MOVE                             R6 R8
       92 MOVE                             R7 R3
       93 CONCAT                           R4 R5 R7
       94 RETURN                           R4 1
       95 LOADK                            R10 K21 ["No files found in %s.\n"]
       96 GETTABLEKS                       R13 R2 K14 ["rootDir"]
       98 FASTCALL1                        TOSTRING R13 ; [+2]
       99 GETIMPORT                        R12 K16 [tostring]
      101 CALL                             R12 1 1
      102 NAMECALL                         R10 R10 K17 ["format"]
      104 CALL                             R10 2 1
      105 MOVE                             R5 R10
      106 LOADK                            R6 K22 ["Make sure Jest's configuration does not exclude this directory."]
      107 LOADK                            R7 K23 ["\nTo set up Jest, make sure a package.json file exists.\n"]
      108 LOADK                            R8 K24 ["Jest Documentation: "]
      109 LOADK                            R9 K25 ["https://jestjs.io/docs/configuration"]
      110 CONCAT                           R4 R5 R9
      111 RETURN                           R4 1

PROTO_3:
        0 LOADK                            R1 K0 ["\"%s\""]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K2 [tostring]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K3 ["format"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 MOVE                             R4 R0
        4 DUPCLOSURE                       R5 K1 [PROTO_2]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R3 2 1
       11 LOADNIL                          R4
       12 GETTABLEKS                       R5 R1 K2 ["runTestsByPath"]
       14 JUMPIFNOT                        R5 ; [+18]
       15 LOADK                            R5 K3 ["Files: %s"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K4 ["join"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K0 ["map"]
       22 GETTABLEKS                       R9 R1 K5 ["nonFlagArgs"]
       24 DUPCLOSURE                       R10 K6 [PROTO_3]
       25 CALL                             R8 2 1
       26 LOADK                            R9 K7 [", "]
       27 CALL                             R7 2 -1
       28 NAMECALL                         R5 R5 K8 ["format"]
       30 CALL                             R5 -1 1
       31 MOVE                             R4 R5
       32 JUMP                             ; [+11]
       33 LOADK                            R5 K9 ["Pattern: %s - 0 matches"]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K10 ["yellow"]
       37 GETTABLEKS                       R8 R1 K11 ["testPathPattern"]
       39 CALL                             R7 1 -1
       40 NAMECALL                         R5 R5 K8 ["format"]
       42 CALL                             R5 -1 1
       43 MOVE                             R4 R5
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K12 ["toJSBoolean"]
       47 MOVE                             R6 R2
       48 CALL                             R5 1 1
       49 JUMPIFNOT                        R5 ; [+25]
       50 LOADK                            R5 K13 ["%s\n%s\n%s"]
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K14 ["bold"]
       54 LOADK                            R8 K15 ["No tests found, exiting with code 0"]
       55 CALL                             R7 1 1
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K4 ["join"]
       59 MOVE                             R10 R3
       60 LOADK                            R11 K16 ["\n"]
       61 CALL                             R9 2 -1
       62 FASTCALL                         TOSTRING ; [+2]
       63 GETIMPORT                        R8 K18 [tostring]
       65 CALL                             R8 -1 1
       66 FASTCALL1                        TOSTRING R4 ; [+3]
       67 MOVE                             R10 R4
       68 GETIMPORT                        R9 K18 [tostring]
       70 CALL                             R9 1 1
       71 NAMECALL                         R5 R5 K8 ["format"]
       73 CALL                             R5 4 -1
       74 RETURN                           R5 -1
       75 LOADK                            R12 K19 ["%s\n"]
       76 GETUPVAL                         R14 4
       77 GETTABLEKS                       R14 R14 K14 ["bold"]
       79 LOADK                            R15 K20 ["No tests found, exiting with code 1"]
       80 CALL                             R14 1 -1
       81 NAMECALL                         R12 R12 K8 ["format"]
       83 CALL                             R12 -1 1
       84 MOVE                             R6 R12
       85 LOADK                            R7 K21 ["Run with `--passWithNoTests` to exit with code 0"]
       86 LOADK                            R8 K16 ["\n"]
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K4 ["join"]
       90 MOVE                             R13 R3
       91 LOADK                            R14 K16 ["\n"]
       92 CALL                             R12 2 1
       93 MOVE                             R9 R12
       94 LOADK                            R10 K16 ["\n"]
       95 MOVE                             R11 R4
       96 CONCAT                           R5 R6 R11
       97 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 NEWTABLE                         R5 1 0
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["ChalkLua"]
       24 CALL                             R6 1 1
       25 GETIMPORT                        R7 K4 [require]
       27 GETTABLEKS                       R8 R0 K10 ["JestTypes"]
       29 CALL                             R7 1 1
       30 GETIMPORT                        R8 K4 [require]
       32 GETIMPORT                        R9 K1 [script]
       34 GETTABLEKS                       R9 R9 K2 ["Parent"]
       36 GETTABLEKS                       R9 R9 K11 ["pluralize"]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R8 R8 K12 ["default"]
       41 GETIMPORT                        R9 K4 [require]
       43 GETIMPORT                        R10 K1 [script]
       45 GETTABLEKS                       R10 R10 K2 ["Parent"]
       47 GETTABLEKS                       R10 R10 K13 ["types"]
       49 CALL                             R9 1 1
       50 DUPCLOSURE                       R10 K14 [PROTO_4]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R10 R5 K12 ["default"]
       58 RETURN                           R5 1
