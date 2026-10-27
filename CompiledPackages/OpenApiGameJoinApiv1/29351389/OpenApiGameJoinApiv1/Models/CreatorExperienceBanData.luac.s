PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+11]
        7 LOADK                            R1 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K5 ["startTime"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["startTime"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
       28 LOADK                            R1 K7 ["\"startTime\" > Expected string, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["startTime"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K8 ["durationSeconds"]
       41 JUMPIFNOT                        R1 ; [+19]
       42 GETTABLEKS                       R2 R0 K8 ["durationSeconds"]
       44 FASTCALL1                        TYPEOF R2 ; [+2]
       45 GETIMPORT                        R1 K1 [typeof]
       47 CALL                             R1 1 1
       48 JUMPIFEQKS                       R1 K9 ["number"] ; [+12]
       50 LOADK                            R1 K10 ["\"durationSeconds\" > Expected number, got %*"]
       51 GETTABLEKS                       R4 R0 K8 ["durationSeconds"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 NAMECALL                         R1 R1 K4 ["format"]
       59 CALL                             R1 2 1
       60 RETURN                           R1 1
       61 GETTABLEKS                       R1 R0 K11 ["displayReason"]
       63 JUMPIFNOT                        R1 ; [+19]
       64 GETTABLEKS                       R2 R0 K11 ["displayReason"]
       66 FASTCALL1                        TYPEOF R2 ; [+2]
       67 GETIMPORT                        R1 K1 [typeof]
       69 CALL                             R1 1 1
       70 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
       72 LOADK                            R1 K12 ["\"displayReason\" > Expected string, got %*"]
       73 GETTABLEKS                       R4 R0 K11 ["displayReason"]
       75 FASTCALL1                        TYPEOF R4 ; [+2]
       76 GETIMPORT                        R3 K1 [typeof]
       78 CALL                             R3 1 1
       79 NAMECALL                         R1 R1 K4 ["format"]
       81 CALL                             R1 2 1
       82 RETURN                           R1 1
       83 GETTABLEKS                       R1 R0 K13 ["displayReasonTextFilterStatus"]
       85 JUMPIFNOT                        R1 ; [+19]
       86 GETTABLEKS                       R2 R0 K13 ["displayReasonTextFilterStatus"]
       88 FASTCALL1                        TYPEOF R2 ; [+2]
       89 GETIMPORT                        R1 K1 [typeof]
       91 CALL                             R1 1 1
       92 JUMPIFEQKS                       R1 K9 ["number"] ; [+12]
       94 LOADK                            R1 K14 ["\"displayReasonTextFilterStatus\" > Expected number, got %*"]
       95 GETTABLEKS                       R4 R0 K13 ["displayReasonTextFilterStatus"]
       97 FASTCALL1                        TYPEOF R4 ; [+2]
       98 GETIMPORT                        R3 K1 [typeof]
      100 CALL                             R3 1 1
      101 NAMECALL                         R1 R1 K4 ["format"]
      103 CALL                             R1 2 1
      104 RETURN                           R1 1
      105 GETTABLEKS                       R1 R0 K15 ["isInherited"]
      107 JUMPIFNOT                        R1 ; [+19]
      108 GETTABLEKS                       R2 R0 K15 ["isInherited"]
      110 FASTCALL1                        TYPEOF R2 ; [+2]
      111 GETIMPORT                        R1 K1 [typeof]
      113 CALL                             R1 1 1
      114 JUMPIFEQKS                       R1 K16 ["boolean"] ; [+12]
      116 LOADK                            R1 K17 ["\"isInherited\" > Expected boolean, got %*"]
      117 GETTABLEKS                       R4 R0 K15 ["isInherited"]
      119 FASTCALL1                        TYPEOF R4 ; [+2]
      120 GETIMPORT                        R3 K1 [typeof]
      122 CALL                             R3 1 1
      123 NAMECALL                         R1 R1 K4 ["format"]
      125 CALL                             R1 2 1
      126 RETURN                           R1 1
      127 LOADNIL                          R1
      128 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K3 [table.freeze]
        4 DUPTABLE                         R2 K5 [{"validate"}]
        5 SETTABLEKS                       R0 R2 K4 ["validate"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
