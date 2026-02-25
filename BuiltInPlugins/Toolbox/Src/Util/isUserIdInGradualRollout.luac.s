PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["userId must be a number"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 MODK                             R4 R0 K6 [1]
       16 JUMPIFEQKN                       R4 K7 [0] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       22 LOADK                            R4 K8 ["userId must be an integer"]
       23 GETIMPORT                        R2 K5 [assert]
       25 CALL                             R2 2 0
       26 FASTCALL1                        TYPEOF R1 ; [+3]
       27 MOVE                             R5 R1
       28 GETIMPORT                        R4 K1 [typeof]
       30 CALL                             R4 1 1
       31 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       37 LOADK                            R4 K9 ["rolloutPercentage must be a number"]
       38 GETIMPORT                        R2 K5 [assert]
       40 CALL                             R2 2 0
       41 MODK                             R4 R1 K6 [1]
       42 JUMPIFEQKN                       R4 K7 [0] ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       48 LOADK                            R4 K10 ["rolloutPercentage must be an integer"]
       49 GETIMPORT                        R2 K5 [assert]
       51 CALL                             R2 2 0
       52 LOADN                            R4 0
       53 JUMPIFLE                         R4 R1 ; [+2]
       55 LOADB                            R3 0 +1
       56 LOADB                            R3 1
       57 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       59 LOADK                            R4 K11 ["rolloutPercentage must be >= 0"]
       60 GETIMPORT                        R2 K5 [assert]
       62 CALL                             R2 2 0
       63 LOADN                            R4 100
       64 JUMPIFLE                         R1 R4 ; [+2]
       66 LOADB                            R3 0 +1
       67 LOADB                            R3 1
       68 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       70 LOADK                            R4 K12 ["rolloutPercentage must be <= 100"]
       71 GETIMPORT                        R2 K5 [assert]
       73 CALL                             R2 2 0
       74 MODK                             R3 R0 K13 [100]
       75 JUMPIFLT                         R3 R1 ; [+2]
       77 LOADB                            R2 0 +1
       78 LOADB                            R2 1
       79 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
