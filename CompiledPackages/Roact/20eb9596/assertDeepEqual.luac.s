PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQ                         R2 R3 ; [+18]
       12 LOADK                            R2 K2 ["{1} is of type %s, but {2} is of type %s"]
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R5 R0
       15 GETIMPORT                        R4 K1 [typeof]
       17 CALL                             R4 1 1
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K1 [typeof]
       22 CALL                             R5 1 1
       23 NAMECALL                         R2 R2 K3 ["format"]
       25 CALL                             R2 3 1
       26 LOADB                            R3 0
       27 MOVE                             R4 R2
       28 RETURN                           R3 2
       29 FASTCALL1                        TYPEOF R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K1 [typeof]
       33 CALL                             R2 1 1
       34 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+91]
       36 NEWTABLE                         R2 0 0
       38 GETIMPORT                        R3 K6 [pairs]
       40 MOVE                             R4 R0
       41 CALL                             R3 1 3
       42 FORGPREP_NEXT                    R3
       43 LOADB                            R8 1
       44 SETTABLE                         R8 R2 R6
       45 GETUPVAL                         R8 0
       46 MOVE                             R9 R7
       47 GETTABLE                         R10 R1 R6
       48 CALL                             R8 2 2
       49 JUMPIF                           R8 ; [+29]
       50 LOADK                            R12 K7 ["{1}"]
       51 LOADK                            R13 K8 ["{1}[%s]"]
       52 FASTCALL1                        TOSTRING R6 ; [+3]
       53 MOVE                             R16 R6
       54 GETIMPORT                        R15 K10 [tostring]
       56 CALL                             R15 1 1
       57 NAMECALL                         R13 R13 K3 ["format"]
       59 CALL                             R13 2 -1
       60 NAMECALL                         R10 R9 K11 ["gsub"]
       62 CALL                             R10 -1 1
       63 LOADK                            R12 K12 ["{2}"]
       64 LOADK                            R13 K13 ["{2}[%s]"]
       65 FASTCALL1                        TOSTRING R6 ; [+3]
       66 MOVE                             R16 R6
       67 GETIMPORT                        R15 K10 [tostring]
       69 CALL                             R15 1 1
       70 NAMECALL                         R13 R13 K3 ["format"]
       72 CALL                             R13 2 -1
       73 NAMECALL                         R10 R10 K11 ["gsub"]
       75 CALL                             R10 -1 1
       76 LOADB                            R11 0
       77 MOVE                             R12 R10
       78 RETURN                           R11 2
       79 FORGLOOP                         R3 2 ; [-37]
       81 GETIMPORT                        R3 K6 [pairs]
       83 MOVE                             R4 R1
       84 CALL                             R3 1 3
       85 FORGPREP_NEXT                    R3
       86 GETTABLE                         R8 R2 R6
       87 JUMPIF                           R8 ; [+34]
       88 GETUPVAL                         R8 0
       89 MOVE                             R9 R7
       90 GETTABLE                         R10 R0 R6
       91 CALL                             R8 2 2
       92 JUMPIF                           R8 ; [+29]
       93 LOADK                            R12 K7 ["{1}"]
       94 LOADK                            R13 K8 ["{1}[%s]"]
       95 FASTCALL1                        TOSTRING R6 ; [+3]
       96 MOVE                             R16 R6
       97 GETIMPORT                        R15 K10 [tostring]
       99 CALL                             R15 1 1
      100 NAMECALL                         R13 R13 K3 ["format"]
      102 CALL                             R13 2 -1
      103 NAMECALL                         R10 R9 K11 ["gsub"]
      105 CALL                             R10 -1 1
      106 LOADK                            R12 K12 ["{2}"]
      107 LOADK                            R13 K13 ["{2}[%s]"]
      108 FASTCALL1                        TOSTRING R6 ; [+3]
      109 MOVE                             R16 R6
      110 GETIMPORT                        R15 K10 [tostring]
      112 CALL                             R15 1 1
      113 NAMECALL                         R13 R13 K3 ["format"]
      115 CALL                             R13 2 -1
      116 NAMECALL                         R10 R10 K11 ["gsub"]
      118 CALL                             R10 -1 1
      119 LOADB                            R11 0
      120 MOVE                             R12 R10
      121 RETURN                           R11 2
      122 FORGLOOP                         R3 2 ; [-37]
      124 LOADB                            R3 1
      125 RETURN                           R3 1
      126 JUMPIFNOTEQ                      R0 R1 ; [+3]
      128 LOADB                            R2 1
      129 RETURN                           R2 1
      130 LOADB                            R2 0
      131 LOADK                            R3 K14 ["{1} ~= {2}"]
      132 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 2
        4 JUMPIF                           R2 ; [+20]
        5 LOADK                            R6 K0 ["{1}"]
        6 LOADK                            R7 K1 ["first"]
        7 NAMECALL                         R4 R3 K2 ["gsub"]
        9 CALL                             R4 3 1
       10 LOADK                            R6 K3 ["{2}"]
       11 LOADK                            R7 K4 ["second"]
       12 NAMECALL                         R4 R4 K2 ["gsub"]
       14 CALL                             R4 3 1
       15 LOADK                            R5 K5 ["Values were not deep-equal.\n%s"]
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K6 ["format"]
       19 CALL                             R5 2 1
       20 GETIMPORT                        R6 K8 [error]
       22 MOVE                             R7 R5
       23 LOADN                            R8 2
       24 CALL                             R6 2 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
