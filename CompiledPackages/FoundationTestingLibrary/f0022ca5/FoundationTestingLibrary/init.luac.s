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
       54 DUPTABLE                         R8 K19 [{"AnchorPoint", "LayoutOrder", "Position", "Visible", "ZIndex", "testId"}]
       55 GETIMPORT                        R9 K22 [Vector2.new]
       57 LOADK                            R10 K23 [0.5]
       58 LOADK                            R11 K23 [0.5]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K13 ["AnchorPoint"]
       62 LOADN                            R9 5
       63 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       65 GETIMPORT                        R9 K26 [UDim2.fromOffset]
       67 LOADN                            R10 10
       68 LOADN                            R11 10
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K15 ["Position"]
       72 LOADB                            R9 0
       73 SETTABLEKS                       R9 R8 K16 ["Visible"]
       75 LOADN                            R9 2
       76 SETTABLEKS                       R9 R8 K17 ["ZIndex"]
       78 LOADK                            R9 K27 ["--foundation-test-component"]
       79 SETTABLEKS                       R9 R8 K18 ["testId"]
       81 DUPTABLE                         R9 K31 [{"Queries", "renderWithMocks", "createRenderSpy", "testCommonProps", "mockComponent", "setupTest", "Mocks"}]
       82 DUPTABLE                         R10 K38 [{"queryByImage", "queryAllByImage", "getAllByImage", "getByImage", "findAllByImage", "findByImage"}]
       83 GETTABLEKS                       R11 R3 K32 ["queryByImage"]
       85 SETTABLEKS                       R11 R10 K32 ["queryByImage"]
       87 GETTABLEKS                       R11 R3 K33 ["queryAllByImage"]
       89 SETTABLEKS                       R11 R10 K33 ["queryAllByImage"]
       91 GETTABLEKS                       R11 R3 K34 ["getAllByImage"]
       93 SETTABLEKS                       R11 R10 K34 ["getAllByImage"]
       95 GETTABLEKS                       R11 R3 K35 ["getByImage"]
       97 SETTABLEKS                       R11 R10 K35 ["getByImage"]
       99 GETTABLEKS                       R11 R3 K36 ["findAllByImage"]
      101 SETTABLEKS                       R11 R10 K36 ["findAllByImage"]
      103 GETTABLEKS                       R11 R3 K37 ["findByImage"]
      105 SETTABLEKS                       R11 R10 K37 ["findByImage"]
      107 SETTABLEKS                       R10 R9 K28 ["Queries"]
      109 SETTABLEKS                       R5 R9 K10 ["renderWithMocks"]
      111 SETTABLEKS                       R2 R9 K7 ["createRenderSpy"]
      113 SETTABLEKS                       R7 R9 K12 ["testCommonProps"]
      115 SETTABLEKS                       R4 R9 K9 ["mockComponent"]
      117 SETTABLEKS                       R6 R9 K29 ["setupTest"]
      119 DUPTABLE                         R10 K40 [{"commonProps"}]
      120 SETTABLEKS                       R8 R10 K39 ["commonProps"]
      122 SETTABLEKS                       R10 R9 K30 ["Mocks"]
      124 RETURN                           R9 1
