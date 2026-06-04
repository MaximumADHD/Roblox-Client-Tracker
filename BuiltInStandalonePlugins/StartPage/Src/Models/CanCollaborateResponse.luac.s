PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTEQKS                    R4 K0 ["CanCollaborate"] ; [+20]
        6 FASTCALL1                        TYPEOF R5 ; [+3]
        7 MOVE                             R7 R5
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFEQKS                       R6 K3 ["boolean"] ; [+104]
       13 LOADK                            R7 K4 ["\"responseBody.CanCollaborate\" > Expected boolean, got %*"]
       14 FASTCALL1                        TYPEOF R5 ; [+3]
       15 MOVE                             R10 R5
       16 GETIMPORT                        R9 K2 [typeof]
       18 CALL                             R9 1 1
       19 NAMECALL                         R7 R7 K5 ["format"]
       21 CALL                             R7 2 1
       22 MOVE                             R6 R7
       23 RETURN                           R6 1
       24 JUMP                             ; [+91]
       25 JUMPIFNOTEQKS                    R4 K6 ["Error"] ; [+22]
       27 JUMPIFEQKNIL                     R5 ; [+88]
       29 FASTCALL1                        TYPEOF R5 ; [+3]
       30 MOVE                             R7 R5
       31 GETIMPORT                        R6 K2 [typeof]
       33 CALL                             R6 1 1
       34 JUMPIFEQKS                       R6 K7 ["string"] ; [+81]
       36 LOADK                            R7 K8 ["\"responseBody.Error\" > Expected string or nil, got %*"]
       37 FASTCALL1                        TYPEOF R5 ; [+3]
       38 MOVE                             R10 R5
       39 GETIMPORT                        R9 K2 [typeof]
       41 CALL                             R9 1 1
       42 NAMECALL                         R7 R7 K5 ["format"]
       44 CALL                             R7 2 1
       45 MOVE                             R6 R7
       46 RETURN                           R6 1
       47 JUMP                             ; [+68]
       48 JUMPIFNOTEQKS                    R4 K9 ["UserId"] ; [+22]
       50 JUMPIFEQKNIL                     R5 ; [+65]
       52 FASTCALL1                        TYPEOF R5 ; [+3]
       53 MOVE                             R7 R5
       54 GETIMPORT                        R6 K2 [typeof]
       56 CALL                             R6 1 1
       57 JUMPIFEQKS                       R6 K10 ["number"] ; [+58]
       59 LOADK                            R7 K11 ["\"responseBody.UserId\" > Expected number or nil, got %*"]
       60 FASTCALL1                        TYPEOF R5 ; [+3]
       61 MOVE                             R10 R5
       62 GETIMPORT                        R9 K2 [typeof]
       64 CALL                             R9 1 1
       65 NAMECALL                         R7 R7 K5 ["format"]
       67 CALL                             R7 2 1
       68 MOVE                             R6 R7
       69 RETURN                           R6 1
       70 JUMP                             ; [+45]
       71 JUMPIFNOTEQKS                    R4 K12 ["RequiresTrustedConnection"] ; [+22]
       73 JUMPIFEQKNIL                     R5 ; [+42]
       75 FASTCALL1                        TYPEOF R5 ; [+3]
       76 MOVE                             R7 R5
       77 GETIMPORT                        R6 K2 [typeof]
       79 CALL                             R6 1 1
       80 JUMPIFEQKS                       R6 K13 ["table"] ; [+35]
       82 LOADK                            R7 K14 ["\"responseBody.RequiresTrustedConnection\" > Expected table or nil, got %*"]
       83 FASTCALL1                        TYPEOF R5 ; [+3]
       84 MOVE                             R10 R5
       85 GETIMPORT                        R9 K2 [typeof]
       87 CALL                             R9 1 1
       88 NAMECALL                         R7 R7 K5 ["format"]
       90 CALL                             R7 2 1
       91 MOVE                             R6 R7
       92 RETURN                           R6 1
       93 JUMP                             ; [+22]
       94 JUMPIFNOTEQKS                    R4 K15 ["UniverseId"] ; [+21]
       96 JUMPIFEQKNIL                     R5 ; [+19]
       98 FASTCALL1                        TYPEOF R5 ; [+3]
       99 MOVE                             R7 R5
      100 GETIMPORT                        R6 K2 [typeof]
      102 CALL                             R6 1 1
      103 JUMPIFEQKS                       R6 K10 ["number"] ; [+12]
      105 LOADK                            R7 K16 ["\"responseBody.UniverseId\" > Expected number or nil, got %*"]
      106 FASTCALL1                        TYPEOF R5 ; [+3]
      107 MOVE                             R10 R5
      108 GETIMPORT                        R9 K2 [typeof]
      110 CALL                             R9 1 1
      111 NAMECALL                         R7 R7 K5 ["format"]
      113 CALL                             R7 2 1
      114 MOVE                             R6 R7
      115 RETURN                           R6 1
      116 FORGLOOP                         R1 2 ; [-113]
      118 LOADNIL                          R1
      119 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
