PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BasePrices"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["BasePriceMoney"]
        8 GETTABLEKS                       R5 R5 K2 ["currencyCode"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K3 ["InitialBaseMoney"]
       13 GETTABLEKS                       R6 R6 K2 ["currencyCode"]
       15 JUMPIFNOTEQ                      R5 R6 ; [+32]
       17 GETTABLEKS                       R5 R4 K1 ["BasePriceMoney"]
       19 GETTABLEKS                       R5 R5 K4 ["quantity"]
       21 GETTABLEKS                       R5 R5 K5 ["significand"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K3 ["InitialBaseMoney"]
       26 GETTABLEKS                       R6 R6 K4 ["quantity"]
       28 GETTABLEKS                       R6 R6 K5 ["significand"]
       30 JUMPIFNOTEQ                      R5 R6 ; [+17]
       32 GETTABLEKS                       R5 R4 K1 ["BasePriceMoney"]
       34 GETTABLEKS                       R5 R5 K4 ["quantity"]
       36 GETTABLEKS                       R5 R5 K6 ["exponent"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K3 ["InitialBaseMoney"]
       41 GETTABLEKS                       R6 R6 K4 ["quantity"]
       43 GETTABLEKS                       R6 R6 K6 ["exponent"]
       45 JUMPIFNOTEQ                      R5 R6 ; [+2]
       47 RETURN                           R3 1
       48 FORGLOOP                         R0 2 ; [-43]
       50 LOADN                            R0 1
       51 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["BasePrices"]
        3 GETTABLE                         R1 R2 R0
        4 GETTABLEKS                       R1 R1 K1 ["BasePriceMoney"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["OnPriceSelected"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["BasePrices"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K1 ["displayStringFromMoney"]
       11 GETTABLEKS                       R7 R5 K2 ["BasePriceMoney"]
       13 GETUPVAL                         R8 2
       14 CALL                             R6 2 1
       15 DUPTABLE                         R7 K5 [{"name", "selectable"}]
       16 SETTABLEKS                       R6 R7 K3 ["name"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K6 ["Selectable"]
       21 SETTABLEKS                       R8 R7 K4 ["selectable"]
       23 SETTABLE                         R7 R0 R4
       24 FORGLOOP                         R1 2 ; [-17]
       26 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Localization"]
        7 NAMECALL                         R2 R2 K0 ["use"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["useState"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R4
       22 NEWTABLE                         R7 0 1
       24 GETTABLEKS                       R8 R0 K4 ["BasePrices"]
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R8 0 3
       38 MOVE                             R9 R2
       39 GETTABLEKS                       R10 R0 K4 ["BasePrices"]
       41 GETTABLEKS                       R11 R0 K6 ["Selectable"]
       43 SETLIST                          R8 R9 3 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K7 ["createElement"]
       49 GETUPVAL                         R8 4
       50 DUPTABLE                         R9 K10 [{"LayoutOrder", "Size"}]
       51 GETTABLEKS                       R10 R0 K8 ["LayoutOrder"]
       53 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       55 GETIMPORT                        R10 K13 [UDim2.new]
       57 LOADN                            R11 1
       58 LOADN                            R12 0
       59 LOADN                            R13 0
       60 GETTABLEKS                       R14 R0 K14 ["TotalHeight"]
       62 CALL                             R10 4 1
       63 SETTABLEKS                       R10 R9 K9 ["Size"]
       65 DUPTABLE                         R10 K16 [{"TitledFrame"}]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K7 ["createElement"]
       69 GETUPVAL                         R12 5
       70 DUPTABLE                         R13 K20 [{["Title"], ["TitleWidth"] = 165}]
       71 LOADK                            R16 K21 ["General"]
       72 LOADK                            R17 K22 ["SalesPrice"]
       73 NAMECALL                         R14 R2 K23 ["getText"]
       75 CALL                             R14 3 1
       76 SETTABLEKS                       R14 R13 K17 ["Title"]
       78 DUPTABLE                         R14 K25 [{"FiatPriceDropdown"}]
       79 GETUPVAL                         R15 2
       80 GETTABLEKS                       R15 R15 K7 ["createElement"]
       82 GETUPVAL                         R16 6
       83 DUPTABLE                         R17 K35 [{["fontSize"] = 20, ["items"], ["onItemClicked"], ["rowHeight"] = 24, ["selectedDropDownIndex"], ["Size"], ["visibleDropDownCount"] = 6}]
       84 SETTABLEKS                       R6 R17 K28 ["items"]
       86 SETTABLEKS                       R5 R17 K29 ["onItemClicked"]
       88 SETTABLEKS                       R3 R17 K32 ["selectedDropDownIndex"]
       90 GETIMPORT                        R18 K13 [UDim2.new]
       92 LOADN                            R19 0
       93 LOADN                            R20 225
       94 LOADN                            R21 0
       95 LOADN                            R22 40
       96 CALL                             R18 4 1
       97 SETTABLEKS                       R18 R17 K9 ["Size"]
       99 CALL                             R15 2 1
      100 SETTABLEKS                       R15 R14 K24 ["FiatPriceDropdown"]
      102 CALL                             R11 3 1
      103 SETTABLEKS                       R11 R10 K15 ["TitledFrame"]
      105 CALL                             R7 3 -1
      106 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["DropdownMenu"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["AssetConfigUtil"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       41 GETTABLEKS                       R5 R5 K15 ["Stylizer"]
       43 GETTABLEKS                       R6 R2 K16 ["UI"]
       45 GETTABLEKS                       R6 R6 K17 ["Pane"]
       47 GETTABLEKS                       R7 R2 K16 ["UI"]
       49 GETTABLEKS                       R7 R7 K18 ["TitledFrame"]
       51 GETTABLEKS                       R8 R2 K14 ["ContextServices"]
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K9 ["Src"]
       57 GETTABLEKS                       R10 R10 K19 ["Types"]
       59 GETTABLEKS                       R10 R10 K20 ["MarketplaceFiatServiceTypes"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R11 R0 K9 ["Src"]
       66 GETTABLEKS                       R11 R11 K12 ["Util"]
       68 GETTABLEKS                       R11 R11 K21 ["FiatUtil"]
       70 CALL                             R10 1 1
       71 DUPCLOSURE                       R11 K22 [PROTO_3]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R3
       79 RETURN                           R11 1
