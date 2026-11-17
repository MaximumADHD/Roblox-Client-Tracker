PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["updateEtaSignal"]
        3 JUMPIFNOT                        R4 ; [+7]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["updateEtaSignal"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K1 ["Connect"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K2 ["signal"]
       14 JUMPIFEQKNIL                     R5 ; [+7]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K2 ["signal"]
       19 NAMECALL                         R5 R5 K3 ["Wait"]
       21 CALL                             R5 1 0
       22 JUMPIFEQKNIL                     R4 ; [+4]
       24 NAMECALL                         R5 R4 K4 ["Disconnect"]
       26 CALL                             R5 1 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["result"]
       30 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["updateEtaSignal"]
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["updateEtaSignal"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R3 K1 ["Connect"]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["signal"]
       14 JUMPIFEQKNIL                     R4 ; [+7]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K2 ["signal"]
       19 NAMECALL                         R4 R4 K3 ["Wait"]
       21 CALL                             R4 1 0
       22 JUMPIFEQKNIL                     R3 ; [+4]
       24 NAMECALL                         R4 R3 K4 ["Disconnect"]
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K5 ["result"]
       30 RETURN                           R4 1

PROTO_2:
        0 LOADK                            R1 K0 ["SERIALIZED_MODEL_DUMMY"]
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateEtaSignal"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["updateEtaSignal"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K1 ["Connect"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["signal"]
       14 JUMPIFEQKNIL                     R3 ; [+7]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["signal"]
       19 NAMECALL                         R3 R3 K3 ["Wait"]
       21 CALL                             R3 1 0
       22 JUMPIFEQKNIL                     R2 ; [+4]
       24 NAMECALL                         R3 R2 K4 ["Disconnect"]
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K5 ["result"]
       30 RETURN                           R3 1

PROTO_4:
        0 LOADK                            R1 K0 ["rbxasset://mock"]
        1 RETURN                           R1 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 3
        7 GETTABLEKS                       R4 R0 K1 ["signal"]
        9 GETTABLEKS                       R5 R0 K2 ["result"]
       11 GETTABLEKS                       R6 R0 K3 ["updateEtaSignal"]
       13 SETLIST                          R3 R4 3 [1]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["useCallback"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R4 0 3
       23 GETTABLEKS                       R5 R0 K1 ["signal"]
       25 GETTABLEKS                       R6 R0 K2 ["result"]
       27 GETTABLEKS                       R7 R0 K3 ["updateEtaSignal"]
       29 SETLIST                          R4 R5 3 [1]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K0 ["useCallback"]
       35 DUPCLOSURE                       R4 K4 [PROTO_2]
       36 NEWTABLE                         R5 0 0
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K0 ["useCallback"]
       42 NEWCLOSURE                       R5 P3
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R6 0 3
       46 GETTABLEKS                       R7 R0 K1 ["signal"]
       48 GETTABLEKS                       R8 R0 K2 ["result"]
       50 GETTABLEKS                       R9 R0 K3 ["updateEtaSignal"]
       52 SETLIST                          R6 R7 3 [1]
       54 CALL                             R4 2 1
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       58 DUPCLOSURE                       R6 K5 [PROTO_4]
       59 NEWTABLE                         R7 0 0
       61 CALL                             R5 2 1
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K0 ["useCallback"]
       65 DUPCLOSURE                       R7 K6 [PROTO_5]
       66 NEWTABLE                         R8 0 0
       68 CALL                             R6 2 1
       69 DUPTABLE                         R7 K14 [{"serializeModel", "uploadModelAsync", "startAutoSetupAsync", "startSerializedAutoSetupAsync", "DEPRECATED_startAutoSetupAsync", "autoSetupClickedSignal", "cancelAutoSetup"}]
       70 SETTABLEKS                       R3 R7 K7 ["serializeModel"]
       72 SETTABLEKS                       R5 R7 K8 ["uploadModelAsync"]
       74 SETTABLEKS                       R2 R7 K9 ["startAutoSetupAsync"]
       76 SETTABLEKS                       R1 R7 K10 ["startSerializedAutoSetupAsync"]
       78 SETTABLEKS                       R4 R7 K11 ["DEPRECATED_startAutoSetupAsync"]
       80 GETTABLEKS                       R8 R0 K12 ["autoSetupClickedSignal"]
       82 SETTABLEKS                       R8 R7 K12 ["autoSetupClickedSignal"]
       84 SETTABLEKS                       R6 R7 K13 ["cancelAutoSetup"]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K15 ["createElement"]
       89 GETUPVAL                         R9 1
       90 GETTABLEKS                       R9 R9 K16 ["Provider"]
       92 DUPTABLE                         R10 K18 [{"value"}]
       93 SETTABLEKS                       R7 R10 K17 ["value"]
       95 GETTABLEKS                       R11 R0 K19 ["children"]
       97 CALL                             R8 3 -1
       98 RETURN                           R8 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["signal"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["current"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["result"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 LOADB                            R1 1
       16 SETTABLEKS                       R1 R0 K2 ["current"]
       18 GETIMPORT                        R0 K5 [error]
       20 LOADK                            R1 K6 ["Mock error"]
       21 CALL                             R0 1 -1
       22 RETURN                           R0 -1

PROTO_8:
        0 LOADK                            R1 K0 ["SERIALIZED_MODEL_DUMMY"]
        1 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R1 K0 ["rbxasset://mock"]
        1 RETURN                           R1 1

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["signal"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       21 DUPCLOSURE                       R4 K3 [PROTO_8]
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       28 DUPCLOSURE                       R5 K4 [PROTO_9]
       29 NEWTABLE                         R6 0 0
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       35 DUPCLOSURE                       R6 K5 [PROTO_10]
       36 NEWTABLE                         R7 0 0
       38 CALL                             R5 2 1
       39 DUPTABLE                         R6 K13 [{"serializeModel", "uploadModelAsync", "startAutoSetupAsync", "startSerializedAutoSetupAsync", "DEPRECATED_startAutoSetupAsync", "autoSetupClickedSignal", "cancelAutoSetup"}]
       40 SETTABLEKS                       R3 R6 K6 ["serializeModel"]
       42 SETTABLEKS                       R4 R6 K7 ["uploadModelAsync"]
       44 SETTABLEKS                       R2 R6 K8 ["startAutoSetupAsync"]
       46 SETTABLEKS                       R2 R6 K9 ["startSerializedAutoSetupAsync"]
       48 SETTABLEKS                       R2 R6 K10 ["DEPRECATED_startAutoSetupAsync"]
       50 GETTABLEKS                       R7 R0 K11 ["autoSetupClickedSignal"]
       52 SETTABLEKS                       R7 R6 K11 ["autoSetupClickedSignal"]
       54 SETTABLEKS                       R5 R6 K12 ["cancelAutoSetup"]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K14 ["createElement"]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K15 ["Provider"]
       62 DUPTABLE                         R9 K17 [{"value"}]
       63 SETTABLEKS                       R6 R9 K16 ["value"]
       65 GETTABLEKS                       R10 R0 K18 ["children"]
       67 CALL                             R7 3 -1
       68 RETURN                           R7 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onAutoSetup"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["signal"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K1 ["signal"]
       12 NAMECALL                         R0 R0 K2 ["Wait"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K3 ["result"]
       18 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["onAutoSetup"]
        3 CALL                             R4 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["signal"]
        7 JUMPIFEQKNIL                     R4 ; [+7]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K1 ["signal"]
       12 NAMECALL                         R4 R4 K2 ["Wait"]
       14 CALL                             R4 1 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["result"]
       18 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["onAutoSetup"]
        3 CALL                             R5 0 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K1 ["signal"]
        7 JUMPIFEQKNIL                     R5 ; [+7]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K1 ["signal"]
       12 NAMECALL                         R5 R5 K2 ["Wait"]
       14 CALL                             R5 1 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["result"]
       18 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["onAutoSetup"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["signal"]
        7 JUMPIFEQKNIL                     R3 ; [+7]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["signal"]
       12 NAMECALL                         R3 R3 K2 ["Wait"]
       14 CALL                             R3 1 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["result"]
       18 RETURN                           R2 1

PROTO_16:
        0 LOADK                            R1 K0 ["SERIALIZED_MODEL_DUMMY"]
        1 RETURN                           R1 1

PROTO_17:
        0 LOADK                            R1 K0 ["rbxasset://mock"]
        1 RETURN                           R1 1

PROTO_18:
        0 RETURN                           R0 0

PROTO_19:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 3
        9 GETTABLEKS                       R5 R0 K1 ["signal"]
       11 GETTABLEKS                       R6 R0 K2 ["result"]
       13 GETTABLEKS                       R7 R0 K3 ["onAutoSetup"]
       15 SETLIST                          R4 R5 3 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["useCallback"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R5 0 3
       25 GETTABLEKS                       R6 R0 K1 ["signal"]
       27 GETTABLEKS                       R7 R0 K2 ["result"]
       29 GETTABLEKS                       R8 R0 K3 ["onAutoSetup"]
       31 SETLIST                          R5 R6 3 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K0 ["useCallback"]
       37 NEWCLOSURE                       R5 P3
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R6 0 3
       41 GETTABLEKS                       R7 R0 K1 ["signal"]
       43 GETTABLEKS                       R8 R0 K2 ["result"]
       45 GETTABLEKS                       R9 R0 K3 ["onAutoSetup"]
       47 SETLIST                          R6 R7 3 [1]
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       53 DUPCLOSURE                       R6 K4 [PROTO_16]
       54 NEWTABLE                         R7 0 0
       56 CALL                             R5 2 1
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K0 ["useCallback"]
       60 DUPCLOSURE                       R7 K5 [PROTO_17]
       61 NEWTABLE                         R8 0 0
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K0 ["useCallback"]
       67 DUPCLOSURE                       R8 K6 [PROTO_18]
       68 NEWTABLE                         R9 0 0
       70 CALL                             R7 2 1
       71 DUPTABLE                         R8 K14 [{"serializeModel", "uploadModelAsync", "startAutoSetupAsync", "startSerializedAutoSetupAsync", "DEPRECATED_startAutoSetupAsync", "autoSetupClickedSignal", "cancelAutoSetup"}]
       72 SETTABLEKS                       R5 R8 K7 ["serializeModel"]
       74 SETTABLEKS                       R6 R8 K8 ["uploadModelAsync"]
       76 SETTABLEKS                       R2 R8 K9 ["startAutoSetupAsync"]
       78 SETTABLEKS                       R3 R8 K10 ["startSerializedAutoSetupAsync"]
       80 SETTABLEKS                       R4 R8 K11 ["DEPRECATED_startAutoSetupAsync"]
       82 GETTABLEKS                       R9 R0 K12 ["autoSetupClickedSignal"]
       84 SETTABLEKS                       R9 R8 K12 ["autoSetupClickedSignal"]
       86 SETTABLEKS                       R7 R8 K13 ["cancelAutoSetup"]
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R9 R9 K15 ["createElement"]
       91 GETUPVAL                         R10 1
       92 GETTABLEKS                       R10 R10 K16 ["Provider"]
       94 DUPTABLE                         R11 K18 [{"value"}]
       95 SETTABLEKS                       R8 R11 K17 ["value"]
       97 GETTABLEKS                       R12 R0 K19 ["children"]
       99 CALL                             R9 3 -1
      100 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["AutoSetupContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_6]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 DUPCLOSURE                       R5 K13 [PROTO_11]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 DUPCLOSURE                       R6 K14 [PROTO_19]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 DUPTABLE                         R7 K18 [{"Success", "FailsOnce", "Trackable"}]
       40 SETTABLEKS                       R4 R7 K15 ["Success"]
       42 SETTABLEKS                       R5 R7 K16 ["FailsOnce"]
       44 SETTABLEKS                       R6 R7 K17 ["Trackable"]
       46 RETURN                           R7 1
