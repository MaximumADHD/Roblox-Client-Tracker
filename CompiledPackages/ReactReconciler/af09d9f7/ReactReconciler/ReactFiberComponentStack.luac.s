PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R2 R0 K1 ["_debugOwner"]
        7 JUMPIFNOT                        R2 ; [+2]
        8 GETTABLEKS                       R1 R2 K2 ["type"]
       10 LOADNIL                          R2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["__DEV__"]
       14 JUMPIFNOT                        R3 ; [+2]
       15 GETTABLEKS                       R2 R0 K3 ["_debugSource"]
       17 GETTABLEKS                       R3 R0 K4 ["tag"]
       19 GETUPVAL                         R4 1
       20 JUMPIFNOTEQ                      R3 R4 ; [+8]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R4 R0 K2 ["type"]
       25 MOVE                             R5 R2
       26 MOVE                             R6 R1
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1
       29 GETTABLEKS                       R3 R0 K4 ["tag"]
       31 GETUPVAL                         R4 3
       32 JUMPIFNOTEQ                      R3 R4 ; [+7]
       34 GETUPVAL                         R3 2
       35 LOADK                            R4 K5 ["Lazy"]
       36 MOVE                             R5 R2
       37 MOVE                             R6 R1
       38 CALL                             R3 3 -1
       39 RETURN                           R3 -1
       40 GETTABLEKS                       R3 R0 K4 ["tag"]
       42 GETUPVAL                         R4 4
       43 JUMPIFNOTEQ                      R3 R4 ; [+7]
       45 GETUPVAL                         R3 2
       46 LOADK                            R4 K6 ["Suspense"]
       47 MOVE                             R5 R2
       48 MOVE                             R6 R1
       49 CALL                             R3 3 -1
       50 RETURN                           R3 -1
       51 GETTABLEKS                       R3 R0 K4 ["tag"]
       53 GETUPVAL                         R4 5
       54 JUMPIFNOTEQ                      R3 R4 ; [+7]
       56 GETUPVAL                         R3 2
       57 LOADK                            R4 K7 ["SuspenseList"]
       58 MOVE                             R5 R2
       59 MOVE                             R6 R1
       60 CALL                             R3 3 -1
       61 RETURN                           R3 -1
       62 GETTABLEKS                       R3 R0 K4 ["tag"]
       64 GETUPVAL                         R4 6
       65 JUMPIFEQ                         R3 R4 ; [+11]
       67 GETTABLEKS                       R3 R0 K4 ["tag"]
       69 GETUPVAL                         R4 7
       70 JUMPIFEQ                         R3 R4 ; [+6]
       72 GETTABLEKS                       R3 R0 K4 ["tag"]
       74 GETUPVAL                         R4 8
       75 JUMPIFNOTEQ                      R3 R4 ; [+8]
       77 GETUPVAL                         R3 9
       78 GETTABLEKS                       R4 R0 K2 ["type"]
       80 MOVE                             R5 R2
       81 MOVE                             R6 R1
       82 CALL                             R3 3 -1
       83 RETURN                           R3 -1
       84 GETTABLEKS                       R3 R0 K4 ["tag"]
       86 GETUPVAL                         R4 10
       87 JUMPIFNOTEQ                      R3 R4 ; [+10]
       89 GETUPVAL                         R3 9
       90 GETTABLEKS                       R5 R0 K2 ["type"]
       92 GETTABLEKS                       R4 R5 K8 ["render"]
       94 MOVE                             R5 R2
       95 MOVE                             R6 R1
       96 CALL                             R3 3 -1
       97 RETURN                           R3 -1
       98 GETTABLEKS                       R3 R0 K4 ["tag"]
      100 GETUPVAL                         R4 11
      101 JUMPIFNOTEQ                      R3 R4 ; [+8]
      103 GETUPVAL                         R3 12
      104 GETTABLEKS                       R4 R0 K2 ["type"]
      106 MOVE                             R5 R2
      107 MOVE                             R6 R1
      108 CALL                             R3 3 -1
      109 RETURN                           R3 -1
      110 LOADK                            R3 K9 [""]
      111 RETURN                           R3 1

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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETIMPORT                        R6 K1 [script]
       21 GETTABLEKS                       R5 R6 K2 ["Parent"]
       23 GETTABLEKS                       R4 R5 K7 ["ReactInternalTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETIMPORT                        R7 K1 [script]
       30 GETTABLEKS                       R6 R7 K2 ["Parent"]
       32 GETTABLEKS                       R5 R6 K8 ["ReactWorkTags"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K9 ["HostComponent"]
       37 GETTABLEKS                       R6 R4 K10 ["LazyComponent"]
       39 GETTABLEKS                       R7 R4 K11 ["SuspenseComponent"]
       41 GETTABLEKS                       R8 R4 K12 ["SuspenseListComponent"]
       43 GETTABLEKS                       R9 R4 K13 ["FunctionComponent"]
       45 GETTABLEKS                       R10 R4 K14 ["IndeterminateComponent"]
       47 GETTABLEKS                       R11 R4 K15 ["ForwardRef"]
       49 GETTABLEKS                       R12 R4 K16 ["SimpleMemoComponent"]
       51 GETTABLEKS                       R13 R4 K17 ["ClassComponent"]
       53 GETIMPORT                        R15 K4 [require]
       55 GETTABLEKS                       R16 R0 K18 ["Shared"]
       57 CALL                             R15 1 1
       58 GETTABLEKS                       R14 R15 K19 ["ReactComponentStackFrame"]
       60 GETTABLEKS                       R15 R14 K20 ["describeBuiltInComponentFrame"]
       62 GETTABLEKS                       R16 R14 K21 ["describeFunctionComponentFrame"]
       64 GETTABLEKS                       R17 R14 K22 ["describeClassComponentFrame"]
       66 DUPCLOSURE                       R18 K23 [PROTO_0]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R15
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R16
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R17
       80 DUPTABLE                         R19 K25 [{"getStackByFiberInDevAndProd"}]
       81 DUPCLOSURE                       R20 K26 [PROTO_2]
       82 CAPTURE                          VAL R18
       83 SETTABLEKS                       R20 R19 K24 ["getStackByFiberInDevAndProd"]
       85 RETURN                           R19 1
