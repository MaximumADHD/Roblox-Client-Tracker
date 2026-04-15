MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["_Workspace"]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K5 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["setupJest"]
       15 DUPTABLE                         R3 K11 [{"testMatch", "testPathIgnorePatterns", "setupFilesAfterEnv", "rootDir"}]
       16 NEWTABLE                         R4 0 1
       18 LOADK                            R5 K12 ["**/*.test"]
       19 SETLIST                          R4 R5 1 [1]
       21 SETTABLEKS                       R4 R3 K7 ["testMatch"]
       23 NEWTABLE                         R4 0 1
       25 LOADK                            R5 K13 ["_Index"]
       26 SETLIST                          R4 R5 1 [1]
       28 SETTABLEKS                       R4 R3 K8 ["testPathIgnorePatterns"]
       30 NEWTABLE                         R4 0 1
       32 MOVE                             R5 R2
       33 SETLIST                          R4 R5 1 [1]
       35 SETTABLEKS                       R4 R3 K9 ["setupFilesAfterEnv"]
       37 SETTABLEKS                       R1 R3 K10 ["rootDir"]
       39 RETURN                           R3 1
