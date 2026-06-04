PROTO_0:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["SetPluginInstallStatus is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R6 R0
       11 GETIMPORT                        R5 K4 [type]
       13 CALL                             R5 1 1
       14 JUMPIFEQKS                       R5 K5 ["string"] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       20 LOADK                            R5 K6 ["Expected pluginId to be a string"]
       21 GETIMPORT                        R3 K2 [assert]
       23 CALL                             R3 2 0
       24 FASTCALL1                        TYPE R1 ; [+3]
       25 MOVE                             R6 R1
       26 GETIMPORT                        R5 K4 [type]
       28 CALL                             R5 1 1
       29 JUMPIFEQKS                       R5 K7 ["number"] ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       35 LOADK                            R5 K8 ["Expected statusCode to be a number"]
       36 GETIMPORT                        R3 K2 [assert]
       38 CALL                             R3 2 0
       39 FASTCALL1                        TYPE R2 ; [+3]
       40 MOVE                             R6 R2
       41 GETIMPORT                        R5 K4 [type]
       43 CALL                             R5 1 1
       44 JUMPIFEQKS                       R5 K5 ["string"] ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       50 LOADK                            R5 K9 ["Expected message to be a string"]
       51 GETIMPORT                        R3 K2 [assert]
       53 CALL                             R3 2 0
       54 DUPTABLE                         R3 K13 [{"pluginId", "statusCode", "message"}]
       55 SETTABLEKS                       R0 R3 K10 ["pluginId"]
       57 SETTABLEKS                       R1 R3 K11 ["statusCode"]
       59 SETTABLEKS                       R2 R3 K12 ["message"]
       61 RETURN                           R3 1

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
