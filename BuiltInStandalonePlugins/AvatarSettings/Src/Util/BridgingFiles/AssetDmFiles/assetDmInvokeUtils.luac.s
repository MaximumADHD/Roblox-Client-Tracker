PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["IsAncestorOf"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+10]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["CreateAvatarRules"]
       10 GETTABLEKS                       R3 R4 K2 ["fromAssetDm"]
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
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 GETTABLE                         R1 R2 R3
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 JUMPIF                           R0 ; [+4]
       11 GETUPVAL                         R1 4
       12 GETTABLEKS                       R0 R1 K0 ["applyAvatarRulesWithDebounce"]
       14 CALL                             R0 0 0
       15 GETUPVAL                         R0 5
       16 JUMPIFNOT                        R0 ; [+3]
       17 LOADB                            R0 0
       18 SETUPVAL                         R0 5
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R3 7
       22 GETTABLEKS                       R2 R3 K1 ["fromAssetDm"]
       24 GETUPVAL                         R4 0
       25 GETUPVAL                         R5 2
       26 GETTABLE                         R3 R4 R5
       27 NAMECALL                         R0 R0 K2 ["Invoke"]
       29 CALL                             R0 3 0
       30 RETURN                           R0 0

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
       28 CAPTURE                          REF R6
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 NAMECALL                         R9 R9 K4 ["Connect"]
       33 CALL                             R9 2 1
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R10 R11 K5 ["addConnections"]
       37 MOVE                             R11 R8
       38 MOVE                             R12 R9
       39 CALL                             R10 2 0
       40 CLOSEUPVALS                      R6
       41 RETURN                           R0 0

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
        1 JUMPIFNOT                        R1 ; [+21]
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R1 R2 K0 ["property"]
        5 SETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R0 K1 ["setCurrentAnimationAsync"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["ruleInstance"]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R5 R7 K0 ["property"]
       14 LOADK                            R6 K3 ["Id"]
       15 CONCAT                           R4 R5 R6
       16 GETTABLE                         R2 R3 R4
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K0 ["property"]
       20 LOADB                            R4 1
       21 CALL                             R1 3 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K0 ["property"]
       27 JUMPIFNOTEQ                      R1 R2 ; [+11]
       29 LOADNIL                          R1
       30 SETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R0 K1 ["setCurrentAnimationAsync"]
       33 LOADN                            R2 0
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R3 R4 K0 ["property"]
       37 LOADB                            R4 0
       38 CALL                             R1 3 0
       39 RETURN                           R0 0

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
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["try"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 GETUPVAL                         R3 3
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["property"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+9]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["setCurrentAnimationAsync"]
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K0 ["property"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

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
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["try"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 GETUPVAL                         R3 3
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R5 R6 K0 ["createAssetIdInvokes"]
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 LOADB                            R9 1
       17 MOVE                             R10 R4
       18 MOVE                             R11 R3
       19 CALL                             R5 6 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createAssetIdInvokes"]
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
       21 GETTABLEKS                       R8 R0 K10 ["Src"]
       23 GETTABLEKS                       R7 R8 K11 ["Util"]
       25 GETTABLEKS                       R6 R7 K12 ["BridgingFiles"]
       27 GETTABLEKS                       R5 R6 K13 ["AssetDmFiles"]
       29 GETTABLEKS                       R4 R5 K14 ["assetDmConnectionManager"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Packages"]
       36 GETTABLEKS                       R5 R6 K16 ["Promise"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K9 [require]
       41 GETTABLEKS                       R10 R0 K10 ["Src"]
       43 GETTABLEKS                       R9 R10 K11 ["Util"]
       45 GETTABLEKS                       R8 R9 K12 ["BridgingFiles"]
       47 GETTABLEKS                       R7 R8 K13 ["AssetDmFiles"]
       49 GETTABLEKS                       R6 R7 K17 ["assetDmTypes"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K9 [require]
       54 GETTABLEKS                       R9 R0 K10 ["Src"]
       56 GETTABLEKS                       R8 R9 K11 ["Util"]
       58 GETTABLEKS                       R7 R8 K18 ["InvokeKeys"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K9 [require]
       63 GETTABLEKS                       R11 R0 K10 ["Src"]
       65 GETTABLEKS                       R10 R11 K11 ["Util"]
       67 GETTABLEKS                       R9 R10 K19 ["AvatarPreview"]
       69 GETTABLEKS                       R8 R9 K20 ["previewAnimationManager"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K9 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Src"]
       76 GETTABLEKS                       R11 R12 K11 ["Util"]
       78 GETTABLEKS                       R10 R11 K19 ["AvatarPreview"]
       80 GETTABLEKS                       R9 R10 K21 ["previewFolderUtils"]
       82 CALL                             R8 1 1
       83 NEWTABLE                         R9 4 0
       85 LOADNIL                          R10
       86 DUPCLOSURE                       R11 K22 [PROTO_2]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R3
       92 DUPCLOSURE                       R12 K23 [PROTO_3]
       93 CAPTURE                          VAL R11
       94 SETTABLEKS                       R12 R9 K24 ["createInvokes"]
       96 DUPCLOSURE                       R12 K25 [PROTO_4]
       97 CAPTURE                          VAL R11
       98 SETTABLEKS                       R12 R9 K26 ["createAssetIdInvokes"]
      100 NEWCLOSURE                       R12 P3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          REF R10
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R9
      105 SETTABLEKS                       R12 R9 K27 ["createAnimationAssetIdInvokes"]
      107 DUPCLOSURE                       R12 K28 [PROTO_10]
      108 CAPTURE                          VAL R9
      109 SETTABLEKS                       R12 R9 K29 ["createAccessoryAssetIdInvokes"]
      111 CLOSEUPVALS                      R10
      112 RETURN                           R9 1
