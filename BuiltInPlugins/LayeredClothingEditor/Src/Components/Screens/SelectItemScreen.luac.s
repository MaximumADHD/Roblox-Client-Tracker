PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["isClothes"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K2 ["Parent"]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["isAvatar"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 NAMECALL                         R3 R2 K4 ["Clone"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K6 [ipairs]
       26 NAMECALL                         R5 R3 K7 ["GetChildren"]
       28 CALL                             R5 1 -1
       29 CALL                             R4 -1 3
       30 FORGPREP_INEXT                   R4
       31 GETTABLEKS                       R9 R8 K8 ["Name"]
       33 GETTABLEKS                       R10 R0 K8 ["Name"]
       35 JUMPIFNOTEQ                      R9 R10 ; [+4]
       37 NAMECALL                         R9 R8 K9 ["Destroy"]
       39 CALL                             R9 1 0
       40 FORGLOOP                         R4 2 [inext] ; [-10]
       42 GETTABLEKS                       R4 R1 K10 ["AddUserAddedAssetForPreview"]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K11 ["TABS_KEYS"]
       47 GETTABLEKS                       R5 R5 K12 ["Avatars"]
       49 MOVE                             R6 R3
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["EditingItemContext"]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["setSourceItem"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["checkForPreviewAvatar"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["props"]
       17 GETTABLEKS                       R1 R1 K4 ["SetToolMode"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K5 ["TOOL_MODE"]
       22 GETTABLEKS                       R2 R2 K6 ["None"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["props"]
       28 GETTABLEKS                       R1 R1 K7 ["GoToNext"]
       30 CALL                             R1 0 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSourceItem"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K1 ["Plugin"]
        6 GETTABLEKS                       R4 R1 K2 ["Localization"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K5 [{"Text", "OnConfirm"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K0 ["props"]
       13 GETTABLEKS                       R7 R7 K2 ["Localization"]
       15 LOADK                            R9 K6 ["Select"]
       16 LOADK                            R10 K7 ["LoseChanges"]
       17 NAMECALL                         R7 R7 K8 ["getText"]
       19 CALL                             R7 3 1
       20 SETTABLEKS                       R7 R6 K3 ["Text"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R7 R6 K4 ["OnConfirm"]
       27 CALL                             R2 4 0
       28 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R2 R0 K2 ["selectedPart"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["isSelectedInstanceValid"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+63]
       14 GETUPVAL                         R5 1
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+6]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["getRejectionReason"]
       20 MOVE                             R5 R2
       21 CALL                             R4 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 0
       25 DUPTABLE                         R7 K8 [{["invalidSelected"] = True, ["selectedPart"], ["rejectionReason"]}]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K9 ["None"]
       29 SETTABLEKS                       R8 R7 K2 ["selectedPart"]
       31 MOVE                             R8 R4
       32 JUMPIF                           R8 ; [+3]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K9 ["None"]
       36 SETTABLEKS                       R8 R7 K7 ["rejectionReason"]
       38 NAMECALL                         R5 R5 K10 ["setState"]
       40 CALL                             R5 2 0
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R6 R1 K11 ["Plugin"]
       44 GETTABLEKS                       R7 R1 K12 ["Localization"]
       46 GETUPVAL                         R8 4
       47 DUPTABLE                         R9 K15 [{"Text", "OnClose"}]
       48 JUMPIFNOT                        R4 ; [+11]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K1 ["props"]
       52 GETTABLEKS                       R10 R10 K12 ["Localization"]
       54 LOADK                            R12 K16 ["Select"]
       55 MOVE                             R13 R4
       56 NAMECALL                         R10 R10 K17 ["getText"]
       58 CALL                             R10 3 1
       59 JUMP                             ; [+10]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K1 ["props"]
       63 GETTABLEKS                       R10 R10 K12 ["Localization"]
       65 LOADK                            R12 K16 ["Select"]
       66 LOADK                            R13 K18 ["Invalid"]
       67 NAMECALL                         R10 R10 K17 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K13 ["Text"]
       72 DUPCLOSURE                       R10 K19 [PROTO_4]
       73 SETTABLEKS                       R10 R9 K14 ["OnClose"]
       75 CALL                             R5 4 0
       76 RETURN                           R0 0
       77 JUMPIFNOT                        R2 ; [+19]
       78 GETTABLEKS                       R4 R1 K20 ["EditingItemContext"]
       80 NAMECALL                         R4 R4 K21 ["getSourceItem"]
       82 CALL                             R4 1 1
       83 JUMPIFNOT                        R4 ; [+2]
       84 JUMPIFNOTEQ                      R4 R2 ; [+7]
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R5 R5 K22 ["setSourceItem"]
       89 MOVE                             R6 R2
       90 CALL                             R5 1 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R5 R5 K23 ["onSelectNewItem"]
       95 MOVE                             R6 R2
       96 CALL                             R5 1 0
       97 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getReason"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["props"]
        7 GETTABLEKS                       R3 R3 K2 ["EditingItemContext"]
        9 NAMECALL                         R3 R3 K3 ["getItem"]
       11 CALL                             R3 1 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["getRejectionReason"]
        9 MOVE                             R4 R0
       10 CALL                             R3 1 1
       11 JUMPIFEQKNIL                     R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R1 K2 ["EditingItemContext"]
       18 NAMECALL                         R2 R2 K3 ["getItem"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K4 ["isPotentialLayeredClothingItem"]
       24 MOVE                             R4 R0
       25 CALL                             R3 1 1
       26 JUMPIF                           R3 ; [+2]
       27 LOADB                            R3 0
       28 RETURN                           R3 1
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K5 ["hasInvalidCage"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 1
       34 JUMPIFNOT                        R3 ; [+2]
       35 LOADB                            R3 0
       36 RETURN                           R3 1
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K6 ["isAvatar"]
       40 MOVE                             R4 R0
       41 CALL                             R3 1 1
       42 LOADK                            R6 K7 ["MeshPart"]
       43 NAMECALL                         R4 R0 K8 ["IsA"]
       45 CALL                             R4 2 1
       46 JUMPIFNOT                        R4 ; [+4]
       47 LOADK                            R6 K9 ["WrapTarget"]
       48 NAMECALL                         R4 R0 K10 ["FindFirstChildWhichIsA"]
       50 CALL                             R4 2 1
       51 JUMPIF                           R3 ; [+1]
       52 JUMPIFNOT                        R4 ; [+2]
       53 LOADB                            R5 0
       54 RETURN                           R5 1
       55 LOADK                            R8 K11 ["LayeredClothingEditorPreview"]
       56 NAMECALL                         R6 R0 K12 ["FindFirstAncestor"]
       58 CALL                             R6 2 1
       59 JUMPIFNOTEQKNIL                  R6 ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 JUMPIFEQ                         R0 R2 ; [+2]
       65 LOADB                            R6 0 +1
       66 LOADB                            R6 1
       67 MOVE                             R7 R2
       68 JUMPIFNOT                        R7 ; [+6]
       69 GETTABLEKS                       R8 R2 K13 ["Parent"]
       71 JUMPIFEQ                         R0 R8 ; [+2]
       73 LOADB                            R7 0 +1
       74 LOADB                            R7 1
       75 MOVE                             R8 R2
       76 JUMPIFNOT                        R8 ; [+5]
       77 GETTABLEKS                       R10 R2 K14 ["Name"]
       79 NAMECALL                         R8 R0 K12 ["FindFirstAncestor"]
       81 CALL                             R8 2 1
       82 MOVE                             R9 R0
       83 JUMPIFNOT                        R9 ; [+10]
       84 MOVE                             R9 R2
       85 JUMPIFNOT                        R9 ; [+8]
       86 GETTABLEKS                       R10 R0 K13 ["Parent"]
       88 GETTABLEKS                       R11 R2 K13 ["Parent"]
       90 JUMPIFEQ                         R10 R11 ; [+2]
       92 LOADB                            R9 0 +1
       93 LOADB                            R9 1
       94 MOVE                             R11 R5
       95 JUMPIF                           R11 ; [+7]
       96 MOVE                             R11 R6
       97 JUMPIF                           R11 ; [+5]
       98 MOVE                             R11 R7
       99 JUMPIF                           R11 ; [+3]
      100 MOVE                             R11 R9
      101 JUMPIF                           R11 ; [+1]
      102 MOVE                             R11 R8
      103 NOT                              R10 R11
      104 RETURN                           R10 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1], ["invalidSelected"] = False}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K4 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["selectedPart"]
        7 NAMECALL                         R0 R0 K5 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K6 ["ancestryChangedHandle"]
       13 NAMECALL                         R0 R0 K7 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 0
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K6 ["ancestryChangedHandle"]
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K4 [{[1], ["invalidSelected"] = False, ["rejectionReason"]}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K5 ["getHandle"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["selectedPart"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K6 ["None"]
       12 SETTABLEKS                       R4 R3 K3 ["rejectionReason"]
       14 NAMECALL                         R1 R1 K7 ["setState"]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K8 ["ancestryChangedHandle"]
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K8 ["ancestryChangedHandle"]
       24 NAMECALL                         R1 R1 K9 ["Disconnect"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R2 R0 K10 ["AncestryChanged"]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U2
       33 NAMECALL                         R2 R2 K11 ["Connect"]
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R1 K8 ["ancestryChangedHandle"]
       38 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K4 [{[1] = True, ["selectedPart"], ["rejectionReason"]}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K5 ["None"]
        5 SETTABLEKS                       R4 R3 K2 ["selectedPart"]
        7 GETUPVAL                         R5 2
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+10]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K6 ["getRejectionReason"]
       13 MOVE                             R5 R0
       14 CALL                             R4 1 1
       15 JUMPIF                           R4 ; [+5]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["None"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K3 ["rejectionReason"]
       23 NAMECALL                         R1 R1 K7 ["setState"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K4 [{[1] = , ["invalidSelected"] = False}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K6 ["checkForPreviewAvatar"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R1 R0 K7 ["setSourceItem"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 SETTABLEKS                       R1 R0 K8 ["onSelectNewItem"]
       20 NEWCLOSURE                       R1 P3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U7
       26 SETTABLEKS                       R1 R0 K9 ["onConfirmSelection"]
       28 NEWCLOSURE                       R1 P4
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K10 ["getRejectionReason"]
       33 NEWCLOSURE                       R1 P5
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R1 R0 K11 ["isSelectedInstanceValid"]
       39 NEWCLOSURE                       R1 P6
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U6
       43 SETTABLEKS                       R1 R0 K12 ["onSelectValidInstance"]
       45 NEWCLOSURE                       R1 P7
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U5
       49 SETTABLEKS                       R1 R0 K13 ["onInvalidSelectionInstance"]
       51 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["EditingItemContext"]
        4 NAMECALL                         R1 R1 K2 ["getSourceItem"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 DUPTABLE                         R4 K4 [{"selectedPart"}]
        9 SETTABLEKS                       R1 R4 K3 ["selectedPart"]
       11 NAMECALL                         R2 R0 K5 ["setState"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["selectedPart"]
        6 JUMPIFNOT                        R4 ; [+5]
        7 GETTABLEKS                       R3 R2 K2 ["selectedPart"]
        9 GETTABLEKS                       R3 R3 K3 ["Name"]
       11 JUMPIF                           R3 ; [+1]
       12 LOADK                            R3 K4 [""]
       13 GETTABLEKS                       R4 R2 K5 ["invalidSelected"]
       15 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETTABLEKS                       R6 R1 K6 ["Stylizer"]
       21 GETTABLEKS                       R7 R1 K7 ["Localization"]
       23 JUMPIFNOT                        R4 ; [+6]
       24 LOADK                            R10 K8 ["Select"]
       25 LOADK                            R11 K9 ["Invalid"]
       26 NAMECALL                         R8 R7 K10 ["getText"]
       28 CALL                             R8 3 1
       29 JUMPIF                           R8 ; [+1]
       30 MOVE                             R8 R3
       31 GETUPVAL                         R10 0
       32 CALL                             R10 0 1
       33 JUMPIFNOT                        R10 ; [+11]
       34 JUMPIFNOT                        R4 ; [+10]
       35 GETTABLEKS                       R10 R2 K11 ["rejectionReason"]
       37 JUMPIFNOT                        R10 ; [+7]
       38 LOADK                            R11 K8 ["Select"]
       39 GETTABLEKS                       R12 R2 K11 ["rejectionReason"]
       41 NAMECALL                         R9 R7 K10 ["getText"]
       43 CALL                             R9 3 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R9
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K12 ["createElement"]
       49 LOADK                            R11 K13 ["Frame"]
       50 DUPTABLE                         R12 K18 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       51 GETIMPORT                        R13 K21 [UDim2.new]
       53 LOADN                            R14 1
       54 LOADN                            R15 0
       55 LOADN                            R16 1
       56 LOADN                            R17 0
       57 CALL                             R13 4 1
       58 SETTABLEKS                       R13 R12 K14 ["Size"]
       60 GETTABLEKS                       R13 R6 K22 ["BackgroundColor"]
       62 SETTABLEKS                       R13 R12 K15 ["BackgroundColor3"]
       64 DUPTABLE                         R13 K25 [{"SelectFrame", "InstanceSelector"}]
       65 GETUPVAL                         R14 1
       66 GETTABLEKS                       R14 R14 K12 ["createElement"]
       68 GETUPVAL                         R15 2
       69 DUPTABLE                         R16 K30 [{"PartName", "ButtonEnabled", "OnConfirmSelection", "RejectionReasonText"}]
       70 SETTABLEKS                       R8 R16 K26 ["PartName"]
       72 SETTABLEKS                       R5 R16 K27 ["ButtonEnabled"]
       74 GETTABLEKS                       R17 R0 K31 ["onConfirmSelection"]
       76 SETTABLEKS                       R17 R16 K28 ["OnConfirmSelection"]
       78 SETTABLEKS                       R9 R16 K29 ["RejectionReasonText"]
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K23 ["SelectFrame"]
       83 GETUPVAL                         R14 1
       84 GETTABLEKS                       R14 R14 K12 ["createElement"]
       86 GETUPVAL                         R15 3
       87 DUPTABLE                         R16 K36 [{"IsSelectedInstanceValid", "OnValidSelection", "OnInvalidSelection", "OnInvalidClickSelection"}]
       88 GETTABLEKS                       R17 R0 K37 ["isSelectedInstanceValid"]
       90 SETTABLEKS                       R17 R16 K32 ["IsSelectedInstanceValid"]
       92 GETTABLEKS                       R17 R0 K38 ["onSelectValidInstance"]
       94 SETTABLEKS                       R17 R16 K33 ["OnValidSelection"]
       96 GETTABLEKS                       R17 R0 K39 ["onInvalidSelectionInstance"]
       98 SETTABLEKS                       R17 R16 K34 ["OnInvalidSelection"]
      100 GETUPVAL                         R18 0
      101 CALL                             R18 0 1
      102 JUMPIFNOT                        R18 ; [+3]
      103 GETTABLEKS                       R17 R0 K39 ["onInvalidSelectionInstance"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R17
      107 SETTABLEKS                       R17 R16 K35 ["OnInvalidClickSelection"]
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K24 ["InstanceSelector"]
      112 CALL                             R10 3 -1
      113 RETURN                           R10 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["ancestryChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["ancestryChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["ancestryChangedHandle"]
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K2 [{"SetToolMode", "AddUserAddedAssetForPreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetToolMode"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["AddUserAddedAssetForPreview"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["Util"]
       34 GETTABLEKS                       R4 R4 K10 ["AccessoryAndBodyToolShared"]
       36 GETTABLEKS                       R5 R4 K11 ["ItemCharacteristics"]
       38 GETTABLEKS                       R6 R4 K12 ["PreviewConstants"]
       40 GETTABLEKS                       R7 R3 K13 ["Components"]
       42 GETTABLEKS                       R8 R7 K14 ["ConfirmDialog"]
       44 GETTABLEKS                       R9 R7 K15 ["ConfirmCancelDialog"]
       46 GETTABLEKS                       R10 R7 K16 ["InstanceSelector"]
       48 GETIMPORT                        R11 K4 [require]
       50 GETTABLEKS                       R12 R0 K5 ["Packages"]
       52 GETTABLEKS                       R12 R12 K17 ["Framework"]
       54 CALL                             R11 1 1
       55 GETTABLEKS                       R12 R11 K18 ["ContextServices"]
       57 GETTABLEKS                       R13 R12 K19 ["withContext"]
       59 GETTABLEKS                       R14 R3 K20 ["Contexts"]
       61 GETTABLEKS                       R14 R14 K21 ["EditingItemContext"]
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R16 R0 K22 ["Src"]
       67 GETTABLEKS                       R16 R16 K23 ["Actions"]
       69 GETTABLEKS                       R16 R16 K24 ["SetToolMode"]
       71 CALL                             R15 1 1
       72 GETIMPORT                        R16 K4 [require]
       74 GETTABLEKS                       R17 R0 K22 ["Src"]
       76 GETTABLEKS                       R17 R17 K25 ["Thunks"]
       78 GETTABLEKS                       R17 R17 K26 ["AddUserAddedAssetForPreview"]
       80 CALL                             R16 1 1
       81 GETIMPORT                        R17 K4 [require]
       83 GETTABLEKS                       R18 R0 K22 ["Src"]
       85 GETTABLEKS                       R18 R18 K13 ["Components"]
       87 GETTABLEKS                       R18 R18 K27 ["SelectFrame"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K4 [require]
       92 GETTABLEKS                       R19 R0 K22 ["Src"]
       94 GETTABLEKS                       R19 R19 K9 ["Util"]
       96 GETTABLEKS                       R19 R19 K28 ["ShowDialog"]
       98 CALL                             R18 1 1
       99 GETIMPORT                        R19 K4 [require]
      101 GETTABLEKS                       R20 R0 K22 ["Src"]
      103 GETTABLEKS                       R20 R20 K9 ["Util"]
      105 GETTABLEKS                       R20 R20 K29 ["Constants"]
      107 CALL                             R19 1 1
      108 GETIMPORT                        R20 K4 [require]
      110 GETTABLEKS                       R21 R0 K22 ["Src"]
      112 GETTABLEKS                       R21 R21 K9 ["Util"]
      114 GETTABLEKS                       R21 R21 K30 ["SelectionRejection"]
      116 CALL                             R20 1 1
      117 GETIMPORT                        R21 K4 [require]
      119 GETTABLEKS                       R22 R0 K22 ["Src"]
      121 GETTABLEKS                       R22 R22 K31 ["Flags"]
      123 GETTABLEKS                       R22 R22 K32 ["getFFlagLayeredClothingEditorSelectionRejectionReasons"]
      125 CALL                             R21 1 1
      126 GETTABLEKS                       R22 R1 K33 ["PureComponent"]
      128 LOADK                            R24 K34 ["SelectItemScreen"]
      129 NAMECALL                         R22 R22 K35 ["extend"]
      131 CALL                             R22 2 1
      132 GETTABLEKS                       R23 R11 K9 ["Util"]
      134 GETTABLEKS                       R24 R23 K36 ["Typecheck"]
      136 GETTABLEKS                       R25 R24 K37 ["wrap"]
      138 MOVE                             R26 R22
      139 GETIMPORT                        R27 K1 [script]
      141 CALL                             R25 2 0
      142 DUPCLOSURE                       R25 K38 [PROTO_11]
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R20
      152 SETTABLEKS                       R25 R22 K39 ["init"]
      154 DUPCLOSURE                       R25 K40 [PROTO_12]
      155 SETTABLEKS                       R25 R22 K41 ["didMount"]
      157 DUPCLOSURE                       R25 K42 [PROTO_13]
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R10
      162 SETTABLEKS                       R25 R22 K43 ["render"]
      164 DUPCLOSURE                       R25 K44 [PROTO_14]
      165 SETTABLEKS                       R25 R22 K45 ["willUnmount"]
      167 MOVE                             R25 R13
      168 DUPTABLE                         R26 K49 [{"Plugin", "Stylizer", "Localization", "EditingItemContext"}]
      169 GETTABLEKS                       R27 R12 K46 ["Plugin"]
      171 SETTABLEKS                       R27 R26 K46 ["Plugin"]
      173 GETTABLEKS                       R27 R12 K47 ["Stylizer"]
      175 SETTABLEKS                       R27 R26 K47 ["Stylizer"]
      177 GETTABLEKS                       R27 R12 K48 ["Localization"]
      179 SETTABLEKS                       R27 R26 K48 ["Localization"]
      181 SETTABLEKS                       R14 R26 K21 ["EditingItemContext"]
      183 CALL                             R25 1 1
      184 MOVE                             R26 R22
      185 CALL                             R25 1 1
      186 MOVE                             R22 R25
      187 DUPCLOSURE                       R25 K50 [PROTO_17]
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R16
      190 GETTABLEKS                       R26 R2 K51 ["connect"]
      192 LOADNIL                          R27
      193 MOVE                             R28 R25
      194 CALL                             R26 2 1
      195 MOVE                             R27 R22
      196 CALL                             R26 1 -1
      197 RETURN                           R26 -1
