PROTO_0:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 NOT                              R7 R8
        3 FASTCALL2K                       ASSERT R7 K0 ; [+4]
        5 LOADK                            R8 K0 ["SetPluginMetadata is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R6 K2 [assert]
        8 CALL                             R6 2 0
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K4 [type]
       13 CALL                             R8 1 1
       14 JUMPIFEQKS                       R8 K5 ["string"] ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       20 LOADK                            R8 K6 ["Expected pluginId to be a string"]
       21 GETIMPORT                        R6 K2 [assert]
       23 CALL                             R6 2 0
       24 FASTCALL1                        TYPE R1 ; [+3]
       25 MOVE                             R9 R1
       26 GETIMPORT                        R8 K4 [type]
       28 CALL                             R8 1 1
       29 JUMPIFEQKS                       R8 K5 ["string"] ; [+2]
       31 LOADB                            R7 0 +1
       32 LOADB                            R7 1
       33 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       35 LOADK                            R8 K7 ["Expected name to be a string"]
       36 GETIMPORT                        R6 K2 [assert]
       38 CALL                             R6 2 0
       39 FASTCALL1                        TYPE R2 ; [+3]
       40 MOVE                             R9 R2
       41 GETIMPORT                        R8 K4 [type]
       43 CALL                             R8 1 1
       44 JUMPIFEQKS                       R8 K5 ["string"] ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 FASTCALL2K                       ASSERT R7 K8 ; [+4]
       50 LOADK                            R8 K8 ["Expected description to be a string"]
       51 GETIMPORT                        R6 K2 [assert]
       53 CALL                             R6 2 0
       54 FASTCALL1                        TYPE R3 ; [+3]
       55 MOVE                             R9 R3
       56 GETIMPORT                        R8 K4 [type]
       58 CALL                             R8 1 1
       59 JUMPIFEQKS                       R8 K5 ["string"] ; [+2]
       61 LOADB                            R7 0 +1
       62 LOADB                            R7 1
       63 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       65 LOADK                            R8 K9 ["Expected versionId to be a string"]
       66 GETIMPORT                        R6 K2 [assert]
       68 CALL                             R6 2 0
       69 FASTCALL1                        TYPE R4 ; [+3]
       70 MOVE                             R9 R4
       71 GETIMPORT                        R8 K4 [type]
       73 CALL                             R8 1 1
       74 JUMPIFEQKS                       R8 K5 ["string"] ; [+2]
       76 LOADB                            R7 0 +1
       77 LOADB                            R7 1
       78 FASTCALL2K                       ASSERT R7 K10 ; [+4]
       80 LOADK                            R8 K10 ["Expected created to be a string"]
       81 GETIMPORT                        R6 K2 [assert]
       83 CALL                             R6 2 0
       84 FASTCALL1                        TYPE R5 ; [+3]
       85 MOVE                             R9 R5
       86 GETIMPORT                        R8 K4 [type]
       88 CALL                             R8 1 1
       89 JUMPIFEQKS                       R8 K5 ["string"] ; [+2]
       91 LOADB                            R7 0 +1
       92 LOADB                            R7 1
       93 FASTCALL2K                       ASSERT R7 K11 ; [+4]
       95 LOADK                            R8 K11 ["Expected updated to be a string"]
       96 GETIMPORT                        R6 K2 [assert]
       98 CALL                             R6 2 0
       99 DUPTABLE                         R6 K18 [{"pluginId", "name", "description", "versionId", "created", "updated"}]
      100 SETTABLEKS                       R0 R6 K12 ["pluginId"]
      102 SETTABLEKS                       R1 R6 K13 ["name"]
      104 SETTABLEKS                       R2 R6 K14 ["description"]
      106 SETTABLEKS                       R3 R6 K15 ["versionId"]
      108 SETTABLEKS                       R4 R6 K16 ["created"]
      110 SETTABLEKS                       R5 R6 K17 ["updated"]
      112 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Action"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 GETIMPORT                        R4 K1 [script]
       28 GETTABLEKS                       R4 R4 K10 ["Name"]
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1
