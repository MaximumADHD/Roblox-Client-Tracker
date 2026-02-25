PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 NEWTABLE                         R2 0 0
        4 JUMPIFNOT                        R1 ; [+20]
        5 GETIMPORT                        R3 K1 [ipairs]
        7 GETTABLEKS                       R4 R1 K2 ["Properties"]
        9 CALL                             R3 1 3
       10 FORGPREP_INEXT                   R3
       11 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R7
       15 GETIMPORT                        R8 K5 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 [inext] ; [-8]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R4 R1 K6 ["Superclass"]
       23 GETTABLE                         R1 R3 R4
       24 JUMPBACK                         ; [-21]
       25 GETIMPORT                        R3 K8 [table.sort]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 0
       29 RETURN                           R2 1

PROTO_1:
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
       14 LOADB                            R2 0
       15 GETUPVAL                         R3 3
       16 JUMPIFEQKNIL                     R3 ; [+25]
       18 GETIMPORT                        R3 K2 [table.find]
       20 GETUPVAL                         R4 4
       21 MOVE                             R5 R0
       22 CALL                             R3 2 1
       23 JUMPIFNOTEQKNIL                  R3 ; [+6]
       25 LOADB                            R2 0
       26 GETUPVAL                         R4 5
       27 GETTABLE                         R3 R4 R0
       28 JUMPIFEQKNIL                     R3 ; [+13]
       30 GETUPVAL                         R2 6
       31 GETUPVAL                         R4 3
       32 GETTABLE                         R3 R4 R0
       33 MOVE                             R4 R1
       34 NEWTABLE                         R5 0 1
       36 GETUPVAL                         R6 7
       37 GETUPVAL                         R7 2
       38 CALL                             R6 1 -1
       39 SETLIST                          R5 R6 -1 [1]
       41 CALL                             R2 3 1
       42 GETUPVAL                         R3 2
       43 LOADNIL                          R4
       44 SETTABLE                         R4 R3 R1
       45 RETURN                           R2 1

