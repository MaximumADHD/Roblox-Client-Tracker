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
       16 GETTABLEKS                       R3 R3 K7 ["MockPlugin"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K8 ["createRenderSpy"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K9 ["imageQueries"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K10 ["mockComponent"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K11 ["renderWithMocks"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K12 ["setup"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R9 R9 K13 ["testCommonProps"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R10 R10 K14 ["waitForSizing"]
       67 CALL                             R9 1 1
       68 DUPTABLE                         R10 K25 [{["AnchorPoint"], ["LayoutOrder"] = 5, ["Position"], ["Visible"] = False, ["ZIndex"] = 2, ["testId"] = "--foundation-test-component"}]
       69 GETIMPORT                        R11 K28 [Vector2.new]
       71 LOADK                            R12 K29 [0.5]
       72 LOADK                            R13 K29 [0.5]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K15 ["AnchorPoint"]
       76 GETIMPORT                        R11 K32 [UDim2.fromOffset]
       78 LOADN                            R12 10
       79 LOADN                            R13 10
       80 CALL                             R11 2 1
       81 SETTABLEKS                       R11 R10 K18 ["Position"]
       83 DUPTABLE                         R11 K36 [{"Queries", "renderWithMocks", "createRenderSpy", "testCommonProps", "mockComponent", "setupTest", "waitForSizing", "Mocks"}]
       84 DUPTABLE                         R12 K43 [{"queryByImage", "queryAllByImage", "getAllByImage", "getByImage", "findAllByImage", "findByImage"}]
       85 GETTABLEKS                       R13 R4 K37 ["queryByImage"]
       87 SETTABLEKS                       R13 R12 K37 ["queryByImage"]
       89 GETTABLEKS                       R13 R4 K38 ["queryAllByImage"]
       91 SETTABLEKS                       R13 R12 K38 ["queryAllByImage"]
       93 GETTABLEKS                       R13 R4 K39 ["getAllByImage"]
       95 SETTABLEKS                       R13 R12 K39 ["getAllByImage"]
       97 GETTABLEKS                       R13 R4 K40 ["getByImage"]
       99 SETTABLEKS                       R13 R12 K40 ["getByImage"]
      101 GETTABLEKS                       R13 R4 K41 ["findAllByImage"]
      103 SETTABLEKS                       R13 R12 K41 ["findAllByImage"]
      105 GETTABLEKS                       R13 R4 K42 ["findByImage"]
      107 SETTABLEKS                       R13 R12 K42 ["findByImage"]
      109 SETTABLEKS                       R12 R11 K33 ["Queries"]
      111 SETTABLEKS                       R6 R11 K11 ["renderWithMocks"]
      113 SETTABLEKS                       R3 R11 K8 ["createRenderSpy"]
      115 SETTABLEKS                       R8 R11 K13 ["testCommonProps"]
      117 SETTABLEKS                       R5 R11 K10 ["mockComponent"]
      119 SETTABLEKS                       R7 R11 K34 ["setupTest"]
      121 SETTABLEKS                       R9 R11 K14 ["waitForSizing"]
      123 DUPTABLE                         R12 K45 [{"commonProps", "MockPlugin"}]
      124 SETTABLEKS                       R10 R12 K44 ["commonProps"]
      126 SETTABLEKS                       R2 R12 K7 ["MockPlugin"]
      128 SETTABLEKS                       R12 R11 K35 ["Mocks"]
      130 RETURN                           R11 1
