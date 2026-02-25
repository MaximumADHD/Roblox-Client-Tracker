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
       18 GETTABLEKS                       R1 R0 K5 ["id"]
       20 JUMPIFNOT                        R1 ; [+20]
       21 GETTABLEKS                       R2 R0 K5 ["id"]
       23 FASTCALL1                        TYPEOF R2 ; [+2]
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       29 LOADK                            R2 K7 ["\"id\" > Expected number, got %*"]
       30 GETTABLEKS                       R5 R0 K5 ["id"]
       32 FASTCALL1                        TYPEOF R5 ; [+2]
       33 GETIMPORT                        R4 K1 [typeof]
       35 CALL                             R4 1 1
       36 NAMECALL                         R2 R2 K4 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 GETTABLEKS                       R1 R0 K8 ["name"]
       43 JUMPIFNOT                        R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["name"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
       52 LOADK                            R2 K10 ["\"name\" > Expected string, got %*"]
       53 GETTABLEKS                       R5 R0 K8 ["name"]
       55 FASTCALL1                        TYPEOF R5 ; [+2]
       56 GETIMPORT                        R4 K1 [typeof]
       58 CALL                             R4 1 1
       59 NAMECALL                         R2 R2 K4 ["format"]
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 RETURN                           R1 1
       64 GETTABLEKS                       R1 R0 K11 ["description"]
       66 JUMPIFNOT                        R1 ; [+20]
       67 GETTABLEKS                       R2 R0 K11 ["description"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K9 ["string"] ; [+13]
       75 LOADK                            R2 K12 ["\"description\" > Expected string, got %*"]
       76 GETTABLEKS                       R5 R0 K11 ["description"]
       78 FASTCALL1                        TYPEOF R5 ; [+2]
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 NAMECALL                         R2 R2 K4 ["format"]
       84 CALL                             R2 2 1
       85 MOVE                             R1 R2
       86 RETURN                           R1 1
       87 GETTABLEKS                       R1 R0 K13 ["rootPlaceId"]
       89 JUMPIFNOT                        R1 ; [+20]
       90 GETTABLEKS                       R2 R0 K13 ["rootPlaceId"]
       92 FASTCALL1                        TYPEOF R2 ; [+2]
       93 GETIMPORT                        R1 K1 [typeof]
       95 CALL                             R1 1 1
       96 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       98 LOADK                            R2 K14 ["\"rootPlaceId\" > Expected number, got %*"]
       99 GETTABLEKS                       R5 R0 K13 ["rootPlaceId"]
      101 FASTCALL1                        TYPEOF R5 ; [+2]
      102 GETIMPORT                        R4 K1 [typeof]
      104 CALL                             R4 1 1
      105 NAMECALL                         R2 R2 K4 ["format"]
      107 CALL                             R2 2 1
      108 MOVE                             R1 R2
      109 RETURN                           R1 1
      110 GETTABLEKS                       R1 R0 K15 ["privacyType"]
      112 JUMPIFNOT                        R1 ; [+18]
      113 FASTCALL1                        TYPEOF R1 ; [+3]
      114 MOVE                             R3 R1
      115 GETIMPORT                        R2 K1 [typeof]
      117 CALL                             R2 1 1
      118 JUMPIFEQKS                       R2 K9 ["string"] ; [+12]
      120 LOADK                            R3 K16 ["\"privacyType\" > Expected string, got %*"]
      121 FASTCALL1                        TYPEOF R1 ; [+3]
      122 MOVE                             R6 R1
      123 GETIMPORT                        R5 K1 [typeof]
      125 CALL                             R5 1 1
      126 NAMECALL                         R3 R3 K4 ["format"]
      128 CALL                             R3 2 1
      129 MOVE                             R2 R3
      130 RETURN                           R2 1
      131 GETTABLEKS                       R2 R0 K17 ["creatorTargetId"]
      133 JUMPIFNOT                        R2 ; [+20]
      134 GETTABLEKS                       R3 R0 K17 ["creatorTargetId"]
      136 FASTCALL1                        TYPEOF R3 ; [+2]
      137 GETIMPORT                        R2 K1 [typeof]
      139 CALL                             R2 1 1
      140 JUMPIFEQKS                       R2 K6 ["number"] ; [+13]
      142 LOADK                            R3 K18 ["\"creatorTargetId\" > Expected number, got %*"]
      143 GETTABLEKS                       R6 R0 K17 ["creatorTargetId"]
      145 FASTCALL1                        TYPEOF R6 ; [+2]
      146 GETIMPORT                        R5 K1 [typeof]
      148 CALL                             R5 1 1
      149 NAMECALL                         R3 R3 K4 ["format"]
      151 CALL                             R3 2 1
      152 MOVE                             R2 R3
      153 RETURN                           R2 1
      154 GETTABLEKS                       R2 R0 K19 ["creatorName"]
      156 JUMPIFNOT                        R2 ; [+20]
      157 GETTABLEKS                       R3 R0 K19 ["creatorName"]
      159 FASTCALL1                        TYPEOF R3 ; [+2]
      160 GETIMPORT                        R2 K1 [typeof]
      162 CALL                             R2 1 1
      163 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      165 LOADK                            R3 K20 ["\"creatorName\" > Expected string, got %*"]
      166 GETTABLEKS                       R6 R0 K19 ["creatorName"]
      168 FASTCALL1                        TYPEOF R6 ; [+2]
      169 GETIMPORT                        R5 K1 [typeof]
      171 CALL                             R5 1 1
      172 NAMECALL                         R3 R3 K4 ["format"]
      174 CALL                             R3 2 1
      175 MOVE                             R2 R3
      176 RETURN                           R2 1
      177 GETTABLEKS                       R2 R0 K21 ["created"]
      179 JUMPIFNOT                        R2 ; [+20]
      180 GETTABLEKS                       R3 R0 K21 ["created"]
      182 FASTCALL1                        TYPEOF R3 ; [+2]
      183 GETIMPORT                        R2 K1 [typeof]
      185 CALL                             R2 1 1
      186 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      188 LOADK                            R3 K22 ["\"created\" > Expected string, got %*"]
      189 GETTABLEKS                       R6 R0 K21 ["created"]
      191 FASTCALL1                        TYPEOF R6 ; [+2]
      192 GETIMPORT                        R5 K1 [typeof]
      194 CALL                             R5 1 1
      195 NAMECALL                         R3 R3 K4 ["format"]
      197 CALL                             R3 2 1
      198 MOVE                             R2 R3
      199 RETURN                           R2 1
      200 GETTABLEKS                       R2 R0 K23 ["updated"]
      202 JUMPIFNOT                        R2 ; [+20]
      203 GETTABLEKS                       R3 R0 K23 ["updated"]
      205 FASTCALL1                        TYPEOF R3 ; [+2]
      206 GETIMPORT                        R2 K1 [typeof]
      208 CALL                             R2 1 1
      209 JUMPIFEQKS                       R2 K9 ["string"] ; [+13]
      211 LOADK                            R3 K24 ["\"updated\" > Expected string, got %*"]
      212 GETTABLEKS                       R6 R0 K23 ["updated"]
      214 FASTCALL1                        TYPEOF R6 ; [+2]
      215 GETIMPORT                        R5 K1 [typeof]
      217 CALL                             R5 1 1
      218 NAMECALL                         R3 R3 K4 ["format"]
      220 CALL                             R3 2 1
      221 MOVE                             R2 R3
      222 RETURN                           R2 1
      223 LOADNIL                          R2
      224 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
