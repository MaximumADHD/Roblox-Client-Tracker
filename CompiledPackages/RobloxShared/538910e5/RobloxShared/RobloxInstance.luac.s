PROTO_0:
        0 GETTABLE                         R2 R0 R1
        1 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetStyled"]
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_2:
        0 SETTABLE                         R2 R0 R1
        1 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R3 K1 [pcall]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_6:
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

PROTO_7:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R5 R1
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K2 ["boolean"] ; [+3]
        9 MOVE                             R2 R1
       10 JUMP                             ; [+11]
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K1 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+5]
       18 GETTABLEKS                       R2 R1 K4 ["warmRead"]
       20 GETTABLEKS                       R3 R1 K5 ["useStyledProperties"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R5 R0 K6 ["ClassName"]
       25 CALL                             R4 1 1
       26 MOVE                             R5 R4
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 LOADNIL                          R10
       31 LOADNIL                          R11
       32 JUMPIFNOT                        R3 ; [+18]
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R12 R13 K7 ["readStyledProp"]
       36 MOVE                             R13 R0
       37 MOVE                             R14 R8
       38 CALL                             R12 2 2
       39 MOVE                             R10 R12
       40 MOVE                             R11 R13
       41 JUMPIF                           R10 ; [+17]
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R12 R13 K8 ["readProp"]
       45 MOVE                             R13 R0
       46 MOVE                             R14 R8
       47 CALL                             R12 2 2
       48 MOVE                             R10 R12
       49 MOVE                             R11 R13
       50 JUMP                             ; [+8]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R12 R13 K8 ["readProp"]
       54 MOVE                             R13 R0
       55 MOVE                             R14 R8
       56 CALL                             R12 2 2
       57 MOVE                             R10 R12
       58 MOVE                             R11 R13
       59 JUMPIFNOT                        R10 ; [+9]
       60 JUMPIFNOTEQKNIL                  R11 ; [+5]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R12 R13 K9 ["None"]
       65 JUMP                             ; [+1]
       66 MOVE                             R12 R11
       67 SETTABLE                         R12 R4 R8
       68 JUMP                             ; [+2]
       69 LOADNIL                          R12
       70 SETTABLE                         R12 R4 R8
       71 FORGLOOP                         R5 1 ; [-42]
       73 JUMPIFNOT                        R2 ; [+29]
       74 MOVE                             R5 R4
       75 LOADNIL                          R6
       76 LOADNIL                          R7
       77 FORGPREP                         R5
       78 LOADNIL                          R10
       79 LOADNIL                          R11
       80 JUMPIFNOT                        R3 ; [+11]
       81 GETIMPORT                        R12 K11 [pcall]
       83 GETUPVAL                         R13 3
       84 MOVE                             R14 R0
       85 MOVE                             R15 R8
       86 CALL                             R12 3 2
       87 MOVE                             R10 R12
       88 MOVE                             R11 R13
       89 JUMPIF                           R10 ; [+3]
       90 GETTABLE                         R11 R0 R8
       91 JUMP                             ; [+1]
       92 GETTABLE                         R11 R0 R8
       93 JUMPIFNOTEQKNIL                  R11 ; [+5]
       95 GETUPVAL                         R13 2
       96 GETTABLEKS                       R12 R13 K9 ["None"]
       98 JUMP                             ; [+1]
       99 MOVE                             R12 R11
      100 SETTABLE                         R12 R4 R8
      101 FORGLOOP                         R5 1 ; [-24]
      103 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetTags"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R2 1
        7 NEWTABLE                         R3 0 0
        9 RETURN                           R3 1

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+2]
        1 GETUPVAL                         R2 0
        2 JUMP                             ; [+1]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R3 R2 R0
        5 JUMPIFEQKNIL                     R3 ; [+2]
        7 RETURN                           R3 1
        8 GETIMPORT                        R4 K1 [pcall]
       10 GETIMPORT                        R5 K4 [Instance.new]
       12 MOVE                             R6 R0
       13 CALL                             R4 2 2
       14 JUMPIF                           R4 ; [+4]
       15 GETIMPORT                        R6 K6 [error]
       17 LOADK                            R7 K7 ["Class type is abstract or not creatable - cannot list defaults"]
       18 CALL                             R6 1 0
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K8 ["listProps"]
       22 MOVE                             R7 R5
       23 DUPTABLE                         R8 K10 [{"useStyledProperties"}]
       24 SETTABLEKS                       R1 R8 K9 ["useStyledProperties"]
       26 CALL                             R6 2 1
       27 NAMECALL                         R7 R5 K11 ["Destroy"]
       29 CALL                             R7 1 0
       30 SETTABLE                         R6 R2 R0
       31 RETURN                           R6 1

