MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["imageQueries"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["renderWithMocks"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["createRenderSpy"]
       21 CALL                             R2 1 1
       22 DUPTABLE                         R3 K8 [{"Queries", "renderWithMocks", "createRenderSpy"}]
       23 DUPTABLE                         R4 K15 [{"queryByImage", "queryAllByImage", "getAllByImage", "getByImage", "findAllByImage", "findByImage"}]
       24 GETTABLEKS                       R5 R0 K9 ["queryByImage"]
       26 SETTABLEKS                       R5 R4 K9 ["queryByImage"]
       28 GETTABLEKS                       R5 R0 K10 ["queryAllByImage"]
       30 SETTABLEKS                       R5 R4 K10 ["queryAllByImage"]
       32 GETTABLEKS                       R5 R0 K11 ["getAllByImage"]
       34 SETTABLEKS                       R5 R4 K11 ["getAllByImage"]
       36 GETTABLEKS                       R5 R0 K12 ["getByImage"]
       38 SETTABLEKS                       R5 R4 K12 ["getByImage"]
       40 GETTABLEKS                       R5 R0 K13 ["findAllByImage"]
       42 SETTABLEKS                       R5 R4 K13 ["findAllByImage"]
       44 GETTABLEKS                       R5 R0 K14 ["findByImage"]
       46 SETTABLEKS                       R5 R4 K14 ["findByImage"]
       48 SETTABLEKS                       R4 R3 K7 ["Queries"]
       50 SETTABLEKS                       R1 R3 K5 ["renderWithMocks"]
       52 SETTABLEKS                       R2 R3 K6 ["createRenderSpy"]
       54 RETURN                           R3 1
