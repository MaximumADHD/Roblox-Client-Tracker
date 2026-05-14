PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R9 R0
        2 GETIMPORT                        R8 K1 [type]
        4 CALL                             R8 1 1
        5 JUMPIFEQKS                       R8 K2 ["string"] ; [+2]
        7 LOADB                            R7 0 +1
        8 LOADB                            R7 1
        9 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       11 LOADK                            R8 K3 ["Expected pluginId to be a string"]
       12 GETIMPORT                        R6 K5 [assert]
       14 CALL                             R6 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R9 R1
       17 GETIMPORT                        R8 K1 [type]
       19 CALL                             R8 1 1
       20 JUMPIFEQKS                       R8 K2 ["string"] ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       26 LOADK                            R8 K6 ["Expected name to be a string"]
       27 GETIMPORT                        R6 K5 [assert]
       29 CALL                             R6 2 0
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R9 R2
       32 GETIMPORT                        R8 K1 [type]
       34 CALL                             R8 1 1
       35 JUMPIFEQKS                       R8 K2 ["string"] ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       41 LOADK                            R8 K7 ["Expected description to be a string"]
       42 GETIMPORT                        R6 K5 [assert]
       44 CALL                             R6 2 0
       45 FASTCALL1                        TYPE R3 ; [+3]
       46 MOVE                             R9 R3
       47 GETIMPORT                        R8 K1 [type]
       49 CALL                             R8 1 1
       50 JUMPIFEQKS                       R8 K2 ["string"] ; [+2]
       52 LOADB                            R7 0 +1
       53 LOADB                            R7 1
       54 FASTCALL2K                       ASSERT R7 K8 ; [+4]
       56 LOADK                            R8 K8 ["Expected versionId to be a string"]
       57 GETIMPORT                        R6 K5 [assert]
       59 CALL                             R6 2 0
       60 FASTCALL1                        TYPE R4 ; [+3]
       61 MOVE                             R9 R4
       62 GETIMPORT                        R8 K1 [type]
       64 CALL                             R8 1 1
       65 JUMPIFEQKS                       R8 K2 ["string"] ; [+2]
       67 LOADB                            R7 0 +1
       68 LOADB                            R7 1
       69 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       71 LOADK                            R8 K9 ["Expected created to be a string"]
       72 GETIMPORT                        R6 K5 [assert]
       74 CALL                             R6 2 0
       75 FASTCALL1                        TYPE R5 ; [+3]
       76 MOVE                             R9 R5
       77 GETIMPORT                        R8 K1 [type]
       79 CALL                             R8 1 1
       80 JUMPIFEQKS                       R8 K2 ["string"] ; [+2]
       82 LOADB                            R7 0 +1
       83 LOADB                            R7 1
       84 FASTCALL2K                       ASSERT R7 K10 ; [+4]
       86 LOADK                            R8 K10 ["Expected updated to be a string"]
       87 GETIMPORT                        R6 K5 [assert]
       89 CALL                             R6 2 0
       90 DUPTABLE                         R6 K17 [{"pluginId", "name", "description", "versionId", "created", "updated"}]
       91 SETTABLEKS                       R0 R6 K11 ["pluginId"]
       93 SETTABLEKS                       R1 R6 K12 ["name"]
       95 SETTABLEKS                       R2 R6 K13 ["description"]
       97 SETTABLEKS                       R3 R6 K14 ["versionId"]
       99 SETTABLEKS                       R4 R6 K15 ["created"]
      101 SETTABLEKS                       R5 R6 K16 ["updated"]
      103 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Action"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 GETIMPORT                        R3 K1 [script]
       19 GETTABLEKS                       R3 R3 K7 ["Name"]
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
