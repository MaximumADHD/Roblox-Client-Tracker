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
       24 GETTABLEKS                       R3 R0 K7 ["threadId"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["threadId"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"threadId\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["threadId"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["createdUtc"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["createdUtc"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K11 ["number"] ; [+18]
       65 LOADK                            R5 K12 ["%*\"createdUtc\" > Expected number, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["createdUtc"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K13 ["updatedUtc"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K13 ["updatedUtc"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K11 ["number"] ; [+18]
       94 LOADK                            R5 K14 ["%*\"updatedUtc\" > Expected number, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K13 ["updatedUtc"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K15 ["isDeleted"]
      113 JUMPIFEQKNIL                     R3 ; [+26]
      115 GETTABLEKS                       R4 R0 K15 ["isDeleted"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K16 ["boolean"] ; [+18]
      123 LOADK                            R5 K17 ["%*\"isDeleted\" > Expected boolean, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K15 ["isDeleted"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K18 ["title"]
      142 JUMPIFEQKNIL                     R3 ; [+26]
      144 GETTABLEKS                       R4 R0 K18 ["title"]
      146 FASTCALL1                        TYPEOF R4 ; [+2]
      147 GETIMPORT                        R3 K1 [typeof]
      149 CALL                             R3 1 1
      150 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      152 LOADK                            R5 K19 ["%*\"title\" > Expected string, got %*"]
      153 MOVE                             R7 R2
      154 GETTABLEKS                       R9 R0 K18 ["title"]
      156 FASTCALL1                        TYPEOF R9 ; [+2]
      157 GETIMPORT                        R8 K1 [typeof]
      159 CALL                             R8 1 1
      160 NAMECALL                         R5 R5 K4 ["format"]
      162 CALL                             R5 3 1
      163 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      165 MOVE                             R4 R1
      166 GETIMPORT                        R3 K6 [table.insert]
      168 CALL                             R3 2 0
      169 GETTABLEKS                       R3 R0 K20 ["metadata"]
      171 JUMPIFEQKNIL                     R3 ; [+26]
      173 GETTABLEKS                       R4 R0 K20 ["metadata"]
      175 FASTCALL1                        TYPEOF R4 ; [+2]
      176 GETIMPORT                        R3 K1 [typeof]
      178 CALL                             R3 1 1
      179 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      181 LOADK                            R5 K21 ["%*\"metadata\" > Expected string, got %*"]
      182 MOVE                             R7 R2
      183 GETTABLEKS                       R9 R0 K20 ["metadata"]
      185 FASTCALL1                        TYPEOF R9 ; [+2]
      186 GETIMPORT                        R8 K1 [typeof]
      188 CALL                             R8 1 1
      189 NAMECALL                         R5 R5 K4 ["format"]
      191 CALL                             R5 3 1
      192 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      194 MOVE                             R4 R1
      195 GETIMPORT                        R3 K6 [table.insert]
      197 CALL                             R3 2 0
      198 GETTABLEKS                       R3 R0 K22 ["isPinned"]
      200 JUMPIFEQKNIL                     R3 ; [+26]
      202 GETTABLEKS                       R4 R0 K22 ["isPinned"]
      204 FASTCALL1                        TYPEOF R4 ; [+2]
      205 GETIMPORT                        R3 K1 [typeof]
      207 CALL                             R3 1 1
      208 JUMPIFEQKS                       R3 K16 ["boolean"] ; [+18]
      210 LOADK                            R5 K23 ["%*\"isPinned\" > Expected boolean, got %*"]
      211 MOVE                             R7 R2
      212 GETTABLEKS                       R9 R0 K22 ["isPinned"]
      214 FASTCALL1                        TYPEOF R9 ; [+2]
      215 GETIMPORT                        R8 K1 [typeof]
      217 CALL                             R8 1 1
      218 NAMECALL                         R5 R5 K4 ["format"]
      220 CALL                             R5 3 1
      221 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      223 MOVE                             R4 R1
      224 GETIMPORT                        R3 K6 [table.insert]
      226 CALL                             R3 2 0
      227 GETTABLEKS                       R3 R0 K24 ["lastActivityUtc"]
      229 JUMPIFEQKNIL                     R3 ; [+26]
      231 GETTABLEKS                       R4 R0 K24 ["lastActivityUtc"]
      233 FASTCALL1                        TYPEOF R4 ; [+2]
      234 GETIMPORT                        R3 K1 [typeof]
      236 CALL                             R3 1 1
      237 JUMPIFEQKS                       R3 K11 ["number"] ; [+18]
      239 LOADK                            R5 K25 ["%*\"lastActivityUtc\" > Expected number, got %*"]
      240 MOVE                             R7 R2
      241 GETTABLEKS                       R9 R0 K24 ["lastActivityUtc"]
      243 FASTCALL1                        TYPEOF R9 ; [+2]
      244 GETIMPORT                        R8 K1 [typeof]
      246 CALL                             R8 1 1
      247 NAMECALL                         R5 R5 K4 ["format"]
      249 CALL                             R5 3 1
      250 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      252 MOVE                             R4 R1
      253 GETIMPORT                        R3 K6 [table.insert]
      255 CALL                             R3 2 0
      256 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMcpAssistantStorageApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 DUPCLOSURE                       R4 K9 [PROTO_1]
       16 GETIMPORT                        R5 K12 [table.freeze]
       18 DUPTABLE                         R6 K15 [{"fromResponse", "toRequest"}]
       19 SETTABLEKS                       R3 R6 K13 ["fromResponse"]
       21 SETTABLEKS                       R4 R6 K14 ["toRequest"]
       23 CALL                             R5 1 1
       24 RETURN                           R5 1
