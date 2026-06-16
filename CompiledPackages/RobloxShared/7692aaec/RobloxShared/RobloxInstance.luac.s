PROTO_0:
        0 GETTABLE                         R2 R0 R1
        1 RETURN                           R2 1

PROTO_1:
        0 SETTABLE                         R2 R0 R1
        1 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKNIL                     R2 ; [+16]
        6 GETIMPORT                        R3 K1 [ipairs]
        8 GETTABLEKS                       R4 R2 K2 ["Properties"]
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R1 R7
       14 FORGLOOP                         R3 2 [inext] ; [-3]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R4 R2 K3 ["Superclass"]
       19 GETTABLE                         R2 R3 R4
       20 JUMPBACK                         ; [-17]
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        3 CALL                             R2 1 1
        4 MOVE                             R3 R2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K1 ["readProp"]
       11 MOVE                             R9 R0
       12 MOVE                             R10 R6
       13 CALL                             R8 2 2
       14 JUMPIFNOT                        R8 ; [+9]
       15 JUMPIFNOTEQKNIL                  R9 ; [+5]
       17 GETUPVAL                         R10 2
       18 GETTABLEKS                       R10 R10 K2 ["None"]
       20 JUMP                             ; [+1]
       21 MOVE                             R10 R9
       22 SETTABLE                         R10 R2 R6
       23 JUMP                             ; [+2]
       24 LOADNIL                          R10
       25 SETTABLE                         R10 R2 R6
       26 FORGLOOP                         R3 1 ; [-19]
       28 JUMPIFNOT                        R1 ; [+15]
       29 MOVE                             R3 R2
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 GETTABLE                         R8 R0 R6
       34 JUMPIFNOTEQKNIL                  R8 ; [+5]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R9 R9 K2 ["None"]
       39 JUMP                             ; [+1]
       40 MOVE                             R9 R8
       41 SETTABLE                         R9 R2 R6
       42 FORGLOOP                         R3 1 ; [-10]
       44 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R1 1
        5 GETIMPORT                        R2 K1 [pcall]
        7 GETIMPORT                        R3 K4 [Instance.new]
        9 MOVE                             R4 R0
       10 CALL                             R2 2 2
       11 JUMPIF                           R2 ; [+4]
       12 GETIMPORT                        R4 K6 [error]
       14 LOADK                            R5 K7 ["Class type is abstract or not creatable - cannot list defaults"]
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K8 ["listProps"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 1
       21 NAMECALL                         R5 R3 K9 ["Destroy"]
       23 CALL                             R5 1 0
       24 GETUPVAL                         R5 0
       25 SETTABLE                         R4 R5 R0
       26 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R3 2
        7 GETTABLE                         R2 R3 R1
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 2
       12 LOADB                            R3 1
       13 SETTABLE                         R3 R2 R1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K0 ["readProp"]
       17 GETUPVAL                         R3 4
       18 MOVE                             R4 R0
       19 CALL                             R2 2 2
       20 MOVE                             R4 R2
       21 JUMPIFNOT                        R4 ; [+11]
       22 GETUPVAL                         R4 5
       23 MOVE                             R5 R3
       24 MOVE                             R6 R1
       25 NEWTABLE                         R7 0 1
       27 GETUPVAL                         R8 6
       28 GETUPVAL                         R9 2
       29 CALL                             R8 1 -1
       30 SETLIST                          R7 R8 -1 [1]
       32 CALL                             R4 3 1
       33 GETUPVAL                         R5 2
       34 LOADNIL                          R6
       35 SETTABLE                         R6 R5 R1
       36 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 SETUPVAL                         R2 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K0 ["Instance"] ; [+5]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K1 ["every"]
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K2 ["keys"]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 1
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U7
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          REF R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CLOSEUPVALS                      R0
       10 RETURN                           R1 1

PROTO_10:
        0 DUPCLOSURE                       R2 K0 [PROTO_9]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R2
        8 LOADNIL                          R4
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          REF R4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          VAL R2
       18 CLOSEUPVALS                      R4
       19 JUMPIFNOT                        R3 ; [+5]
       20 MOVE                             R4 R3
       21 MOVE                             R5 R0
       22 MOVE                             R6 R1
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1
       25 RETURN                           R3 1

PROTO_11:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 DUPTABLE                         R2 K5 [{"ClassName", "subset"}]
        5 SETTABLEKS                       R0 R2 K3 ["ClassName"]
        7 SETTABLEKS                       R1 R2 K4 ["subset"]
        9 GETUPVAL                         R5 0
       10 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K7 [setmetatable]
       15 CALL                             R3 2 0
       16 RETURN                           R2 1

PROTO_12:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 SETTABLE                         R4 R3 R0
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R0
        9 MOVE                             R7 R1
       10 CALL                             R5 2 1
       11 JUMPIFNOT                        R5 ; [+3]
       12 MOVE                             R5 R1
       13 MOVE                             R6 R1
       14 RETURN                           R5 2
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [typeof]
       19 CALL                             R5 1 1
       20 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+5]
       22 GETUPVAL                         R5 1
       23 MOVE                             R6 R1
       24 CALL                             R5 1 1
       25 JUMPIFNOT                        R5 ; [+1]
       26 RETURN                           R0 2
       27 NEWTABLE                         R5 0 0
       29 GETIMPORT                        R6 K4 [pairs]
       31 MOVE                             R7 R1
       32 CALL                             R6 1 3
       33 FORGPREP_NEXT                    R6
       34 FASTCALL1                        TYPEOF R10 ; [+3]
       35 MOVE                             R12 R10
       36 GETIMPORT                        R11 K1 [typeof]
       38 CALL                             R11 1 1
       39 JUMPIFEQKS                       R11 K2 ["table"] ; [+2]
       41 SETTABLE                         R10 R5 R9
       42 FORGLOOP                         R6 2 ; [-9]
       44 GETIMPORT                        R6 K4 [pairs]
       46 MOVE                             R7 R1
       47 CALL                             R6 1 3
       48 FORGPREP_NEXT                    R6
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K5 ["readProp"]
       52 MOVE                             R12 R0
       53 MOVE                             R13 R9
       54 CALL                             R11 2 2
       55 JUMPIF                           R11 ; [+1]
       56 JUMP                             ; [+20]
       57 GETTABLE                         R13 R3 R12
       58 JUMPIFEQKNIL                     R13 ; [+6]
       60 GETIMPORT                        R13 K7 [error]
       62 LOADK                            R14 K8 ["Circular reference passed into .toMatchInstance(subset)"]
       63 CALL                             R13 1 0
       64 JUMP                             ; [+12]
       65 NEWTABLE                         R13 0 0
       67 SETTABLE                         R13 R5 R9
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R13 R13 K9 ["getInstanceSubset"]
       71 MOVE                             R14 R12
       72 MOVE                             R15 R10
       73 MOVE                             R16 R3
       74 CALL                             R13 3 2
       75 SETTABLE                         R13 R4 R9
       76 SETTABLE                         R14 R5 R9
       77 FORGLOOP                         R6 2 ; [-29]
       79 GETTABLEKS                       R6 R0 K10 ["ClassName"]
       81 FASTCALL1                        TYPEOF R1 ; [+3]
       82 MOVE                             R8 R1
       83 GETIMPORT                        R7 K1 [typeof]
       85 CALL                             R7 1 1
       86 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+17]
       88 FASTCALL2K                       RAWGET R1 K10 ; [+5]
       90 MOVE                             R8 R1
       91 LOADK                            R9 K10 ["ClassName"]
       92 GETIMPORT                        R7 K12 [rawget]
       94 CALL                             R7 2 1
       95 JUMPIFNOT                        R7 ; [+8]
       96 FASTCALL2K                       RAWGET R1 K10 ; [+5]
       98 MOVE                             R8 R1
       99 LOADK                            R9 K10 ["ClassName"]
      100 GETIMPORT                        R7 K12 [rawget]
      102 CALL                             R7 2 1
      103 MOVE                             R6 R7
      104 GETUPVAL                         R7 3
      105 GETTABLEKS                       R7 R7 K13 ["new"]
      107 GETTABLEKS                       R8 R0 K10 ["ClassName"]
      109 MOVE                             R9 R4
      110 CALL                             R7 2 1
      111 GETUPVAL                         R8 3
      112 GETTABLEKS                       R8 R8 K13 ["new"]
      114 MOVE                             R9 R6
      115 MOVE                             R10 R5
      116 CALL                             R8 2 1
      117 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["RobloxApiDump"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["JestGetType"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R3 R3 K7 ["getType"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R1 K8 ["LuauPolyfill"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K9 ["Array"]
       26 GETTABLEKS                       R6 R4 K10 ["Object"]
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R0 K11 ["expect"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R7 K12 ["equals"]
       35 GETTABLEKS                       R9 R7 K13 ["isObjectWithKeys"]
       37 GETTABLEKS                       R10 R7 K14 ["hasPropertyInObject"]
       39 GETTABLEKS                       R11 R7 K15 ["isAsymmetric"]
       41 NEWTABLE                         R12 8 0
       43 DUPCLOSURE                       R13 K16 [PROTO_0]
       44 DUPCLOSURE                       R14 K17 [PROTO_1]
       45 DUPCLOSURE                       R15 K18 [PROTO_2]
       46 CAPTURE                          VAL R13
       47 SETTABLEKS                       R15 R12 K19 ["readProp"]
       49 DUPCLOSURE                       R15 K20 [PROTO_3]
       50 CAPTURE                          VAL R14
       51 SETTABLEKS                       R15 R12 K21 ["writeProp"]
       53 DUPCLOSURE                       R15 K22 [PROTO_4]
       54 CAPTURE                          VAL R2
       55 DUPCLOSURE                       R16 K23 [PROTO_5]
       56 CAPTURE                          VAL R15
       57 CAPTURE                          VAL R12
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R16 R12 K24 ["listProps"]
       61 NEWTABLE                         R16 0 0
       63 DUPCLOSURE                       R17 K25 [PROTO_6]
       64 CAPTURE                          VAL R16
       65 CAPTURE                          VAL R12
       66 SETTABLEKS                       R17 R12 K26 ["listDefaultProps"]
       68 DUPCLOSURE                       R16 K27 [PROTO_10]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R16 R12 K28 ["instanceSubsetEquality"]
       77 NEWTABLE                         R16 2 0
       79 SETTABLEKS                       R16 R12 K29 ["InstanceSubset"]
       81 SETTABLEKS                       R16 R16 K30 ["__index"]
       83 DUPCLOSURE                       R17 K31 [PROTO_11]
       84 CAPTURE                          VAL R16
       85 SETTABLEKS                       R17 R16 K32 ["new"]
       87 DUPCLOSURE                       R17 K33 [PROTO_12]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R16
       92 SETTABLEKS                       R17 R12 K34 ["getInstanceSubset"]
       94 RETURN                           R12 1
