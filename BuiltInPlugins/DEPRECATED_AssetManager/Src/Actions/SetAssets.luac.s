PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["SetAssets requires a table, not %s"]
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K1 [type]
       16 CALL                             R6 1 1
       17 CALL                             R4 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R2 K8 [assert]
       21 CALL                             R2 -1 0
       22 GETTABLEKS                       R2 R0 K9 ["assets"]
       24 GETTABLEKS                       R3 R0 K10 ["nextPageCursor"]
       26 GETTABLEKS                       R4 R0 K11 ["previousPageCursor"]
       28 GETTABLEKS                       R5 R0 K12 ["pageNumber"]
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R9 R2
       32 GETIMPORT                        R8 K1 [type]
       34 CALL                             R8 1 1
       35 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 GETIMPORT                        R8 K5 [string.format]
       41 LOADK                            R9 K13 ["SetAssets requires a places table, not %s"]
       42 FASTCALL1                        TYPE R2 ; [+3]
       43 MOVE                             R11 R2
       44 GETIMPORT                        R10 K1 [type]
       46 CALL                             R10 1 1
       47 CALL                             R8 2 -1
       48 FASTCALL                         ASSERT ; [+2]
       49 GETIMPORT                        R6 K8 [assert]
       51 CALL                             R6 -1 0
       52 JUMPIFNOT                        R3 ; [+22]
       53 FASTCALL1                        TYPE R3 ; [+3]
       54 MOVE                             R9 R3
       55 GETIMPORT                        R8 K1 [type]
       57 CALL                             R8 1 1
       58 JUMPIFEQKS                       R8 K3 ["string"] ; [+2]
       60 LOADB                            R7 0 +1
       61 LOADB                            R7 1
       62 GETIMPORT                        R8 K5 [string.format]
       64 LOADK                            R9 K14 ["SetAssets requires a string, not %s"]
       65 FASTCALL1                        TYPE R3 ; [+3]
       66 MOVE                             R11 R3
       67 GETIMPORT                        R10 K1 [type]
       69 CALL                             R10 1 1
       70 CALL                             R8 2 -1
       71 FASTCALL                         ASSERT ; [+2]
       72 GETIMPORT                        R6 K8 [assert]
       74 CALL                             R6 -1 0
       75 JUMPIFNOT                        R4 ; [+22]
       76 FASTCALL1                        TYPE R4 ; [+3]
       77 MOVE                             R9 R4
       78 GETIMPORT                        R8 K1 [type]
       80 CALL                             R8 1 1
       81 JUMPIFEQKS                       R8 K3 ["string"] ; [+2]
       83 LOADB                            R7 0 +1
       84 LOADB                            R7 1
       85 GETIMPORT                        R8 K5 [string.format]
       87 LOADK                            R9 K14 ["SetAssets requires a string, not %s"]
       88 FASTCALL1                        TYPE R4 ; [+3]
       89 MOVE                             R11 R4
       90 GETIMPORT                        R10 K1 [type]
       92 CALL                             R10 1 1
       93 CALL                             R8 2 -1
       94 FASTCALL                         ASSERT ; [+2]
       95 GETIMPORT                        R6 K8 [assert]
       97 CALL                             R6 -1 0
       98 JUMPIFNOT                        R5 ; [+22]
       99 FASTCALL1                        TYPE R5 ; [+3]
      100 MOVE                             R9 R5
      101 GETIMPORT                        R8 K1 [type]
      103 CALL                             R8 1 1
      104 JUMPIFEQKS                       R8 K15 ["number"] ; [+2]
      106 LOADB                            R7 0 +1
      107 LOADB                            R7 1
      108 GETIMPORT                        R8 K5 [string.format]
      110 LOADK                            R9 K16 ["SetAssets requires a number, not %s"]
      111 FASTCALL1                        TYPE R5 ; [+3]
      112 MOVE                             R11 R5
      113 GETIMPORT                        R10 K1 [type]
      115 CALL                             R10 1 1
      116 CALL                             R8 2 -1
      117 FASTCALL                         ASSERT ; [+2]
      118 GETIMPORT                        R6 K8 [assert]
      120 CALL                             R6 -1 0
      121 JUMPIFNOT                        R1 ; [+22]
      122 FASTCALL1                        TYPE R1 ; [+3]
      123 MOVE                             R9 R1
      124 GETIMPORT                        R8 K1 [type]
      126 CALL                             R8 1 1
      127 JUMPIFEQKS                       R8 K15 ["number"] ; [+2]
      129 LOADB                            R7 0 +1
      130 LOADB                            R7 1
      131 GETIMPORT                        R8 K5 [string.format]
      133 LOADK                            R9 K17 ["SetAssets requires index to be a number, not %s"]
      134 FASTCALL1                        TYPE R1 ; [+3]
      135 MOVE                             R11 R1
      136 GETIMPORT                        R10 K1 [type]
      138 CALL                             R10 1 1
      139 CALL                             R8 2 -1
      140 FASTCALL                         ASSERT ; [+2]
      141 GETIMPORT                        R6 K8 [assert]
      143 CALL                             R6 -1 0
      144 DUPTABLE                         R6 K19 [{"assetsTable"}]
      145 DUPTABLE                         R7 K21 [{"assets", "nextPageCursor", "previousPageCursor", "pageNumber", "index"}]
      146 SETTABLEKS                       R2 R7 K9 ["assets"]
      148 MOVE                             R8 R3
      149 JUMPIF                           R8 ; [+3]
      150 GETUPVAL                         R9 0
      151 GETTABLEKS                       R8 R9 K22 ["None"]
      153 SETTABLEKS                       R8 R7 K10 ["nextPageCursor"]
      155 MOVE                             R8 R4
      156 JUMPIF                           R8 ; [+3]
      157 GETUPVAL                         R9 0
      158 GETTABLEKS                       R8 R9 K22 ["None"]
      160 SETTABLEKS                       R8 R7 K11 ["previousPageCursor"]
      162 MOVE                             R8 R5
      163 JUMPIF                           R8 ; [+3]
      164 GETUPVAL                         R9 0
      165 GETTABLEKS                       R8 R9 K22 ["None"]
      167 SETTABLEKS                       R8 R7 K12 ["pageNumber"]
      169 JUMPIFEQKNIL                     R1 ; [+3]
      171 MOVE                             R8 R1
      172 JUMPIF                           R8 ; [+1]
      173 LOADNIL                          R8
      174 SETTABLEKS                       R8 R7 K20 ["index"]
      176 SETTABLEKS                       R7 R6 K18 ["assetsTable"]
      178 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R6 R0 K5 ["Packages"]
       20 GETTABLEKS                       R5 R6 K7 ["Framework"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R3 R4 K8 ["Util"]
       25 GETTABLEKS                       R2 R3 K9 ["Action"]
       27 MOVE                             R3 R2
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R4 R5 K10 ["Name"]
       32 DUPCLOSURE                       R5 K11 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1
