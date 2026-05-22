PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["SetPluginId is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K4 [type]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K5 ["string"] ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       20 LOADK                            R3 K6 ["Expected pluginId to be a string"]
       21 GETIMPORT                        R1 K2 [assert]
       23 CALL                             R1 2 0
       24 DUPTABLE                         R1 K8 [{"pluginId"}]
       25 SETTABLEKS                       R0 R1 K7 ["pluginId"]
       27 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Action"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R2
       24 GETIMPORT                        R4 K1 [script]
       26 GETTABLEKS                       R4 R4 K9 ["Name"]
       28 DUPCLOSURE                       R5 K10 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1
