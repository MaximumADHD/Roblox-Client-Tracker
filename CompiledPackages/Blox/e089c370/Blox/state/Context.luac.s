PROTO_0:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
        4 RETURN                           R0 0
        5 FASTCALL1                        TYPE R3 ; [+3]
        6 MOVE                             R5 R3
        7 GETIMPORT                        R4 K1 [type]
        9 CALL                             R4 1 1
       10 GETUPVAL                         R6 0
       11 GETTABLE                         R5 R6 R4
       12 JUMPIF                           R5 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R2
       16 CALL                             R5 1 1
       17 JUMPIFNOT                        R5 ; [+1]
       18 RETURN                           R0 0
       19 LOADK                            R6 K2 ["%*.%*"]
       20 MOVE                             R8 R0
       21 MOVE                             R9 R1
       22 NAMECALL                         R6 R6 K3 ["format"]
       24 CALL                             R6 3 1
       25 MOVE                             R5 R6
       26 GETUPVAL                         R7 2
       27 GETTABLE                         R6 R7 R5
       28 JUMPIFNOT                        R6 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R6 2
       31 LOADB                            R7 1
       32 SETTABLE                         R7 R6 R5
       33 GETIMPORT                        R6 K5 [warn]
       35 LOADK                            R11 K6 ["[Blox] Template '%*': param '%*' expects %*"]
       36 MOVE                             R13 R0
       37 MOVE                             R14 R1
       38 MOVE                             R15 R4
       39 NAMECALL                         R11 R11 K3 ["format"]
       41 CALL                             R11 4 1
       42 MOVE                             R8 R11
       43 LOADK                            R11 K7 [" (default = %*), but received a plain function."]
       44 FASTCALL1                        TOSTRING R3 ; [+3]
       45 MOVE                             R14 R3
       46 GETIMPORT                        R13 K9 [tostring]
       48 CALL                             R13 1 1
       49 NAMECALL                         R11 R11 K3 ["format"]
       51 CALL                             R11 2 1
       52 MOVE                             R9 R11
       53 LOADK                            R10 K10 [" Use a signal or computed instead."]
       54 CONCAT                           R7 R8 R10
       55 CALL                             R6 1 0
       56 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 JUMPIF                           R4 ; [+7]
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K1 [type]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+2]
       11 RETURN                           R0 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["createSignal"]
       15 MOVE                             R5 R0
       16 GETUPVAL                         R6 2
       17 MOVE                             R7 R3
       18 CALL                             R4 3 -1
       19 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R1
        8 JUMPIFEQKNIL                     R2 ; [+47]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R3 R1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 JUMPIFNOT                        R3 ; [+7]
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 4
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 GETUPVAL                         R8 5
       21 GETTABLE                         R7 R8 R1
       22 CALL                             R3 4 0
       23 GETUPVAL                         R4 6
       24 GETUPVAL                         R5 7
       25 LOADK                            R7 K0 ["%*.paramValue.%*"]
       26 GETUPVAL                         R9 4
       27 MOVE                             R10 R1
       28 NAMECALL                         R7 R7 K1 ["format"]
       30 CALL                             R7 3 1
       31 MOVE                             R6 R7
       32 GETUPVAL                         R7 8
       33 MOVE                             R8 R2
       34 CALL                             R7 1 1
       35 JUMPIF                           R7 ; [+7]
       36 FASTCALL1                        TYPE R2 ; [+3]
       37 MOVE                             R8 R2
       38 GETIMPORT                        R7 K3 [type]
       40 CALL                             R7 1 1
       41 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+3]
       43 MOVE                             R3 R2
       44 JUMP                             ; [+8]
       45 GETUPVAL                         R7 9
       46 GETTABLEKS                       R7 R7 K5 ["createSignal"]
       48 MOVE                             R8 R2
       49 GETUPVAL                         R9 10
       50 MOVE                             R10 R6
       51 CALL                             R7 3 1
       52 MOVE                             R3 R7
       53 GETUPVAL                         R4 0
       54 SETTABLE                         R3 R4 R1
       55 RETURN                           R3 1
       56 GETUPVAL                         R3 11
       57 GETTABLE                         R2 R3 R1
       58 JUMPIFEQKNIL                     R2 ; [+36]
       60 GETUPVAL                         R4 11
       61 GETTABLE                         R3 R4 R1
       62 GETUPVAL                         R4 6
       63 GETUPVAL                         R5 7
       64 LOADK                            R7 K6 ["%*.field.%*"]
       65 GETUPVAL                         R9 4
       66 MOVE                             R10 R1
       67 NAMECALL                         R7 R7 K1 ["format"]
       69 CALL                             R7 3 1
       70 MOVE                             R6 R7
       71 GETUPVAL                         R7 8
       72 MOVE                             R8 R3
       73 CALL                             R7 1 1
       74 JUMPIF                           R7 ; [+7]
       75 FASTCALL1                        TYPE R3 ; [+3]
       76 MOVE                             R8 R3
       77 GETIMPORT                        R7 K3 [type]
       79 CALL                             R7 1 1
       80 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+3]
       82 MOVE                             R2 R3
       83 JUMP                             ; [+8]
       84 GETUPVAL                         R7 9
       85 GETTABLEKS                       R7 R7 K5 ["createSignal"]
       87 MOVE                             R8 R3
       88 GETUPVAL                         R9 10
       89 MOVE                             R10 R6
       90 CALL                             R7 3 1
       91 MOVE                             R2 R7
       92 GETUPVAL                         R3 0
       93 SETTABLE                         R2 R3 R1
       94 RETURN                           R2 1
       95 GETUPVAL                         R3 5
       96 GETTABLE                         R2 R3 R1
       97 JUMPIFEQKNIL                     R2 ; [+36]
       99 GETUPVAL                         R4 5
      100 GETTABLE                         R3 R4 R1
      101 GETUPVAL                         R4 6
      102 GETUPVAL                         R5 7
      103 LOADK                            R7 K7 ["%*.defaultValue.%*"]
      104 GETUPVAL                         R9 4
      105 MOVE                             R10 R1
      106 NAMECALL                         R7 R7 K1 ["format"]
      108 CALL                             R7 3 1
      109 MOVE                             R6 R7
      110 GETUPVAL                         R7 8
      111 MOVE                             R8 R3
      112 CALL                             R7 1 1
      113 JUMPIF                           R7 ; [+7]
      114 FASTCALL1                        TYPE R3 ; [+3]
      115 MOVE                             R8 R3
      116 GETIMPORT                        R7 K3 [type]
      118 CALL                             R7 1 1
      119 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+3]
      121 MOVE                             R2 R3
      122 JUMP                             ; [+8]
      123 GETUPVAL                         R7 9
      124 GETTABLEKS                       R7 R7 K5 ["createSignal"]
      126 MOVE                             R8 R3
      127 GETUPVAL                         R9 10
      128 MOVE                             R10 R6
      129 CALL                             R7 3 1
      130 MOVE                             R2 R7
      131 GETUPVAL                         R3 0
      132 SETTABLE                         R2 R3 R1
      133 RETURN                           R2 1
      134 GETUPVAL                         R2 12
      135 JUMPIFNOT                        R2 ; [+3]
      136 GETUPVAL                         R3 12
      137 GETTABLE                         R2 R3 R1
      138 RETURN                           R2 1
      139 GETUPVAL                         R2 13
      140 GETTABLEKS                       R2 R2 K8 ["warn"]
      142 LOADK                            R4 K9 ["Blox: Context key '%*' not found for template: '%*'"]
      143 MOVE                             R6 R1
      144 GETUPVAL                         R7 4
      145 NAMECALL                         R4 R4 K1 ["format"]
      147 CALL                             R4 3 1
      148 MOVE                             R3 R4
      149 CALL                             R2 1 0
      150 LOADNIL                          R2
      151 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+7]
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+11]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETUPVAL                         R7 3
       16 GETTABLE                         R6 R7 R0
       17 CALL                             R2 4 0
       18 GETUPVAL                         R2 4
       19 SETTABLE                         R1 R2 R0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 5
       22 SETTABLE                         R1 R2 R0
       23 GETUPVAL                         R2 4
       24 GETUPVAL                         R4 6
       25 GETUPVAL                         R5 7
       26 LOADK                            R7 K3 ["%*.field.%*"]
       27 GETUPVAL                         R9 2
       28 MOVE                             R10 R0
       29 NAMECALL                         R7 R7 K4 ["format"]
       31 CALL                             R7 3 1
       32 MOVE                             R6 R7
       33 GETUPVAL                         R7 0
       34 MOVE                             R8 R1
       35 CALL                             R7 1 1
       36 JUMPIF                           R7 ; [+7]
       37 FASTCALL1                        TYPE R1 ; [+3]
       38 MOVE                             R8 R1
       39 GETIMPORT                        R7 K1 [type]
       41 CALL                             R7 1 1
       42 JUMPIFNOTEQKS                    R7 K2 ["function"] ; [+3]
       44 MOVE                             R3 R1
       45 JUMP                             ; [+8]
       46 GETUPVAL                         R7 8
       47 GETTABLEKS                       R7 R7 K5 ["createSignal"]
       49 MOVE                             R8 R1
       50 GETUPVAL                         R9 9
       51 MOVE                             R10 R6
       52 CALL                             R7 3 1
       53 MOVE                             R3 R7
       54 SETTABLE                         R3 R2 R0
       55 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R5 0 0
        2 NEWTABLE                         R6 0 0
        4 NEWTABLE                         R7 1 0
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K0 ["SHOW_CONTEXT_INTERNALS"]
        9 JUMPIFNOT                        R9 ; [+14]
       10 DUPTABLE                         R8 K7 [{"templateId", "fields", "paramGetters", "defaultValues", "paramValues", "staticParent"}]
       11 SETTABLEKS                       R0 R8 K1 ["templateId"]
       13 SETTABLEKS                       R6 R8 K2 ["fields"]
       15 SETTABLEKS                       R5 R8 K3 ["paramGetters"]
       17 SETTABLEKS                       R2 R8 K4 ["defaultValues"]
       19 SETTABLEKS                       R3 R8 K5 ["paramValues"]
       21 SETTABLEKS                       R4 R8 K6 ["staticParent"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R8
       25 SETTABLEKS                       R8 R7 K8 ["$$context"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U0
       42 NEWCLOSURE                       R9 P1
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 DUPTABLE                         R12 K10 [{"__index"}]
       54 SETTABLEKS                       R8 R12 K9 ["__index"]
       56 FASTCALL2                        SETMETATABLE R7 R12 ; [+4]
       58 MOVE                             R11 R7
       59 GETIMPORT                        R10 K12 [setmetatable]
       61 CALL                             R10 2 1
       62 MOVE                             R11 R9
       63 RETURN                           R10 2

PROTO_6:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 MOVE                             R8 R2
        5 MOVE                             R9 R6
        6 MOVE                             R10 R7
        7 CALL                             R8 2 0
        8 FORGLOOP                         R3 2 ; [-5]
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Debug"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["state"]
       16 GETTABLEKS                       R3 R3 K7 ["Signals"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K8 ["isCallable"]
       21 GETTABLEKS                       R4 R2 K9 ["isGetter"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R0 K10 ["util"]
       27 GETTABLEKS                       R6 R6 K11 ["pretty"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETTABLEKS                       R7 R0 K12 ["types"]
       34 CALL                             R6 1 1
       35 NEWTABLE                         R7 2 0
       37 DUPTABLE                         R8 K16 [{"string", "number", "boolean"}]
       38 LOADB                            R9 1
       39 SETTABLEKS                       R9 R8 K13 ["string"]
       41 LOADB                            R9 1
       42 SETTABLEKS                       R9 R8 K14 ["number"]
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K15 ["boolean"]
       47 NEWTABLE                         R9 0 0
       49 DUPCLOSURE                       R10 K17 [PROTO_0]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R9
       53 DUPCLOSURE                       R11 K18 [PROTO_1]
       54 DUPCLOSURE                       R12 K19 [PROTO_2]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R11
       58 DUPCLOSURE                       R13 K20 [PROTO_5]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R11
       65 SETTABLEKS                       R13 R7 K21 ["createContext"]
       67 DUPCLOSURE                       R13 K22 [PROTO_6]
       68 SETTABLEKS                       R13 R7 K23 ["mergeDefinitions"]
       70 RETURN                           R7 1
