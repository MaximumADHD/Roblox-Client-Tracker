PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["pretty"]
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K5 [{["depth"] = ∞, ["multiline"] = True}]
        8 CALL                             R1 2 1
        9 LOADK                            R3 K6 ["HttpResponse = %*"]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R3 K7 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 RETURN                           R2 1
       16 NEWTABLE                         R1 0 0
       18 GETIMPORT                        R2 K9 [pairs]
       20 GETTABLEKS                       R3 R0 K10 ["requestOptions"]
       22 CALL                             R2 1 3
       23 FORGPREP_NEXT                    R2
       24 MOVE                             R8 R1
       25 GETIMPORT                        R9 K12 [string.format]
       27 LOADK                            R10 K13 ["%s : %s"]
       28 MOVE                             R11 R5
       29 FASTCALL1                        TOSTRING R6 ; [+3]
       30 MOVE                             R13 R6
       31 GETIMPORT                        R12 K15 [tostring]
       33 CALL                             R12 1 1
       34 CALL                             R9 3 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R7 K18 [table.insert]
       38 CALL                             R7 -1 0
       39 FORGLOOP                         R2 2 ; [-16]
       41 GETTABLEKS                       R2 R0 K19 ["responseBody"]
       43 FASTCALL1                        TYPE R2 ; [+3]
       44 MOVE                             R4 R2
       45 GETIMPORT                        R3 K21 [type]
       47 CALL                             R3 1 1
       48 JUMPIFNOTEQKS                    R3 K16 ["table"] ; [+35]
       50 NEWTABLE                         R3 0 0
       52 GETIMPORT                        R4 K9 [pairs]
       54 MOVE                             R5 R2
       55 CALL                             R4 1 3
       56 FORGPREP_NEXT                    R4
       57 MOVE                             R10 R3
       58 GETIMPORT                        R11 K12 [string.format]
       60 LOADK                            R12 K13 ["%s : %s"]
       61 MOVE                             R13 R7
       62 FASTCALL1                        TOSTRING R8 ; [+3]
       63 MOVE                             R15 R8
       64 GETIMPORT                        R14 K15 [tostring]
       66 CALL                             R14 1 1
       67 CALL                             R11 3 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R9 K18 [table.insert]
       71 CALL                             R9 -1 0
       72 FORGLOOP                         R4 2 ; [-16]
       74 GETIMPORT                        R4 K12 [string.format]
       76 LOADK                            R5 K22 ["{ %s }"]
       77 GETIMPORT                        R6 K24 [table.concat]
       79 MOVE                             R7 R3
       80 LOADK                            R8 K25 [", "]
       81 CALL                             R6 2 -1
       82 CALL                             R4 -1 1
       83 MOVE                             R2 R4
       84 NEWTABLE                         R3 0 0
       86 MOVE                             R5 R3
       87 GETIMPORT                        R6 K12 [string.format]
       89 LOADK                            R7 K13 ["%s : %s"]
       90 LOADK                            R8 K26 ["responseTimeMs"]
       91 GETTABLEKS                       R9 R0 K26 ["responseTimeMs"]
       93 CALL                             R6 3 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R4 K18 [table.insert]
       97 CALL                             R4 -1 0
       98 MOVE                             R5 R3
       99 GETIMPORT                        R6 K12 [string.format]
      101 LOADK                            R7 K13 ["%s : %s"]
      102 LOADK                            R8 K27 ["responseCode"]
      103 GETTABLEKS                       R9 R0 K27 ["responseCode"]
      105 CALL                             R6 3 -1
      106 FASTCALL                         TABLE_INSERT ; [+2]
      107 GETIMPORT                        R4 K18 [table.insert]
      109 CALL                             R4 -1 0
      110 MOVE                             R5 R3
      111 GETIMPORT                        R6 K12 [string.format]
      113 LOADK                            R7 K13 ["%s : %s"]
      114 LOADK                            R8 K19 ["responseBody"]
      115 MOVE                             R9 R2
      116 CALL                             R6 3 -1
      117 FASTCALL                         TABLE_INSERT ; [+2]
      118 GETIMPORT                        R4 K18 [table.insert]
      120 CALL                             R4 -1 0
      121 MOVE                             R5 R3
      122 GETIMPORT                        R6 K12 [string.format]
      124 LOADK                            R7 K28 ["%s : { %s }"]
      125 LOADK                            R8 K10 ["requestOptions"]
      126 GETIMPORT                        R9 K24 [table.concat]
      128 MOVE                             R10 R1
      129 LOADK                            R11 K25 [", "]
      130 CALL                             R9 2 -1
      131 CALL                             R6 -1 -1
      132 FASTCALL                         TABLE_INSERT ; [+2]
      133 GETIMPORT                        R4 K18 [table.insert]
      135 CALL                             R4 -1 0
      136 GETIMPORT                        R4 K12 [string.format]
      138 LOADK                            R5 K29 ["HttpResponse = { %s }"]
      139 GETIMPORT                        R6 K24 [table.concat]
      141 MOVE                             R7 R3
      142 LOADK                            R8 K25 [", "]
      143 CALL                             R6 2 -1
      144 CALL                             R4 -1 -1
      145 RETURN                           R4 -1

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
