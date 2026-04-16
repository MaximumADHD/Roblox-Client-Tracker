PROTO_0:
        0 LOADN                            R3 10
        1 ORK                              R4 R1 K0 [0]
        2 POW                              R2 R3 R4
        3 MUL                              R6 R0 R2
        4 ADDK                             R5 R6 K1 [0.5]
        5 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        6 GETIMPORT                        R4 K4 [math.floor]
        8 CALL                             R4 1 1
        9 DIV                              R3 R4 R2
       10 RETURN                           R3 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["None"]
        8 JUMPIFNOTEQ                      R0 R2 ; [+3]
       10 LOADK                            R2 K3 ["not defined"]
       11 RETURN                           R2 1
       12 JUMPIFNOTEQKS                    R1 K4 ["Vector3"] ; [+33]
       14 GETIMPORT                        R2 K7 [string.format]
       16 LOADK                            R3 K8 ["%d, %d, %d"]
       17 GETTABLEKS                       R5 R0 K9 ["X"]
       19 MULK                             R8 R5 K10 [100]
       20 ADDK                             R7 R8 K11 [0.5]
       21 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       22 GETIMPORT                        R6 K14 [math.floor]
       24 CALL                             R6 1 1
       25 DIVK                             R4 R6 K10 [100]
       26 GETTABLEKS                       R6 R0 K15 ["Y"]
       28 MULK                             R9 R6 K10 [100]
       29 ADDK                             R8 R9 K11 [0.5]
       30 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       31 GETIMPORT                        R7 K14 [math.floor]
       33 CALL                             R7 1 1
       34 DIVK                             R5 R7 K10 [100]
       35 GETTABLEKS                       R7 R0 K16 ["Z"]
       37 MULK                             R10 R7 K10 [100]
       38 ADDK                             R9 R10 K11 [0.5]
       39 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       40 GETIMPORT                        R8 K14 [math.floor]
       42 CALL                             R8 1 1
       43 DIVK                             R6 R8 K10 [100]
       44 CALL                             R2 4 -1
       45 RETURN                           R2 -1
       46 JUMPIFNOTEQKS                    R1 K17 ["Color3"] ; [+27]
       48 GETIMPORT                        R2 K7 [string.format]
       50 LOADK                            R3 K8 ["%d, %d, %d"]
       51 GETTABLEKS                       R6 R0 K19 ["r"]
       53 MULK                             R5 R6 K18 [255]
       54 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       55 GETIMPORT                        R4 K14 [math.floor]
       57 CALL                             R4 1 1
       58 GETTABLEKS                       R7 R0 K20 ["g"]
       60 MULK                             R6 R7 K18 [255]
       61 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       62 GETIMPORT                        R5 K14 [math.floor]
       64 CALL                             R5 1 1
       65 GETTABLEKS                       R8 R0 K21 ["b"]
       67 MULK                             R7 R8 K18 [255]
       68 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       69 GETIMPORT                        R6 K14 [math.floor]
       71 CALL                             R6 1 1
       72 CALL                             R2 4 -1
       73 RETURN                           R2 -1
       74 GETUPVAL                         R2 1
       75 CALL                             R2 0 1
       76 JUMPIFNOT                        R2 ; [+22]
       77 JUMPIFNOTEQKS                    R1 K22 ["table"] ; [+21]
       79 GETTABLEN                        R2 R0 1
       80 JUMPIFEQKNIL                     R2 ; [+18]
       82 GETTABLEN                        R3 R0 1
       83 FASTCALL1                        TOSTRING R3 ; [+2]
       84 GETIMPORT                        R2 K24 [tostring]
       86 CALL                             R2 1 1
       87 LOADN                            R5 2
       88 LENGTH                           R3 R0
       89 LOADN                            R4 1
       90 FORNPREP                         R3
       91 MOVE                             R6 R2
       92 LOADK                            R7 K25 [", "]
       93 GETUPVAL                         R8 2
       94 GETTABLE                         R9 R0 R5
       95 CALL                             R8 1 1
       96 CONCAT                           R2 R6 R8
       97 FORNLOOP                         R3
       98 RETURN                           R2 1
       99 FASTCALL1                        TOSTRING R0 ; [+3]
      100 MOVE                             R3 R0
      101 GETIMPORT                        R2 K24 [tostring]
      103 CALL                             R2 1 1
      104 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["flags"]
       18 GETTABLEKS                       R3 R4 K7 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 DUPCLOSURE                       R4 K9 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 RETURN                           R4 1
