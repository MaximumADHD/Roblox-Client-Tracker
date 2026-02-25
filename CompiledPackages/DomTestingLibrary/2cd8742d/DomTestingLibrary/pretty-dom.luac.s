PROTO_0:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getIgnore"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["includes"]
        7 MOVE                             R4 R1
        8 GETTABLEKS                       R5 R0 K2 ["ClassName"]
       10 CALL                             R3 2 1
       11 NOT                              R2 R3
       12 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R2 ; [+4]
        2 NEWTABLE                         R3 0 0
        4 JUMP                             ; [+1]
        5 MOVE                             R3 R2
        6 JUMPIF                           R0 ; [+3]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 MOVE                             R0 R4
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K1 [typeof]
       14 CALL                             R4 1 1
       15 JUMPIFEQKS                       R4 K2 ["number"] ; [+15]
       17 GETIMPORT                        R5 K4 [_G]
       19 GETTABLEKS                       R4 R5 K5 ["DEBUG_PRINT_LIMIT"]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K6 ["toJSBoolean"]
       24 MOVE                             R7 R4
       25 CALL                             R6 1 1
       26 JUMPIFNOT                        R6 ; [+2]
       27 MOVE                             R5 R4
       28 JUMPIF                           R5 ; [+1]
       29 LOADN                            R5 88
       30 MOVE                             R1 R5
       31 JUMPIFNOTEQKN                    R1 K7 [0] ; [+3]
       33 LOADK                            R4 K8 [""]
       34 RETURN                           R4 1
       35 FASTCALL1                        TYPEOF R0 ; [+3]
       36 MOVE                             R5 R0
       37 GETIMPORT                        R4 K1 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFEQKS                       R4 K9 ["Instance"] ; [+13]
       42 GETIMPORT                        R5 K11 [error]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R6 R7 K12 ["new"]
       47 LOADK                            R7 K13 ["Expected an Instance but got %s"]
       48 MOVE                             R9 R4
       49 NAMECALL                         R7 R7 K14 ["format"]
       51 CALL                             R7 2 -1
       52 CALL                             R6 -1 -1
       53 CALL                             R5 -1 0
       54 GETTABLEKS                       R7 R3 K15 ["filterNode"]
       56 JUMPIFNOTEQKNIL                  R7 ; [+3]
       58 GETUPVAL                         R5 3
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R5 R3 K15 ["filterNode"]
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R6 R7 K16 ["assign"]
       65 NEWTABLE                         R7 0 0
       67 MOVE                             R8 R3
       68 DUPTABLE                         R9 K17 [{"filterNode"}]
       69 GETUPVAL                         R11 4
       70 GETTABLEKS                       R10 R11 K18 ["None"]
       72 SETTABLEKS                       R10 R9 K15 ["filterNode"]
       74 CALL                             R6 3 1
       75 GETUPVAL                         R8 5
       76 GETTABLEKS                       R7 R8 K14 ["format"]
       78 MOVE                             R8 R0
       79 GETUPVAL                         R10 4
       80 GETTABLEKS                       R9 R10 K16 ["assign"]
       82 NEWTABLE                         R10 0 0
       84 DUPTABLE                         R11 K22 [{"plugins", "printFunctionName", "highlight"}]
       85 NEWTABLE                         R12 0 1
       87 GETUPVAL                         R13 6
       88 MOVE                             R14 R5
       89 CALL                             R13 1 -1
       90 SETLIST                          R12 R13 -1 [1]
       92 SETTABLEKS                       R12 R11 K19 ["plugins"]
       94 LOADB                            R12 0
       95 SETTABLEKS                       R12 R11 K20 ["printFunctionName"]
       97 LOADB                            R12 1
       98 SETTABLEKS                       R12 R11 K21 ["highlight"]
      100 MOVE                             R12 R6
      101 CALL                             R9 3 -1
      102 CALL                             R7 -1 1
      103 JUMPIFEQKNIL                     R1 ; [+17]
      105 LENGTH                           R9 R7
      106 JUMPIFNOTLT                      R1 R9 ; [+14]
      108 LOADK                            R8 K23 ["%s..."]
      109 LOADN                            R12 1
      110 FASTCALL3                        STRING_SUB R7 R12 R1
      112 MOVE                             R11 R7
      113 MOVE                             R13 R1
      114 GETIMPORT                        R10 K26 [string.sub]
      116 CALL                             R10 3 1
      117 NAMECALL                         R8 R8 K14 ["format"]
      119 CALL                             R8 2 1
      120 RETURN                           R8 1
      121 MOVE                             R8 R7
      122 RETURN                           R8 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["getUserCodeFrame"]
        4 CALL                             R0 0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["toJSBoolean"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R1 ; [+13]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["log"]
       14 LOADK                            R2 K3 ["%s\n\n%s"]
       15 GETUPVAL                         R4 3
       16 GETVARARGS                       R5 -1
       17 CALL                             R4 -1 1
       18 MOVE                             R5 R0
       19 NAMECALL                         R2 R2 K4 ["format"]
       21 CALL                             R2 3 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K2 ["log"]
       27 GETUPVAL                         R2 3
       28 GETVARARGS                       R3 -1
       29 CALL                             R2 -1 1
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 GETTABLEKS                       R5 R1 K9 ["console"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETIMPORT                        R10 K1 [script]
       24 GETTABLEKS                       R9 R10 K2 ["Parent"]
       26 GETTABLEKS                       R8 R9 K10 ["jsHelpers"]
       28 GETTABLEKS                       R7 R8 K11 ["typeError"]
       30 CALL                             R6 1 1
       31 NEWTABLE                         R7 4 0
       33 GETIMPORT                        R8 K4 [require]
       35 GETTABLEKS                       R9 R0 K12 ["PrettyFormat"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R10 K4 [require]
       40 GETIMPORT                        R13 K1 [script]
       42 GETTABLEKS                       R12 R13 K2 ["Parent"]
       44 GETTABLEKS                       R11 R12 K13 ["DOMElementFilter"]
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R9 R10 K14 ["default"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETIMPORT                        R13 K1 [script]
       53 GETTABLEKS                       R12 R13 K2 ["Parent"]
       55 GETTABLEKS                       R11 R12 K15 ["get-user-code-frame"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R12 K4 [require]
       60 GETIMPORT                        R15 K1 [script]
       62 GETTABLEKS                       R14 R15 K2 ["Parent"]
       64 GETTABLEKS                       R13 R14 K16 ["helpers"]
       66 CALL                             R12 1 1
       67 GETTABLEKS                       R11 R12 K17 ["getDocument"]
       69 GETIMPORT                        R12 K4 [require]
       71 GETIMPORT                        R15 K1 [script]
       73 GETTABLEKS                       R14 R15 K2 ["Parent"]
       75 GETTABLEKS                       R13 R14 K18 ["config-default-ignore"]
       77 CALL                             R12 1 1
       78 DUPCLOSURE                       R13 K19 [PROTO_0]
       79 DUPCLOSURE                       R14 K20 [PROTO_1]
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R2
       82 DUPCLOSURE                       R15 K21 [PROTO_2]
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 DUPCLOSURE                       R16 K22 [PROTO_3]
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R15
       95 SETTABLEKS                       R15 R7 K23 ["prettyDOM"]
       97 SETTABLEKS                       R16 R7 K24 ["logDOM"]
       99 SETTABLEKS                       R8 R7 K25 ["prettyFormat"]
      101 RETURN                           R7 1
