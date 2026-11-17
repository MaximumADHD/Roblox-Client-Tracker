PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+11]
        7 LOADK                            R1 K3 ["\"responseBody\" > Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K5 ["Responses"]
       19 JUMPIFNOTEQKNIL                  R1 ; [+3]
       21 LOADK                            R1 K6 ["\"responseBody.Responses\" > Expected table, got nil"]
       22 RETURN                           R1 1
       23 GETTABLEKS                       R2 R0 K5 ["Responses"]
       25 FASTCALL1                        TYPEOF R2 ; [+2]
       26 GETIMPORT                        R1 K1 [typeof]
       28 CALL                             R1 1 1
       29 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
       31 LOADK                            R1 K7 ["\"responseBody.Responses\" > Expected table, got %*"]
       32 GETTABLEKS                       R4 R0 K5 ["Responses"]
       34 FASTCALL1                        TYPEOF R4 ; [+2]
       35 GETIMPORT                        R3 K1 [typeof]
       37 CALL                             R3 1 1
       38 NAMECALL                         R1 R1 K4 ["format"]
       40 CALL                             R1 2 1
       41 RETURN                           R1 1
       42 GETTABLEKS                       R1 R0 K5 ["Responses"]
       44 LOADNIL                          R2
       45 LOADNIL                          R3
       46 FORGPREP                         R1
       47 FASTCALL1                        TYPEOF R5 ; [+3]
       48 MOVE                             R7 R5
       49 GETIMPORT                        R6 K1 [typeof]
       51 CALL                             R6 1 1
       52 JUMPIFEQKS                       R6 K2 ["table"] ; [+12]
       54 LOADK                            R6 K8 ["\"responseBody.Responses[%*]\" > Expected table, got %*"]
       55 MOVE                             R8 R4
       56 FASTCALL1                        TYPEOF R5 ; [+3]
       57 MOVE                             R10 R5
       58 GETIMPORT                        R9 K1 [typeof]
       60 CALL                             R9 1 1
       61 NAMECALL                         R6 R6 K4 ["format"]
       63 CALL                             R6 3 1
       64 RETURN                           R6 1
       65 GETTABLEKS                       R7 R5 K9 ["UniverseId"]
       67 FASTCALL1                        TYPEOF R7 ; [+2]
       68 GETIMPORT                        R6 K1 [typeof]
       70 CALL                             R6 1 1
       71 JUMPIFEQKS                       R6 K10 ["number"] ; [+13]
       73 LOADK                            R6 K11 ["\"responseBody.Responses[%*].UniverseId\" > Expected number, got %*"]
       74 MOVE                             R8 R4
       75 GETTABLEKS                       R10 R5 K9 ["UniverseId"]
       77 FASTCALL1                        TYPEOF R10 ; [+2]
       78 GETIMPORT                        R9 K1 [typeof]
       80 CALL                             R9 1 1
       81 NAMECALL                         R6 R6 K4 ["format"]
       83 CALL                             R6 3 1
       84 RETURN                           R6 1
       85 GETTABLEKS                       R7 R5 K12 ["CanCollaborate"]
       87 FASTCALL1                        TYPEOF R7 ; [+2]
       88 GETIMPORT                        R6 K1 [typeof]
       90 CALL                             R6 1 1
       91 JUMPIFEQKS                       R6 K13 ["boolean"] ; [+13]
       93 LOADK                            R6 K14 ["\"responseBody.Responses[%*].CanCollaborate\" > Expected boolean, got %*"]
       94 MOVE                             R8 R4
       95 GETTABLEKS                       R10 R5 K12 ["CanCollaborate"]
       97 FASTCALL1                        TYPEOF R10 ; [+2]
       98 GETIMPORT                        R9 K1 [typeof]
      100 CALL                             R9 1 1
      101 NAMECALL                         R6 R6 K4 ["format"]
      103 CALL                             R6 3 1
      104 RETURN                           R6 1
      105 GETTABLEKS                       R6 R5 K15 ["Error"]
      107 JUMPIFEQKNIL                     R6 ; [+21]
      109 GETTABLEKS                       R7 R5 K15 ["Error"]
      111 FASTCALL1                        TYPEOF R7 ; [+2]
      112 GETIMPORT                        R6 K1 [typeof]
      114 CALL                             R6 1 1
      115 JUMPIFEQKS                       R6 K16 ["string"] ; [+13]
      117 LOADK                            R6 K17 ["\"responseBody.Responses[%*].Error\" > Expected string or nil, got %*"]
      118 MOVE                             R8 R4
      119 GETTABLEKS                       R10 R5 K15 ["Error"]
      121 FASTCALL1                        TYPEOF R10 ; [+2]
      122 GETIMPORT                        R9 K1 [typeof]
      124 CALL                             R9 1 1
      125 NAMECALL                         R6 R6 K4 ["format"]
      127 CALL                             R6 3 1
      128 RETURN                           R6 1
      129 FORGLOOP                         R1 2 ; [-83]
      131 LOADNIL                          R1
      132 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
