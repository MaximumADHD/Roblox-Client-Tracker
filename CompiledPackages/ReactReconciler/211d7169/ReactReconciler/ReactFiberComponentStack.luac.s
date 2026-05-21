PROTO_0:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [_G]
        3 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R2 R0 K3 ["_debugOwner"]
        8 JUMPIFNOT                        R2 ; [+2]
        9 GETTABLEKS                       R1 R2 K4 ["type"]
       11 LOADNIL                          R2
       12 GETIMPORT                        R3 K1 [_G]
       14 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
       16 JUMPIFNOT                        R3 ; [+2]
       17 GETTABLEKS                       R2 R0 K5 ["_debugSource"]
       19 GETTABLEKS                       R3 R0 K6 ["tag"]
       21 GETUPVAL                         R4 0
       22 JUMPIFNOTEQ                      R3 R4 ; [+8]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R4 R0 K4 ["type"]
       27 MOVE                             R5 R2
       28 MOVE                             R6 R1
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1
       31 GETTABLEKS                       R3 R0 K6 ["tag"]
       33 GETUPVAL                         R4 2
       34 JUMPIFNOTEQ                      R3 R4 ; [+7]
       36 GETUPVAL                         R3 1
       37 LOADK                            R4 K7 ["Lazy"]
       38 MOVE                             R5 R2
       39 MOVE                             R6 R1
       40 CALL                             R3 3 -1
       41 RETURN                           R3 -1
       42 GETTABLEKS                       R3 R0 K6 ["tag"]
       44 GETUPVAL                         R4 3
       45 JUMPIFNOTEQ                      R3 R4 ; [+7]
       47 GETUPVAL                         R3 1
       48 LOADK                            R4 K8 ["Suspense"]
       49 MOVE                             R5 R2
       50 MOVE                             R6 R1
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1
       53 GETTABLEKS                       R3 R0 K6 ["tag"]
       55 GETUPVAL                         R4 4
       56 JUMPIFNOTEQ                      R3 R4 ; [+7]
       58 GETUPVAL                         R3 1
       59 LOADK                            R4 K9 ["SuspenseList"]
       60 MOVE                             R5 R2
       61 MOVE                             R6 R1
       62 CALL                             R3 3 -1
       63 RETURN                           R3 -1
       64 GETTABLEKS                       R3 R0 K6 ["tag"]
       66 GETUPVAL                         R4 5
       67 JUMPIFEQ                         R3 R4 ; [+11]
       69 GETTABLEKS                       R3 R0 K6 ["tag"]
       71 GETUPVAL                         R4 6
       72 JUMPIFEQ                         R3 R4 ; [+6]
       74 GETTABLEKS                       R3 R0 K6 ["tag"]
       76 GETUPVAL                         R4 7
       77 JUMPIFNOTEQ                      R3 R4 ; [+8]
       79 GETUPVAL                         R3 8
       80 GETTABLEKS                       R4 R0 K4 ["type"]
       82 MOVE                             R5 R2
       83 MOVE                             R6 R1
       84 CALL                             R3 3 -1
       85 RETURN                           R3 -1
       86 GETTABLEKS                       R3 R0 K6 ["tag"]
       88 GETUPVAL                         R4 9
       89 JUMPIFNOTEQ                      R3 R4 ; [+10]
       91 GETUPVAL                         R3 8
       92 GETTABLEKS                       R4 R0 K4 ["type"]
       94 GETTABLEKS                       R4 R4 K10 ["render"]
       96 MOVE                             R5 R2
       97 MOVE                             R6 R1
       98 CALL                             R3 3 -1
       99 RETURN                           R3 -1
      100 GETTABLEKS                       R3 R0 K6 ["tag"]
      102 GETUPVAL                         R4 10
      103 JUMPIFNOTEQ                      R3 R4 ; [+8]
      105 GETUPVAL                         R3 11
      106 GETTABLEKS                       R4 R0 K4 ["type"]
      108 MOVE                             R5 R2
      109 MOVE                             R6 R1
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1
      112 LOADK                            R3 K11 [""]
      113 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R0 K0 [""]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 CONCAT                           R0 R2 R3
        7 GETTABLEKS                       R1 R1 K1 ["return_"]
        9 JUMPIFEQKNIL                     R1 ; [+2]
       11 JUMPBACK                         ; [-10]
       12 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+33]
        7 FASTCALL1                        TYPEOF R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K3 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+19]
       14 GETTABLEKS                       R3 R2 K5 ["message"]
       16 JUMPIFNOT                        R3 ; [+15]
       17 GETTABLEKS                       R3 R2 K6 ["stack"]
       19 JUMPIFNOT                        R3 ; [+12]
       20 LOADK                            R4 K7 ["\nError generating stack: "]
       21 GETTABLEKS                       R5 R2 K5 ["message"]
       23 LOADK                            R6 K8 ["\n"]
       24 GETTABLEKS                       R8 R2 K6 ["stack"]
       26 FASTCALL1                        TOSTRING R8 ; [+2]
       27 GETIMPORT                        R7 K10 [tostring]
       29 CALL                             R7 1 1
       30 CONCAT                           R3 R4 R7
       31 RETURN                           R3 1
       32 LOADK                            R4 K7 ["\nError generating stack: "]
       33 FASTCALL1                        TOSTRING R2 ; [+3]
       34 MOVE                             R6 R2
       35 GETIMPORT                        R5 K10 [tostring]
       37 CALL                             R5 1 1
       38 CONCAT                           R3 R4 R5
       39 RETURN                           R3 1
       40 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K2 ["Parent"]
       18 GETTABLEKS                       R3 R3 K6 ["ReactInternalTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K2 ["Parent"]
       27 GETTABLEKS                       R4 R4 K7 ["ReactWorkTags"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K8 ["HostComponent"]
       32 GETTABLEKS                       R5 R3 K9 ["LazyComponent"]
       34 GETTABLEKS                       R6 R3 K10 ["SuspenseComponent"]
       36 GETTABLEKS                       R7 R3 K11 ["SuspenseListComponent"]
       38 GETTABLEKS                       R8 R3 K12 ["FunctionComponent"]
       40 GETTABLEKS                       R9 R3 K13 ["IndeterminateComponent"]
       42 GETTABLEKS                       R10 R3 K14 ["ForwardRef"]
       44 GETTABLEKS                       R11 R3 K15 ["SimpleMemoComponent"]
       46 GETTABLEKS                       R12 R3 K16 ["ClassComponent"]
       48 GETIMPORT                        R13 K4 [require]
       50 GETTABLEKS                       R14 R0 K17 ["Shared"]
       52 CALL                             R13 1 1
       53 GETTABLEKS                       R13 R13 K18 ["ReactComponentStackFrame"]
       55 GETTABLEKS                       R14 R13 K19 ["describeBuiltInComponentFrame"]
       57 GETTABLEKS                       R15 R13 K20 ["describeFunctionComponentFrame"]
       59 GETTABLEKS                       R16 R13 K21 ["describeClassComponentFrame"]
       61 DUPCLOSURE                       R17 K22 [PROTO_0]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R14
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R15
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R16
       74 DUPTABLE                         R18 K24 [{"getStackByFiberInDevAndProd"}]
       75 DUPCLOSURE                       R19 K25 [PROTO_2]
       76 CAPTURE                          VAL R17
       77 SETTABLEKS                       R19 R18 K23 ["getStackByFiberInDevAndProd"]
       79 RETURN                           R18 1
