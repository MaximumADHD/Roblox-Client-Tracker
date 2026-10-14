PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K10 [{["variant"], ["severity"], ["text"], ["link"], ["onClose"], ["testId"] = "inventory-deprecation-banner"}]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K11 ["System"]
       14 SETTABLEKS                       R5 R4 K3 ["variant"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K12 ["Warning"]
       19 SETTABLEKS                       R5 R4 K4 ["severity"]
       21 LOADK                            R7 K13 ["InventoryDeprecationBanner"]
       22 LOADK                            R8 K14 ["Message"]
       23 NAMECALL                         R5 R1 K15 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K5 ["text"]
       28 DUPTABLE                         R5 K17 [{"text", "onActivated"}]
       29 LOADK                            R8 K13 ["InventoryDeprecationBanner"]
       30 LOADK                            R9 K18 ["ReadMore"]
       31 NAMECALL                         R6 R1 K15 ["getText"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R5 K5 ["text"]
       36 GETUPVAL                         R6 5
       37 SETTABLEKS                       R6 R5 K16 ["onActivated"]
       39 SETTABLEKS                       R5 R4 K6 ["link"]
       41 GETTABLEKS                       R5 R0 K7 ["onClose"]
       43 SETTABLEKS                       R5 R4 K7 ["onClose"]
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

PROTO_2:
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

PROTO_3:
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
       34 DUPTABLE                         R15 K15 [{"onClose"}]
       35 GETTABLEKS                       R16 R0 K14 ["onClose"]
       37 SETTABLEKS                       R16 R15 K14 ["onClose"]
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K12 ["Alert"]
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K5 ["Container"]
       45 CALL                             R5 3 1
       46 SETTABLEKS                       R5 R4 K1 ["Foundation"]
       48 CALL                             R1 3 -1
       49 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["React"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R2 K11 ["Foundation"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K9 [require]
       29 GETTABLEKS                       R6 R2 K12 ["StudioFoundation"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K9 [require]
       34 GETTABLEKS                       R7 R2 K13 ["Framework"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R6 K14 ["ContextServices"]
       39 GETIMPORT                        R8 K9 [require]
       41 GETTABLEKS                       R9 R1 K15 ["Src"]
       43 GETTABLEKS                       R9 R9 K16 ["Flags"]
       45 GETTABLEKS                       R9 R9 K17 ["getFStringToolboxInventoryDeprecationBannerUrl"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R4 K18 ["Alert"]
       50 GETTABLEKS                       R10 R4 K19 ["Enums"]
       52 GETTABLEKS                       R10 R10 K20 ["AlertSeverity"]
       54 GETTABLEKS                       R11 R4 K19 ["Enums"]
       56 GETTABLEKS                       R11 R11 K21 ["AlertVariant"]
       58 GETTABLEKS                       R12 R4 K22 ["FoundationProvider"]
       60 GETTABLEKS                       R13 R4 K23 ["View"]
       62 GETTABLEKS                       R14 R5 K24 ["Contexts"]
       64 GETTABLEKS                       R14 R14 K25 ["StudioThemeContextProvider"]
       66 GETTABLEKS                       R15 R5 K24 ["Contexts"]
       68 GETTABLEKS                       R15 R15 K26 ["ThemeContext"]
       70 DUPCLOSURE                       R16 K27 [PROTO_0]
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R8
       73 DUPCLOSURE                       R17 K28 [PROTO_1]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R16
       80 DUPCLOSURE                       R18 K29 [PROTO_2]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R15
       83 CAPTURE                          VAL R12
       84 DUPCLOSURE                       R19 K30 [PROTO_3]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R18
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R17
       90 RETURN                           R19 1
