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
       34 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+94]
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
       49 JUMPIF                           R8 ; [+30]
       50 JUMPIFNOT                        R9 ; [+29]
       51 LOADK                            R12 K7 ["{1}"]
       52 LOADK                            R13 K8 ["{1}[%s]"]
       53 FASTCALL1                        TOSTRING R6 ; [+3]
       54 MOVE                             R16 R6
       55 GETIMPORT                        R15 K10 [tostring]
       57 CALL                             R15 1 1
       58 NAMECALL                         R13 R13 K3 ["format"]
       60 CALL                             R13 2 -1
       61 NAMECALL                         R10 R9 K11 ["gsub"]
       63 CALL                             R10 -1 1
       64 LOADK                            R12 K12 ["{2}"]
       65 LOADK                            R13 K13 ["{2}[%s]"]
       66 FASTCALL1                        TOSTRING R6 ; [+3]
       67 MOVE                             R16 R6
       68 GETIMPORT                        R15 K10 [tostring]
       70 CALL                             R15 1 1
       71 NAMECALL                         R13 R13 K3 ["format"]
       73 CALL                             R13 2 -1
       74 NAMECALL                         R10 R10 K11 ["gsub"]
       76 CALL                             R10 -1 1
       77 LOADB                            R11 0
       78 MOVE                             R12 R10
       79 RETURN                           R11 2
       80 FORGLOOP                         R3 2 ; [-38]
       82 GETIMPORT                        R3 K6 [pairs]
       84 MOVE                             R4 R1
       85 CALL                             R3 1 3
       86 FORGPREP_NEXT                    R3
       87 GETTABLE                         R8 R2 R6
       88 JUMPIF                           R8 ; [+35]
       89 GETUPVAL                         R8 0
       90 MOVE                             R9 R7
       91 GETTABLE                         R10 R0 R6
       92 CALL                             R8 2 2
       93 JUMPIF                           R8 ; [+30]
       94 JUMPIFNOT                        R9 ; [+29]
       95 LOADK                            R12 K7 ["{1}"]
       96 LOADK                            R13 K8 ["{1}[%s]"]
       97 FASTCALL1                        TOSTRING R6 ; [+3]
       98 MOVE                             R16 R6
       99 GETIMPORT                        R15 K10 [tostring]
      101 CALL                             R15 1 1
      102 NAMECALL                         R13 R13 K3 ["format"]
      104 CALL                             R13 2 -1
      105 NAMECALL                         R10 R9 K11 ["gsub"]
      107 CALL                             R10 -1 1
      108 LOADK                            R12 K12 ["{2}"]
      109 LOADK                            R13 K13 ["{2}[%s]"]
      110 FASTCALL1                        TOSTRING R6 ; [+3]
      111 MOVE                             R16 R6
      112 GETIMPORT                        R15 K10 [tostring]
      114 CALL                             R15 1 1
      115 NAMECALL                         R13 R13 K3 ["format"]
      117 CALL                             R13 2 -1
      118 NAMECALL                         R10 R10 K11 ["gsub"]
      120 CALL                             R10 -1 1
      121 LOADB                            R11 0
      122 MOVE                             R12 R10
      123 RETURN                           R11 2
      124 FORGLOOP                         R3 2 ; [-38]
      126 LOADB                            R3 1
      127 LOADNIL                          R4
      128 RETURN                           R3 2
      129 JUMPIFNOTEQ                      R0 R1 ; [+4]
      131 LOADB                            R2 1
      132 LOADNIL                          R3
      133 RETURN                           R2 2
      134 LOADB                            R2 0
      135 LOADK                            R3 K14 ["{1} ~= {2}"]
      136 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 2
        4 JUMPIF                           R2 ; [+21]
        5 JUMPIFNOT                        R3 ; [+20]
        6 LOADK                            R6 K0 ["{1}"]
        7 LOADK                            R7 K1 ["first"]
        8 NAMECALL                         R4 R3 K2 ["gsub"]
       10 CALL                             R4 3 1
       11 LOADK                            R6 K3 ["{2}"]
       12 LOADK                            R7 K4 ["second"]
       13 NAMECALL                         R4 R4 K2 ["gsub"]
       15 CALL                             R4 3 1
       16 LOADK                            R5 K5 ["Values were not deep-equal.\n%s"]
       17 MOVE                             R7 R4
       18 NAMECALL                         R5 R5 K6 ["format"]
       20 CALL                             R5 2 1
       21 GETIMPORT                        R6 K8 [error]
       23 MOVE                             R7 R5
       24 LOADN                            R8 2
       25 CALL                             R6 2 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
