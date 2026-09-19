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
       17 GETTABLEKS                       R1 R0 K5 ["jobId"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["jobId"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["string"] ; [+12]
       28 LOADK                            R1 K7 ["\"jobId\" > Expected string, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["jobId"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K8 ["status"]
       41 JUMPIFNOT                        R1 ; [+19]
       42 GETTABLEKS                       R2 R0 K8 ["status"]
       44 FASTCALL1                        TYPEOF R2 ; [+2]
       45 GETIMPORT                        R1 K1 [typeof]
       47 CALL                             R1 1 1
       48 JUMPIFEQKS                       R1 K9 ["number"] ; [+12]
       50 LOADK                            R1 K10 ["\"status\" > Expected number, got %*"]
       51 GETTABLEKS                       R4 R0 K8 ["status"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 NAMECALL                         R1 R1 K4 ["format"]
       59 CALL                             R1 2 1
       60 RETURN                           R1 1
       61 GETTABLEKS                       R2 R0 K11 ["statusData"]
       63 JUMPIFNOT                        R2 ; [+7]
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K12 ["validate"]
       67 GETTABLEKS                       R2 R0 K11 ["statusData"]
       69 CALL                             R1 1 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R1
       72 JUMPIFNOT                        R1 ; [+6]
       73 LOADK                            R2 K13 ["\"statusData\" > %*"]
       74 MOVE                             R4 R1
       75 NAMECALL                         R2 R2 K4 ["format"]
       77 CALL                             R2 2 1
       78 RETURN                           R2 1
       79 GETTABLEKS                       R2 R0 K14 ["joinScriptUrl"]
       81 JUMPIFNOT                        R2 ; [+19]
       82 GETTABLEKS                       R3 R0 K14 ["joinScriptUrl"]
       84 FASTCALL1                        TYPEOF R3 ; [+2]
       85 GETIMPORT                        R2 K1 [typeof]
       87 CALL                             R2 1 1
       88 JUMPIFEQKS                       R2 K6 ["string"] ; [+12]
       90 LOADK                            R2 K15 ["\"joinScriptUrl\" > Expected string, got %*"]
       91 GETTABLEKS                       R5 R0 K14 ["joinScriptUrl"]
       93 FASTCALL1                        TYPEOF R5 ; [+2]
       94 GETIMPORT                        R4 K1 [typeof]
       96 CALL                             R4 1 1
       97 NAMECALL                         R2 R2 K4 ["format"]
       99 CALL                             R2 2 1
      100 RETURN                           R2 1
      101 GETTABLEKS                       R2 R0 K16 ["authenticationUrl"]
      103 JUMPIFNOT                        R2 ; [+19]
      104 GETTABLEKS                       R3 R0 K16 ["authenticationUrl"]
      106 FASTCALL1                        TYPEOF R3 ; [+2]
      107 GETIMPORT                        R2 K1 [typeof]
      109 CALL                             R2 1 1
      110 JUMPIFEQKS                       R2 K6 ["string"] ; [+12]
      112 LOADK                            R2 K17 ["\"authenticationUrl\" > Expected string, got %*"]
      113 GETTABLEKS                       R5 R0 K16 ["authenticationUrl"]
      115 FASTCALL1                        TYPEOF R5 ; [+2]
      116 GETIMPORT                        R4 K1 [typeof]
      118 CALL                             R4 1 1
      119 NAMECALL                         R2 R2 K4 ["format"]
      121 CALL                             R2 2 1
      122 RETURN                           R2 1
      123 GETTABLEKS                       R2 R0 K18 ["authenticationTicket"]
      125 JUMPIFNOT                        R2 ; [+19]
      126 GETTABLEKS                       R3 R0 K18 ["authenticationTicket"]
      128 FASTCALL1                        TYPEOF R3 ; [+2]
      129 GETIMPORT                        R2 K1 [typeof]
      131 CALL                             R2 1 1
      132 JUMPIFEQKS                       R2 K6 ["string"] ; [+12]
      134 LOADK                            R2 K19 ["\"authenticationTicket\" > Expected string, got %*"]
      135 GETTABLEKS                       R5 R0 K18 ["authenticationTicket"]
      137 FASTCALL1                        TYPEOF R5 ; [+2]
      138 GETIMPORT                        R4 K1 [typeof]
      140 CALL                             R4 1 1
      141 NAMECALL                         R2 R2 K4 ["format"]
      143 CALL                             R2 2 1
      144 RETURN                           R2 1
      145 GETTABLEKS                       R2 R0 K20 ["message"]
      147 JUMPIFNOT                        R2 ; [+19]
      148 GETTABLEKS                       R3 R0 K20 ["message"]
      150 FASTCALL1                        TYPEOF R3 ; [+2]
      151 GETIMPORT                        R2 K1 [typeof]
      153 CALL                             R2 1 1
      154 JUMPIFEQKS                       R2 K6 ["string"] ; [+12]
      156 LOADK                            R2 K21 ["\"message\" > Expected string, got %*"]
      157 GETTABLEKS                       R5 R0 K20 ["message"]
      159 FASTCALL1                        TYPEOF R5 ; [+2]
      160 GETIMPORT                        R4 K1 [typeof]
      162 CALL                             R4 1 1
      163 NAMECALL                         R2 R2 K4 ["format"]
      165 CALL                             R2 2 1
      166 RETURN                           R2 1
      167 GETTABLEKS                       R3 R0 K22 ["joinScript"]
      169 JUMPIFNOT                        R3 ; [+7]
      170 GETUPVAL                         R2 1
      171 GETTABLEKS                       R2 R2 K12 ["validate"]
      173 GETTABLEKS                       R3 R0 K22 ["joinScript"]
      175 CALL                             R2 1 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R2
      178 JUMPIFNOT                        R2 ; [+6]
      179 LOADK                            R3 K23 ["\"joinScript\" > %*"]
      180 MOVE                             R5 R2
      181 NAMECALL                         R3 R3 K4 ["format"]
      183 CALL                             R3 2 1
      184 RETURN                           R3 1
      185 GETTABLEKS                       R3 R0 K24 ["queuePosition"]
      187 JUMPIFNOT                        R3 ; [+19]
      188 GETTABLEKS                       R4 R0 K24 ["queuePosition"]
      190 FASTCALL1                        TYPEOF R4 ; [+2]
      191 GETIMPORT                        R3 K1 [typeof]
      193 CALL                             R3 1 1
      194 JUMPIFEQKS                       R3 K9 ["number"] ; [+12]
      196 LOADK                            R3 K25 ["\"queuePosition\" > Expected number, got %*"]
      197 GETTABLEKS                       R6 R0 K24 ["queuePosition"]
      199 FASTCALL1                        TYPEOF R6 ; [+2]
      200 GETIMPORT                        R5 K1 [typeof]
      202 CALL                             R5 1 1
      203 NAMECALL                         R3 R3 K4 ["format"]
      205 CALL                             R3 2 1
      206 RETURN                           R3 1
      207 LOADNIL                          R3
      208 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Models"]
       11 GETTABLEKS                       R2 R2 K7 ["StatusData"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Models"]
       18 GETTABLEKS                       R3 R3 K8 ["JoinInformation"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 GETIMPORT                        R4 K12 [table.freeze]
       26 DUPTABLE                         R5 K14 [{"validate"}]
       27 SETTABLEKS                       R3 R5 K13 ["validate"]
       29 CALL                             R4 1 -1
       30 RETURN                           R4 -1
