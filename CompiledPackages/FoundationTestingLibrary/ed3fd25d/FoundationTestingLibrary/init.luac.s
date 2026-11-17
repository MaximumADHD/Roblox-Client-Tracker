MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationTestingLibrary"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Foundation"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["createRenderSpy"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K8 ["imageQueries"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K9 ["mockComponent"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K10 ["renderWithMocks"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K11 ["setup"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K12 ["testCommonProps"]
       53 CALL                             R7 1 1
       54 DUPTABLE                         R8 K23 [{["AnchorPoint"], ["LayoutOrder"] = 5, ["Position"], ["Visible"] = False, ["ZIndex"] = 2, ["testId"] = "--foundation-test-component"}]
       55 GETIMPORT                        R9 K26 [Vector2.new]
       57 LOADK                            R10 K27 [0.5]
       58 LOADK                            R11 K27 [0.5]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K13 ["AnchorPoint"]
       62 GETIMPORT                        R9 K30 [UDim2.fromOffset]
       64 LOADN                            R10 10
       65 LOADN                            R11 10
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K16 ["Position"]
       69 DUPTABLE                         R9 K34 [{"Queries", "renderWithMocks", "createRenderSpy", "testCommonProps", "mockComponent", "setupTest", "Mocks"}]
       70 DUPTABLE                         R10 K41 [{"queryByImage", "queryAllByImage", "getAllByImage", "getByImage", "findAllByImage", "findByImage"}]
       71 GETTABLEKS                       R11 R3 K35 ["queryByImage"]
       73 SETTABLEKS                       R11 R10 K35 ["queryByImage"]
       75 GETTABLEKS                       R11 R3 K36 ["queryAllByImage"]
       77 SETTABLEKS                       R11 R10 K36 ["queryAllByImage"]
       79 GETTABLEKS                       R11 R3 K37 ["getAllByImage"]
       81 SETTABLEKS                       R11 R10 K37 ["getAllByImage"]
       83 GETTABLEKS                       R11 R3 K38 ["getByImage"]
       85 SETTABLEKS                       R11 R10 K38 ["getByImage"]
       87 GETTABLEKS                       R11 R3 K39 ["findAllByImage"]
       89 SETTABLEKS                       R11 R10 K39 ["findAllByImage"]
       91 GETTABLEKS                       R11 R3 K40 ["findByImage"]
       93 SETTABLEKS                       R11 R10 K40 ["findByImage"]
       95 SETTABLEKS                       R10 R9 K31 ["Queries"]
       97 SETTABLEKS                       R5 R9 K10 ["renderWithMocks"]
       99 SETTABLEKS                       R2 R9 K7 ["createRenderSpy"]
      101 SETTABLEKS                       R7 R9 K12 ["testCommonProps"]
      103 SETTABLEKS                       R4 R9 K9 ["mockComponent"]
      105 SETTABLEKS                       R6 R9 K32 ["setupTest"]
      107 DUPTABLE                         R10 K43 [{"commonProps"}]
      108 SETTABLEKS                       R8 R10 K42 ["commonProps"]
      110 SETTABLEKS                       R10 R9 K33 ["Mocks"]
      112 RETURN                           R9 1
