PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R4 R0 K5 ["start"]
       15 FASTCALL1                        TYPEOF R4 ; [+2]
       16 GETIMPORT                        R3 K1 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFEQKS                       R3 K6 ["function"] ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 FASTCALL1                        ASSERT R2 ; [+2]
       24 GETIMPORT                        R1 K4 [assert]
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R4 R0 K7 ["stop"]
       29 FASTCALL1                        TYPEOF R4 ; [+2]
       30 GETIMPORT                        R3 K1 [typeof]
       32 CALL                             R3 1 1
       33 JUMPIFEQKS                       R3 K6 ["function"] ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 FASTCALL1                        ASSERT R2 ; [+2]
       38 GETIMPORT                        R1 K4 [assert]
       40 CALL                             R1 1 0
       41 GETTABLEKS                       R4 R0 K8 ["step"]
       43 FASTCALL1                        TYPEOF R4 ; [+2]
       44 GETIMPORT                        R3 K1 [typeof]
       46 CALL                             R3 1 1
       47 JUMPIFEQKS                       R3 K6 ["function"] ; [+2]
       49 LOADB                            R2 0 +1
       50 LOADB                            R2 1
       51 FASTCALL1                        ASSERT R2 ; [+2]
       52 GETIMPORT                        R1 K4 [assert]
       54 CALL                             R1 1 0
       55 GETTABLEKS                       R4 R0 K9 ["setGoal"]
       57 FASTCALL1                        TYPEOF R4 ; [+2]
       58 GETIMPORT                        R3 K1 [typeof]
       60 CALL                             R3 1 1
       61 JUMPIFEQKS                       R3 K6 ["function"] ; [+2]
       63 LOADB                            R2 0 +1
       64 LOADB                            R2 1
       65 FASTCALL1                        ASSERT R2 ; [+2]
       66 GETIMPORT                        R1 K4 [assert]
       68 CALL                             R1 1 0
       69 GETTABLEKS                       R4 R0 K10 ["onStep"]
       71 FASTCALL1                        TYPEOF R4 ; [+2]
       72 GETIMPORT                        R3 K1 [typeof]
       74 CALL                             R3 1 1
       75 JUMPIFEQKS                       R3 K6 ["function"] ; [+2]
       77 LOADB                            R2 0 +1
       78 LOADB                            R2 1
       79 FASTCALL1                        ASSERT R2 ; [+2]
       80 GETIMPORT                        R1 K4 [assert]
       82 CALL                             R1 1 0
       83 GETTABLEKS                       R4 R0 K11 ["onComplete"]
       85 FASTCALL1                        TYPEOF R4 ; [+2]
       86 GETIMPORT                        R3 K1 [typeof]
       88 CALL                             R3 1 1
       89 JUMPIFEQKS                       R3 K6 ["function"] ; [+2]
       91 LOADB                            R2 0 +1
       92 LOADB                            R2 1
       93 FASTCALL1                        ASSERT R2 ; [+2]
       94 GETIMPORT                        R1 K4 [assert]
       96 CALL                             R1 1 0
       97 GETTABLEKS                       R4 R0 K12 ["destroy"]
       99 FASTCALL1                        TYPEOF R4 ; [+2]
      100 GETIMPORT                        R3 K1 [typeof]
      102 CALL                             R3 1 1
      103 JUMPIFEQKS                       R3 K6 ["function"] ; [+2]
      105 LOADB                            R2 0 +1
      106 LOADB                            R2 1
      107 FASTCALL1                        ASSERT R2 ; [+2]
      108 GETIMPORT                        R1 K4 [assert]
      110 CALL                             R1 1 0
      111 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
