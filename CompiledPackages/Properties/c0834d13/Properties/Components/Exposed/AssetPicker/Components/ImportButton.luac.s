PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ImportButton"]
        2 LOADK                            R3 K1 ["Import"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["assetType"]
        3 GETIMPORT                        R1 K4 [Enum.AssetType.Animation]
        5 JUMPIFNOTEQ                      R0 R1 ; [+15]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K5 ["browseAssetsAsync"]
       10 GETIMPORT                        R1 K4 [Enum.AssetType.Animation]
       12 CALL                             R0 1 1
       13 JUMPIFNOTEQKNIL                  R0 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K6 ["onImportComplete"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 DUPCLOSURE                       R3 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R4 0 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["locale"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K5 ["useCallback"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
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
       46 GETTABLEKS                       R8 R0 K6 ["assetType"]
       48 GETIMPORT                        R9 K21 [Enum.AssetType.Animation]
       50 JUMPIFNOTEQ                      R8 R9 ; [+2]
       52 LOADB                            R7 0 +1
       53 LOADB                            R7 1
       54 SETTABLEKS                       R7 R6 K11 ["isDisabled"]
       56 GETUPVAL                         R10 5
       57 GETTABLEKS                       R9 R10 K22 ["Enums"]
       59 GETTABLEKS                       R8 R9 K23 ["FillBehavior"]
       61 GETTABLEKS                       R7 R8 K24 ["Fill"]
       63 SETTABLEKS                       R7 R6 K12 ["fillBehavior"]
       65 GETUPVAL                         R10 5
       66 GETTABLEKS                       R9 R10 K22 ["Enums"]
       68 GETTABLEKS                       R8 R9 K25 ["InputSize"]
       70 GETTABLEKS                       R7 R8 K26 ["XSmall"]
       72 SETTABLEKS                       R7 R6 K13 ["size"]
       74 GETIMPORT                        R7 K29 [UDim.new]
       76 LOADN                            R8 1
       77 LOADN                            R9 0
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K14 ["width"]
       81 SETTABLEKS                       R3 R6 K15 ["onActivated"]
       83 CALL                             R4 2 -1
       84 RETURN                           R4 -1

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
       17 GETTABLEKS                       R5 R1 K8 ["Contexts"]
       19 GETTABLEKS                       R4 R5 K9 ["BrowserContext"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R2 K10 ["Foundation"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R2 K11 ["React"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R9 R1 K12 ["Resources"]
       36 GETTABLEKS                       R8 R9 K13 ["Localization"]
       38 GETTABLEKS                       R7 R8 K14 ["Translator"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R4 K15 ["Button"]
       43 GETTABLEKS                       R8 R5 K16 ["createElement"]
       45 DUPCLOSURE                       R9 K17 [PROTO_2]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R4
       52 RETURN                           R9 1
