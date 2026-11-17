PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 LOADB                            R1 0
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K1 [type]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+14]
       13 LOADB                            R1 0
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R0 ; [+10]
       17 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K5 [math.floor]
       21 CALL                             R2 1 1
       22 JUMPIFEQ                         R0 R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+2]
        3 LOADNIL                          R4
        4 RETURN                           R4 1
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+5]
        7 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        9 JUMPIFEQKB                       R2 TRUE ; [+3]
       11 LOADNIL                          R4
       12 RETURN                           R4 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K0 ["isUsablePublishingFee"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 1
       18 JUMPIF                           R4 ; [+12]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K1 ["shouldDebugWarnings"]
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+5]
       24 GETIMPORT                        R4 K3 [warn]
       26 LOADK                            R5 K4 ["Dropping the publish on approval opt in: the publishing fee is unusable:"]
       27 MOVE                             R6 R3
       28 CALL                             R4 2 0
       29 LOADNIL                          R4
       30 RETURN                           R4 1
       31 GETUPVAL                         R4 3
       32 DUPTABLE                         R6 K8 [{["publishOnApproval"] = True, ["agreedPublishingFee"]}]
       33 SETTABLEKS                       R3 R6 K7 ["agreedPublishingFee"]
       35 NAMECALL                         R4 R4 K9 ["JSONEncode"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+3]
        7 LOADN                            R1 0
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K0 ["publishOnApprovalEnabled"]
       11 JUMPIFNOTEQKB                    R1 TRUE ; [+13]
       13 GETTABLEKS                       R1 R0 K1 ["publishOnApprovalToggled"]
       15 JUMPIFNOTEQKB                    R1 TRUE ; [+9]
       17 GETTABLEKS                       R1 R0 K2 ["hasPublishingPreferences"]
       19 JUMPIFNOTEQKB                    R1 TRUE ; [+5]
       21 GETTABLEKS                       R1 R0 K3 ["hasPublishingFeePreview"]
       23 JUMPIFEQKB                       R1 TRUE ; [+3]
       25 LOADN                            R1 0
       26 RETURN                           R1 1
       27 GETTABLEKS                       R1 R0 K4 ["publishingFeePreview"]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K5 ["isUsablePublishingFee"]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 1
       34 JUMPIF                           R2 ; [+2]
       35 LOADN                            R2 0
       36 RETURN                           R2 1
       37 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 ORK                              R2 R0 K0 [0]
        4 RETURN                           R2 1
        5 ORK                              R3 R0 K0 [0]
        6 ORK                              R4 R1 K0 [0]
        7 ADD                              R2 R3 R4
        8 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AssetConfig"]
        2 MOVE                             R5 R0
        3 DUPTABLE                         R6 K2 [{"amount"}]
        4 GETUPVAL                         R8 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R10 R1
        7 GETIMPORT                        R9 K4 [tostring]
        9 CALL                             R9 1 1
       10 CONCAT                           R7 R8 R9
       11 SETTABLEKS                       R7 R6 K1 ["amount"]
       13 NAMECALL                         R2 R2 K5 ["getText"]
       15 CALL                             R2 4 -1
       16 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADK                            R3 K0 [""]
        4 RETURN                           R3 1
        5 FASTCALL1                        TONUMBER R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K3 [tonumber]
        9 CALL                             R4 1 1
       10 ORK                              R3 R4 K1 [0]
       11 FASTCALL1                        TONUMBER R2 ; [+3]
       12 MOVE                             R6 R2
       13 GETIMPORT                        R5 K3 [tonumber]
       15 CALL                             R5 1 1
       16 ORK                              R4 R5 K1 [0]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 GETIMPORT                        R6 K6 [table.concat]
       22 NEWTABLE                         R7 0 3
       24 LOADK                            R10 K7 ["AssetConfig"]
       25 LOADK                            R11 K8 ["PayAndConfirmUploadFee"]
       26 DUPTABLE                         R12 K10 [{"amount"}]
       27 GETUPVAL                         R14 1
       28 FASTCALL1                        TOSTRING R3 ; [+3]
       29 MOVE                             R16 R3
       30 GETIMPORT                        R15 K12 [tostring]
       32 CALL                             R15 1 1
       33 CONCAT                           R13 R14 R15
       34 SETTABLEKS                       R13 R12 K9 ["amount"]
       36 NAMECALL                         R8 R0 K13 ["getText"]
       38 CALL                             R8 4 1
       39 LOADK                            R11 K7 ["AssetConfig"]
       40 LOADK                            R12 K14 ["PayAndConfirmPublishingFee"]
       41 DUPTABLE                         R13 K10 [{"amount"}]
       42 GETUPVAL                         R15 1
       43 FASTCALL1                        TOSTRING R4 ; [+3]
       44 MOVE                             R17 R4
       45 GETIMPORT                        R16 K12 [tostring]
       47 CALL                             R16 1 1
       48 CONCAT                           R14 R15 R16
       49 SETTABLEKS                       R14 R13 K9 ["amount"]
       51 NAMECALL                         R9 R0 K13 ["getText"]
       53 CALL                             R9 4 1
       54 MOVE                             R10 R5
       55 LOADK                            R11 K15 ["PayAndConfirmTotal"]
       56 GETUPVAL                         R12 2
       57 GETTABLEKS                       R12 R12 K16 ["getSubmitTotal"]
       59 MOVE                             R13 R3
       60 MOVE                             R14 R4
       61 CALL                             R12 2 -1
       62 CALL                             R10 -1 -1
       63 SETLIST                          R7 R8 -1 [1]
       65 LOADK                            R8 K17 ["\n"]
       66 CALL                             R6 2 -1
       67 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADK                            R2 K0 [""]
        4 RETURN                           R2 1
        5 JUMPIFEQKNIL                     R0 ; [+9]
        7 LOADK                            R3 K1 ["&groupId="]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K3 [tostring]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1
       15 JUMPIFEQKNIL                     R1 ; [+12]
       17 LOADN                            R2 0
       18 JUMPIFNOTLT                      R2 R1 ; [+9]
       20 LOADK                            R3 K4 ["&userId="]
       21 FASTCALL1                        TOSTRING R1 ; [+3]
       22 MOVE                             R5 R1
       23 GETIMPORT                        R4 K3 [tostring]
       25 CALL                             R4 1 1
       26 CONCAT                           R2 R3 R4
       27 RETURN                           R2 1
       28 LOADK                            R2 K0 [""]
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["DebugFlags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K3 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Flags"]
       24 GETTABLEKS                       R4 R4 K9 ["getFFlagToolboxPublishOnApproval"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K11 [game]
       29 LOADK                            R6 K12 ["HttpService"]
       30 NAMECALL                         R4 R4 K13 ["GetService"]
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K16 [utf8.char]
       35 LOADK                            R6 K17 [57346]
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 8 0
       39 DUPCLOSURE                       R7 K18 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R7 R6 K19 ["isUsablePublishingFee"]
       43 DUPCLOSURE                       R7 K20 [PROTO_1]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R7 R6 K21 ["getPublishOnApprovalCreationContext"]
       50 DUPCLOSURE                       R7 K22 [PROTO_2]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R7 R6 K23 ["getPublishOnApprovalFee"]
       55 DUPCLOSURE                       R7 K24 [PROTO_3]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R7 R6 K25 ["getSubmitTotal"]
       59 DUPCLOSURE                       R7 K26 [PROTO_5]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R7 R6 K27 ["getItemizedFeeDescription"]
       65 DUPCLOSURE                       R7 K28 [PROTO_6]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R7 R6 K29 ["getCreatorQueryParam"]
       69 RETURN                           R6 1
