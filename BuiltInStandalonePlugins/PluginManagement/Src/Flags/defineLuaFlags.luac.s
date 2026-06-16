MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioLazyPluginManagement"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["getFFlagStudioRefreshPluginPermissions"]
       27 CALL                             R2 1 1
       28 MOVE                             R3 R1
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+8]
       31 MOVE                             R4 R0
       32 CALL                             R4 0 1
       33 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       35 LOADK                            R5 K8 ["FFlagStudioLazyPluginManagement requires FFlagStudioRemoveOldPluginInstallFromWebLua"]
       36 GETIMPORT                        R3 K10 [assert]
       38 CALL                             R3 2 0
       39 LOADNIL                          R3
       40 RETURN                           R3 1
