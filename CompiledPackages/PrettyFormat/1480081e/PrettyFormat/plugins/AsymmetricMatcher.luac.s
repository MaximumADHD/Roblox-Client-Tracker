PROTO_0:
        0 LOADK                            R3 K0 ["%%([%$%%%^%*%(%)%.%[%]%+%-%?])"]
        1 LOADK                            R4 K1 ["%1"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 NAMECALL                         R6 R0 K0 ["toString"]
        2 CALL                             R6 1 1
        3 JUMPIFEQKS                       R6 K1 ["ArrayContaining"] ; [+3]
        5 JUMPIFNOTEQKS                    R6 K2 ["ArrayNotContaining"] ; [+26]
        7 ADDK                             R3 R3 K3 [1]
        8 GETTABLEKS                       R7 R1 K4 ["maxDepth"]
       10 JUMPIFNOTLT                      R7 R3 ; [+6]
       12 LOADK                            R8 K5 ["["]
       13 MOVE                             R9 R6
       14 LOADK                            R10 K6 ["]"]
       15 CONCAT                           R7 R8 R10
       16 RETURN                           R7 1
       17 MOVE                             R8 R6
       18 LOADK                            R9 K7 [" "]
       19 LOADK                            R10 K8 ["{"]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R12 R0 K9 ["sample"]
       23 MOVE                             R13 R1
       24 MOVE                             R14 R2
       25 MOVE                             R15 R3
       26 MOVE                             R16 R4
       27 MOVE                             R17 R5
       28 CALL                             R11 6 1
       29 LOADK                            R12 K10 ["}"]
       30 CONCAT                           R7 R8 R12
       31 RETURN                           R7 1
       32 JUMPIFEQKS                       R6 K11 ["ObjectContaining"] ; [+3]
       34 JUMPIFNOTEQKS                    R6 K12 ["ObjectNotContaining"] ; [+26]
       36 ADDK                             R3 R3 K3 [1]
       37 GETTABLEKS                       R7 R1 K4 ["maxDepth"]
       39 JUMPIFNOTLT                      R7 R3 ; [+6]
       41 LOADK                            R8 K5 ["["]
       42 MOVE                             R9 R6
       43 LOADK                            R10 K6 ["]"]
       44 CONCAT                           R7 R8 R10
       45 RETURN                           R7 1
       46 MOVE                             R8 R6
       47 LOADK                            R9 K7 [" "]
       48 LOADK                            R10 K8 ["{"]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R12 R0 K9 ["sample"]
       52 MOVE                             R13 R1
       53 MOVE                             R14 R2
       54 MOVE                             R15 R3
       55 MOVE                             R16 R4
       56 MOVE                             R17 R5
       57 CALL                             R11 6 1
       58 LOADK                            R12 K10 ["}"]
       59 CONCAT                           R7 R8 R12
       60 RETURN                           R7 1
       61 JUMPIFEQKS                       R6 K13 ["StringMatching"] ; [+3]
       63 JUMPIFNOTEQKS                    R6 K14 ["StringNotMatching"] ; [+13]
       65 MOVE                             R8 R6
       66 LOADK                            R9 K7 [" "]
       67 MOVE                             R10 R5
       68 GETTABLEKS                       R11 R0 K9 ["sample"]
       70 MOVE                             R12 R1
       71 MOVE                             R13 R2
       72 MOVE                             R14 R3
       73 MOVE                             R15 R4
       74 CALL                             R10 5 1
       75 CONCAT                           R7 R8 R10
       76 RETURN                           R7 1
       77 JUMPIFEQKS                       R6 K15 ["StringContaining"] ; [+3]
       79 JUMPIFNOTEQKS                    R6 K16 ["StringNotContaining"] ; [+19]
       81 MOVE                             R8 R6
       82 LOADK                            R9 K7 [" "]
       83 MOVE                             R10 R5
       84 GETTABLEKS                       R12 R0 K9 ["sample"]
       86 LOADK                            R15 K17 ["%%([%$%%%^%*%(%)%.%[%]%+%-%?])"]
       87 LOADK                            R16 K18 ["%1"]
       88 NAMECALL                         R13 R12 K19 ["gsub"]
       90 CALL                             R13 3 1
       91 MOVE                             R11 R13
       92 MOVE                             R12 R1
       93 MOVE                             R13 R2
       94 MOVE                             R14 R3
       95 MOVE                             R15 R4
       96 CALL                             R10 5 1
       97 CONCAT                           R7 R8 R10
       98 RETURN                           R7 1
       99 GETTABLEKS                       R8 R0 K20 ["toAsymmetricMatcher"]
      101 FASTCALL1                        TYPEOF R8 ; [+2]
      102 GETIMPORT                        R7 K22 [typeof]
      104 CALL                             R7 1 1
      105 JUMPIFEQKS                       R7 K23 ["function"] ; [+5]
      107 GETIMPORT                        R7 K25 [error]
      109 LOADK                            R8 K26 ["Asymmetric matcher does not implement toAsymmetricMatcher()"]
      110 CALL                             R7 1 0
      111 NAMECALL                         R7 R0 K20 ["toAsymmetricMatcher"]
      113 CALL                             R7 1 -1
      114 RETURN                           R7 -1

PROTO_2:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+11]
        8 LOADB                            R1 0
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETTABLEKS                       R2 R0 K3 ["$$typeof"]
       13 GETUPVAL                         R3 0
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Symbol"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K7 ["Collections"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K8 ["printListItems"]
       26 GETTABLEKS                       R6 R4 K9 ["printTableEntries"]
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Types"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R3 K11 ["for_"]
       35 LOADK                            R9 K12 ["jest.asymmetricMatcher"]
       36 CALL                             R8 1 1
       37 DUPCLOSURE                       R9 K13 [PROTO_0]
       38 DUPCLOSURE                       R10 K14 [PROTO_1]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 DUPCLOSURE                       R11 K15 [PROTO_2]
       42 CAPTURE                          VAL R8
       43 DUPTABLE                         R12 K18 [{"serialize", "test"}]
       44 SETTABLEKS                       R10 R12 K16 ["serialize"]
       46 SETTABLEKS                       R11 R12 K17 ["test"]
       48 RETURN                           R12 1
