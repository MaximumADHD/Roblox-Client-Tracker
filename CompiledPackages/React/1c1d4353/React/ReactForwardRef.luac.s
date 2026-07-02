PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+3]
        3 LOADK                            R0 K1 ["Did you forget to use the ref parameter?"]
        4 RETURN                           R0 1
        5 LOADK                            R0 K2 ["Any additional parameter will be undefined."]
        6 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["displayName"] ; [+3]
        2 GETUPVAL                         R2 0
        3 RETURN                           R2 1
        4 FASTCALL2                        RAWGET R0 R1 ; [+5]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 GETIMPORT                        R2 K2 [rawget]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 ["displayName"] ; [+3]
        2 SETUPVAL                         R2 0
        3 RETURN                           R0 0
        4 FASTCALL3                        RAWSET R0 R1 R2
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 GETIMPORT                        R3 K2 [rawset]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+55]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+12]
       11 GETTABLEKS                       R1 R0 K4 ["$$typeof"]
       13 GETUPVAL                         R2 1
       14 JUMPIFNOTEQ                      R1 R2 ; [+7]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K5 ["error"]
       19 LOADK                            R2 K6 ["forwardRef requires a render function but received a `memo` component. Instead of forwardRef(memo(...)), use memo(forwardRef(...))."]
       20 CALL                             R1 1 0
       21 JUMP                             ; [+37]
       22 FASTCALL1                        TYPEOF R0 ; [+3]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R1 K2 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K7 ["function"] ; [+12]
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R1 R1 K5 ["error"]
       32 LOADK                            R2 K8 ["forwardRef requires a render function but was given %s."]
       33 FASTCALL1                        TYPEOF R0 ; [+3]
       34 MOVE                             R4 R0
       35 GETIMPORT                        R3 K2 [typeof]
       37 CALL                             R3 1 1
       38 CALL                             R1 2 0
       39 JUMP                             ; [+19]
       40 GETIMPORT                        R1 K11 [debug.info]
       42 MOVE                             R2 R0
       43 LOADK                            R3 K12 ["a"]
       44 CALL                             R1 2 2
       45 JUMPIFEQKN                       R1 K13 [0] ; [+13]
       47 JUMPIFEQKN                       R1 K14 [2] ; [+11]
       49 GETUPVAL                         R3 2
       50 GETTABLEKS                       R3 R3 K5 ["error"]
       52 LOADK                            R4 K15 ["forwardRef render functions accept exactly two parameters: props and ref. %s"]
       53 JUMPIFNOTEQKN                    R1 K16 [1] ; [+3]
       55 LOADK                            R5 K17 ["Did you forget to use the ref parameter?"]
       56 JUMP                             ; [+1]
       57 LOADK                            R5 K18 ["Any additional parameter will be undefined."]
       58 CALL                             R3 2 0
       59 NEWTABLE                         R1 2 0
       61 GETUPVAL                         R2 3
       62 SETTABLEKS                       R2 R1 K4 ["$$typeof"]
       64 SETTABLEKS                       R0 R1 K19 ["render"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
       69 JUMPIFNOT                        R2 ; [+17]
       70 LOADNIL                          R2
       71 DUPTABLE                         R5 K22 [{"__index", "__newindex"}]
       72 NEWCLOSURE                       R6 P0
       73 CAPTURE                          REF R2
       74 SETTABLEKS                       R6 R5 K20 ["__index"]
       76 NEWCLOSURE                       R6 P1
       77 CAPTURE                          REF R2
       78 SETTABLEKS                       R6 R5 K21 ["__newindex"]
       80 FASTCALL2                        SETMETATABLE R1 R5 ; [+4]
       82 MOVE                             R4 R1
       83 GETIMPORT                        R3 K24 [setmetatable]
       85 CALL                             R3 2 0
       86 CLOSEUPVALS                      R2
       87 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["console"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Shared"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R3 R3 K8 ["ReactSymbols"]
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Shared"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R3 K9 ["REACT_FORWARD_REF_TYPE"]
       33 GETTABLEKS                       R6 R3 K10 ["REACT_MEMO_TYPE"]
       35 NEWTABLE                         R7 1 0
       37 DUPCLOSURE                       R8 K11 [PROTO_3]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R8 R7 K12 ["forwardRef"]
       44 RETURN                           R7 1
