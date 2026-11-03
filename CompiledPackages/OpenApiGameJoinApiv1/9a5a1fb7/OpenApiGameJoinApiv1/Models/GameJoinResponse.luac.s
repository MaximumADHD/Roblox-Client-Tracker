PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETTABLEKS                       R3 R0 K7 ["jobId"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["jobId"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"jobId\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["jobId"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["status"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["status"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K11 ["number"] ; [+18]
       65 LOADK                            R5 K12 ["%*\"status\" > Expected number, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["status"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K13 ["statusData"]
       84 JUMPIFEQKNIL                     R3 ; [+15]
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K14 ["fromResponse"]
       89 GETTABLEKS                       R4 R0 K13 ["statusData"]
       91 MOVE                             R5 R1
       92 LOADK                            R6 K15 ["%*\"statusData\" > "]
       93 MOVE                             R8 R2
       94 NAMECALL                         R6 R6 K4 ["format"]
       96 CALL                             R6 2 1
       97 CALL                             R3 3 1
       98 SETTABLEKS                       R3 R0 K13 ["statusData"]
      100 GETTABLEKS                       R3 R0 K16 ["joinScriptUrl"]
      102 JUMPIFEQKNIL                     R3 ; [+26]
      104 GETTABLEKS                       R4 R0 K16 ["joinScriptUrl"]
      106 FASTCALL1                        TYPEOF R4 ; [+2]
      107 GETIMPORT                        R3 K1 [typeof]
      109 CALL                             R3 1 1
      110 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      112 LOADK                            R5 K17 ["%*\"joinScriptUrl\" > Expected string, got %*"]
      113 MOVE                             R7 R2
      114 GETTABLEKS                       R9 R0 K16 ["joinScriptUrl"]
      116 FASTCALL1                        TYPEOF R9 ; [+2]
      117 GETIMPORT                        R8 K1 [typeof]
      119 CALL                             R8 1 1
      120 NAMECALL                         R5 R5 K4 ["format"]
      122 CALL                             R5 3 1
      123 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      125 MOVE                             R4 R1
      126 GETIMPORT                        R3 K6 [table.insert]
      128 CALL                             R3 2 0
      129 GETTABLEKS                       R3 R0 K18 ["authenticationUrl"]
      131 JUMPIFEQKNIL                     R3 ; [+26]
      133 GETTABLEKS                       R4 R0 K18 ["authenticationUrl"]
      135 FASTCALL1                        TYPEOF R4 ; [+2]
      136 GETIMPORT                        R3 K1 [typeof]
      138 CALL                             R3 1 1
      139 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      141 LOADK                            R5 K19 ["%*\"authenticationUrl\" > Expected string, got %*"]
      142 MOVE                             R7 R2
      143 GETTABLEKS                       R9 R0 K18 ["authenticationUrl"]
      145 FASTCALL1                        TYPEOF R9 ; [+2]
      146 GETIMPORT                        R8 K1 [typeof]
      148 CALL                             R8 1 1
      149 NAMECALL                         R5 R5 K4 ["format"]
      151 CALL                             R5 3 1
      152 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      154 MOVE                             R4 R1
      155 GETIMPORT                        R3 K6 [table.insert]
      157 CALL                             R3 2 0
      158 GETTABLEKS                       R3 R0 K20 ["authenticationTicket"]
      160 JUMPIFEQKNIL                     R3 ; [+26]
      162 GETTABLEKS                       R4 R0 K20 ["authenticationTicket"]
      164 FASTCALL1                        TYPEOF R4 ; [+2]
      165 GETIMPORT                        R3 K1 [typeof]
      167 CALL                             R3 1 1
      168 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      170 LOADK                            R5 K21 ["%*\"authenticationTicket\" > Expected string, got %*"]
      171 MOVE                             R7 R2
      172 GETTABLEKS                       R9 R0 K20 ["authenticationTicket"]
      174 FASTCALL1                        TYPEOF R9 ; [+2]
      175 GETIMPORT                        R8 K1 [typeof]
      177 CALL                             R8 1 1
      178 NAMECALL                         R5 R5 K4 ["format"]
      180 CALL                             R5 3 1
      181 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      183 MOVE                             R4 R1
      184 GETIMPORT                        R3 K6 [table.insert]
      186 CALL                             R3 2 0
      187 GETTABLEKS                       R3 R0 K22 ["message"]
      189 JUMPIFEQKNIL                     R3 ; [+26]
      191 GETTABLEKS                       R4 R0 K22 ["message"]
      193 FASTCALL1                        TYPEOF R4 ; [+2]
      194 GETIMPORT                        R3 K1 [typeof]
      196 CALL                             R3 1 1
      197 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      199 LOADK                            R5 K23 ["%*\"message\" > Expected string, got %*"]
      200 MOVE                             R7 R2
      201 GETTABLEKS                       R9 R0 K22 ["message"]
      203 FASTCALL1                        TYPEOF R9 ; [+2]
      204 GETIMPORT                        R8 K1 [typeof]
      206 CALL                             R8 1 1
      207 NAMECALL                         R5 R5 K4 ["format"]
      209 CALL                             R5 3 1
      210 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      212 MOVE                             R4 R1
      213 GETIMPORT                        R3 K6 [table.insert]
      215 CALL                             R3 2 0
      216 GETTABLEKS                       R3 R0 K24 ["joinScript"]
      218 JUMPIFEQKNIL                     R3 ; [+15]
      220 GETUPVAL                         R3 1
      221 GETTABLEKS                       R3 R3 K14 ["fromResponse"]
      223 GETTABLEKS                       R4 R0 K24 ["joinScript"]
      225 MOVE                             R5 R1
      226 LOADK                            R6 K25 ["%*\"joinScript\" > "]
      227 MOVE                             R8 R2
      228 NAMECALL                         R6 R6 K4 ["format"]
      230 CALL                             R6 2 1
      231 CALL                             R3 3 1
      232 SETTABLEKS                       R3 R0 K24 ["joinScript"]
      234 GETTABLEKS                       R3 R0 K26 ["joinTicket"]
      236 JUMPIFEQKNIL                     R3 ; [+15]
      238 GETUPVAL                         R3 2
      239 GETTABLEKS                       R3 R3 K14 ["fromResponse"]
      241 GETTABLEKS                       R4 R0 K26 ["joinTicket"]
      243 MOVE                             R5 R1
      244 LOADK                            R6 K27 ["%*\"joinTicket\" > "]
      245 MOVE                             R8 R2
      246 NAMECALL                         R6 R6 K4 ["format"]
      248 CALL                             R6 2 1
      249 CALL                             R3 3 1
      250 SETTABLEKS                       R3 R0 K26 ["joinTicket"]
      252 GETTABLEKS                       R3 R0 K28 ["queuePosition"]
      254 JUMPIFEQKNIL                     R3 ; [+26]
      256 GETTABLEKS                       R4 R0 K28 ["queuePosition"]
      258 FASTCALL1                        TYPEOF R4 ; [+2]
      259 GETIMPORT                        R3 K1 [typeof]
      261 CALL                             R3 1 1
      262 JUMPIFEQKS                       R3 K11 ["number"] ; [+18]
      264 LOADK                            R5 K29 ["%*\"queuePosition\" > Expected number, got %*"]
      265 MOVE                             R7 R2
      266 GETTABLEKS                       R9 R0 K28 ["queuePosition"]
      268 FASTCALL1                        TYPEOF R9 ; [+2]
      269 GETIMPORT                        R8 K1 [typeof]
      271 CALL                             R8 1 1
      272 NAMECALL                         R5 R5 K4 ["format"]
      274 CALL                             R5 3 1
      275 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      277 MOVE                             R4 R1
      278 GETIMPORT                        R3 K6 [table.insert]
      280 CALL                             R3 2 0
      281 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["statusData"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       11 GETTABLEKS                       R3 R1 K3 ["statusData"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K3 ["statusData"]
       16 GETTABLEKS                       R2 R1 K5 ["joinScript"]
       18 JUMPIFEQKNIL                     R2 ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       23 GETTABLEKS                       R3 R1 K5 ["joinScript"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K5 ["joinScript"]
       28 GETTABLEKS                       R2 R1 K6 ["joinTicket"]
       30 JUMPIFEQKNIL                     R2 ; [+9]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K4 ["toRequest"]
       35 GETTABLEKS                       R3 R1 K6 ["joinTicket"]
       37 CALL                             R2 1 1
       38 SETTABLEKS                       R2 R1 K6 ["joinTicket"]
       40 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["JoinInformation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["JoinTicket"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Models"]
       32 GETTABLEKS                       R6 R6 K11 ["StatusData"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 GETIMPORT                        R8 K16 [table.freeze]
       45 DUPTABLE                         R9 K19 [{"fromResponse", "toRequest"}]
       46 SETTABLEKS                       R6 R9 K17 ["fromResponse"]
       48 SETTABLEKS                       R7 R9 K18 ["toRequest"]
       50 CALL                             R8 1 1
       51 RETURN                           R8 1
