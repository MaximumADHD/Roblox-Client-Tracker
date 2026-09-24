PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["IsAncestorOf"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+10]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["CreateAvatarRules"]
       10 GETTABLEKS                       R3 R3 K2 ["fromAssetDm"]
       12 NAMECALL                         R1 R1 K3 ["Invoke"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R3 4
       18 GETTABLE                         R1 R2 R3
       19 JUMPIFNOTEQ                      R0 R1 ; [+2]
       21 RETURN                           R0 0
       22 LOADB                            R1 1
       23 SETUPVAL                         R1 5
       24 GETUPVAL                         R1 1
       25 GETUPVAL                         R2 4
       26 SETTABLE                         R0 R1 R2
       27 GETUPVAL                         R1 6
       28 GETUPVAL                         R3 7
       29 NAMECALL                         R1 R1 K4 ["SetWaypoint"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+36]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 GETTABLE                         R1 R2 R3
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 JUMPIF                           R0 ; [+4]
       11 GETUPVAL                         R0 4
       12 GETTABLEKS                       R0 R0 K0 ["applyAvatarRulesWithDebounce"]
       14 CALL                             R0 0 0
       15 GETUPVAL                         R0 5
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R0 6
       19 GETTABLEKS                       R0 R0 K1 ["markChanged"]
       21 GETUPVAL                         R1 7
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 8
       24 JUMPIFNOT                        R0 ; [+3]
       25 LOADB                            R0 0
       26 SETUPVAL                         R0 8
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 7
       29 GETUPVAL                         R2 9
       30 GETTABLEKS                       R2 R2 K2 ["fromAssetDm"]
       32 GETUPVAL                         R4 0
       33 GETUPVAL                         R5 2
       34 GETTABLE                         R3 R4 R5
       35 NAMECALL                         R0 R0 K3 ["Invoke"]
       37 CALL                             R0 3 0
       38 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R6 0
        1 LOADK                            R8 K0 ["AvatarSettings Property Change: "]
        2 MOVE                             R9 R2
        3 CONCAT                           R7 R8 R9
        4 GETTABLEKS                       R10 R3 K1 ["fromPlugin"]
        6 NEWCLOSURE                       R11 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          REF R6
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R7
       15 NAMECALL                         R8 R0 K2 ["OnInvoke"]
       17 CALL                             R8 3 1
       18 MOVE                             R11 R2
       19 NAMECALL                         R9 R1 K3 ["GetPropertyChangedSignal"]
       21 CALL                             R9 2 1
       22 NEWCLOSURE                       R11 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R0
       31 CAPTURE                          REF R6
       32 CAPTURE                          VAL R3
       33 NAMECALL                         R9 R9 K4 ["Connect"]
       35 CALL                             R9 2 1
       36 GETUPVAL                         R10 6
       37 GETTABLEKS                       R10 R10 K5 ["addConnections"]
       39 MOVE                             R11 R8
       40 MOVE                             R12 R9
       41 CALL                             R10 2 0
       42 CLOSEUPVALS                      R6
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 GETTABLEKS                       R7 R1 K0 ["ruleInstance"]
        4 GETTABLEKS                       R8 R1 K1 ["property"]
        6 MOVE                             R9 R2
        7 MOVE                             R10 R3
        8 MOVE                             R11 R4
        9 CALL                             R5 6 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 GETTABLEKS                       R8 R1 K0 ["ruleInstance"]
        4 GETTABLEKS                       R10 R1 K1 ["property"]
        6 LOADK                            R11 K2 ["Id"]
        7 CONCAT                           R9 R10 R11
        8 GETTABLEKS                       R10 R2 K3 ["assetId"]
       10 MOVE                             R11 R3
       11 MOVE                             R12 R4
       12 CALL                             R6 6 0
       13 GETUPVAL                         R6 0
       14 MOVE                             R7 R0
       15 GETTABLEKS                       R8 R1 K0 ["ruleInstance"]
       17 GETTABLEKS                       R10 R1 K1 ["property"]
       19 LOADK                            R11 K4 ["Enabled"]
       20 CONCAT                           R9 R10 R11
       21 GETTABLEKS                       R10 R2 K5 ["enabled"]
       23 MOVE                             R11 R3
       24 MOVE                             R12 R5
       25 CALL                             R6 6 0
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+27]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K0 ["stopCycling"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K1 ["property"]
       11 SETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R0 K2 ["setCurrentAnimationAsync"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K3 ["ruleInstance"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K1 ["property"]
       20 LOADK                            R6 K4 ["Id"]
       21 CONCAT                           R4 R5 R6
       22 GETTABLE                         R2 R3 R4
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K1 ["property"]
       26 LOADB                            R4 1
       27 CALL                             R1 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 2
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K1 ["property"]
       33 JUMPIFNOTEQ                      R1 R2 ; [+11]
       35 LOADNIL                          R1
       36 SETUPVAL                         R1 2
       37 GETTABLEKS                       R1 R0 K2 ["setCurrentAnimationAsync"]
       39 LOADN                            R2 0
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K1 ["property"]
       43 LOADB                            R4 0
       44 CALL                             R1 3 0
       45 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["boolean"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected boolean value"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["try"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 GETUPVAL                         R3 4
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["property"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+16]
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["stopCycling"]
       12 CALL                             R1 0 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K2 ["setCurrentAnimationAsync"]
       16 GETUPVAL                         R2 4
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K0 ["property"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_8:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected number value for assetId"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["try"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 GETUPVAL                         R3 4
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U3
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U3
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K0 ["createAssetIdInvokes"]
       15 MOVE                             R6 R0
       16 MOVE                             R7 R1
       17 MOVE                             R8 R2
       18 LOADB                            R9 1
       19 MOVE                             R10 R4
       20 MOVE                             R11 R3
       21 CALL                             R5 6 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createAssetIdInvokes"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 LOADB                            R8 0
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 CALL                             R4 6 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K2 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K7 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K6 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R0 K10 ["Src"]
       23 GETTABLEKS                       R4 R4 K11 ["Util"]
       25 GETTABLEKS                       R4 R4 K12 ["BridgingFiles"]
       27 GETTABLEKS                       R4 R4 K13 ["AssetDmFiles"]
       29 GETTABLEKS                       R4 R4 K14 ["assetDmConnectionManager"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R5 R0 K15 ["Packages"]
       36 GETTABLEKS                       R5 R5 K16 ["Promise"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K9 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Src"]
       43 GETTABLEKS                       R6 R6 K11 ["Util"]
       45 GETTABLEKS                       R6 R6 K12 ["BridgingFiles"]
       47 GETTABLEKS                       R6 R6 K13 ["AssetDmFiles"]
       49 GETTABLEKS                       R6 R6 K17 ["assetDmPlaceSettingsStatus"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K9 [require]
       54 GETTABLEKS                       R7 R0 K10 ["Src"]
       56 GETTABLEKS                       R7 R7 K11 ["Util"]
       58 GETTABLEKS                       R7 R7 K12 ["BridgingFiles"]
       60 GETTABLEKS                       R7 R7 K13 ["AssetDmFiles"]
       62 GETTABLEKS                       R7 R7 K18 ["assetDmTypes"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K9 [require]
       67 GETTABLEKS                       R8 R0 K10 ["Src"]
       69 GETTABLEKS                       R8 R8 K19 ["Flags"]
       71 GETTABLEKS                       R8 R8 K20 ["getFFlagAvatarSettingsPreviewStandardWalkAnimation"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K9 [require]
       76 GETTABLEKS                       R9 R0 K10 ["Src"]
       78 GETTABLEKS                       R9 R9 K11 ["Util"]
       80 GETTABLEKS                       R9 R9 K21 ["InvokeKeys"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K9 [require]
       85 GETTABLEKS                       R10 R0 K10 ["Src"]
       87 GETTABLEKS                       R10 R10 K11 ["Util"]
       89 GETTABLEKS                       R10 R10 K22 ["AvatarPreview"]
       91 GETTABLEKS                       R10 R10 K23 ["previewAnimationManager"]
       93 CALL                             R9 1 1
       94 GETIMPORT                        R10 K9 [require]
       96 GETTABLEKS                       R11 R0 K10 ["Src"]
       98 GETTABLEKS                       R11 R11 K11 ["Util"]
      100 GETTABLEKS                       R11 R11 K22 ["AvatarPreview"]
      102 GETTABLEKS                       R11 R11 K24 ["previewFolderUtils"]
      104 CALL                             R10 1 1
      105 GETIMPORT                        R11 K9 [require]
      107 GETTABLEKS                       R12 R0 K10 ["Src"]
      109 GETTABLEKS                       R12 R12 K19 ["Flags"]
      111 GETTABLEKS                       R12 R12 K25 ["getEngineFeatureAvatarSettingsPlaceAvatarRules"]
      113 CALL                             R11 1 1
      114 NEWTABLE                         R12 4 0
      116 LOADNIL                          R13
      117 DUPCLOSURE                       R14 K26 [PROTO_2]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R3
      125 DUPCLOSURE                       R15 K27 [PROTO_3]
      126 CAPTURE                          VAL R14
      127 SETTABLEKS                       R15 R12 K28 ["createInvokes"]
      129 DUPCLOSURE                       R15 K29 [PROTO_4]
      130 CAPTURE                          VAL R14
      131 SETTABLEKS                       R15 R12 K30 ["createAssetIdInvokes"]
      133 NEWCLOSURE                       R15 P3
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R7
      136 CAPTURE                          REF R13
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R12
      139 SETTABLEKS                       R15 R12 K31 ["createAnimationAssetIdInvokes"]
      141 DUPCLOSURE                       R15 K32 [PROTO_10]
      142 CAPTURE                          VAL R12
      143 SETTABLEKS                       R15 R12 K33 ["createAccessoryAssetIdInvokes"]
      145 CLOSEUPVALS                      R13
      146 RETURN                           R12 1
