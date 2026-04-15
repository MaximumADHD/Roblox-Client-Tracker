PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R8 R0
        2 GETIMPORT                        R7 K1 [type]
        4 CALL                             R7 1 1
        5 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       11 LOADK                            R7 K3 ["Expected catalogContext to be a number"]
       12 GETIMPORT                        R5 K5 [assert]
       14 CALL                             R5 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K1 [type]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       26 LOADK                            R7 K6 ["Expected sortType to be a number"]
       27 GETIMPORT                        R5 K5 [assert]
       29 CALL                             R5 2 0
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R8 R2
       32 GETIMPORT                        R7 K1 [type]
       34 CALL                             R7 1 1
       35 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       41 LOADK                            R7 K7 ["Expected sortAggregation to be a number"]
       42 GETIMPORT                        R5 K5 [assert]
       44 CALL                             R5 2 0
       45 FASTCALL1                        TYPE R3 ; [+3]
       46 MOVE                             R8 R3
       47 GETIMPORT                        R7 K1 [type]
       49 CALL                             R7 1 1
       50 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
       52 LOADB                            R6 0 +1
       53 LOADB                            R6 1
       54 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       56 LOADK                            R7 K8 ["Expected sortCurrency to be a number"]
       57 GETIMPORT                        R5 K5 [assert]
       59 CALL                             R5 2 0
       60 FASTCALL1                        TYPE R4 ; [+3]
       61 MOVE                             R8 R4
       62 GETIMPORT                        R7 K1 [type]
       64 CALL                             R7 1 1
       65 JUMPIFEQKS                       R7 K2 ["number"] ; [+2]
       67 LOADB                            R6 0 +1
       68 LOADB                            R6 1
       69 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       71 LOADK                            R7 K9 ["Expected category to be a number"]
       72 GETIMPORT                        R5 K5 [assert]
       74 CALL                             R5 2 0
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R5 R6 K10 ["makeQueryString"]
       78 DUPTABLE                         R6 K16 [{"CatalogContext", "SortType", "SortAggregation", "SortCurrency", "Category"}]
       79 SETTABLEKS                       R0 R6 K11 ["CatalogContext"]
       81 SETTABLEKS                       R1 R6 K12 ["SortType"]
       83 SETTABLEKS                       R2 R6 K13 ["SortAggregation"]
       85 SETTABLEKS                       R3 R6 K14 ["SortCurrency"]
       87 SETTABLEKS                       R4 R6 K15 ["Category"]
       89 CALL                             R5 1 1
       90 GETIMPORT                        R6 K19 [string.format]
       92 LOADK                            R7 K20 ["%sdevelop/library?%s"]
       93 GETUPVAL                         R9 0
       94 GETTABLEKS                       R8 R9 K21 ["BASE_URL"]
       96 MOVE                             R9 R5
       97 CALL                             R6 3 -1
       98 RETURN                           R6 -1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["BaseUrl"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K6 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
