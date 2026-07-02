PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 LOADK                            R2 K3 ["Expected table, got %*"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K5 ["startTime"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["startTime"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
       29 LOADK                            R2 K7 ["\"startTime\" > Expected string, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["startTime"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K8 ["durationSeconds"]
       43 JUMPIFNOT                        R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["durationSeconds"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K9 ["number"] ; [+13]
       52 LOADK                            R2 K10 ["\"durationSeconds\" > Expected number, got %*"]
       53 GETTABLEKS                       R5 R0 K8 ["durationSeconds"]
       55 FASTCALL1                        TYPEOF R5 ; [+2]
       56 GETIMPORT                        R4 K1 [typeof]
       58 CALL                             R4 1 1
       59 NAMECALL                         R2 R2 K4 ["format"]
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 RETURN                           R1 1
       64 GETTABLEKS                       R1 R0 K11 ["displayReason"]
       66 JUMPIFNOT                        R1 ; [+20]
       67 GETTABLEKS                       R2 R0 K11 ["displayReason"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
       75 LOADK                            R2 K12 ["\"displayReason\" > Expected string, got %*"]
       76 GETTABLEKS                       R5 R0 K11 ["displayReason"]
       78 FASTCALL1                        TYPEOF R5 ; [+2]
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 NAMECALL                         R2 R2 K4 ["format"]
       84 CALL                             R2 2 1
       85 MOVE                             R1 R2
       86 RETURN                           R1 1
       87 GETTABLEKS                       R1 R0 K13 ["displayReasonTextFilterStatus"]
       89 JUMPIFNOT                        R1 ; [+20]
       90 GETTABLEKS                       R2 R0 K13 ["displayReasonTextFilterStatus"]
       92 FASTCALL1                        TYPEOF R2 ; [+2]
       93 GETIMPORT                        R1 K1 [typeof]
       95 CALL                             R1 1 1
       96 JUMPIFEQKS                       R1 K9 ["number"] ; [+13]
       98 LOADK                            R2 K14 ["\"displayReasonTextFilterStatus\" > Expected number, got %*"]
       99 GETTABLEKS                       R5 R0 K13 ["displayReasonTextFilterStatus"]
      101 FASTCALL1                        TYPEOF R5 ; [+2]
      102 GETIMPORT                        R4 K1 [typeof]
      104 CALL                             R4 1 1
      105 NAMECALL                         R2 R2 K4 ["format"]
      107 CALL                             R2 2 1
      108 MOVE                             R1 R2
      109 RETURN                           R1 1
      110 GETTABLEKS                       R1 R0 K15 ["isInherited"]
      112 JUMPIFNOT                        R1 ; [+20]
      113 GETTABLEKS                       R2 R0 K15 ["isInherited"]
      115 FASTCALL1                        TYPEOF R2 ; [+2]
      116 GETIMPORT                        R1 K1 [typeof]
      118 CALL                             R1 1 1
      119 JUMPIFEQKS                       R1 K16 ["boolean"] ; [+13]
      121 LOADK                            R2 K17 ["\"isInherited\" > Expected boolean, got %*"]
      122 GETTABLEKS                       R5 R0 K15 ["isInherited"]
      124 FASTCALL1                        TYPEOF R5 ; [+2]
      125 GETIMPORT                        R4 K1 [typeof]
      127 CALL                             R4 1 1
      128 NAMECALL                         R2 R2 K4 ["format"]
      130 CALL                             R2 2 1
      131 MOVE                             R1 R2
      132 RETURN                           R1 1
      133 LOADNIL                          R1
      134 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K3 [table.freeze]
        4 DUPTABLE                         R2 K5 [{"validate"}]
        5 SETTABLEKS                       R0 R2 K4 ["validate"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