PROTO_2:
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
       17 GETTABLEKS                       R3 R0 K1 ["ClassName"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 0 0
       22 GETIMPORT                        R4 K3 [ipairs]
       24 NAMECALL                         R5 R0 K4 ["getChildren"]
       26 CALL                             R5 1 -1
       27 CALL                             R4 -1 3
       28 FORGPREP_INEXT                   R4
       29 GETTABLEKS                       R9 R8 K5 ["Name"]
       31 LOADB                            R10 1
       32 SETTABLE                         R10 R3 R9
       33 FORGLOOP                         R4 2 [inext] ; [-5]
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R4 R5 K6 ["every"]
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R5 R6 K7 ["keys"]
       41 MOVE                             R6 R1
       42 CALL                             R5 1 1
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 CALL                             R4 2 -1
       53 RETURN                           R4 -1

PROTO_3:
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

PROTO_4:
        0 DUPCLOSURE                       R2 K0 [PROTO_3]
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R2 R3
        5 NEWTABLE                         R3 0 0
        7 SETTABLE                         R3 R2 R0
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+3]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R1
       15 RETURN                           R4 2
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R4 K1 [typeof]
       20 CALL                             R4 1 1
       21 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+5]
       23 GETUPVAL                         R4 1
       24 MOVE                             R5 R1
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R4 ; [+1]
       27 RETURN                           R0 2
       28 NEWTABLE                         R4 0 0
       30 GETIMPORT                        R5 K4 [pairs]
       32 MOVE                             R6 R1
       33 CALL                             R5 1 3
       34 FORGPREP_NEXT                    R5
       35 FASTCALL1                        TYPEOF R9 ; [+3]
       36 MOVE                             R11 R9
       37 GETIMPORT                        R10 K1 [typeof]
       39 CALL                             R10 1 1
       40 JUMPIFEQKS                       R10 K2 ["table"] ; [+2]
       42 SETTABLE                         R9 R4 R8
       43 FORGLOOP                         R5 2 ; [-9]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R6 R0 K5 ["ClassName"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K7 [ipairs]
       51 NAMECALL                         R7 R0 K8 ["getChildren"]
       53 CALL                             R7 1 -1
       54 CALL                             R6 -1 3
       55 FORGPREP_INEXT                   R6
       56 GETTABLEKS                       R13 R10 K9 ["Name"]
       58 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       60 MOVE                             R12 R5
       61 GETIMPORT                        R11 K11 [table.insert]
       63 CALL                             R11 2 0
       64 FORGLOOP                         R6 2 [inext] ; [-9]
       66 GETIMPORT                        R6 K7 [ipairs]
       68 GETUPVAL                         R8 3
       69 GETTABLEKS                       R7 R8 K12 ["filter"]
       71 MOVE                             R8 R5
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R1
       75 CALL                             R7 2 -1
       76 CALL                             R6 -1 3
       77 FORGPREP_INEXT                   R6
       78 GETTABLE                         R12 R0 R10
       79 GETTABLE                         R11 R2 R12
       80 JUMPIFEQKNIL                     R11 ; [+6]
       82 GETIMPORT                        R11 K14 [error]
       84 LOADK                            R12 K15 ["Circular reference passed into .toMatchInstance(subset)"]
       85 CALL                             R11 1 0
       86 JUMP                             ; [+9]
       87 LOADNIL                          R11
       88 GETUPVAL                         R12 5
       89 GETTABLE                         R13 R0 R10
       90 GETTABLE                         R14 R1 R10
       91 MOVE                             R15 R2
       92 CALL                             R12 3 2
       93 SETTABLE                         R12 R3 R10
       94 MOVE                             R11 R13
       95 SETTABLE                         R11 R4 R10
       96 FORGLOOP                         R6 2 [inext] ; [-19]
       98 GETTABLEKS                       R6 R0 K5 ["ClassName"]
      100 FASTCALL1                        TYPEOF R1 ; [+3]
      101 MOVE                             R8 R1
      102 GETIMPORT                        R7 K1 [typeof]
      104 CALL                             R7 1 1
      105 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+17]
      107 FASTCALL2K                       RAWGET R1 K5 ; [+5]
      109 MOVE                             R8 R1
      110 LOADK                            R9 K5 ["ClassName"]
      111 GETIMPORT                        R7 K17 [rawget]
      113 CALL                             R7 2 1
      114 JUMPIFNOT                        R7 ; [+8]
      115 FASTCALL2K                       RAWGET R1 K5 ; [+5]
      117 MOVE                             R8 R1
      118 LOADK                            R9 K5 ["ClassName"]
      119 GETIMPORT                        R7 K17 [rawget]
      121 CALL                             R7 2 1
      122 MOVE                             R6 R7
      123 GETUPVAL                         R8 6
      124 GETTABLEKS                       R7 R8 K18 ["new"]
      126 GETTABLEKS                       R8 R0 K5 ["ClassName"]
      128 MOVE                             R9 R3
      129 CALL                             R7 2 1
      130 GETUPVAL                         R9 6
      131 GETTABLEKS                       R8 R9 K18 ["new"]
      133 MOVE                             R9 R6
      134 MOVE                             R10 R4
      135 CALL                             R8 2 -1
      136 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["RobloxApiDump"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R4 K4 [require]
       14 GETTABLEKS                       R5 R1 K6 ["JestGetType"]
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R3 R4 K7 ["getType"]
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
       41 DUPCLOSURE                       R12 K16 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 DUPCLOSURE                       R13 K17 [PROTO_4]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R9
       46 CAPTURE                          VAL R12
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R8
       50 NEWTABLE                         R14 2 0
       52 SETTABLEKS                       R14 R14 K18 ["__index"]
       54 DUPCLOSURE                       R15 K19 [PROTO_5]
       55 CAPTURE                          VAL R14
       56 SETTABLEKS                       R15 R14 K20 ["new"]
       58 DUPCLOSURE                       R15 K21 [PROTO_7]
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R15
       65 CAPTURE                          VAL R14
       66 DUPTABLE                         R16 K26 [{"getRobloxProperties", "instanceSubsetEquality", "InstanceSubset", "getInstanceSubset"}]
       67 SETTABLEKS                       R12 R16 K22 ["getRobloxProperties"]
       69 SETTABLEKS                       R13 R16 K23 ["instanceSubsetEquality"]
       71 SETTABLEKS                       R14 R16 K24 ["InstanceSubset"]
       73 SETTABLEKS                       R15 R16 K25 ["getInstanceSubset"]
       75 RETURN                           R16 1
