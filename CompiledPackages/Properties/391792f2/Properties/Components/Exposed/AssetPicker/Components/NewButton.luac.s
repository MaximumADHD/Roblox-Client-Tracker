PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["NewButton"]
        2 LOADK                            R3 K1 ["New"]
        3 DUPTABLE                         R4 K3 [{"assetType"}]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K2 ["assetType"]
        7 SETTABLEKS                       R5 R4 K2 ["assetType"]
        9 NAMECALL                         R0 R0 K4 ["getText"]
       11 CALL                             R0 4 -1
       12 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["TODO"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 2
        8 GETTABLEKS                       R4 R0 K1 ["assetType"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["locale"]
       13 SETLIST                          R3 R4 2 [1]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 DUPTABLE                         R4 K11 [{["LayoutOrder"], ["text"], ["isDisabled"] = True, ["fillBehavior"], ["size"], ["width"], ["onActivated"]}]
       19 GETTABLEKS                       R5 R0 K12 ["layoutOrder"]
       21 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       23 SETTABLEKS                       R1 R4 K4 ["text"]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K13 ["Enums"]
       28 GETTABLEKS                       R5 R5 K14 ["FillBehavior"]
       30 GETTABLEKS                       R5 R5 K15 ["Fill"]
       32 SETTABLEKS                       R5 R4 K7 ["fillBehavior"]
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K13 ["Enums"]
       37 GETTABLEKS                       R5 R5 K16 ["InputSize"]
       39 GETTABLEKS                       R5 R5 K17 ["XSmall"]
       41 SETTABLEKS                       R5 R4 K8 ["size"]
       43 GETIMPORT                        R5 K20 [UDim.new]
       45 LOADN                            R6 1
       46 LOADN                            R7 0
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K9 ["width"]
       50 DUPCLOSURE                       R5 K21 [PROTO_1]
       51 SETTABLEKS                       R5 R4 K10 ["onActivated"]
       53 CALL                             R2 2 -1
       54 RETURN                           R2 -1

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
       17 GETTABLEKS                       R4 R2 K8 ["Foundation"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R1 K10 ["Resources"]
       29 GETTABLEKS                       R6 R6 K11 ["Localization"]
       31 GETTABLEKS                       R6 R6 K12 ["Translator"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R7 R1 K13 ["Types"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R3 K14 ["Button"]
       41 GETTABLEKS                       R8 R4 K15 ["createElement"]
       43 DUPCLOSURE                       R9 K16 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R3
       49 RETURN                           R9 1
