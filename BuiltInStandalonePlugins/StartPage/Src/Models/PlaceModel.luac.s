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
       17 GETTABLEKS                       R1 R0 K5 ["id"]
       19 JUMPIFNOT                        R1 ; [+19]
       20 GETTABLEKS                       R2 R0 K5 ["id"]
       22 FASTCALL1                        TYPEOF R2 ; [+2]
       23 GETIMPORT                        R1 K1 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       28 LOADK                            R1 K7 ["\"id\" > Expected number, got %*"]
       29 GETTABLEKS                       R4 R0 K5 ["id"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 NAMECALL                         R1 R1 K4 ["format"]
       37 CALL                             R1 2 1
       38 RETURN                           R1 1
       39 GETTABLEKS                       R1 R0 K8 ["universeId"]
       41 JUMPIFNOT                        R1 ; [+19]
       42 GETTABLEKS                       R2 R0 K8 ["universeId"]
       44 FASTCALL1                        TYPEOF R2 ; [+2]
       45 GETIMPORT                        R1 K1 [typeof]
       47 CALL                             R1 1 1
       48 JUMPIFEQKS                       R1 K6 ["number"] ; [+12]
       50 LOADK                            R1 K9 ["\"universeId\" > Expected number, got %*"]
       51 GETTABLEKS                       R4 R0 K8 ["universeId"]
       53 FASTCALL1                        TYPEOF R4 ; [+2]
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 NAMECALL                         R1 R1 K4 ["format"]
       59 CALL                             R1 2 1
       60 RETURN                           R1 1
       61 GETTABLEKS                       R1 R0 K10 ["name"]
       63 JUMPIFNOT                        R1 ; [+19]
       64 GETTABLEKS                       R2 R0 K10 ["name"]
       66 FASTCALL1                        TYPEOF R2 ; [+2]
       67 GETIMPORT                        R1 K1 [typeof]
       69 CALL                             R1 1 1
       70 JUMPIFEQKS                       R1 K11 ["string"] ; [+12]
       72 LOADK                            R1 K12 ["\"name\" > Expected string, got %*"]
       73 GETTABLEKS                       R4 R0 K10 ["name"]
       75 FASTCALL1                        TYPEOF R4 ; [+2]
       76 GETIMPORT                        R3 K1 [typeof]
       78 CALL                             R3 1 1
       79 NAMECALL                         R1 R1 K4 ["format"]
       81 CALL                             R1 2 1
       82 RETURN                           R1 1
       83 GETTABLEKS                       R1 R0 K13 ["description"]
       85 JUMPIFNOT                        R1 ; [+19]
       86 GETTABLEKS                       R2 R0 K13 ["description"]
       88 FASTCALL1                        TYPEOF R2 ; [+2]
       89 GETIMPORT                        R1 K1 [typeof]
       91 CALL                             R1 1 1
       92 JUMPIFEQKS                       R1 K11 ["string"] ; [+12]
       94 LOADK                            R1 K14 ["\"description\" > Expected string, got %*"]
       95 GETTABLEKS                       R4 R0 K13 ["description"]
       97 FASTCALL1                        TYPEOF R4 ; [+2]
       98 GETIMPORT                        R3 K1 [typeof]
      100 CALL                             R3 1 1
      101 NAMECALL                         R1 R1 K4 ["format"]
      103 CALL                             R1 2 1
      104 RETURN                           R1 1
      105 GETUPVAL                         R1 0
      106 JUMPIFNOT                        R1 ; [+44]
      107 GETTABLEKS                       R1 R0 K15 ["created"]
      109 JUMPIFNOT                        R1 ; [+19]
      110 GETTABLEKS                       R2 R0 K15 ["created"]
      112 FASTCALL1                        TYPEOF R2 ; [+2]
      113 GETIMPORT                        R1 K1 [typeof]
      115 CALL                             R1 1 1
      116 JUMPIFEQKS                       R1 K11 ["string"] ; [+12]
      118 LOADK                            R1 K16 ["\"created\" > Expected string, got %*"]
      119 GETTABLEKS                       R4 R0 K15 ["created"]
      121 FASTCALL1                        TYPEOF R4 ; [+2]
      122 GETIMPORT                        R3 K1 [typeof]
      124 CALL                             R3 1 1
      125 NAMECALL                         R1 R1 K4 ["format"]
      127 CALL                             R1 2 1
      128 RETURN                           R1 1
      129 GETTABLEKS                       R1 R0 K17 ["updated"]
      131 JUMPIFNOT                        R1 ; [+19]
      132 GETTABLEKS                       R2 R0 K17 ["updated"]
      134 FASTCALL1                        TYPEOF R2 ; [+2]
      135 GETIMPORT                        R1 K1 [typeof]
      137 CALL                             R1 1 1
      138 JUMPIFEQKS                       R1 K11 ["string"] ; [+12]
      140 LOADK                            R1 K18 ["\"updated\" > Expected string, got %*"]
      141 GETTABLEKS                       R4 R0 K17 ["updated"]
      143 FASTCALL1                        TYPEOF R4 ; [+2]
      144 GETIMPORT                        R3 K1 [typeof]
      146 CALL                             R3 1 1
      147 NAMECALL                         R1 R1 K4 ["format"]
      149 CALL                             R1 2 1
      150 RETURN                           R1 1
      151 LOADNIL                          R1
      152 RETURN                           R1 1

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
