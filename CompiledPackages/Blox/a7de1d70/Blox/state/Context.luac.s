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
       19 LOADK                            R5 K2 ["%*.%*"]
       20 MOVE                             R7 R0
       21 MOVE                             R8 R1
       22 NAMECALL                         R5 R5 K3 ["format"]
       24 CALL                             R5 3 1
       25 GETUPVAL                         R7 2
       26 GETTABLE                         R6 R7 R5
       27 JUMPIFNOT                        R6 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R6 2
       30 LOADB                            R7 1
       31 SETTABLE                         R7 R6 R5
       32 GETIMPORT                        R6 K5 [warn]
       34 LOADK                            R11 K6 ["[Blox] Template '%*': param '%*' expects %*"]
       35 MOVE                             R13 R0
       36 MOVE                             R14 R1
       37 MOVE                             R15 R4
       38 NAMECALL                         R11 R11 K3 ["format"]
       40 CALL                             R11 4 1
       41 MOVE                             R8 R11
       42 LOADK                            R11 K7 [" (default = %*), but received a plain function."]
       43 FASTCALL1                        TOSTRING R3 ; [+3]
       44 MOVE                             R14 R3
       45 GETIMPORT                        R13 K9 [tostring]
       47 CALL                             R13 1 1
       48 NAMECALL                         R11 R11 K3 ["format"]
       50 CALL                             R11 2 1
       51 MOVE                             R9 R11
       52 LOADK                            R10 K10 [" Use a signal or computed instead."]
       53 CONCAT                           R7 R8 R10
       54 CALL                             R6 1 0
       55 RETURN                           R0 0

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
        8 JUMPIFEQKNIL                     R2 ; [+46]
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
       25 LOADK                            R6 K0 ["%*.paramValue.%*"]
       26 GETUPVAL                         R8 4
       27 MOVE                             R9 R1
       28 NAMECALL                         R6 R6 K1 ["format"]
       30 CALL                             R6 3 1
       31 GETUPVAL                         R7 8
       32 MOVE                             R8 R2
       33 CALL                             R7 1 1
       34 JUMPIF                           R7 ; [+7]
       35 FASTCALL1                        TYPE R2 ; [+3]
       36 MOVE                             R8 R2
       37 GETIMPORT                        R7 K3 [type]
       39 CALL                             R7 1 1
       40 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+3]
       42 MOVE                             R3 R2
       43 JUMP                             ; [+8]
       44 GETUPVAL                         R7 9
       45 GETTABLEKS                       R7 R7 K5 ["createSignal"]
       47 MOVE                             R8 R2
       48 GETUPVAL                         R9 10
       49 MOVE                             R10 R6
       50 CALL                             R7 3 1
       51 MOVE                             R3 R7
       52 GETUPVAL                         R4 0
       53 SETTABLE                         R3 R4 R1
       54 RETURN                           R3 1
       55 GETUPVAL                         R3 11
       56 GETTABLE                         R2 R3 R1
       57 JUMPIFEQKNIL                     R2 ; [+35]
       59 GETUPVAL                         R4 11
       60 GETTABLE                         R3 R4 R1
       61 GETUPVAL                         R4 6
       62 GETUPVAL                         R5 7
       63 LOADK                            R6 K6 ["%*.field.%*"]
       64 GETUPVAL                         R8 4
       65 MOVE                             R9 R1
       66 NAMECALL                         R6 R6 K1 ["format"]
       68 CALL                             R6 3 1
       69 GETUPVAL                         R7 8
       70 MOVE                             R8 R3
       71 CALL                             R7 1 1
       72 JUMPIF                           R7 ; [+7]
       73 FASTCALL1                        TYPE R3 ; [+3]
       74 MOVE                             R8 R3
       75 GETIMPORT                        R7 K3 [type]
       77 CALL                             R7 1 1
       78 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+3]
       80 MOVE                             R2 R3
       81 JUMP                             ; [+8]
       82 GETUPVAL                         R7 9
       83 GETTABLEKS                       R7 R7 K5 ["createSignal"]
       85 MOVE                             R8 R3
       86 GETUPVAL                         R9 10
       87 MOVE                             R10 R6
       88 CALL                             R7 3 1
       89 MOVE                             R2 R7
       90 GETUPVAL                         R3 0
       91 SETTABLE                         R2 R3 R1
       92 RETURN                           R2 1
       93 GETUPVAL                         R3 5
       94 GETTABLE                         R2 R3 R1
       95 JUMPIFEQKNIL                     R2 ; [+35]
       97 GETUPVAL                         R4 5
       98 GETTABLE                         R3 R4 R1
       99 GETUPVAL                         R4 6
      100 GETUPVAL                         R5 7
      101 LOADK                            R6 K7 ["%*.defaultValue.%*"]
      102 GETUPVAL                         R8 4
      103 MOVE                             R9 R1
      104 NAMECALL                         R6 R6 K1 ["format"]
      106 CALL                             R6 3 1
      107 GETUPVAL                         R7 8
      108 MOVE                             R8 R3
      109 CALL                             R7 1 1
      110 JUMPIF                           R7 ; [+7]
      111 FASTCALL1                        TYPE R3 ; [+3]
      112 MOVE                             R8 R3
      113 GETIMPORT                        R7 K3 [type]
      115 CALL                             R7 1 1
      116 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+3]
      118 MOVE                             R2 R3
      119 JUMP                             ; [+8]
      120 GETUPVAL                         R7 9
      121 GETTABLEKS                       R7 R7 K5 ["createSignal"]
      123 MOVE                             R8 R3
      124 GETUPVAL                         R9 10
      125 MOVE                             R10 R6
      126 CALL                             R7 3 1
      127 MOVE                             R2 R7
      128 GETUPVAL                         R3 0
      129 SETTABLE                         R2 R3 R1
      130 RETURN                           R2 1
      131 GETUPVAL                         R2 12
      132 JUMPIFNOT                        R2 ; [+3]
      133 GETUPVAL                         R3 12
      134 GETTABLE                         R2 R3 R1
      135 RETURN                           R2 1
      136 GETUPVAL                         R2 13
      137 GETTABLEKS                       R2 R2 K8 ["warn"]
      139 LOADK                            R3 K9 ["Blox: Context key '%*' not found for template: '%*'"]
      140 MOVE                             R5 R1
      141 GETUPVAL                         R6 4
      142 NAMECALL                         R3 R3 K1 ["format"]
      144 CALL                             R3 3 1
      145 CALL                             R2 1 0
      146 LOADNIL                          R2
      147 RETURN                           R2 1

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
       26 LOADK                            R6 K3 ["%*.field.%*"]
       27 GETUPVAL                         R8 2
       28 MOVE                             R9 R0
       29 NAMECALL                         R6 R6 K4 ["format"]
       31 CALL                             R6 3 1
       32 GETUPVAL                         R7 0
       33 MOVE                             R8 R1
       34 CALL                             R7 1 1
       35 JUMPIF                           R7 ; [+7]
       36 FASTCALL1                        TYPE R1 ; [+3]
       37 MOVE                             R8 R1
       38 GETIMPORT                        R7 K1 [type]
       40 CALL                             R7 1 1
       41 JUMPIFNOTEQKS                    R7 K2 ["function"] ; [+3]
       43 MOVE                             R3 R1
       44 JUMP                             ; [+8]
       45 GETUPVAL                         R7 8
       46 GETTABLEKS                       R7 R7 K5 ["createSignal"]
       48 MOVE                             R8 R1
       49 GETUPVAL                         R9 9
       50 MOVE                             R10 R6
       51 CALL                             R7 3 1
       52 MOVE                             R3 R7
       53 SETTABLE                         R3 R2 R0
       54 RETURN                           R0 0

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
       37 DUPTABLE                         R8 K17 [{["string"] = True, ["number"] = True, ["boolean"] = True}]
       38 NEWTABLE                         R9 0 0
       40 DUPCLOSURE                       R10 K18 [PROTO_0]
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R9
       44 DUPCLOSURE                       R11 K19 [PROTO_1]
       45 DUPCLOSURE                       R12 K20 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R11
       49 DUPCLOSURE                       R13 K21 [PROTO_5]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R11
       56 SETTABLEKS                       R13 R7 K22 ["createContext"]
       58 DUPCLOSURE                       R13 K23 [PROTO_6]
       59 SETTABLEKS                       R13 R7 K24 ["mergeDefinitions"]
       61 RETURN                           R7 1
