PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 MOVE                             R3 R0
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["VERBOSE_EXPRESSIONS"]
        9 JUMPIFNOT                        R4 ; [+10]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["log"]
       13 LOADK                            R5 K2 ["Expressions"]
       14 LOADK                            R6 K3 ["probe"]
       15 MOVE                             R7 R1
       16 GETUPVAL                         R8 1
       17 MOVE                             R9 R3
       18 CALL                             R8 1 -1
       19 CALL                             R4 -1 0
       20 MOVE                             R4 R1
       21 MOVE                             R5 R3
       22 CLOSEUPVALS                      R1
       23 RETURN                           R4 2

PROTO_2:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
        8 GETTABLEKS                       R2 R0 K3 ["$$store"]
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          REF R3
        3 MOVE                             R5 R0
        4 MOVE                             R6 R4
        5 CALL                             R5 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K0 ["VERBOSE_EXPRESSIONS"]
        9 JUMPIFNOT                        R6 ; [+10]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K1 ["log"]
       13 LOADK                            R7 K2 ["Expressions"]
       14 LOADK                            R8 K3 ["probe"]
       15 MOVE                             R9 R3
       16 GETUPVAL                         R10 1
       17 MOVE                             R11 R5
       18 CALL                             R10 1 -1
       19 CALL                             R6 -1 0
       20 MOVE                             R1 R3
       21 MOVE                             R2 R5
       22 CLOSEUPVALS                      R3
       23 JUMPIFNOT                        R1 ; [+6]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K4 ["createComputed"]
       27 MOVE                             R4 R0
       28 CALL                             R3 1 -1
       29 RETURN                           R3 -1
       30 RETURN                           R2 1

