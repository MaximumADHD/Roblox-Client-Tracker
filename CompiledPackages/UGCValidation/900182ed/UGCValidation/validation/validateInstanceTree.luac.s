PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 GETTABLEKS                       R4 R3 K0 ["success"]
        7 JUMPIFNOTEQKB                    R4 FALSE ; [+22]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["reportFailure"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K2 ["ErrorType"]
       15 GETTABLEKS                       R5 R6 K3 ["validateInstanceTree"]
       17 LOADNIL                          R6
       18 MOVE                             R7 R2
       19 CALL                             R4 3 0
       20 LOADB                            R4 0
       21 NEWTABLE                         R5 0 1
       23 LOADK                            R7 K4 ["Detected the following error(s): "]
       24 GETTABLEKS                       R8 R3 K5 ["message"]
       26 CONCAT                           R6 R7 R8
       27 SETLIST                          R5 R6 1 [1]
       29 RETURN                           R4 2
       30 NEWTABLE                         R4 0 0
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R6 R7 K6 ["BANNED_NAMES"]
       35 GETTABLEKS                       R7 R1 K7 ["Name"]
       37 GETTABLE                         R5 R6 R7
       38 JUMPIFNOT                        R5 ; [+12]
       39 MOVE                             R6 R4
       40 GETIMPORT                        R7 K10 [string.format]
       42 LOADK                            R8 K11 ["%s has an invalid name"]
       43 NAMECALL                         R9 R1 K12 ["GetFullName"]
       45 CALL                             R9 1 -1
       46 CALL                             R7 -1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R5 K15 [table.insert]
       50 CALL                             R5 -1 0
       51 GETIMPORT                        R5 K17 [pairs]
       53 NAMECALL                         R6 R1 K18 ["GetDescendants"]
       55 CALL                             R6 1 -1
       56 CALL                             R5 -1 3
       57 FORGPREP_NEXT                    R5
       58 GETIMPORT                        R10 K17 [pairs]
       60 GETUPVAL                         R13 2
       61 GETTABLEKS                       R11 R13 K19 ["BANNED_CLASS_NAMES"]
       63 CALL                             R10 1 3
       64 FORGPREP_NEXT                    R10
       65 MOVE                             R17 R14
       66 NAMECALL                         R15 R9 K20 ["IsA"]
       68 CALL                             R15 2 1
       69 JUMPIFNOT                        R15 ; [+13]
       70 MOVE                             R16 R4
       71 GETIMPORT                        R17 K10 [string.format]
       73 LOADK                            R18 K21 ["%s is of type %s which is not allowed"]
       74 NAMECALL                         R19 R9 K12 ["GetFullName"]
       76 CALL                             R19 1 1
       77 MOVE                             R20 R14
       78 CALL                             R17 3 -1
       79 FASTCALL                         TABLE_INSERT ; [+2]
       80 GETIMPORT                        R15 K15 [table.insert]
       82 CALL                             R15 -1 0
       83 FORGLOOP                         R10 2 ; [-19]
       85 GETUPVAL                         R12 2
       86 GETTABLEKS                       R11 R12 K6 ["BANNED_NAMES"]
       88 GETTABLEKS                       R12 R9 K7 ["Name"]
       90 GETTABLE                         R10 R11 R12
       91 JUMPIFNOT                        R10 ; [+12]
       92 MOVE                             R11 R4
       93 GETIMPORT                        R12 K10 [string.format]
       95 LOADK                            R13 K11 ["%s has an invalid name"]
       96 NAMECALL                         R14 R9 K12 ["GetFullName"]
       98 CALL                             R14 1 -1
       99 CALL                             R12 -1 -1
      100 FASTCALL                         TABLE_INSERT ; [+2]
      101 GETIMPORT                        R10 K15 [table.insert]
      103 CALL                             R10 -1 0
      104 FORGLOOP                         R5 2 ; [-47]
      106 LENGTH                           R5 R4
      107 LOADN                            R6 0
      108 JUMPIFNOTLT                      R6 R5 ; [+15]
      110 GETUPVAL                         R6 1
      111 GETTABLEKS                       R5 R6 K1 ["reportFailure"]
      113 GETUPVAL                         R8 1
      114 GETTABLEKS                       R7 R8 K2 ["ErrorType"]
      116 GETTABLEKS                       R6 R7 K22 ["validateInstanceTree_InvalidDescendants"]
      118 LOADNIL                          R7
      119 MOVE                             R8 R2
      120 CALL                             R5 3 0
      121 LOADB                            R5 0
      122 MOVE                             R6 R4
      123 RETURN                           R5 2
      124 LOADB                            R5 1
      125 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R5 R0 K7 ["util"]
       21 GETTABLEKS                       R4 R5 K8 ["validateWithSchema"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R0 K7 ["util"]
       28 GETTABLEKS                       R5 R6 K9 ["Types"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K10 [PROTO_0]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R5 1
