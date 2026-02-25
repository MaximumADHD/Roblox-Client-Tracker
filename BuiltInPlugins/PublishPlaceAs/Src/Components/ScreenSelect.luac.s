PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["OnClose"]
        2 GETTABLEKS                       R2 R0 K1 ["IsPublish"]
        4 GETTABLEKS                       R3 R0 K2 ["CloseMode"]
        6 GETTABLEKS                       R4 R0 K3 ["Screen"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["createElement"]
       11 GETUPVAL                         R7 1
       12 GETTABLE                         R6 R7 R4
       13 DUPTABLE                         R7 K5 [{"OnClose", "IsPublish", "CloseMode"}]
       14 SETTABLEKS                       R1 R7 K0 ["OnClose"]
       16 SETTABLEKS                       R2 R7 K1 ["IsPublish"]
       18 SETTABLEKS                       R3 R7 K2 ["CloseMode"]
       20 CALL                             R5 2 -1
       21 RETURN                           R5 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Screen"]
        2 GETTABLEKS                       R2 R3 K1 ["screen"]
        4 DUPTABLE                         R3 K2 [{"Screen"}]
        5 SETTABLEKS                       R2 R3 K0 ["Screen"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Resources"]
       29 GETTABLEKS                       R4 R5 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 GETTABLEKS                       R6 R3 K11 ["SCREENS"]
       36 GETTABLEKS                       R5 R6 K12 ["CREATE_NEW_GAME"]
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R9 R0 K8 ["Src"]
       42 GETTABLEKS                       R8 R9 K13 ["Components"]
       44 GETTABLEKS                       R7 R8 K14 ["ScreenCreateNewGame"]
       46 CALL                             R6 1 1
       47 SETTABLE                         R6 R4 R5
       48 GETTABLEKS                       R6 R3 K11 ["SCREENS"]
       50 GETTABLEKS                       R5 R6 K15 ["CHOOSE_GAME"]
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R9 R0 K8 ["Src"]
       56 GETTABLEKS                       R8 R9 K13 ["Components"]
       58 GETTABLEKS                       R7 R8 K16 ["ScreenChooseGame"]
       60 CALL                             R6 1 1
       61 SETTABLE                         R6 R4 R5
       62 GETTABLEKS                       R6 R3 K11 ["SCREENS"]
       64 GETTABLEKS                       R5 R6 K17 ["CHOOSE_PLACE"]
       66 GETIMPORT                        R6 K4 [require]
       68 GETTABLEKS                       R9 R0 K8 ["Src"]
       70 GETTABLEKS                       R8 R9 K13 ["Components"]
       72 GETTABLEKS                       R7 R8 K18 ["ScreenChoosePlace"]
       74 CALL                             R6 1 1
       75 SETTABLE                         R6 R4 R5
       76 GETTABLEKS                       R6 R3 K11 ["SCREENS"]
       78 GETTABLEKS                       R5 R6 K19 ["PUBLISH_IN_PROGRESS"]
       80 GETIMPORT                        R6 K4 [require]
       82 GETTABLEKS                       R9 R0 K8 ["Src"]
       84 GETTABLEKS                       R8 R9 K13 ["Components"]
       86 GETTABLEKS                       R7 R8 K20 ["ScreenPublishInProgress"]
       88 CALL                             R6 1 1
       89 SETTABLE                         R6 R4 R5
       90 GETTABLEKS                       R6 R3 K11 ["SCREENS"]
       92 GETTABLEKS                       R5 R6 K21 ["PUBLISH_SUCCESSFUL"]
       94 GETIMPORT                        R6 K4 [require]
       96 GETTABLEKS                       R9 R0 K8 ["Src"]
       98 GETTABLEKS                       R8 R9 K13 ["Components"]
      100 GETTABLEKS                       R7 R8 K22 ["ScreenPublishSuccessful"]
      102 CALL                             R6 1 1
      103 SETTABLE                         R6 R4 R5
      104 GETTABLEKS                       R6 R3 K11 ["SCREENS"]
      106 GETTABLEKS                       R5 R6 K23 ["PUBLISH_FAIL"]
      108 GETIMPORT                        R6 K4 [require]
      110 GETTABLEKS                       R9 R0 K8 ["Src"]
      112 GETTABLEKS                       R8 R9 K13 ["Components"]
      114 GETTABLEKS                       R7 R8 K24 ["ScreenPublishFail"]
      116 CALL                             R6 1 1
      117 SETTABLE                         R6 R4 R5
      118 GETIMPORT                        R5 K26 [pairs]
      120 GETTABLEKS                       R6 R3 K11 ["SCREENS"]
      122 CALL                             R5 1 3
      123 FORGPREP_NEXT                    R5
      124 GETTABLE                         R12 R4 R8
      125 JUMPIFNOTEQKNIL                  R12 ; [+2]
      127 LOADB                            R11 0 +1
      128 LOADB                            R11 1
      129 GETIMPORT                        R12 K29 [string.format]
      131 LOADK                            R13 K30 ["ScreenSelect.lua does not handle screen %s"]
      132 MOVE                             R14 R8
      133 CALL                             R12 2 -1
      134 FASTCALL                         ASSERT ; [+2]
      135 GETIMPORT                        R10 K32 [assert]
      137 CALL                             R10 -1 0
      138 FORGLOOP                         R5 2 ; [-15]
      140 DUPCLOSURE                       R5 K33 [PROTO_0]
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R4
      143 DUPCLOSURE                       R6 K34 [PROTO_1]
      144 GETTABLEKS                       R7 R2 K35 ["connect"]
      146 MOVE                             R8 R6
      147 CALL                             R7 1 1
      148 MOVE                             R8 R5
      149 CALL                             R7 1 -1
      150 RETURN                           R7 -1
