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
        5 JUMPIFNOTEQKS                    R6 K2 ["ArrayNotContaining"] ; [+27]
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
       20 GETUPVAL                         R13 0
       21 GETTABLEKS                       R14 R0 K9 ["sample"]
       23 MOVE                             R15 R1
       24 MOVE                             R16 R2
       25 MOVE                             R17 R3
       26 MOVE                             R18 R4
       27 MOVE                             R19 R5
       28 CALL                             R13 6 1
       29 MOVE                             R11 R13
       30 LOADK                            R12 K10 ["}"]
       31 CONCAT                           R7 R8 R12
       32 RETURN                           R7 1
       33 JUMPIFEQKS                       R6 K11 ["ObjectContaining"] ; [+3]
       35 JUMPIFNOTEQKS                    R6 K12 ["ObjectNotContaining"] ; [+27]
       37 ADDK                             R3 R3 K3 [1]
       38 GETTABLEKS                       R7 R1 K4 ["maxDepth"]
       40 JUMPIFNOTLT                      R7 R3 ; [+6]
       42 LOADK                            R8 K5 ["["]
       43 MOVE                             R9 R6
       44 LOADK                            R10 K6 ["]"]
       45 CONCAT                           R7 R8 R10
       46 RETURN                           R7 1
       47 MOVE                             R8 R6
       48 LOADK                            R9 K7 [" "]
       49 LOADK                            R10 K8 ["{"]
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R14 R0 K9 ["sample"]
       53 MOVE                             R15 R1
       54 MOVE                             R16 R2
       55 MOVE                             R17 R3
       56 MOVE                             R18 R4
       57 MOVE                             R19 R5
       58 CALL                             R13 6 1
       59 MOVE                             R11 R13
       60 LOADK                            R12 K10 ["}"]
       61 CONCAT                           R7 R8 R12
       62 RETURN                           R7 1
       63 JUMPIFEQKS                       R6 K13 ["StringMatching"] ; [+3]
       65 JUMPIFNOTEQKS                    R6 K14 ["StringNotMatching"] ; [+13]
       67 MOVE                             R8 R6
       68 LOADK                            R9 K7 [" "]
       69 MOVE                             R10 R5
       70 GETTABLEKS                       R11 R0 K9 ["sample"]
       72 MOVE                             R12 R1
       73 MOVE                             R13 R2
       74 MOVE                             R14 R3
       75 MOVE                             R15 R4
       76 CALL                             R10 5 1
       77 CONCAT                           R7 R8 R10
       78 RETURN                           R7 1
       79 JUMPIFEQKS                       R6 K15 ["StringContaining"] ; [+3]
       81 JUMPIFNOTEQKS                    R6 K16 ["StringNotContaining"] ; [+19]
       83 MOVE                             R8 R6
       84 LOADK                            R9 K7 [" "]
       85 MOVE                             R10 R5
       86 GETTABLEKS                       R12 R0 K9 ["sample"]
       88 LOADK                            R15 K17 ["%%([%$%%%^%*%(%)%.%[%]%+%-%?])"]
       89 LOADK                            R16 K18 ["%1"]
       90 NAMECALL                         R13 R12 K19 ["gsub"]
       92 CALL                             R13 3 1
       93 MOVE                             R11 R13
       94 MOVE                             R12 R1
       95 MOVE                             R13 R2
       96 MOVE                             R14 R3
       97 MOVE                             R15 R4
       98 CALL                             R10 5 1
       99 CONCAT                           R7 R8 R10
      100 RETURN                           R7 1
      101 GETTABLEKS                       R8 R0 K20 ["toAsymmetricMatcher"]
      103 FASTCALL1                        TYPEOF R8 ; [+2]
      104 GETIMPORT                        R7 K22 [typeof]
      106 CALL                             R7 1 1
      107 JUMPIFEQKS                       R7 K23 ["function"] ; [+5]
      109 GETIMPORT                        R7 K25 [error]
      111 LOADK                            R8 K26 ["Asymmetric matcher does not implement toAsymmetricMatcher()"]
      112 CALL                             R7 1 0
      113 NAMECALL                         R7 R0 K20 ["toAsymmetricMatcher"]
      115 CALL                             R7 1 -1
      116 RETURN                           R7 -1

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
       11 GETTABLEKS                       R3 R1 K5 ["Symbol"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Collections"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["printListItems"]
       21 GETTABLEKS                       R5 R3 K8 ["printTableEntries"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K9 ["Types"]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R7 R2 K10 ["for_"]
       30 LOADK                            R8 K11 ["jest.asymmetricMatcher"]
       31 CALL                             R7 1 1
       32 DUPCLOSURE                       R8 K12 [PROTO_0]
       33 DUPCLOSURE                       R9 K13 [PROTO_1]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 DUPCLOSURE                       R10 K14 [PROTO_2]
       37 CAPTURE                          VAL R7
       38 DUPTABLE                         R11 K17 [{"serialize", "test"}]
       39 SETTABLEKS                       R9 R11 K15 ["serialize"]
       41 SETTABLEKS                       R10 R11 K16 ["test"]
       43 RETURN                           R11 1
