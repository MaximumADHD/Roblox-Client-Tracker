PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+19]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["pretty"]
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K3 [{"depth", "multiline"}]
        8 LOADK                            R4 K4 [∞]
        9 SETTABLEKS                       R4 R3 K1 ["depth"]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K2 ["multiline"]
       14 CALL                             R1 2 1
       15 LOADK                            R3 K5 ["HttpResponse = %*"]
       16 MOVE                             R5 R1
       17 NAMECALL                         R3 R3 K6 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 RETURN                           R2 1
       22 NEWTABLE                         R1 0 0
       24 GETIMPORT                        R2 K8 [pairs]
       26 GETTABLEKS                       R3 R0 K9 ["requestOptions"]
       28 CALL                             R2 1 3
       29 FORGPREP_NEXT                    R2
       30 MOVE                             R8 R1
       31 GETIMPORT                        R9 K11 [string.format]
       33 LOADK                            R10 K12 ["%s : %s"]
       34 MOVE                             R11 R5
       35 FASTCALL1                        TOSTRING R6 ; [+3]
       36 MOVE                             R13 R6
       37 GETIMPORT                        R12 K14 [tostring]
       39 CALL                             R12 1 1
       40 CALL                             R9 3 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R7 K17 [table.insert]
       44 CALL                             R7 -1 0
       45 FORGLOOP                         R2 2 ; [-16]
       47 GETTABLEKS                       R2 R0 K18 ["responseBody"]
       49 FASTCALL1                        TYPE R2 ; [+3]
       50 MOVE                             R4 R2
       51 GETIMPORT                        R3 K20 [type]
       53 CALL                             R3 1 1
       54 JUMPIFNOTEQKS                    R3 K15 ["table"] ; [+35]
       56 NEWTABLE                         R3 0 0
       58 GETIMPORT                        R4 K8 [pairs]
       60 MOVE                             R5 R2
       61 CALL                             R4 1 3
       62 FORGPREP_NEXT                    R4
       63 MOVE                             R10 R3
       64 GETIMPORT                        R11 K11 [string.format]
       66 LOADK                            R12 K12 ["%s : %s"]
       67 MOVE                             R13 R7
       68 FASTCALL1                        TOSTRING R8 ; [+3]
       69 MOVE                             R15 R8
       70 GETIMPORT                        R14 K14 [tostring]
       72 CALL                             R14 1 1
       73 CALL                             R11 3 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R9 K17 [table.insert]
       77 CALL                             R9 -1 0
       78 FORGLOOP                         R4 2 ; [-16]
       80 GETIMPORT                        R4 K11 [string.format]
       82 LOADK                            R5 K21 ["{ %s }"]
       83 GETIMPORT                        R6 K23 [table.concat]
       85 MOVE                             R7 R3
       86 LOADK                            R8 K24 [", "]
       87 CALL                             R6 2 -1
       88 CALL                             R4 -1 1
       89 MOVE                             R2 R4
       90 NEWTABLE                         R3 0 0
       92 MOVE                             R5 R3
       93 GETIMPORT                        R6 K11 [string.format]
       95 LOADK                            R7 K12 ["%s : %s"]
       96 LOADK                            R8 K25 ["responseTimeMs"]
       97 GETTABLEKS                       R9 R0 K25 ["responseTimeMs"]
       99 CALL                             R6 3 -1
      100 FASTCALL                         TABLE_INSERT ; [+2]
      101 GETIMPORT                        R4 K17 [table.insert]
      103 CALL                             R4 -1 0
      104 MOVE                             R5 R3
      105 GETIMPORT                        R6 K11 [string.format]
      107 LOADK                            R7 K12 ["%s : %s"]
      108 LOADK                            R8 K26 ["responseCode"]
      109 GETTABLEKS                       R9 R0 K26 ["responseCode"]
      111 CALL                             R6 3 -1
      112 FASTCALL                         TABLE_INSERT ; [+2]
      113 GETIMPORT                        R4 K17 [table.insert]
      115 CALL                             R4 -1 0
      116 MOVE                             R5 R3
      117 GETIMPORT                        R6 K11 [string.format]
      119 LOADK                            R7 K12 ["%s : %s"]
      120 LOADK                            R8 K18 ["responseBody"]
      121 MOVE                             R9 R2
      122 CALL                             R6 3 -1
      123 FASTCALL                         TABLE_INSERT ; [+2]
      124 GETIMPORT                        R4 K17 [table.insert]
      126 CALL                             R4 -1 0
      127 MOVE                             R5 R3
      128 GETIMPORT                        R6 K11 [string.format]
      130 LOADK                            R7 K27 ["%s : { %s }"]
      131 LOADK                            R8 K9 ["requestOptions"]
      132 GETIMPORT                        R9 K23 [table.concat]
      134 MOVE                             R10 R1
      135 LOADK                            R11 K24 [", "]
      136 CALL                             R9 2 -1
      137 CALL                             R6 -1 -1
      138 FASTCALL                         TABLE_INSERT ; [+2]
      139 GETIMPORT                        R4 K17 [table.insert]
      141 CALL                             R4 -1 0
      142 GETIMPORT                        R4 K11 [string.format]
      144 LOADK                            R5 K28 ["HttpResponse = { %s }"]
      145 GETIMPORT                        R6 K23 [table.concat]
      147 MOVE                             R7 R3
      148 LOADK                            R8 K24 [", "]
      149 CALL                             R6 2 -1
      150 CALL                             R4 -1 -1
      151 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R4 K4 [{"responseTimeMs", "responseCode", "responseBody", "requestOptions"}]
        1 SETTABLEKS                       R1 R4 K0 ["responseTimeMs"]
        3 SETTABLEKS                       R2 R4 K1 ["responseCode"]
        5 SETTABLEKS                       R0 R4 K2 ["responseBody"]
        7 SETTABLEKS                       R3 R4 K3 ["requestOptions"]
        9 GETUPVAL                         R7 0
       10 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       12 MOVE                             R6 R4
       13 GETIMPORT                        R5 K6 [setmetatable]
       15 CALL                             R5 2 0
       16 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Http"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["SharedFlags"]
       20 GETTABLEKS                       R3 R3 K9 ["getFFlagDevFrameworkNetworkingBetterErrors"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R4 R3 K11 ["__tostring"]
       30 DUPCLOSURE                       R4 K12 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R4 R3 K13 ["new"]
       34 RETURN                           R3 1
