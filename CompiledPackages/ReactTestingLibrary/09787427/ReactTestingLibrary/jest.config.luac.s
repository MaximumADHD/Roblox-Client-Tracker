MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 LOADK                            R3 K3 ["TestsSetup"]
        8 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K5 ["TestsSetup folder not found. Please make sure the folder exists in the root of the package."]
       15 GETIMPORT                        R2 K7 [assert]
       17 CALL                             R2 2 0
       18 LOADK                            R4 K8 ["setup-env"]
       19 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       21 CALL                             R2 2 1
       22 FASTCALL2K                       ASSERT R2 K9 ; [+5]
       24 MOVE                             R4 R2
       25 LOADK                            R5 K9 ["setup-env file not found. Please make sure the file exists in the TestsSetup folder."]
       26 GETIMPORT                        R3 K7 [assert]
       28 CALL                             R3 2 0
       29 DUPTABLE                         R3 K13 [{"displayName", "setupFilesAfterEnv", "testMatch"}]
       30 LOADK                            R4 K14 ["Jest"]
       31 SETTABLEKS                       R4 R3 K10 ["displayName"]
       33 NEWTABLE                         R4 0 1
       35 MOVE                             R5 R2
       36 SETLIST                          R4 R5 1 [1]
       38 SETTABLEKS                       R4 R3 K11 ["setupFilesAfterEnv"]
       40 NEWTABLE                         R4 0 1
       42 LOADK                            R5 K15 ["**/__tests__/**/*.spec"]
       43 SETLIST                          R4 R5 1 [1]
       45 SETTABLEKS                       R4 R3 K12 ["testMatch"]
       47 RETURN                           R3 1
