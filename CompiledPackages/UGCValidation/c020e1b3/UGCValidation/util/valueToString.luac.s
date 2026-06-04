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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["None"]
        8 JUMPIFNOTEQ                      R0 R2 ; [+3]
       10 LOADK                            R2 K3 ["not defined"]
       11 RETURN                           R2 1
       12 JUMPIFNOTEQKS                    R1 K4 ["Vector3"] ; [+38]
       14 GETUPVAL                         R3 1
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADK                            R2 K5 ["%g, %g, %g"]
       17 JUMP                             ; [+1]
       18 LOADK                            R2 K6 ["%d, %d, %d"]
       19 GETIMPORT                        R3 K9 [string.format]
       21 MOVE                             R4 R2
       22 GETTABLEKS                       R6 R0 K10 ["X"]
       24 MULK                             R9 R6 K11 [100]
       25 ADDK                             R8 R9 K12 [0.5]
       26 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       27 GETIMPORT                        R7 K15 [math.floor]
       29 CALL                             R7 1 1
       30 DIVK                             R5 R7 K11 [100]
       31 GETTABLEKS                       R7 R0 K16 ["Y"]
       33 MULK                             R10 R7 K11 [100]
       34 ADDK                             R9 R10 K12 [0.5]
       35 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       36 GETIMPORT                        R8 K15 [math.floor]
       38 CALL                             R8 1 1
       39 DIVK                             R6 R8 K11 [100]
       40 GETTABLEKS                       R8 R0 K17 ["Z"]
       42 MULK                             R11 R8 K11 [100]
       43 ADDK                             R10 R11 K12 [0.5]
       44 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       45 GETIMPORT                        R9 K15 [math.floor]
       47 CALL                             R9 1 1
       48 DIVK                             R7 R9 K11 [100]
       49 CALL                             R3 4 -1
       50 RETURN                           R3 -1
       51 JUMPIFNOTEQKS                    R1 K18 ["Color3"] ; [+27]
       53 GETIMPORT                        R2 K9 [string.format]
       55 LOADK                            R3 K6 ["%d, %d, %d"]
       56 GETTABLEKS                       R6 R0 K20 ["r"]
       58 MULK                             R5 R6 K19 [255]
       59 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       60 GETIMPORT                        R4 K15 [math.floor]
       62 CALL                             R4 1 1
       63 GETTABLEKS                       R7 R0 K21 ["g"]
       65 MULK                             R6 R7 K19 [255]
       66 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       67 GETIMPORT                        R5 K15 [math.floor]
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R8 R0 K22 ["b"]
       72 MULK                             R7 R8 K19 [255]
       73 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       74 GETIMPORT                        R6 K15 [math.floor]
       76 CALL                             R6 1 1
       77 CALL                             R2 4 -1
       78 RETURN                           R2 -1
       79 GETUPVAL                         R2 2
       80 CALL                             R2 0 1
       81 JUMPIFNOT                        R2 ; [+22]
       82 JUMPIFNOTEQKS                    R1 K23 ["table"] ; [+21]
       84 GETTABLEN                        R2 R0 1
       85 JUMPIFEQKNIL                     R2 ; [+18]
       87 GETTABLEN                        R3 R0 1
       88 FASTCALL1                        TOSTRING R3 ; [+2]
       89 GETIMPORT                        R2 K25 [tostring]
       91 CALL                             R2 1 1
       92 LOADN                            R5 2
       93 LENGTH                           R3 R0
       94 LOADN                            R4 1
       95 FORNPREP                         R3
       96 MOVE                             R6 R2
       97 LOADK                            R7 K26 [", "]
       98 GETUPVAL                         R8 3
       99 GETTABLE                         R9 R0 R5
      100 CALL                             R8 1 1
      101 CONCAT                           R2 R6 R8
      102 FORNLOOP                         R3
      103 RETURN                           R2 1
      104 FASTCALL1                        TOSTRING R0 ; [+3]
      105 MOVE                             R3 R0
      106 GETIMPORT                        R2 K25 [tostring]
      108 CALL                             R2 1 1
      109 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["flags"]
       18 GETTABLEKS                       R3 R3 K7 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K9 [game]
       23 LOADK                            R5 K10 ["UGCValidationValueToStringVector3Precision"]
       24 LOADB                            R6 0
       25 NAMECALL                         R3 R3 K11 ["DefineFastFlag"]
       27 CALL                             R3 3 1
       28 DUPCLOSURE                       R4 K12 [PROTO_0]
       29 DUPCLOSURE                       R5 K13 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 RETURN                           R5 1
