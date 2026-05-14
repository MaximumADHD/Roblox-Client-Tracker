PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["readFileSync"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s+"]
        4 CALL                             R1 2 2
        5 JUMPIF                           R1 ; [+2]
        6 LOADN                            R3 1
        7 JUMP                             ; [+1]
        8 ADDK                             R3 R2 K4 [1]
        9 GETIMPORT                        R4 K2 [string.find]
       11 MOVE                             R7 R3
       12 NAMECALL                         R5 R0 K5 ["sub"]
       14 CALL                             R5 2 1
       15 LOADK                            R6 K6 [" "]
       16 CALL                             R4 2 1
       17 JUMPIF                           R4 ; [+2]
       18 LENGTH                           R5 R0
       19 ADDK                             R4 R5 K4 [1]
       20 SUBK                             R8 R4 K4 [1]
       21 FASTCALL3                        STRING_SUB R0 R3 R8
       23 MOVE                             R6 R0
       24 MOVE                             R7 R3
       25 GETIMPORT                        R5 K7 [string.sub]
       27 CALL                             R5 3 1
       28 LOADK                            R8 K8 [":"]
       29 NAMECALL                         R6 R5 K9 ["split"]
       31 CALL                             R6 2 1
       32 GETTABLEN                        R7 R6 1
       33 GETTABLEN                        R11 R6 2
       34 FASTCALL2K                       TONUMBER R11 K10 ; [+4]
       36 LOADK                            R12 K10 [10]
       37 GETIMPORT                        R10 K12 [tonumber]
       39 CALL                             R10 2 1
       40 MOVE                             R8 R10
       41 GETTABLEN                        R10 R6 3
       42 FASTCALL2K                       TONUMBER R10 K10 ; [+4]
       44 LOADK                            R11 K10 [10]
       45 GETIMPORT                        R9 K12 [tonumber]
       47 CALL                             R9 2 1
       48 LOADK                            R10 K13 [""]
       49 GETIMPORT                        R11 K15 [pcall]
       51 NEWCLOSURE                       R12 P0
       52 CAPTURE                          REF R10
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R7
       55 CALL                             R11 1 1
       56 JUMPIF                           R11 ; [+3]
       57 LOADK                            R12 K13 [""]
       58 CLOSEUPVALS                      R10
       59 RETURN                           R12 1
       60 GETUPVAL                         R12 1
       61 MOVE                             R13 R10
       62 DUPTABLE                         R14 K17 [{"start"}]
       63 DUPTABLE                         R15 K20 [{"line", "column"}]
       64 SETTABLEKS                       R8 R15 K18 ["line"]
       66 SETTABLEKS                       R9 R15 K19 ["column"]
       68 SETTABLEKS                       R15 R14 K16 ["start"]
       70 DUPTABLE                         R15 K23 [{"highlightCode", "linesBelow"}]
       71 LOADB                            R16 1
       72 SETTABLEKS                       R16 R15 K21 ["highlightCode"]
       74 LOADN                            R16 0
       75 SETTABLEKS                       R16 R15 K22 ["linesBelow"]
       77 CALL                             R12 3 1
       78 LOADK                            R13 K24 ["%s\n%s\n"]
       79 GETUPVAL                         R15 2
       80 GETTABLEKS                       R15 R15 K25 ["dim"]
       82 MOVE                             R16 R5
       83 CALL                             R15 1 1
       84 MOVE                             R16 R12
       85 NAMECALL                         R13 R13 K26 ["format"]
       87 CALL                             R13 3 -1
       88 CLOSEUPVALS                      R10
       89 RETURN                           R13 -1

PROTO_2:
        0 LOADK                            R4 K0 ["Packages%._Index"]
        1 NAMECALL                         R2 R0 K1 ["find"]
        3 CALL                             R2 2 1
        4 NOT                              R1 R2
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["readFileSync"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["toJSBoolean"]
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+2]
       10 LOADK                            R0 K2 [""]
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K3 ["Error"]
       15 GETTABLEKS                       R0 R0 K4 ["new"]
       17 CALL                             R0 0 1
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K5 ["find"]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K6 ["slice"]
       24 GETTABLEKS                       R4 R0 K7 ["stack"]
       26 ORK                              R3 R4 K2 [""]
       27 LOADK                            R5 K8 ["\n"]
       28 NAMECALL                         R3 R3 K9 ["split"]
       30 CALL                             R3 2 1
       31 LOADN                            R4 2
       32 CALL                             R2 2 1
       33 DUPCLOSURE                       R3 K10 [PROTO_2]
       34 CALL                             R1 2 1
       35 GETUPVAL                         R2 5
       36 MOVE                             R3 R1
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

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
       16 NEWTABLE                         R4 1 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["Chalk"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R7 R7 K2 ["Parent"]
       29 GETTABLEKS                       R7 R7 K9 ["jsHelpers"]
       31 GETTABLEKS                       R7 R7 K10 ["fs"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K4 [require]
       36 GETIMPORT                        R9 K1 [script]
       38 GETTABLEKS                       R9 R9 K2 ["Parent"]
       40 GETTABLEKS                       R9 R9 K9 ["jsHelpers"]
       42 GETTABLEKS                       R8 R9 K11 ["babel-code-frame"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R7 R7 K12 ["codeFrameColumns"]
       47 DUPCLOSURE                       R8 K13 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R9 K14 [PROTO_3]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R9 R4 K15 ["getUserCodeFrame"]
       60 RETURN                           R4 1
