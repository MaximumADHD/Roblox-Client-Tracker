MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["getFFlagStudioFixPluginManagementPluginTests"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagement429"]
       18 CALL                             R1 1 1
       19 MOVE                             R2 R1
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+8]
       22 MOVE                             R3 R0
       23 CALL                             R3 0 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["FFlagStudioFixPluginManagement429 requires FFlagStudioFixPluginManagementPluginTests"]
       27 GETIMPORT                        R2 K9 [assert]
       29 CALL                             R2 2 0
       30 LOADNIL                          R2
       31 RETURN                           R2 1
