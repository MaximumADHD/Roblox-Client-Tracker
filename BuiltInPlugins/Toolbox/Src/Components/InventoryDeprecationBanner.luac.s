PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ASSET_MANAGER"]
        3 GETTABLEKS                       R1 R1 K1 ["ENUMS"]
        5 GETTABLEKS                       R1 R1 K2 ["CREATOR_INVENTORY_ITEM_TYPE"]
        7 NEWTABLE                         R2 64 0
        9 GETTABLEKS                       R3 R1 K3 ["Animation"]
       11 SETTABLEKS                       R3 R2 K3 ["Animation"]
       13 GETTABLEKS                       R3 R1 K4 ["Audio"]
       15 SETTABLEKS                       R3 R2 K4 ["Audio"]
       17 GETTABLEKS                       R3 R1 K5 ["Decal"]
       19 SETTABLEKS                       R3 R2 K5 ["Decal"]
       21 GETTABLEKS                       R3 R1 K6 ["FontFamily"]
       23 SETTABLEKS                       R3 R2 K6 ["FontFamily"]
       25 GETTABLEKS                       R3 R1 K7 ["Mesh"]
       27 SETTABLEKS                       R3 R2 K7 ["Mesh"]
       29 GETTABLEKS                       R3 R1 K8 ["MeshPart"]
       31 SETTABLEKS                       R3 R2 K8 ["MeshPart"]
       33 GETTABLEKS                       R3 R1 K9 ["Model"]
       35 SETTABLEKS                       R3 R2 K9 ["Model"]
       37 GETTABLEKS                       R3 R1 K10 ["Plugin"]
       39 SETTABLEKS                       R3 R2 K10 ["Plugin"]
       41 GETTABLEKS                       R3 R1 K11 ["Video"]
       43 SETTABLEKS                       R3 R2 K11 ["Video"]
       45 LOADNIL                          R3
       46 SETTABLEKS                       R3 R2 K12 ["Package"]
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R2 K13 ["Hat"]
       51 LOADNIL                          R3
       52 SETTABLEKS                       R3 R2 K14 ["TShirt"]
       54 LOADNIL                          R3
       55 SETTABLEKS                       R3 R2 K15 ["Shirt"]
       57 LOADNIL                          R3
       58 SETTABLEKS                       R3 R2 K16 ["Pants"]
       60 LOADNIL                          R3
       61 SETTABLEKS                       R3 R2 K17 ["HairAccessory"]
       63 LOADNIL                          R3
       64 SETTABLEKS                       R3 R2 K18 ["FaceAccessory"]
       66 LOADNIL                          R3
       67 SETTABLEKS                       R3 R2 K19 ["NeckAccessory"]
       69 LOADNIL                          R3
       70 SETTABLEKS                       R3 R2 K20 ["ShoulderAccessory"]
       72 LOADNIL                          R3
       73 SETTABLEKS                       R3 R2 K21 ["FrontAccessory"]
       75 LOADNIL                          R3
       76 SETTABLEKS                       R3 R2 K22 ["BackAccessory"]
       78 LOADNIL                          R3
       79 SETTABLEKS                       R3 R2 K23 ["WaistAccessory"]
       81 LOADNIL                          R3
       82 SETTABLEKS                       R3 R2 K24 ["TShirtAccessory"]
       84 LOADNIL                          R3
       85 SETTABLEKS                       R3 R2 K25 ["ShirtAccessory"]
       87 LOADNIL                          R3
       88 SETTABLEKS                       R3 R2 K26 ["PantsAccessory"]
       90 LOADNIL                          R3
       91 SETTABLEKS                       R3 R2 K27 ["JacketAccessory"]
       93 LOADNIL                          R3
       94 SETTABLEKS                       R3 R2 K28 ["SweaterAccessory"]
       96 LOADNIL                          R3
       97 SETTABLEKS                       R3 R2 K29 ["ShortsAccessory"]
       99 LOADNIL                          R3
      100 SETTABLEKS                       R3 R2 K30 ["LeftShoeAccessory"]
      102 LOADNIL                          R3
      103 SETTABLEKS                       R3 R2 K31 ["RightShoeAccessory"]
      105 LOADNIL                          R3
      106 SETTABLEKS                       R3 R2 K32 ["DressSkirtAccessory"]
      108 LOADNIL                          R3
      109 SETTABLEKS                       R3 R2 K33 ["EmoteAnimation"]
      111 LOADNIL                          R3
      112 SETTABLEKS                       R3 R2 K34 ["EyebrowAccessory"]
      114 LOADNIL                          R3
      115 SETTABLEKS                       R3 R2 K35 ["EyelashAccessory"]
      117 LOADNIL                          R3
      118 SETTABLEKS                       R3 R2 K36 ["FaceMakeup"]
      120 LOADNIL                          R3
      121 SETTABLEKS                       R3 R2 K37 ["LipMakeup"]
      123 LOADNIL                          R3
      124 SETTABLEKS                       R3 R2 K38 ["EyeMakeup"]
      126 GETTABLE                         R3 R2 R0
      127 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["assetType"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["assetType"]
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+6]
       10 NEWTABLE                         R2 0 1
       12 MOVE                             R3 R1
       13 SETLIST                          R2 R3 1 [1]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 GETTABLEKS                       R4 R0 K0 ["assetType"]
       19 GETIMPORT                        R5 K4 [Enum.AssetType.Package]
       21 GETTABLEKS                       R5 R5 K5 ["Name"]
       23 JUMPIFEQ                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 DUPTABLE                         R4 K12 [{"Source", "ItemTypes", "IsPackage", "ScopeType", "ScopeId", "ViewType"}]
       28 LOADK                            R5 K13 ["Toolbox-%*-%*"]
       29 GETTABLEKS                       R7 R0 K14 ["tabKey"]
       31 GETTABLEKS                       R8 R0 K15 ["categoryName"]
       33 NAMECALL                         R5 R5 K16 ["format"]
       35 CALL                             R5 3 1
       36 SETTABLEKS                       R5 R4 K6 ["Source"]
       38 SETTABLEKS                       R2 R4 K7 ["ItemTypes"]
       40 JUMPIFNOT                        R3 ; [+2]
       41 LOADB                            R5 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 SETTABLEKS                       R5 R4 K8 ["IsPackage"]
       46 GETTABLEKS                       R6 R0 K17 ["groupId"]
       48 JUMPIFNOT                        R6 ; [+10]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K18 ["ASSET_MANAGER"]
       52 GETTABLEKS                       R5 R5 K19 ["ENUMS"]
       54 GETTABLEKS                       R5 R5 K20 ["SCOPE_TYPE"]
       56 GETTABLEKS                       R5 R5 K21 ["Group"]
       58 JUMP                             ; [+9]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K18 ["ASSET_MANAGER"]
       62 GETTABLEKS                       R5 R5 K19 ["ENUMS"]
       64 GETTABLEKS                       R5 R5 K20 ["SCOPE_TYPE"]
       66 GETTABLEKS                       R5 R5 K22 ["User"]
       68 SETTABLEKS                       R5 R4 K9 ["ScopeType"]
       70 GETTABLEKS                       R5 R0 K17 ["groupId"]
       72 SETTABLEKS                       R5 R4 K10 ["ScopeId"]
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K18 ["ASSET_MANAGER"]
       77 GETTABLEKS                       R6 R6 K19 ["ENUMS"]
       79 GETTABLEKS                       R6 R6 K23 ["CREATOR_INVENTORY_ITEM_TYPE"]
       81 GETTABLEKS                       R6 R6 K24 ["Audio"]
       83 JUMPIFNOTEQ                      R1 R6 ; [+11]
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K18 ["ASSET_MANAGER"]
       88 GETTABLEKS                       R5 R5 K19 ["ENUMS"]
       90 GETTABLEKS                       R5 R5 K25 ["VIEW_TYPE"]
       92 GETTABLEKS                       R5 R5 K26 ["List"]
       94 JUMP                             ; [+9]
       95 GETUPVAL                         R5 1
       96 GETTABLEKS                       R5 R5 K18 ["ASSET_MANAGER"]
       98 GETTABLEKS                       R5 R5 K19 ["ENUMS"]
      100 GETTABLEKS                       R5 R5 K25 ["VIEW_TYPE"]
      102 GETTABLEKS                       R5 R5 K27 ["Grid"]
      104 SETTABLEKS                       R5 R4 K11 ["ViewType"]
      106 GETUPVAL                         R5 2
      107 GETUPVAL                         R7 1
      108 GETTABLEKS                       R7 R7 K18 ["ASSET_MANAGER"]
      110 GETTABLEKS                       R7 R7 K28 ["MEMSTORAGE_EVENTS"]
      112 GETTABLEKS                       R7 R7 K29 ["OPEN_FROM_EXTERNAL_TRIGGER"]
      114 GETUPVAL                         R8 3
      115 MOVE                             R10 R4
      116 NAMECALL                         R8 R8 K30 ["JSONEncode"]
      118 CALL                             R8 2 -1
      119 NAMECALL                         R5 R5 K31 ["Fire"]
      121 CALL                             R5 -1 0
      122 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K4 [{"text", "onActivated"}]
        7 LOADK                            R5 K5 ["InventoryDeprecationBanner"]
        8 LOADK                            R6 K6 ["ReadMore"]
        9 NAMECALL                         R3 R1 K7 ["getText"]
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K2 ["text"]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K3 ["onActivated"]
       17 GETUPVAL                         R3 2
       18 CALL                             R3 0 1
       19 JUMPIFNOT                        R3 ; [+48]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K8 ["createElement"]
       23 GETUPVAL                         R4 4
       24 DUPTABLE                         R5 K15 [{["variant"], ["severity"], ["text"], ["actions"], ["onClose"], ["testId"] = "inventory-deprecation-banner"}]
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R6 R6 K16 ["System"]
       28 SETTABLEKS                       R6 R5 K9 ["variant"]
       30 GETUPVAL                         R6 6
       31 GETTABLEKS                       R6 R6 K17 ["Warning"]
       33 SETTABLEKS                       R6 R5 K10 ["severity"]
       35 LOADK                            R8 K5 ["InventoryDeprecationBanner"]
       36 LOADK                            R9 K18 ["Message"]
       37 NAMECALL                         R6 R1 K7 ["getText"]
       39 CALL                             R6 3 1
       40 SETTABLEKS                       R6 R5 K2 ["text"]
       42 DUPTABLE                         R6 K21 [{"primary", "secondary"}]
       43 DUPTABLE                         R7 K4 [{"text", "onActivated"}]
       44 LOADK                            R10 K22 ["Announcement"]
       45 LOADK                            R11 K23 ["TakeMeThere"]
       46 NAMECALL                         R8 R1 K7 ["getText"]
       48 CALL                             R8 3 1
       49 SETTABLEKS                       R8 R7 K2 ["text"]
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R8 R7 K3 ["onActivated"]
       56 SETTABLEKS                       R7 R6 K19 ["primary"]
       58 SETTABLEKS                       R2 R6 K20 ["secondary"]
       60 SETTABLEKS                       R6 R5 K11 ["actions"]
       62 GETTABLEKS                       R6 R0 K12 ["onClose"]
       64 SETTABLEKS                       R6 R5 K12 ["onClose"]
       66 CALL                             R3 2 -1
       67 RETURN                           R3 -1
       68 GETUPVAL                         R3 3
       69 GETTABLEKS                       R3 R3 K8 ["createElement"]
       71 GETUPVAL                         R4 4
       72 DUPTABLE                         R5 K25 [{["variant"], ["severity"], ["text"], ["link"], ["onClose"], ["testId"] = "inventory-deprecation-banner"}]
       73 GETUPVAL                         R6 5
       74 GETTABLEKS                       R6 R6 K16 ["System"]
       76 SETTABLEKS                       R6 R5 K9 ["variant"]
       78 GETUPVAL                         R6 6
       79 GETTABLEKS                       R6 R6 K17 ["Warning"]
       81 SETTABLEKS                       R6 R5 K10 ["severity"]
       83 LOADK                            R8 K5 ["InventoryDeprecationBanner"]
       84 LOADK                            R9 K18 ["Message"]
       85 NAMECALL                         R6 R1 K7 ["getText"]
       87 CALL                             R6 3 1
       88 SETTABLEKS                       R6 R5 K2 ["text"]
       90 SETTABLEKS                       R2 R5 K24 ["link"]
       92 GETTABLEKS                       R6 R0 K12 ["onClose"]
       94 SETTABLEKS                       R6 R5 K12 ["onClose"]
       96 CALL                             R3 2 -1
       97 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K5 [{"colorMode", "overlayGui"}]
       12 SETTABLEKS                       R1 R4 K3 ["colorMode"]
       14 GETTABLEKS                       R5 R0 K4 ["overlayGui"]
       16 SETTABLEKS                       R5 R4 K4 ["overlayGui"]
       18 GETTABLEKS                       R5 R0 K6 ["children"]
       20 CALL                             R2 3 -1
       21 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 DUPTABLE                         R4 K2 [{"Foundation"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R7 K4 [{"overlayGui"}]
       11 GETTABLEKS                       R8 R0 K3 ["overlayGui"]
       13 SETTABLEKS                       R8 R7 K3 ["overlayGui"]
       15 DUPTABLE                         R8 K6 [{"Container"}]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K0 ["createElement"]
       19 GETUPVAL                         R10 3
       20 DUPTABLE                         R11 K11 [{["Position"], ["tag"] = "size-full-0 auto-y", ["onAbsoluteSizeChanged"]}]
       21 GETTABLEKS                       R12 R0 K7 ["Position"]
       23 SETTABLEKS                       R12 R11 K7 ["Position"]
       25 GETTABLEKS                       R12 R0 K10 ["onAbsoluteSizeChanged"]
       27 SETTABLEKS                       R12 R11 K10 ["onAbsoluteSizeChanged"]
       29 DUPTABLE                         R12 K13 [{"Alert"}]
       30 GETUPVAL                         R13 0
       31 GETTABLEKS                       R13 R13 K0 ["createElement"]
       33 GETUPVAL                         R14 4
       34 DUPTABLE                         R15 K19 [{"assetType", "categoryName", "groupId", "onClose", "tabKey"}]
       35 GETTABLEKS                       R16 R0 K14 ["assetType"]
       37 SETTABLEKS                       R16 R15 K14 ["assetType"]
       39 GETTABLEKS                       R16 R0 K15 ["categoryName"]
       41 SETTABLEKS                       R16 R15 K15 ["categoryName"]
       43 GETTABLEKS                       R16 R0 K16 ["groupId"]
       45 SETTABLEKS                       R16 R15 K16 ["groupId"]
       47 GETTABLEKS                       R16 R0 K17 ["onClose"]
       49 SETTABLEKS                       R16 R15 K17 ["onClose"]
       51 GETTABLEKS                       R16 R0 K18 ["tabKey"]
       53 SETTABLEKS                       R16 R15 K18 ["tabKey"]
       55 CALL                             R13 2 1
       56 SETTABLEKS                       R13 R12 K12 ["Alert"]
       58 CALL                             R9 3 1
       59 SETTABLEKS                       R9 R8 K5 ["Container"]
       61 CALL                             R5 3 1
       62 SETTABLEKS                       R5 R4 K1 ["Foundation"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MemStorageService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETTABLEKS                       R4 R3 K9 ["Packages"]
       29 GETIMPORT                        R5 K11 [require]
       31 GETTABLEKS                       R6 R4 K12 ["React"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K11 [require]
       36 GETTABLEKS                       R7 R4 K13 ["Foundation"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K11 [require]
       41 GETTABLEKS                       R8 R4 K14 ["StudioFoundation"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K11 [require]
       46 GETTABLEKS                       R9 R4 K15 ["Framework"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K11 [require]
       51 GETTABLEKS                       R10 R3 K16 ["SharedPluginConstants"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R8 K17 ["ContextServices"]
       56 GETIMPORT                        R11 K11 [require]
       58 GETTABLEKS                       R12 R3 K18 ["Src"]
       60 GETTABLEKS                       R12 R12 K19 ["Flags"]
       62 GETTABLEKS                       R12 R12 K20 ["getFStringToolboxInventoryDeprecationBannerUrl"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K11 [require]
       67 GETTABLEKS                       R13 R3 K18 ["Src"]
       69 GETTABLEKS                       R13 R13 K19 ["Flags"]
       71 GETTABLEKS                       R13 R13 K21 ["getFFlagToolboxInventoryDeprecationBannerRouteButton"]
       73 CALL                             R12 1 1
       74 GETTABLEKS                       R13 R6 K22 ["Alert"]
       76 GETTABLEKS                       R14 R6 K23 ["Enums"]
       78 GETTABLEKS                       R14 R14 K24 ["AlertSeverity"]
       80 GETTABLEKS                       R15 R6 K23 ["Enums"]
       82 GETTABLEKS                       R15 R15 K25 ["AlertVariant"]
       84 GETTABLEKS                       R16 R6 K26 ["FoundationProvider"]
       86 GETTABLEKS                       R17 R6 K27 ["View"]
       88 GETTABLEKS                       R18 R7 K28 ["Contexts"]
       90 GETTABLEKS                       R18 R18 K29 ["StudioThemeContextProvider"]
       92 GETTABLEKS                       R19 R7 K28 ["Contexts"]
       94 GETTABLEKS                       R19 R19 K30 ["ThemeContext"]
       96 DUPCLOSURE                       R20 K31 [PROTO_0]
       97 CAPTURE                          VAL R9
       98 DUPCLOSURE                       R21 K32 [PROTO_1]
       99 CAPTURE                          VAL R20
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R1
      103 DUPCLOSURE                       R22 K33 [PROTO_2]
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R11
      106 DUPCLOSURE                       R23 K34 [PROTO_4]
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R22
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R21
      115 DUPCLOSURE                       R24 K35 [PROTO_5]
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R16
      119 DUPCLOSURE                       R25 K36 [PROTO_6]
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R24
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R23
      125 RETURN                           R25 1
