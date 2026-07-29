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
       41 GETTABLEKS                       R1 R0 K8 ["universeId"]
       43 JUMPIFNOT                        R1 ; [+20]
       44 GETTABLEKS                       R2 R0 K8 ["universeId"]
       46 FASTCALL1                        TYPEOF R2 ; [+2]
       47 GETIMPORT                        R1 K1 [typeof]
       49 CALL                             R1 1 1
       50 JUMPIFEQKS                       R1 K6 ["number"] ; [+13]
       52 LOADK                            R2 K9 ["\"universeId\" > Expected number, got %*"]
       53 GETTABLEKS                       R5 R0 K8 ["universeId"]
       55 FASTCALL1                        TYPEOF R5 ; [+2]
       56 GETIMPORT                        R4 K1 [typeof]
       58 CALL                             R4 1 1
       59 NAMECALL                         R2 R2 K4 ["format"]
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 RETURN                           R1 1
       64 GETTABLEKS                       R1 R0 K10 ["name"]
       66 JUMPIFNOT                        R1 ; [+20]
       67 GETTABLEKS                       R2 R0 K10 ["name"]
       69 FASTCALL1                        TYPEOF R2 ; [+2]
       70 GETIMPORT                        R1 K1 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFEQKS                       R1 K11 ["string"] ; [+13]
       75 LOADK                            R2 K12 ["\"name\" > Expected string, got %*"]
       76 GETTABLEKS                       R5 R0 K10 ["name"]
       78 FASTCALL1                        TYPEOF R5 ; [+2]
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 NAMECALL                         R2 R2 K4 ["format"]
       84 CALL                             R2 2 1
       85 MOVE                             R1 R2
       86 RETURN                           R1 1
       87 GETTABLEKS                       R1 R0 K13 ["description"]
       89 JUMPIFNOT                        R1 ; [+20]
       90 GETTABLEKS                       R2 R0 K13 ["description"]
       92 FASTCALL1                        TYPEOF R2 ; [+2]
       93 GETIMPORT                        R1 K1 [typeof]
       95 CALL                             R1 1 1
       96 JUMPIFEQKS                       R1 K11 ["string"] ; [+13]
       98 LOADK                            R2 K14 ["\"description\" > Expected string, got %*"]
       99 GETTABLEKS                       R5 R0 K13 ["description"]
      101 FASTCALL1                        TYPEOF R5 ; [+2]
      102 GETIMPORT                        R4 K1 [typeof]
      104 CALL                             R4 1 1
      105 NAMECALL                         R2 R2 K4 ["format"]
      107 CALL                             R2 2 1
      108 MOVE                             R1 R2
      109 RETURN                           R1 1
      110 GETUPVAL                         R1 0
      111 JUMPIFNOT                        R1 ; [+46]
      112 GETTABLEKS                       R1 R0 K15 ["created"]
      114 JUMPIFNOT                        R1 ; [+20]
      115 GETTABLEKS                       R2 R0 K15 ["created"]
      117 FASTCALL1                        TYPEOF R2 ; [+2]
      118 GETIMPORT                        R1 K1 [typeof]
      120 CALL                             R1 1 1
      121 JUMPIFEQKS                       R1 K11 ["string"] ; [+13]
      123 LOADK                            R2 K16 ["\"created\" > Expected string, got %*"]
      124 GETTABLEKS                       R5 R0 K15 ["created"]
      126 FASTCALL1                        TYPEOF R5 ; [+2]
      127 GETIMPORT                        R4 K1 [typeof]
      129 CALL                             R4 1 1
      130 NAMECALL                         R2 R2 K4 ["format"]
      132 CALL                             R2 2 1
      133 MOVE                             R1 R2
      134 RETURN                           R1 1
      135 GETTABLEKS                       R1 R0 K17 ["updated"]
      137 JUMPIFNOT                        R1 ; [+20]
      138 GETTABLEKS                       R2 R0 K17 ["updated"]
      140 FASTCALL1                        TYPEOF R2 ; [+2]
      141 GETIMPORT                        R1 K1 [typeof]
      143 CALL                             R1 1 1
      144 JUMPIFEQKS                       R1 K11 ["string"] ; [+13]
      146 LOADK                            R2 K18 ["\"updated\" > Expected string, got %*"]
      147 GETTABLEKS                       R5 R0 K17 ["updated"]
      149 FASTCALL1                        TYPEOF R5 ; [+2]
      150 GETIMPORT                        R4 K1 [typeof]
      152 CALL                             R4 1 1
      153 NAMECALL                         R2 R2 K4 ["format"]
      155 CALL                             R2 2 1
      156 MOVE                             R1 R2
      157 RETURN                           R1 1
      158 LOADNIL                          R1
      159 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagLuaStartPageViewPlacesDialog"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 DUPCLOSURE                       R2 K9 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 DUPTABLE                         R3 K11 [{"validate"}]
       20 SETTABLEKS                       R2 R3 K10 ["validate"]
       22 RETURN                           R3 1
