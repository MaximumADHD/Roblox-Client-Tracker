PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["onPublishSettings"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R1 R0 K1 ["onDiscardSettings"]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 3
       10 SETTABLEKS                       R1 R0 K2 ["setupHolds"]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K3 ["showSaveOrPublishPlaceToRoblox"]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 5
       18 SETTABLEKS                       R1 R0 K4 ["connectRefreshPluginState"]
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R3 K9 ["PublishingInterface"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R8 R0 K6 ["Src"]
       22 GETTABLEKS                       R7 R8 K10 ["tests"]
       24 GETTABLEKS                       R6 R7 K7 ["Util"]
       26 GETTABLEKS                       R5 R6 K11 ["mockInterfaces"]
       28 GETTABLEKS                       R4 R5 K12 ["setupMockPublishingInterface"]
       30 GETTABLEKS                       R3 R4 K13 ["mockConnectRefreshPluginState"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R9 R0 K6 ["Src"]
       37 GETTABLEKS                       R8 R9 K10 ["tests"]
       39 GETTABLEKS                       R7 R8 K7 ["Util"]
       41 GETTABLEKS                       R6 R7 K11 ["mockInterfaces"]
       43 GETTABLEKS                       R5 R6 K12 ["setupMockPublishingInterface"]
       45 GETTABLEKS                       R4 R5 K14 ["mockOnDiscardSettings"]
       47 CALL                             R3 1 1
       48 GETIMPORT                        R4 K5 [require]
       50 GETTABLEKS                       R10 R0 K6 ["Src"]
       52 GETTABLEKS                       R9 R10 K10 ["tests"]
       54 GETTABLEKS                       R8 R9 K7 ["Util"]
       56 GETTABLEKS                       R7 R8 K11 ["mockInterfaces"]
       58 GETTABLEKS                       R6 R7 K12 ["setupMockPublishingInterface"]
       60 GETTABLEKS                       R5 R6 K15 ["mockOnPublishSettings"]
       62 CALL                             R4 1 1
       63 GETIMPORT                        R5 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Src"]
       67 GETTABLEKS                       R10 R11 K10 ["tests"]
       69 GETTABLEKS                       R9 R10 K7 ["Util"]
       71 GETTABLEKS                       R8 R9 K11 ["mockInterfaces"]
       73 GETTABLEKS                       R7 R8 K12 ["setupMockPublishingInterface"]
       75 GETTABLEKS                       R6 R7 K16 ["mockSetupHolds"]
       77 CALL                             R5 1 1
       78 GETIMPORT                        R6 K5 [require]
       80 GETTABLEKS                       R12 R0 K6 ["Src"]
       82 GETTABLEKS                       R11 R12 K10 ["tests"]
       84 GETTABLEKS                       R10 R11 K7 ["Util"]
       86 GETTABLEKS                       R9 R10 K11 ["mockInterfaces"]
       88 GETTABLEKS                       R8 R9 K12 ["setupMockPublishingInterface"]
       90 GETTABLEKS                       R7 R8 K17 ["mockShowSaveOrPublishPlaceToRoblox"]
       92 CALL                             R6 1 1
       93 DUPCLOSURE                       R7 K18 [PROTO_0]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R2
      100 RETURN                           R7 1