PROTO_4:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["VERBOSE_EXPRESSIONS"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["log"]
        8 LOADK                            R2 K2 ["Expressions"]
        9 LOADK                            R3 K3 ["peek"]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R0
       12 CALL                             R4 1 -1
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["peek"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 LOADN                            R4 1
       20 LOADK                            R6 K4 ["#"]
       21 FASTCALL1                        SELECT_VARARG R6 ; [+3]
       22 GETIMPORT                        R5 K6 [select]
       24 GETVARARGS                       R7 -1
       25 CALL                             R5 -1 1
       26 MOVE                             R2 R5
       27 LOADN                            R3 1
       28 FORNPREP                         R2
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K3 ["peek"]
       32 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       33 GETIMPORT                        R7 K6 [select]
       35 MOVE                             R8 R4
       36 GETVARARGS                       R9 -1
       37 CALL                             R7 -1 1
       38 GETTABLE                         R6 R1 R7
       39 CALL                             R5 1 1
       40 MOVE                             R1 R5
       41 FORNLOOP                         R2
       42 RETURN                           R1 1

PROTO_5:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["VERBOSE_EXPRESSIONS"]
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["log"]
        8 LOADK                            R3 K2 ["Expressions"]
        9 LOADK                            R4 K3 ["unwrap"]
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R0
       12 CALL                             R5 1 -1
       13 CALL                             R2 -1 0
       14 LOADB                            R2 0
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K5 [typeof]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+7]
       22 GETTABLEKS                       R3 R0 K7 ["$$store"]
       24 JUMPIFNOTEQKNIL                  R3 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 JUMPIFNOT                        R2 ; [+9]
       29 LOADK                            R3 K8 ["#"]
       30 FASTCALL1                        SELECT_VARARG R3 ; [+3]
       31 GETIMPORT                        R2 K10 [select]
       33 GETVARARGS                       R4 -1
       34 CALL                             R2 -1 1
       35 JUMPIFNOTEQKN                    R2 K11 [0] ; [+2]
       37 RETURN                           R0 1
       38 GETUPVAL                         R3 2
       39 MOVE                             R4 R0
       40 CALL                             R3 1 1
       41 JUMPIFNOT                        R3 ; [+4]
       42 MOVE                             R2 R0
       43 MOVE                             R3 R1
       44 CALL                             R2 1 1
       45 JUMP                             ; [+1]
       46 MOVE                             R2 R0
       47 LOADN                            R5 1
       48 LOADK                            R7 K8 ["#"]
       49 FASTCALL1                        SELECT_VARARG R7 ; [+3]
       50 GETIMPORT                        R6 K10 [select]
       52 GETVARARGS                       R8 -1
       53 CALL                             R6 -1 1
       54 MOVE                             R3 R6
       55 LOADN                            R4 1
       56 FORNPREP                         R3
       57 JUMPIFNOTEQKNIL                  R2 ; [+3]
       59 LOADNIL                          R6
       60 RETURN                           R6 1
       61 FASTCALL1                        SELECT_VARARG R5 ; [+4]
       62 GETIMPORT                        R6 K10 [select]
       64 MOVE                             R7 R5
       65 GETVARARGS                       R8 -1
       66 CALL                             R6 -1 1
       67 GETTABLE                         R2 R2 R6
       68 GETUPVAL                         R6 2
       69 MOVE                             R7 R2
       70 CALL                             R6 1 1
       71 JUMPIFNOT                        R6 ; [+4]
       72 MOVE                             R6 R2
       73 MOVE                             R7 R1
       74 CALL                             R6 1 1
       75 MOVE                             R2 R6
       76 FORNLOOP                         R3
       77 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["children"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL1                        TYPEOF R5 ; [+3]
        7 MOVE                             R7 R5
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["Instance"] ; [+6]
       13 GETTABLEKS                       R6 R5 K4 ["Name"]
       15 JUMPIFNOTEQ                      R6 R0 ; [+2]
       17 RETURN                           R5 1
       18 FORGLOOP                         R1 2 ; [-13]
       20 LOADNIL                          R1
       21 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTemplate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getParams"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createSignal"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["refSetters"]
        8 SETTABLE                         R2 R3 R0
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["effectsDirty"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOTEQKNIL                  R1 ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["effects"]
        9 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R1 K4 [table.insert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K0 ["effectsDirty"]
       18 LOADB                            R2 1
       19 SETTABLE                         R2 R1 R0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K5 ["dirty"]
       23 JUMPIF                           R1 ; [+7]
       24 GETUPVAL                         R1 0
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K5 ["dirty"]
       28 GETUPVAL                         R1 1
       29 GETUPVAL                         R2 0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K0 ["disposal"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K1 ["createEffect"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R2
       11 MOVE                             R8 R1
       12 CALL                             R5 3 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R3 K4 [table.insert]
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["deferredEffects"]
        3 DUPTABLE                         R4 K3 [{"fn", "debugName"}]
        4 SETTABLEKS                       R0 R4 K1 ["fn"]
        6 SETTABLEKS                       R1 R4 K2 ["debugName"]
        8 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       10 GETIMPORT                        R2 K6 [table.insert]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["providers"]
        3 DUPTABLE                         R4 K3 [{"getter", "setter"}]
        4 SETTABLEKS                       R1 R4 K1 ["getter"]
        6 SETTABLEKS                       R2 R4 K2 ["setter"]
        8 SETTABLE                         R4 R3 R0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parent"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETTABLEKS                       R3 R1 K1 ["providers"]
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETTABLEKS                       R3 R2 K2 ["getter"]
       10 GETTABLEKS                       R4 R2 K3 ["setter"]
       12 RETURN                           R3 2
       13 GETTABLEKS                       R1 R1 K0 ["parent"]
       15 JUMPBACK                         ; [-13]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["createSignal"]
       19 GETTABLEKS                       R3 R0 K5 ["defaultValue"]
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1

PROTO_15:
        0 NEWTABLE                         R3 16 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R1 R2 K2 ["publish"]
       10 GETTABLEKS                       R3 R0 K3 ["childOrder"]
       12 SETTABLEKS                       R3 R2 K3 ["childOrder"]
       14 GETTABLEKS                       R3 R0 K4 ["host"]
       16 SETTABLEKS                       R3 R2 K4 ["host"]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R3 R2 K5 ["getChild"]
       22 DUPCLOSURE                       R3 K6 [PROTO_7]
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R3 R2 K7 ["getTemplate"]
       26 DUPCLOSURE                       R3 K8 [PROTO_8]
       27 CAPTURE                          UPVAL U1
       28 SETTABLEKS                       R3 R2 K9 ["getParams"]
       30 NEWCLOSURE                       R3 P3
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R3 R2 K10 ["createRef"]
       35 NEWCLOSURE                       R3 P4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U2
       39 SETTABLEKS                       R3 R2 K11 ["createEffect"]
       41 NEWCLOSURE                       R3 P5
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R3 R2 K12 ["createDeferredEffect"]
       45 NEWCLOSURE                       R3 P6
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R3 R2 K13 ["_registerProvider"]
       49 NEWCLOSURE                       R3 P7
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 SETTABLEKS                       R3 R2 K14 ["provide"]
       54 GETUPVAL                         R5 0
       55 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       57 MOVE                             R4 R2
       58 GETIMPORT                        R3 K1 [setmetatable]
       60 CALL                             R3 2 1
       61 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["monitor"]
       11 GETTABLEKS                       R2 R2 K6 ["TemplateRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["state"]
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K9 ["util"]
       25 GETTABLEKS                       R4 R4 K10 ["Color"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Debug"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R2 K12 ["isGetter"]
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R7 R0 K13 ["types"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R0 K9 ["util"]
       44 GETTABLEKS                       R8 R8 K14 ["pretty"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R9 R0 K9 ["util"]
       51 GETTABLEKS                       R9 R9 K15 ["globals"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R0 K7 ["state"]
       58 GETTABLEKS                       R10 R10 K16 ["StoreMatchers"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K4 [require]
       63 GETTABLEKS                       R11 R0 K7 ["state"]
       65 GETTABLEKS                       R11 R11 K17 ["createStore"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K18 [PROTO_1]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R7
       71 DUPCLOSURE                       R12 K19 [PROTO_2]
       72 DUPTABLE                         R13 K42 [{"createSignal", "createComputed", "createStore", "wrap", "probe", "peek", "unwrap", "isCallable", "isGetter", "isStore", "log", "lighten", "darken", "hueRotate", "all", "deep", "filter", "find", "findIndex", "first", "last", "length", "select", "where"}]
       73 GETTABLEKS                       R14 R2 K20 ["createSignal"]
       75 SETTABLEKS                       R14 R13 K20 ["createSignal"]
       77 GETTABLEKS                       R14 R2 K21 ["createComputed"]
       79 SETTABLEKS                       R14 R13 K21 ["createComputed"]
       81 SETTABLEKS                       R10 R13 K17 ["createStore"]
       83 DUPCLOSURE                       R14 K43 [PROTO_3]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R14 R13 K22 ["wrap"]
       89 SETTABLEKS                       R11 R13 K23 ["probe"]
       91 DUPCLOSURE                       R14 K44 [PROTO_4]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R14 R13 K24 ["peek"]
       97 DUPCLOSURE                       R14 K45 [PROTO_5]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R14 R13 K25 ["unwrap"]
      103 GETTABLEKS                       R14 R2 K26 ["isCallable"]
      105 SETTABLEKS                       R14 R13 K26 ["isCallable"]
      107 GETTABLEKS                       R14 R2 K12 ["isGetter"]
      109 SETTABLEKS                       R14 R13 K12 ["isGetter"]
      111 SETTABLEKS                       R12 R13 K27 ["isStore"]
      113 GETTABLEKS                       R14 R4 K28 ["log"]
      115 SETTABLEKS                       R14 R13 K28 ["log"]
      117 GETTABLEKS                       R14 R3 K29 ["lighten"]
      119 SETTABLEKS                       R14 R13 K29 ["lighten"]
      121 GETTABLEKS                       R14 R3 K30 ["darken"]
      123 SETTABLEKS                       R14 R13 K30 ["darken"]
      125 GETTABLEKS                       R14 R3 K31 ["hueRotate"]
      127 SETTABLEKS                       R14 R13 K31 ["hueRotate"]
      129 GETTABLEKS                       R14 R9 K32 ["all"]
      131 SETTABLEKS                       R14 R13 K32 ["all"]
      133 GETTABLEKS                       R14 R9 K33 ["deep"]
      135 SETTABLEKS                       R14 R13 K33 ["deep"]
      137 GETTABLEKS                       R14 R9 K34 ["filter"]
      139 SETTABLEKS                       R14 R13 K34 ["filter"]
      141 GETTABLEKS                       R14 R9 K35 ["find"]
      143 SETTABLEKS                       R14 R13 K35 ["find"]
      145 GETTABLEKS                       R14 R9 K36 ["findIndex"]
      147 SETTABLEKS                       R14 R13 K36 ["findIndex"]
      149 GETTABLEKS                       R14 R9 K37 ["first"]
      151 SETTABLEKS                       R14 R13 K37 ["first"]
      153 GETTABLEKS                       R14 R9 K38 ["last"]
      155 SETTABLEKS                       R14 R13 K38 ["last"]
      157 GETTABLEKS                       R14 R9 K39 ["length"]
      159 SETTABLEKS                       R14 R13 K39 ["length"]
      161 GETTABLEKS                       R14 R9 K40 ["select"]
      163 SETTABLEKS                       R14 R13 K40 ["select"]
      165 GETTABLEKS                       R14 R9 K41 ["where"]
      167 SETTABLEKS                       R14 R13 K41 ["where"]
      169 MOVE                             R14 R8
      170 LOADNIL                          R15
      171 LOADNIL                          R16
      172 FORGPREP                         R14
      173 SETTABLE                         R18 R13 R17
      174 FORGLOOP                         R14 2 ; [-2]
      176 SETTABLEKS                       R13 R13 K46 ["__index"]
      178 DUPCLOSURE                       R14 K47 [PROTO_15]
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R2
      182 RETURN                           R14 1