PROTO_11:
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K0 ["readProp"]
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

PROTO_12:
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
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R2 R3 K1 ["every"]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R3 R4 K2 ["keys"]
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

PROTO_13:
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

PROTO_14:
        0 DUPCLOSURE                       R2 K0 [PROTO_13]
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

PROTO_15:
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

PROTO_16:
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
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R11 R12 K5 ["readProp"]
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
       68 GETUPVAL                         R14 2
       69 GETTABLEKS                       R13 R14 K9 ["getInstanceSubset"]
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
      104 GETUPVAL                         R8 3
      105 GETTABLEKS                       R7 R8 K13 ["new"]
      107 GETTABLEKS                       R8 R0 K10 ["ClassName"]
      109 MOVE                             R9 R4
      110 CALL                             R7 2 1
      111 GETUPVAL                         R9 3
      112 GETTABLEKS                       R8 R9 K13 ["new"]
      114 MOVE                             R9 R6
      115 MOVE                             R10 R5
      116 CALL                             R8 2 1
      117 RETURN                           R7 2

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
       41 NEWTABLE                         R12 16 0
       43 DUPCLOSURE                       R13 K16 [PROTO_0]
       44 DUPCLOSURE                       R14 K17 [PROTO_1]
       45 DUPCLOSURE                       R15 K18 [PROTO_2]
       46 DUPCLOSURE                       R16 K19 [PROTO_3]
       47 CAPTURE                          VAL R13
       48 SETTABLEKS                       R16 R12 K20 ["readProp"]
       50 DUPCLOSURE                       R16 K21 [PROTO_4]
       51 CAPTURE                          VAL R14
       52 SETTABLEKS                       R16 R12 K22 ["readStyledProp"]
       54 DUPCLOSURE                       R16 K23 [PROTO_5]
       55 CAPTURE                          VAL R15
       56 SETTABLEKS                       R16 R12 K24 ["writeProp"]
       58 DUPCLOSURE                       R16 K25 [PROTO_6]
       59 CAPTURE                          VAL R2
       60 DUPCLOSURE                       R17 K26 [PROTO_7]
       61 CAPTURE                          VAL R16
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R14
       65 SETTABLEKS                       R17 R12 K27 ["listProps"]
       67 DUPCLOSURE                       R17 K28 [PROTO_9]
       68 SETTABLEKS                       R17 R12 K29 ["getTags"]
       70 NEWTABLE                         R17 0 0
       72 NEWTABLE                         R18 0 0
       74 DUPCLOSURE                       R19 K30 [PROTO_10]
       75 CAPTURE                          VAL R18
       76 CAPTURE                          VAL R17
       77 CAPTURE                          VAL R12
       78 SETTABLEKS                       R19 R12 K31 ["listDefaultProps"]
       80 DUPCLOSURE                       R17 K32 [PROTO_14]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R8
       87 SETTABLEKS                       R17 R12 K33 ["instanceSubsetEquality"]
       89 NEWTABLE                         R17 2 0
       91 SETTABLEKS                       R17 R12 K34 ["InstanceSubset"]
       93 SETTABLEKS                       R17 R17 K35 ["__index"]
       95 DUPCLOSURE                       R18 K36 [PROTO_15]
       96 CAPTURE                          VAL R17
       97 SETTABLEKS                       R18 R17 K37 ["new"]
       99 DUPCLOSURE                       R18 K38 [PROTO_16]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R17
      104 SETTABLEKS                       R18 R12 K39 ["getInstanceSubset"]
      106 RETURN                           R12 1
