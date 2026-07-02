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
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+55]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K4 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+12]
       12 GETTABLEKS                       R1 R0 K6 ["$$typeof"]
       14 GETUPVAL                         R2 0
       15 JUMPIFNOTEQ                      R1 R2 ; [+7]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["error"]
       20 LOADK                            R2 K8 ["forwardRef requires a render function but received a `memo` component. Instead of forwardRef(memo(...)), use memo(forwardRef(...))."]
       21 CALL                             R1 1 0
       22 JUMP                             ; [+37]
       23 FASTCALL1                        TYPEOF R0 ; [+3]
       24 MOVE                             R2 R0
       25 GETIMPORT                        R1 K4 [typeof]
       27 CALL                             R1 1 1
       28 JUMPIFEQKS                       R1 K9 ["function"] ; [+12]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K7 ["error"]
       33 LOADK                            R2 K10 ["forwardRef requires a render function but was given %s."]
       34 FASTCALL1                        TYPEOF R0 ; [+3]
       35 MOVE                             R4 R0
       36 GETIMPORT                        R3 K4 [typeof]
       38 CALL                             R3 1 1
       39 CALL                             R1 2 0
       40 JUMP                             ; [+19]
       41 GETIMPORT                        R1 K13 [debug.info]
       43 MOVE                             R2 R0
       44 LOADK                            R3 K14 ["a"]
       45 CALL                             R1 2 2
       46 JUMPIFEQKN                       R1 K15 [0] ; [+13]
       48 JUMPIFEQKN                       R1 K16 [2] ; [+11]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K7 ["error"]
       53 LOADK                            R4 K17 ["forwardRef render functions accept exactly two parameters: props and ref. %s"]
       54 JUMPIFNOTEQKN                    R1 K18 [1] ; [+3]
       56 LOADK                            R5 K19 ["Did you forget to use the ref parameter?"]
       57 JUMP                             ; [+1]
       58 LOADK                            R5 K20 ["Any additional parameter will be undefined."]
       59 CALL                             R3 2 0
       60 NEWTABLE                         R1 2 0
       62 GETUPVAL                         R2 2
       63 SETTABLEKS                       R2 R1 K6 ["$$typeof"]
       65 SETTABLEKS                       R0 R1 K21 ["render"]
       67 GETIMPORT                        R2 K1 [_G]
       69 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
       71 JUMPIFNOT                        R2 ; [+17]
       72 LOADNIL                          R2
       73 DUPTABLE                         R5 K24 [{"__index", "__newindex"}]
       74 NEWCLOSURE                       R6 P0
       75 CAPTURE                          REF R2
       76 SETTABLEKS                       R6 R5 K22 ["__index"]
       78 NEWCLOSURE                       R6 P1
       79 CAPTURE                          REF R2
       80 SETTABLEKS                       R6 R5 K23 ["__newindex"]
       82 FASTCALL2                        SETMETATABLE R1 R5 ; [+4]
       84 MOVE                             R4 R1
       85 GETIMPORT                        R3 K26 [setmetatable]
       87 CALL                             R3 2 0
       88 CLOSEUPVALS                      R2
       89 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K6 ["console"]
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Shared"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R2 R2 K7 ["ReactSymbols"]
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Shared"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K8 ["REACT_FORWARD_REF_TYPE"]
       28 GETTABLEKS                       R5 R2 K9 ["REACT_MEMO_TYPE"]
       30 NEWTABLE                         R6 1 0
       32 DUPCLOSURE                       R7 K10 [PROTO_3]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R7 R6 K11 ["forwardRef"]
       38 RETURN                           R6 1
