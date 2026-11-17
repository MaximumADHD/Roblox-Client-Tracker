PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTEQKS                    R4 K0 ["CanCollaborate"] ; [+19]
        6 FASTCALL1                        TYPEOF R5 ; [+3]
        7 MOVE                             R7 R5
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFEQKS                       R6 K3 ["boolean"] ; [+99]
       13 LOADK                            R6 K4 ["\"responseBody.CanCollaborate\" > Expected boolean, got %*"]
       14 FASTCALL1                        TYPEOF R5 ; [+3]
       15 MOVE                             R9 R5
       16 GETIMPORT                        R8 K2 [typeof]
       18 CALL                             R8 1 1
       19 NAMECALL                         R6 R6 K5 ["format"]
       21 CALL                             R6 2 1
       22 RETURN                           R6 1
       23 JUMP                             ; [+87]
       24 JUMPIFNOTEQKS                    R4 K6 ["Error"] ; [+21]
       26 JUMPIFEQKNIL                     R5 ; [+84]
       28 FASTCALL1                        TYPEOF R5 ; [+3]
       29 MOVE                             R7 R5
       30 GETIMPORT                        R6 K2 [typeof]
       32 CALL                             R6 1 1
       33 JUMPIFEQKS                       R6 K7 ["string"] ; [+77]
       35 LOADK                            R6 K8 ["\"responseBody.Error\" > Expected string or nil, got %*"]
       36 FASTCALL1                        TYPEOF R5 ; [+3]
       37 MOVE                             R9 R5
       38 GETIMPORT                        R8 K2 [typeof]
       40 CALL                             R8 1 1
       41 NAMECALL                         R6 R6 K5 ["format"]
       43 CALL                             R6 2 1
       44 RETURN                           R6 1
       45 JUMP                             ; [+65]
       46 JUMPIFNOTEQKS                    R4 K9 ["UserId"] ; [+21]
       48 JUMPIFEQKNIL                     R5 ; [+62]
       50 FASTCALL1                        TYPEOF R5 ; [+3]
       51 MOVE                             R7 R5
       52 GETIMPORT                        R6 K2 [typeof]
       54 CALL                             R6 1 1
       55 JUMPIFEQKS                       R6 K10 ["number"] ; [+55]
       57 LOADK                            R6 K11 ["\"responseBody.UserId\" > Expected number or nil, got %*"]
       58 FASTCALL1                        TYPEOF R5 ; [+3]
       59 MOVE                             R9 R5
       60 GETIMPORT                        R8 K2 [typeof]
       62 CALL                             R8 1 1
       63 NAMECALL                         R6 R6 K5 ["format"]
       65 CALL                             R6 2 1
       66 RETURN                           R6 1
       67 JUMP                             ; [+43]
       68 JUMPIFNOTEQKS                    R4 K12 ["RequiresTrustedConnection"] ; [+21]
       70 JUMPIFEQKNIL                     R5 ; [+40]
       72 FASTCALL1                        TYPEOF R5 ; [+3]
       73 MOVE                             R7 R5
       74 GETIMPORT                        R6 K2 [typeof]
       76 CALL                             R6 1 1
       77 JUMPIFEQKS                       R6 K13 ["table"] ; [+33]
       79 LOADK                            R6 K14 ["\"responseBody.RequiresTrustedConnection\" > Expected table or nil, got %*"]
       80 FASTCALL1                        TYPEOF R5 ; [+3]
       81 MOVE                             R9 R5
       82 GETIMPORT                        R8 K2 [typeof]
       84 CALL                             R8 1 1
       85 NAMECALL                         R6 R6 K5 ["format"]
       87 CALL                             R6 2 1
       88 RETURN                           R6 1
       89 JUMP                             ; [+21]
       90 JUMPIFNOTEQKS                    R4 K15 ["UniverseId"] ; [+20]
       92 JUMPIFEQKNIL                     R5 ; [+18]
       94 FASTCALL1                        TYPEOF R5 ; [+3]
       95 MOVE                             R7 R5
       96 GETIMPORT                        R6 K2 [typeof]
       98 CALL                             R6 1 1
       99 JUMPIFEQKS                       R6 K10 ["number"] ; [+11]
      101 LOADK                            R6 K16 ["\"responseBody.UniverseId\" > Expected number or nil, got %*"]
      102 FASTCALL1                        TYPEOF R5 ; [+3]
      103 MOVE                             R9 R5
      104 GETIMPORT                        R8 K2 [typeof]
      106 CALL                             R8 1 1
      107 NAMECALL                         R6 R6 K5 ["format"]
      109 CALL                             R6 2 1
      110 RETURN                           R6 1
      111 FORGLOOP                         R1 2 ; [-108]
      113 LOADNIL                          R1
      114 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
