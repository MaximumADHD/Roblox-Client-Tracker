PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected table, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETTABLEKS                       R3 R0 K7 ["type"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["type"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"type\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["type"]
       41 FASTCALL1                        TYPEOF R10 ; [+2]
       42 GETIMPORT                        R9 K1 [typeof]
       44 CALL                             R9 1 1
       45 NAMECALL                         R6 R6 K4 ["format"]
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K6 [table.insert]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R4 R0 K10 ["name"]
       57 FASTCALL1                        TYPEOF R4 ; [+2]
       58 GETIMPORT                        R3 K1 [typeof]
       60 CALL                             R3 1 1
       61 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       63 LOADK                            R6 K11 ["%*\"name\" > Expected string, got %*"]
       64 MOVE                             R8 R2
       65 GETTABLEKS                       R10 R0 K10 ["name"]
       67 FASTCALL1                        TYPEOF R10 ; [+2]
       68 GETIMPORT                        R9 K1 [typeof]
       70 CALL                             R9 1 1
       71 NAMECALL                         R6 R6 K4 ["format"]
       73 CALL                             R6 3 1
       74 MOVE                             R5 R6
       75 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       77 MOVE                             R4 R1
       78 GETIMPORT                        R3 K6 [table.insert]
       80 CALL                             R3 2 0
       81 GETTABLEKS                       R4 R0 K12 ["id"]
       83 FASTCALL1                        TYPEOF R4 ; [+2]
       84 GETIMPORT                        R3 K1 [typeof]
       86 CALL                             R3 1 1
       87 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       89 LOADK                            R6 K13 ["%*\"id\" > Expected string, got %*"]
       90 MOVE                             R8 R2
       91 GETTABLEKS                       R10 R0 K12 ["id"]
       93 FASTCALL1                        TYPEOF R10 ; [+2]
       94 GETIMPORT                        R9 K1 [typeof]
       96 CALL                             R9 1 1
       97 NAMECALL                         R6 R6 K4 ["format"]
       99 CALL                             R6 3 1
      100 MOVE                             R5 R6
      101 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      103 MOVE                             R4 R1
      104 GETIMPORT                        R3 K6 [table.insert]
      106 CALL                             R3 2 0
      107 GETTABLEKS                       R3 R0 K14 ["isError"]
      109 JUMPIFEQKNIL                     R3 ; [+15]
      111 GETIMPORT                        R3 K17 [boolean.fromResponse]
      113 GETTABLEKS                       R4 R0 K14 ["isError"]
      115 MOVE                             R5 R1
      116 LOADK                            R7 K18 ["%*\"isError\" > "]
      117 MOVE                             R9 R2
      118 NAMECALL                         R7 R7 K4 ["format"]
      120 CALL                             R7 2 1
      121 MOVE                             R6 R7
      122 CALL                             R3 3 1
      123 SETTABLEKS                       R3 R0 K14 ["isError"]
      125 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["isError"]
        6 JUMPIFEQKNIL                     R2 ; [+8]
        8 GETIMPORT                        R2 K6 [boolean.toRequest]
       10 GETTABLEKS                       R3 R1 K3 ["isError"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["isError"]
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["McpAssistantApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 DUPCLOSURE                       R5 K10 [PROTO_1]
       20 GETIMPORT                        R6 K13 [table.freeze]
       22 DUPTABLE                         R7 K16 [{"fromResponse", "toRequest"}]
       23 SETTABLEKS                       R4 R7 K14 ["fromResponse"]
       25 SETTABLEKS                       R5 R7 K15 ["toRequest"]
       27 CALL                             R6 1 1
       28 RETURN                           R6 1
