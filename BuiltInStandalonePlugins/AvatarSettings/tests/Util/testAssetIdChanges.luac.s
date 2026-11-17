PROTO_0:
        0 GETTABLEKS                       R5 R2 K0 ["ruleInstance"]
        2 GETTABLEKS                       R7 R2 K1 ["property"]
        4 LOADK                            R8 K2 ["Id"]
        5 CONCAT                           R6 R7 R8
        6 GETTABLEKS                       R8 R2 K1 ["property"]
        8 LOADK                            R9 K3 ["Enabled"]
        9 CONCAT                           R7 R8 R9
       10 MOVE                             R8 R3
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R10 R10 K4 ["validAnimationAssetIdMap"]
       14 GETTABLE                         R9 R10 R3
       15 JUMPIFNOT                        R9 ; [+17]
       16 GETTABLEKS                       R9 R2 K1 ["property"]
       18 JUMPIFEQKS                       R9 K5 ["CustomIdleAlt1Animation"] ; [+5]
       20 GETTABLEKS                       R9 R2 K1 ["property"]
       22 JUMPIFNOTEQKS                    R9 K6 ["CustomSwimIdleAnimation"] ; [+3]
       24 ADDK                             R8 R8 K7 [200]
       25 JUMP                             ; [+7]
       26 GETTABLEKS                       R9 R2 K1 ["property"]
       28 JUMPIFNOTEQKS                    R9 K8 ["CustomIdleAlt2Animation"] ; [+3]
       30 ADDK                             R8 R8 K9 [300]
       31 JUMP                             ; [+1]
       32 ADDK                             R8 R8 K10 [100]
       33 GETTABLEKS                       R9 R0 K11 ["mouseClickOverInstanceAndEnterText"]
       35 GETTABLEKS                       R10 R1 K12 ["assetIdInput"]
       37 FASTCALL1                        TOSTRING R3 ; [+3]
       38 MOVE                             R12 R3
       39 GETIMPORT                        R11 K14 [tostring]
       41 CALL                             R11 1 1
       42 CALL                             R9 2 0
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R10 R1 K12 ["assetIdInput"]
       46 GETTABLEKS                       R10 R10 K15 ["Text"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R9 R9 K16 ["toBe"]
       51 FASTCALL1                        TOSTRING R8 ; [+3]
       52 MOVE                             R11 R8
       53 GETIMPORT                        R10 K14 [tostring]
       55 CALL                             R10 1 1
       56 CALL                             R9 1 0
       57 GETUPVAL                         R9 1
       58 GETTABLE                         R10 R5 R6
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R9 R9 K16 ["toBe"]
       62 MOVE                             R10 R8
       63 CALL                             R9 1 0
       64 GETUPVAL                         R9 1
       65 GETTABLE                         R10 R5 R7
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R9 R9 K16 ["toBe"]
       69 GETTABLEKS                       R10 R1 K17 ["isChecked"]
       71 CALL                             R10 0 -1
       72 CALL                             R9 -1 0
       73 SETTABLE                         R4 R5 R6
       74 GETTABLE                         R10 R5 R7
       75 NOT                              R9 R10
       76 SETTABLE                         R9 R5 R7
       77 GETTABLEKS                       R9 R0 K18 ["updateStylingServiceUnitTestOnly"]
       79 CALL                             R9 0 0
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R10 R1 K12 ["assetIdInput"]
       83 GETTABLEKS                       R10 R10 K15 ["Text"]
       85 CALL                             R9 1 1
       86 GETTABLEKS                       R9 R9 K16 ["toBe"]
       88 FASTCALL1                        TOSTRING R4 ; [+3]
       89 MOVE                             R11 R4
       90 GETIMPORT                        R10 K14 [tostring]
       92 CALL                             R10 1 1
       93 CALL                             R9 1 0
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R10 R1 K17 ["isChecked"]
       97 CALL                             R10 0 -1
       98 CALL                             R9 -1 1
       99 GETTABLEKS                       R9 R9 K16 ["toBe"]
      101 GETTABLE                         R10 R5 R7
      102 CALL                             R9 1 0
      103 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["tests"]
       22 GETTABLEKS                       R3 R3 K11 ["Util"]
       24 GETTABLEKS                       R3 R3 K12 ["TestConstants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K9 ["Src"]
       31 GETTABLEKS                       R4 R4 K11 ["Util"]
       33 GETTABLEKS                       R4 R4 K13 ["BridgingFiles"]
       35 GETTABLEKS                       R4 R4 K14 ["AssetDmFiles"]
       37 GETTABLEKS                       R4 R4 K15 ["assetDmTypes"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K9 ["Src"]
       44 GETTABLEKS                       R5 R5 K10 ["tests"]
       46 GETTABLEKS                       R5 R5 K11 ["Util"]
       48 GETTABLEKS                       R5 R5 K16 ["setup"]
       50 CALL                             R4 1 1
       51 GETTABLEKS                       R5 R1 K17 ["expect"]
       53 DUPCLOSURE                       R6 K18 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 RETURN                           R6 1
