PROTO_0:
        0 GETIMPORT                        R1 K2 [Enum.AssetType]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["AssetType"]
        5 GETTABLE                         R0 R1 R2
        6 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"label", "attachmentName"}]
        1 SETTABLEKS                       R0 R2 K0 ["label"]
        3 GETTABLEKS                       R3 R1 K3 ["Name"]
        5 SETTABLEKS                       R3 R2 K1 ["attachmentName"]
        7 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R7
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 FORGPREP                         R8
       14 GETIMPORT                        R13 K1 [pcall]
       16 NEWCLOSURE                       R14 P0
       17 CAPTURE                          VAL R12
       18 CALL                             R13 1 2
       19 JUMPIFNOT                        R13 ; [+37]
       20 GETUPVAL                         R16 1
       21 GETTABLEKS                       R16 R16 K2 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
       23 GETTABLE                         R15 R16 R14
       24 JUMPIFEQKNIL                     R15 ; [+32]
       26 GETTABLEKS                       R16 R12 K3 ["AssetType"]
       28 GETTABLE                         R15 R2 R16
       29 JUMPIF                           R15 ; [+27]
       30 GETTABLEKS                       R15 R12 K3 ["AssetType"]
       32 LOADB                            R16 1
       33 SETTABLE                         R16 R2 R15
       34 DUPTABLE                         R17 K6 [{"Id", "Label"}]
       35 GETTABLEKS                       R18 R14 K7 ["Name"]
       37 SETTABLEKS                       R18 R17 K4 ["Id"]
       39 GETTABLEKS                       R18 R12 K3 ["AssetType"]
       41 SETTABLEKS                       R18 R17 K5 ["Label"]
       43 FASTCALL2                        TABLE_INSERT R0 R17 ; [+4]
       45 MOVE                             R16 R0
       46 GETIMPORT                        R15 K10 [table.insert]
       48 CALL                             R15 2 0
       49 GETUPVAL                         R15 2
       50 GETTABLEKS                       R15 R15 K11 ["collectArray"]
       52 GETTABLEKS                       R16 R12 K12 ["Attachments"]
       54 DUPCLOSURE                       R17 K13 [PROTO_1]
       55 CALL                             R15 2 1
       56 SETTABLE                         R15 R1 R14
       57 FORGLOOP                         R8 2 ; [-44]
       59 FORGLOOP                         R3 2 ; [-50]
       61 RETURN                           R0 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AvatarToolsShared"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K10 ["Util"]
       32 GETTABLEKS                       R4 R4 K12 ["AccessoryAndBodyToolShared"]
       34 GETTABLEKS                       R4 R4 K13 ["AssetTypeAttachmentInfo"]
       36 DUPCLOSURE                       R5 K14 [PROTO_2]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
