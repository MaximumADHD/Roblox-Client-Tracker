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
       18 GETTABLEKS                       R1 R0 K5 ["jobId"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["jobId"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["string"] ; [+13]
       29 LOADK                            R2 K7 ["\"jobId\" > Expected string, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["jobId"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K8 ["status"]
       43 JUMPIFNOT                        R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["status"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K9 ["number"] ; [+13]
       52 LOADK                            R2 K10 ["\"status\" > Expected number, got %*"]
       53 GETTABLEKS                       R5 R0 K8 ["status"]
       55 FASTCALL1                        TYPEOF R5 ; [+2]
       56 GETIMPORT                        R4 K1 [typeof]
       58 CALL                             R4 1 1
       59 NAMECALL                         R2 R2 K4 ["format"]
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 RETURN                           R1 1
       64 GETTABLEKS                       R2 R0 K11 ["statusData"]
       66 JUMPIFNOT                        R2 ; [+7]
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R1 R2 K12 ["validate"]
       70 GETTABLEKS                       R2 R0 K11 ["statusData"]
       72 CALL                             R1 1 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R1
       75 JUMPIFNOT                        R1 ; [+7]
       76 LOADK                            R3 K13 ["\"statusData\" > %*"]
       77 MOVE                             R5 R1
       78 NAMECALL                         R3 R3 K4 ["format"]
       80 CALL                             R3 2 1
       81 MOVE                             R2 R3
       82 RETURN                           R2 1
       83 GETTABLEKS                       R2 R0 K14 ["joinScriptUrl"]
       85 JUMPIFNOT                        R2 ; [+20]
       86 GETTABLEKS                       R3 R0 K14 ["joinScriptUrl"]
       88 FASTCALL1                        TYPEOF R3 ; [+2]
       89 GETIMPORT                        R2 K1 [typeof]
       91 CALL                             R2 1 1
       92 JUMPIFEQKS                       R2 K6 ["string"] ; [+13]
       94 LOADK                            R3 K15 ["\"joinScriptUrl\" > Expected string, got %*"]
       95 GETTABLEKS                       R6 R0 K14 ["joinScriptUrl"]
       97 FASTCALL1                        TYPEOF R6 ; [+2]
       98 GETIMPORT                        R5 K1 [typeof]
      100 CALL                             R5 1 1
      101 NAMECALL                         R3 R3 K4 ["format"]
      103 CALL                             R3 2 1
      104 MOVE                             R2 R3
      105 RETURN                           R2 1
      106 GETTABLEKS                       R2 R0 K16 ["authenticationUrl"]
      108 JUMPIFNOT                        R2 ; [+20]
      109 GETTABLEKS                       R3 R0 K16 ["authenticationUrl"]
      111 FASTCALL1                        TYPEOF R3 ; [+2]
      112 GETIMPORT                        R2 K1 [typeof]
      114 CALL                             R2 1 1
      115 JUMPIFEQKS                       R2 K6 ["string"] ; [+13]
      117 LOADK                            R3 K17 ["\"authenticationUrl\" > Expected string, got %*"]
      118 GETTABLEKS                       R6 R0 K16 ["authenticationUrl"]
      120 FASTCALL1                        TYPEOF R6 ; [+2]
      121 GETIMPORT                        R5 K1 [typeof]
      123 CALL                             R5 1 1
      124 NAMECALL                         R3 R3 K4 ["format"]
      126 CALL                             R3 2 1
      127 MOVE                             R2 R3
      128 RETURN                           R2 1
      129 GETTABLEKS                       R2 R0 K18 ["authenticationTicket"]
      131 JUMPIFNOT                        R2 ; [+20]
      132 GETTABLEKS                       R3 R0 K18 ["authenticationTicket"]
      134 FASTCALL1                        TYPEOF R3 ; [+2]
      135 GETIMPORT                        R2 K1 [typeof]
      137 CALL                             R2 1 1
      138 JUMPIFEQKS                       R2 K6 ["string"] ; [+13]
      140 LOADK                            R3 K19 ["\"authenticationTicket\" > Expected string, got %*"]
      141 GETTABLEKS                       R6 R0 K18 ["authenticationTicket"]
      143 FASTCALL1                        TYPEOF R6 ; [+2]
      144 GETIMPORT                        R5 K1 [typeof]
      146 CALL                             R5 1 1
      147 NAMECALL                         R3 R3 K4 ["format"]
      149 CALL                             R3 2 1
      150 MOVE                             R2 R3
      151 RETURN                           R2 1
      152 GETTABLEKS                       R2 R0 K20 ["message"]
      154 JUMPIFNOT                        R2 ; [+20]
      155 GETTABLEKS                       R3 R0 K20 ["message"]
      157 FASTCALL1                        TYPEOF R3 ; [+2]
      158 GETIMPORT                        R2 K1 [typeof]
      160 CALL                             R2 1 1
      161 JUMPIFEQKS                       R2 K6 ["string"] ; [+13]
      163 LOADK                            R3 K21 ["\"message\" > Expected string, got %*"]
      164 GETTABLEKS                       R6 R0 K20 ["message"]
      166 FASTCALL1                        TYPEOF R6 ; [+2]
      167 GETIMPORT                        R5 K1 [typeof]
      169 CALL                             R5 1 1
      170 NAMECALL                         R3 R3 K4 ["format"]
      172 CALL                             R3 2 1
      173 MOVE                             R2 R3
      174 RETURN                           R2 1
      175 GETTABLEKS                       R3 R0 K22 ["joinScript"]
      177 JUMPIFNOT                        R3 ; [+7]
      178 GETUPVAL                         R3 1
      179 GETTABLEKS                       R2 R3 K12 ["validate"]
      181 GETTABLEKS                       R3 R0 K22 ["joinScript"]
      183 CALL                             R2 1 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R2
      186 JUMPIFNOT                        R2 ; [+7]
      187 LOADK                            R4 K23 ["\"joinScript\" > %*"]
      188 MOVE                             R6 R2
      189 NAMECALL                         R4 R4 K4 ["format"]
      191 CALL                             R4 2 1
      192 MOVE                             R3 R4
      193 RETURN                           R3 1
      194 GETTABLEKS                       R3 R0 K24 ["queuePosition"]
      196 JUMPIFNOT                        R3 ; [+20]
      197 GETTABLEKS                       R4 R0 K24 ["queuePosition"]
      199 FASTCALL1                        TYPEOF R4 ; [+2]
      200 GETIMPORT                        R3 K1 [typeof]
      202 CALL                             R3 1 1
      203 JUMPIFEQKS                       R3 K9 ["number"] ; [+13]
      205 LOADK                            R4 K25 ["\"queuePosition\" > Expected number, got %*"]
      206 GETTABLEKS                       R7 R0 K24 ["queuePosition"]
      208 FASTCALL1                        TYPEOF R7 ; [+2]
      209 GETIMPORT                        R6 K1 [typeof]
      211 CALL                             R6 1 1
      212 NAMECALL                         R4 R4 K4 ["format"]
      214 CALL                             R4 2 1
      215 MOVE                             R3 R4
      216 RETURN                           R3 1
      217 LOADNIL                          R3
      218 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Models"]
       11 GETTABLEKS                       R2 R3 K7 ["StatusData"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Models"]
       18 GETTABLEKS                       R3 R4 K8 ["JoinInformation"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 GETIMPORT                        R4 K12 [table.freeze]
       26 DUPTABLE                         R5 K14 [{"validate"}]
       27 SETTABLEKS                       R3 R5 K13 ["validate"]
       29 CALL                             R4 1 -1
       30 RETURN                           R4 -1
