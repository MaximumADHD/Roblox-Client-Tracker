PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["shouldShowPrices"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+17]
        7 GETIMPORT                        R3 K3 [UDim2.new]
        9 LOADN                            R4 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["ASSET_WIDTH_NO_PADDING"]
       13 LOADN                            R6 0
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K5 ["ASSET_HEIGHT"]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K6 ["PRICE_HEIGHT"]
       20 ADD                              R7 R8 R9
       21 CALL                             R3 4 1
       22 MOVE                             R1 R3
       23 RETURN                           R1 1
       24 GETIMPORT                        R3 K3 [UDim2.new]
       26 LOADN                            R4 0
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K4 ["ASSET_WIDTH_NO_PADDING"]
       30 LOADN                            R6 0
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K5 ["ASSET_HEIGHT"]
       34 CALL                             R3 4 1
       35 MOVE                             R1 R3
       36 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K3 [string.gsub]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K4 ["^%s*(.-)%s*$"]
        8 LOADK                            R4 K5 ["%1"]
        9 CALL                             R1 3 1
       10 MOVE                             R0 R1
       11 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
       13 LOADNIL                          R1
       14 RETURN                           R1 1
       15 GETIMPORT                        R1 K7 [string.match]
       17 MOVE                             R2 R0
       18 LOADK                            R3 K8 ["^rbxassetid://(%d+)"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+1]
       21 RETURN                           R1 1
       22 GETIMPORT                        R2 K7 [string.match]
       24 GETIMPORT                        R3 K10 [string.lower]
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 LOADK                            R4 K11 ["^https?://"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+7]
       31 GETIMPORT                        R2 K7 [string.match]
       33 MOVE                             R3 R0
       34 LOADK                            R4 K12 ["[?&]id=(%d+)"]
       35 CALL                             R2 2 1
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R2 1
       38 LOADNIL                          R2
       39 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 LOADN                            R2 0
        7 JUMPIFNOTLE                      R1 R2 ; [+3]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K4 [math.floor]
       15 CALL                             R2 1 1
       16 JUMPIFEQ                         R2 R1 ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["%S"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ASSET_STATUS"]
        5 GETTABLEKS                       R2 R2 K2 ["ReviewPending"]
        7 RETURN                           R2 1
        8 JUMPIFNOTEQKN                    R0 K3 [2] ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["ASSET_STATUS"]
       13 GETTABLEKS                       R2 R2 K4 ["Moderated"]
       15 RETURN                           R2 1
       16 JUMPIFNOTEQKN                    R0 K5 [3] ; [+7]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["ASSET_STATUS"]
       21 GETTABLEKS                       R2 R2 K6 ["ReviewApproved"]
       23 RETURN                           R2 1
       24 JUMPIFNOTEQKN                    R1 K7 [0] ; [+7]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K1 ["ASSET_STATUS"]
       29 GETTABLEKS                       R2 R2 K8 ["OnSale"]
       31 RETURN                           R2 1
       32 JUMPIFNOTEQKN                    R1 K0 [1] ; [+7]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K1 ["ASSET_STATUS"]
       37 GETTABLEKS                       R2 R2 K9 ["OffSale"]
       39 RETURN                           R2 1
       40 JUMPIFNOTEQKN                    R1 K3 [2] ; [+7]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K1 ["ASSET_STATUS"]
       45 GETTABLEKS                       R2 R2 K10 ["Free"]
       47 RETURN                           R2 1
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K1 ["ASSET_STATUS"]
       51 GETTABLEKS                       R2 R2 K11 ["Unknown"]
       53 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 GETTABLEKS                       R2 R2 K8 ["Category"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["AssetConfigConstants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Flags"]
       40 GETTABLEKS                       R5 R5 K13 ["getFFlagEnableUploadingAvatarAnimations"]
       42 CALL                             R4 1 1
       43 NEWTABLE                         R5 8 0
       45 DUPCLOSURE                       R6 K14 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R6 R5 K15 ["getAssetSize"]
       50 MOVE                             R6 R4
       51 CALL                             R6 0 1
       52 JUMPIFNOT                        R6 ; [+6]
       53 DUPCLOSURE                       R6 K16 [PROTO_1]
       54 SETTABLEKS                       R6 R5 K17 ["parseDependencyContentIdToAssetIdString"]
       56 DUPCLOSURE                       R6 K18 [PROTO_2]
       57 SETTABLEKS                       R6 R5 K19 ["parsePositiveIntegerFromText"]
       59 DUPCLOSURE                       R6 K20 [PROTO_3]
       60 SETTABLEKS                       R6 R5 K21 ["trimmedStringInputHasContent"]
       62 DUPCLOSURE                       R6 K22 [PROTO_4]
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R6 R5 K23 ["getStatus"]
       66 RETURN                           R5 1
