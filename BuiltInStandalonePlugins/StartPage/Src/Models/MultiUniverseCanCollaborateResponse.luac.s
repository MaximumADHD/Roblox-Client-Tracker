PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 LOADK                            R2 K3 ["\"responseBody\" > Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K5 ["Responses"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+3]
       22 LOADK                            R1 K6 ["\"responseBody.Responses\" > Expected table, got nil"]
       23 RETURN                           R1 1
       24 GETTABLEKS                       R2 R0 K5 ["Responses"]
       26 FASTCALL1                        TYPEOF R2 ; [+2]
       27 GETIMPORT                        R1 K1 [typeof]
       29 CALL                             R1 1 1
       30 JUMPIFEQKS                       R1 K2 ["table"] ; [+13]
       32 LOADK                            R2 K7 ["\"responseBody.Responses\" > Expected table, got %*"]
       33 GETTABLEKS                       R5 R0 K5 ["Responses"]
       35 FASTCALL1                        TYPEOF R5 ; [+2]
       36 GETIMPORT                        R4 K1 [typeof]
       38 CALL                             R4 1 1
       39 NAMECALL                         R2 R2 K4 ["format"]
       41 CALL                             R2 2 1
       42 MOVE                             R1 R2
       43 RETURN                           R1 1
       44 GETTABLEKS                       R1 R0 K5 ["Responses"]
       46 LOADNIL                          R2
       47 LOADNIL                          R3
       48 FORGPREP                         R1
       49 FASTCALL1                        TYPEOF R5 ; [+3]
       50 MOVE                             R7 R5
       51 GETIMPORT                        R6 K1 [typeof]
       53 CALL                             R6 1 1
       54 JUMPIFEQKS                       R6 K2 ["table"] ; [+13]
       56 LOADK                            R7 K8 ["\"responseBody.Responses[%*]\" > Expected table, got %*"]
       57 MOVE                             R9 R4
       58 FASTCALL1                        TYPEOF R5 ; [+3]
       59 MOVE                             R11 R5
       60 GETIMPORT                        R10 K1 [typeof]
       62 CALL                             R10 1 1
       63 NAMECALL                         R7 R7 K4 ["format"]
       65 CALL                             R7 3 1
       66 MOVE                             R6 R7
       67 RETURN                           R6 1
       68 GETTABLEKS                       R7 R5 K9 ["UniverseId"]
       70 FASTCALL1                        TYPEOF R7 ; [+2]
       71 GETIMPORT                        R6 K1 [typeof]
       73 CALL                             R6 1 1
       74 JUMPIFEQKS                       R6 K10 ["number"] ; [+14]
       76 LOADK                            R7 K11 ["\"responseBody.Responses[%*].UniverseId\" > Expected number, got %*"]
       77 MOVE                             R9 R4
       78 GETTABLEKS                       R11 R5 K9 ["UniverseId"]
       80 FASTCALL1                        TYPEOF R11 ; [+2]
       81 GETIMPORT                        R10 K1 [typeof]
       83 CALL                             R10 1 1
       84 NAMECALL                         R7 R7 K4 ["format"]
       86 CALL                             R7 3 1
       87 MOVE                             R6 R7
       88 RETURN                           R6 1
       89 GETTABLEKS                       R7 R5 K12 ["CanCollaborate"]
       91 FASTCALL1                        TYPEOF R7 ; [+2]
       92 GETIMPORT                        R6 K1 [typeof]
       94 CALL                             R6 1 1
       95 JUMPIFEQKS                       R6 K13 ["boolean"] ; [+14]
       97 LOADK                            R7 K14 ["\"responseBody.Responses[%*].CanCollaborate\" > Expected boolean, got %*"]
       98 MOVE                             R9 R4
       99 GETTABLEKS                       R11 R5 K12 ["CanCollaborate"]
      101 FASTCALL1                        TYPEOF R11 ; [+2]
      102 GETIMPORT                        R10 K1 [typeof]
      104 CALL                             R10 1 1
      105 NAMECALL                         R7 R7 K4 ["format"]
      107 CALL                             R7 3 1
      108 MOVE                             R6 R7
      109 RETURN                           R6 1
      110 GETTABLEKS                       R6 R5 K15 ["Error"]
      112 JUMPIFEQKNIL                     R6 ; [+22]
      114 GETTABLEKS                       R7 R5 K15 ["Error"]
      116 FASTCALL1                        TYPEOF R7 ; [+2]
      117 GETIMPORT                        R6 K1 [typeof]
      119 CALL                             R6 1 1
      120 JUMPIFEQKS                       R6 K16 ["string"] ; [+14]
      122 LOADK                            R7 K17 ["\"responseBody.Responses[%*].Error\" > Expected string or nil, got %*"]
      123 MOVE                             R9 R4
      124 GETTABLEKS                       R11 R5 K15 ["Error"]
      126 FASTCALL1                        TYPEOF R11 ; [+2]
      127 GETIMPORT                        R10 K1 [typeof]
      129 CALL                             R10 1 1
      130 NAMECALL                         R7 R7 K4 ["format"]
      132 CALL                             R7 3 1
      133 MOVE                             R6 R7
      134 RETURN                           R6 1
      135 FORGLOOP                         R1 2 ; [-87]
      137 LOADNIL                          R1
      138 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
