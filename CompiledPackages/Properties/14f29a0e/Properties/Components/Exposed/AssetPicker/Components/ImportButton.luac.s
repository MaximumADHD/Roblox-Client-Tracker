PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ImportButton"]
        2 LOADK                            R3 K1 ["Import"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["browseAssetsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetType"]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["onImportComplete"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 DUPCLOSURE                       R3 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R4 0 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["locale"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 3
       28 GETTABLEKS                       R6 R0 K6 ["assetType"]
       30 GETTABLEKS                       R7 R1 K7 ["browseAssetsAsync"]
       32 GETTABLEKS                       R8 R0 K8 ["onImportComplete"]
       34 SETLIST                          R5 R6 3 [1]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 3
       38 GETUPVAL                         R5 4
       39 DUPTABLE                         R6 K16 [{"LayoutOrder", "text", "isDisabled", "fillBehavior", "size", "width", "onActivated"}]
       40 GETTABLEKS                       R7 R0 K17 ["layoutOrder"]
       42 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       44 SETTABLEKS                       R2 R6 K10 ["text"]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R9 R0 K6 ["assetType"]
       49 CALL                             R8 1 1
       50 NOT                              R7 R8
       51 SETTABLEKS                       R7 R6 K11 ["isDisabled"]
       53 GETUPVAL                         R7 6
       54 GETTABLEKS                       R7 R7 K18 ["Enums"]
       56 GETTABLEKS                       R7 R7 K19 ["FillBehavior"]
       58 GETTABLEKS                       R7 R7 K20 ["Fill"]
       60 SETTABLEKS                       R7 R6 K12 ["fillBehavior"]
       62 GETUPVAL                         R7 6
       63 GETTABLEKS                       R7 R7 K18 ["Enums"]
       65 GETTABLEKS                       R7 R7 K21 ["InputSize"]
       67 GETTABLEKS                       R7 R7 K22 ["XSmall"]
       69 SETTABLEKS                       R7 R6 K13 ["size"]
       71 GETIMPORT                        R7 K25 [UDim.new]
       73 LOADN                            R8 1
       74 LOADN                            R9 0
       75 CALL                             R7 2 1
       76 SETTABLEKS                       R7 R6 K14 ["width"]
       78 SETTABLEKS                       R3 R6 K15 ["onActivated"]
       80 CALL                             R4 2 -1
       81 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Contexts"]
       19 GETTABLEKS                       R4 R4 K9 ["BrowserContext"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R2 K10 ["Foundation"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R2 K11 ["React"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R7 R1 K12 ["Resources"]
       36 GETTABLEKS                       R7 R7 K13 ["Localization"]
       38 GETTABLEKS                       R7 R7 K14 ["Translator"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K7 [require]
       43 GETTABLEKS                       R8 R1 K15 ["Types"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K7 [require]
       48 GETTABLEKS                       R9 R1 K16 ["Util"]
       50 GETTABLEKS                       R9 R9 K17 ["isAnimationAssetType"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R4 K18 ["Button"]
       55 GETTABLEKS                       R10 R5 K19 ["createElement"]
       57 DUPCLOSURE                       R11 K20 [PROTO_2]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 RETURN                           R11 1
