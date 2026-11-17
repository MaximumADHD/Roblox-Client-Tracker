PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 JUMPIF                           R1 ; [+11]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Fragment"]
        9 LOADNIL                          R3
       10 GETTABLEKS                       R4 R0 K3 ["children"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1
       14 GETTABLEKS                       R3 R0 K4 ["localization"]
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       22 LOADK                            R3 K5 ["MaterialPickerProviders requires localization when enabled"]
       23 GETIMPORT                        R1 K7 [assert]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K1 ["createElement"]
       29 GETUPVAL                         R2 1
       30 DUPTABLE                         R3 K12 [{"onStyleSheetChange", "overlayGui", "plugin", "theme"}]
       31 GETTABLEKS                       R4 R0 K8 ["onStyleSheetChange"]
       33 SETTABLEKS                       R4 R3 K8 ["onStyleSheetChange"]
       35 GETTABLEKS                       R4 R0 K9 ["overlayGui"]
       37 SETTABLEKS                       R4 R3 K9 ["overlayGui"]
       39 GETTABLEKS                       R4 R0 K10 ["plugin"]
       41 SETTABLEKS                       R4 R3 K10 ["plugin"]
       43 GETTABLEKS                       R4 R0 K11 ["theme"]
       45 SETTABLEKS                       R4 R3 K11 ["theme"]
       47 DUPTABLE                         R4 K14 [{"Localization"}]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K1 ["createElement"]
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R6 R6 K15 ["Provider"]
       54 DUPTABLE                         R7 K16 [{"localization"}]
       55 GETTABLEKS                       R8 R0 K4 ["localization"]
       57 SETTABLEKS                       R8 R7 K4 ["localization"]
       59 GETTABLEKS                       R8 R0 K3 ["children"]
       61 CALL                             R5 3 1
       62 SETTABLEKS                       R5 R4 K13 ["Localization"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R3 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 DUPCLOSURE                       R6 K14 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 RETURN                           R6 1
