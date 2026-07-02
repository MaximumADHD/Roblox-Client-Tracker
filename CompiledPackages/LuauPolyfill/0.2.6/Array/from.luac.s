PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+7]
        2 GETIMPORT                        R2 K1 [require]
        4 GETUPVAL                         R3 1
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R2 R2 K2 ["Set"]
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 2
       10 JUMPIF                           R2 ; [+7]
       11 GETIMPORT                        R2 K1 [require]
       13 GETUPVAL                         R3 1
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R2 R2 K3 ["Map"]
       17 SETUPVAL                         R2 2
       18 JUMPIFNOTEQKNIL                  R0 ; [+5]
       20 GETIMPORT                        R2 K5 [error]
       22 LOADK                            R3 K6 ["cannot create array from a nil value"]
       23 CALL                             R2 1 0
       24 FASTCALL1                        TYPEOF R0 ; [+3]
       25 MOVE                             R3 R0
       26 GETIMPORT                        R2 K8 [typeof]
       28 CALL                             R2 1 1
       29 NEWTABLE                         R3 0 0
       31 JUMPIFNOTEQKS                    R2 K9 ["table"] ; [+25]
       33 GETUPVAL                         R4 3
       34 MOVE                             R5 R0
       35 CALL                             R4 1 1
       36 JUMPIFNOT                        R4 ; [+20]
       37 JUMPIFNOT                        R1 ; [+11]
       38 LOADN                            R6 1
       39 LENGTH                           R4 R0
       40 LOADN                            R5 1
       41 FORNPREP                         R4
       42 MOVE                             R7 R1
       43 GETTABLE                         R8 R0 R6
       44 MOVE                             R9 R6
       45 CALL                             R7 2 1
       46 SETTABLE                         R7 R3 R6
       47 FORNLOOP                         R4
       48 RETURN                           R3 1
       49 LOADN                            R6 1
       50 LENGTH                           R4 R0
       51 LOADN                            R5 1
       52 FORNPREP                         R4
       53 GETTABLE                         R7 R0 R6
       54 SETTABLE                         R7 R3 R6
       55 FORNLOOP                         R4
       56 RETURN                           R3 1
       57 GETUPVAL                         R4 4
       58 MOVE                             R5 R0
       59 GETUPVAL                         R6 0
       60 CALL                             R4 2 1
       61 JUMPIFNOT                        R4 ; [+21]
       62 JUMPIFNOT                        R1 ; [+12]
       63 NAMECALL                         R4 R0 K10 ["ipairs"]
       65 CALL                             R4 1 3
       66 FORGPREP                         R4
       67 MOVE                             R9 R1
       68 MOVE                             R10 R8
       69 MOVE                             R11 R7
       70 CALL                             R9 2 1
       71 SETTABLE                         R9 R3 R7
       72 FORGLOOP                         R4 2 ; [-6]
       74 RETURN                           R3 1
       75 NAMECALL                         R4 R0 K10 ["ipairs"]
       77 CALL                             R4 1 3
       78 FORGPREP                         R4
       79 SETTABLE                         R8 R3 R7
       80 FORGLOOP                         R4 2 ; [-2]
       82 RETURN                           R3 1
       83 GETUPVAL                         R4 4
       84 MOVE                             R5 R0
       85 GETUPVAL                         R6 2
       86 CALL                             R4 2 1
       87 JUMPIFNOT                        R4 ; [+21]
       88 JUMPIFNOT                        R1 ; [+12]
       89 NAMECALL                         R4 R0 K10 ["ipairs"]
       91 CALL                             R4 1 3
       92 FORGPREP                         R4
       93 MOVE                             R9 R1
       94 MOVE                             R10 R8
       95 MOVE                             R11 R7
       96 CALL                             R9 2 1
       97 SETTABLE                         R9 R3 R7
       98 FORGLOOP                         R4 2 ; [-6]
      100 RETURN                           R3 1
      101 NAMECALL                         R4 R0 K10 ["ipairs"]
      103 CALL                             R4 1 3
      104 FORGPREP                         R4
      105 SETTABLE                         R8 R3 R7
      106 FORGLOOP                         R4 2 ; [-2]
      108 RETURN                           R3 1
      109 JUMPIFNOTEQKS                    R2 K11 ["string"] ; [+34]
      111 JUMPIFNOT                        R1 ; [+18]
      112 LOADN                            R6 1
      113 NAMECALL                         R7 R0 K12 ["len"]
      115 CALL                             R7 1 1
      116 MOVE                             R4 R7
      117 LOADN                            R5 1
      118 FORNPREP                         R4
      119 MOVE                             R7 R1
      120 MOVE                             R10 R6
      121 MOVE                             R11 R6
      122 NAMECALL                         R8 R0 K13 ["sub"]
      124 CALL                             R8 3 1
      125 MOVE                             R9 R6
      126 CALL                             R7 2 1
      127 SETTABLE                         R7 R3 R6
      128 FORNLOOP                         R4
      129 RETURN                           R3 1
      130 LOADN                            R6 1
      131 NAMECALL                         R7 R0 K12 ["len"]
      133 CALL                             R7 1 1
      134 MOVE                             R4 R7
      135 LOADN                            R5 1
      136 FORNPREP                         R4
      137 MOVE                             R9 R6
      138 MOVE                             R10 R6
      139 NAMECALL                         R7 R0 K13 ["sub"]
      141 CALL                             R7 3 1
      142 SETTABLE                         R7 R3 R6
      143 FORNLOOP                         R4
      144 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["isArray"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R0 K2 ["Parent"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R2 K6 ["instanceof"]
       16 CALL                             R3 1 1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          REF R4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          REF R5
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CLOSEUPVALS                      R4
       26 RETURN                           R6 1
