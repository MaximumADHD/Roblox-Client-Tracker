PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PlayerSettingPresetValues"]
        3 NEWTABLE                         R2 16 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R1 K1 ["animationPacksSetting"]
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K1 ["animationPacksSetting"]
       13 CALL                             R5 2 -1
       14 CALL                             R3 -1 1
       15 SETTABLEKS                       R3 R2 K1 ["animationPacksSetting"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R4 R1 K2 ["animationClipsSetting"]
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R0
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R7 R8 K2 ["animationClipsSetting"]
       25 CALL                             R5 2 -1
       26 CALL                             R3 -1 1
       27 SETTABLEKS                       R3 R2 K2 ["animationClipsSetting"]
       29 GETUPVAL                         R3 4
       30 LOADB                            R4 0
       31 LOADN                            R5 0
       32 GETUPVAL                         R6 5
       33 MOVE                             R7 R0
       34 GETUPVAL                         R9 3
       35 GETTABLEKS                       R8 R9 K3 ["animationClipsRunSetting"]
       37 CALL                             R6 2 -1
       38 CALL                             R3 -1 1
       39 SETTABLEKS                       R3 R2 K3 ["animationClipsRunSetting"]
       41 GETUPVAL                         R3 4
       42 LOADB                            R4 0
       43 LOADN                            R5 0
       44 GETUPVAL                         R6 5
       45 MOVE                             R7 R0
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R8 R9 K4 ["animationClipsWalkSetting"]
       49 CALL                             R6 2 -1
       50 CALL                             R3 -1 1
       51 SETTABLEKS                       R3 R2 K4 ["animationClipsWalkSetting"]
       53 GETUPVAL                         R3 4
       54 LOADB                            R4 0
       55 LOADN                            R5 0
       56 GETUPVAL                         R6 5
       57 MOVE                             R7 R0
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R8 R9 K5 ["animationClipsFallSetting"]
       61 CALL                             R6 2 -1
       62 CALL                             R3 -1 1
       63 SETTABLEKS                       R3 R2 K5 ["animationClipsFallSetting"]
       65 GETUPVAL                         R3 4
       66 LOADB                            R4 0
       67 LOADN                            R5 0
       68 GETUPVAL                         R6 5
       69 MOVE                             R7 R0
       70 GETUPVAL                         R9 3
       71 GETTABLEKS                       R8 R9 K6 ["animationClipsJumpSetting"]
       73 CALL                             R6 2 -1
       74 CALL                             R3 -1 1
       75 SETTABLEKS                       R3 R2 K6 ["animationClipsJumpSetting"]
       77 GETUPVAL                         R3 4
       78 LOADB                            R4 0
       79 LOADN                            R5 0
       80 GETUPVAL                         R6 5
       81 MOVE                             R7 R0
       82 GETUPVAL                         R9 3
       83 GETTABLEKS                       R8 R9 K7 ["animationClipsIdleSetting"]
       85 CALL                             R6 2 -1
       86 CALL                             R3 -1 1
       87 SETTABLEKS                       R3 R2 K7 ["animationClipsIdleSetting"]
       89 GETUPVAL                         R3 4
       90 LOADB                            R4 0
       91 LOADN                            R5 0
       92 GETUPVAL                         R6 5
       93 MOVE                             R7 R0
       94 GETUPVAL                         R9 3
       95 GETTABLEKS                       R8 R9 K8 ["animationClipsIdleAlt1Setting"]
       97 CALL                             R6 2 -1
       98 CALL                             R3 -1 1
       99 SETTABLEKS                       R3 R2 K8 ["animationClipsIdleAlt1Setting"]
      101 GETUPVAL                         R3 4
      102 LOADB                            R4 0
      103 LOADN                            R5 0
      104 GETUPVAL                         R6 5
      105 MOVE                             R7 R0
      106 GETUPVAL                         R9 3
      107 GETTABLEKS                       R8 R9 K9 ["animationClipsIdleAlt2Setting"]
      109 CALL                             R6 2 -1
      110 CALL                             R3 -1 1
      111 SETTABLEKS                       R3 R2 K9 ["animationClipsIdleAlt2Setting"]
      113 GETUPVAL                         R3 4
      114 LOADB                            R4 0
      115 LOADN                            R5 0
      116 GETUPVAL                         R6 5
      117 MOVE                             R7 R0
      118 GETUPVAL                         R9 3
      119 GETTABLEKS                       R8 R9 K10 ["animationClipsSwimSetting"]
      121 CALL                             R6 2 -1
      122 CALL                             R3 -1 1
      123 SETTABLEKS                       R3 R2 K10 ["animationClipsSwimSetting"]
      125 GETUPVAL                         R3 4
      126 LOADB                            R4 0
      127 LOADN                            R5 0
      128 GETUPVAL                         R6 5
      129 MOVE                             R7 R0
      130 GETUPVAL                         R9 3
      131 GETTABLEKS                       R8 R9 K11 ["animationClipsSwimIdleSetting"]
      133 CALL                             R6 2 -1
      134 CALL                             R3 -1 1
      135 SETTABLEKS                       R3 R2 K11 ["animationClipsSwimIdleSetting"]
      137 GETUPVAL                         R3 4
      138 LOADB                            R4 0
      139 LOADN                            R5 0
      140 GETUPVAL                         R6 5
      141 MOVE                             R7 R0
      142 GETUPVAL                         R9 3
      143 GETTABLEKS                       R8 R9 K12 ["animationClipsClimbSetting"]
      145 CALL                             R6 2 -1
      146 CALL                             R3 -1 1
      147 SETTABLEKS                       R3 R2 K12 ["animationClipsClimbSetting"]
      149 GETUPVAL                         R3 4
      150 LOADB                            R4 0
      151 LOADN                            R5 0
      152 GETUPVAL                         R6 5
      153 MOVE                             R7 R0
      154 GETUPVAL                         R9 3
      155 GETTABLEKS                       R8 R9 K13 ["bodyAppearanceCustomPartsMood"]
      157 CALL                             R6 2 -1
      158 CALL                             R3 -1 1
      159 SETTABLEKS                       R3 R2 K14 ["animationClipsMoodSetting"]
      161 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarPresetValues"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["AvatarSettingsProviderTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["assetIdSettingUtil"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K11 ["InvokeKeys"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K7 ["Util"]
       49 GETTABLEKS                       R6 R7 K12 ["settingUtil"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R5 K13 ["useSetting"]
       54 GETTABLEKS                       R7 R3 K14 ["useAssetIdSetting"]
       56 GETTABLEKS                       R8 R5 K15 ["createInvokeArgs"]
       58 GETTABLEKS                       R9 R3 K16 ["createAssetIdSettingInvokeArgs"]
       60 DUPCLOSURE                       R10 K17 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R9
       67 RETURN                           R10 1
