PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Cancel"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnPurchaseClicked"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["getRobuxPurchaseUrl"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R1 K1 ["OpenBrowserWindow"]
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["Cancel"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["cancel"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onPurchaseClicked"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K2 ["onBuyRobuxClicked"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["getRobuxBalance"]
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["Network"]
       10 GETTABLEKS                       R3 R3 K3 ["networkInterface"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R6 R1 K2 ["Cancel"]
        6 FASTCALL1                        TYPE R6 ; [+2]
        7 GETIMPORT                        R5 K4 [type]
        9 CALL                             R5 1 1
       10 JUMPIFEQKS                       R5 K5 ["function"] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       16 LOADK                            R5 K6 ["PurchaseFlow expects a Cancel callback."]
       17 GETIMPORT                        R3 K8 [assert]
       19 CALL                             R3 2 0
       20 GETTABLEKS                       R3 R1 K9 ["AssetData"]
       22 GETTABLEKS                       R4 R3 K10 ["Asset"]
       24 GETTABLEKS                       R5 R4 K11 ["Id"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K12 ["constructAssetThumbnailUrl"]
       29 MOVE                             R7 R5
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K13 ["X"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K14 ["Y"]
       36 CALL                             R6 3 1
       37 GETTABLEKS                       R7 R4 K15 ["Name"]
       39 GETTABLEKS                       R8 R3 K16 ["Creator"]
       41 GETTABLEKS                       R8 R8 K15 ["Name"]
       43 GETTABLEKS                       R9 R3 K17 ["Product"]
       45 JUMPIFNOT                        R9 ; [+3]
       46 GETTABLEKS                       R10 R9 K18 ["Price"]
       48 JUMPIF                           R10 ; [+1]
       49 LOADN                            R10 0
       50 LOADN                            R12 0
       51 JUMPIFLT                         R12 R10 ; [+2]
       53 LOADB                            R11 0 +1
       54 LOADB                            R11 1
       55 GETTABLEKS                       R13 R1 K20 ["Balance"]
       57 ORK                              R12 R13 K19 ["---"]
       58 JUMPIFLE                         R10 R12 ; [+2]
       60 LOADB                            R13 0 +1
       61 LOADB                            R13 1
       62 MOVE                             R14 R11
       63 JUMPIFNOT                        R14 ; [+61]
       64 GETUPVAL                         R14 2
       65 GETTABLEKS                       R14 R14 K21 ["createFragment"]
       67 DUPTABLE                         R15 K24 [{"BuyPlugin", "BuyRobux"}]
       68 MOVE                             R16 R13
       69 JUMPIFNOT                        R16 ; [+24]
       70 GETUPVAL                         R16 2
       71 GETTABLEKS                       R16 R16 K25 ["createElement"]
       73 GETUPVAL                         R17 3
       74 DUPTABLE                         R18 K30 [{"Name", "Creator", "Cost", "Balance", "Thumbnail", "OnClose", "OnButtonClicked"}]
       75 SETTABLEKS                       R7 R18 K15 ["Name"]
       77 SETTABLEKS                       R8 R18 K16 ["Creator"]
       79 SETTABLEKS                       R10 R18 K26 ["Cost"]
       81 SETTABLEKS                       R12 R18 K20 ["Balance"]
       83 SETTABLEKS                       R6 R18 K27 ["Thumbnail"]
       85 GETTABLEKS                       R19 R0 K31 ["cancel"]
       87 SETTABLEKS                       R19 R18 K28 ["OnClose"]
       89 GETTABLEKS                       R19 R0 K32 ["onPurchaseClicked"]
       91 SETTABLEKS                       R19 R18 K29 ["OnButtonClicked"]
       93 CALL                             R16 2 1
       94 SETTABLEKS                       R16 R15 K22 ["BuyPlugin"]
       96 NOT                              R16 R13
       97 JUMPIFNOT                        R16 ; [+24]
       98 GETUPVAL                         R16 2
       99 GETTABLEKS                       R16 R16 K25 ["createElement"]
      101 GETUPVAL                         R17 4
      102 DUPTABLE                         R18 K30 [{"Name", "Creator", "Cost", "Balance", "Thumbnail", "OnClose", "OnButtonClicked"}]
      103 SETTABLEKS                       R7 R18 K15 ["Name"]
      105 SETTABLEKS                       R8 R18 K16 ["Creator"]
      107 SETTABLEKS                       R10 R18 K26 ["Cost"]
      109 SETTABLEKS                       R12 R18 K20 ["Balance"]
      111 SETTABLEKS                       R6 R18 K27 ["Thumbnail"]
      113 GETTABLEKS                       R19 R0 K31 ["cancel"]
      115 SETTABLEKS                       R19 R18 K28 ["OnClose"]
      117 GETTABLEKS                       R19 R0 K33 ["onBuyRobuxClicked"]
      119 SETTABLEKS                       R19 R18 K29 ["OnButtonClicked"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K23 ["BuyRobux"]
      124 CALL                             R14 1 1
      125 RETURN                           R14 1

PROTO_6:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["purchase"]
        7 GETTABLEKS                       R3 R0 K1 ["pageInfo"]
        9 DUPTABLE                         R4 K5 [{"Balance", "PurchaseStatus", "SearchId"}]
       10 GETTABLEKS                       R5 R2 K6 ["robuxBalance"]
       12 SETTABLEKS                       R5 R4 K2 ["Balance"]
       14 GETTABLEKS                       R5 R2 K7 ["status"]
       16 SETTABLEKS                       R5 R4 K3 ["PurchaseStatus"]
       18 GETTABLEKS                       R5 R3 K8 ["searchId"]
       20 SETTABLEKS                       R5 R4 K4 ["SearchId"]
       22 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 MOVE                             R9 R0
        3 MOVE                             R10 R1
        4 MOVE                             R11 R2
        5 MOVE                             R12 R3
        6 MOVE                             R13 R4
        7 MOVE                             R14 R5
        8 MOVE                             R15 R6
        9 CALL                             R8 7 -1
       10 CALL                             R7 -1 0
       11 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"getRobuxBalance", "purchaseAsset"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getRobuxBalance"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["purchaseAsset"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Vector2.new]
        3 LOADN                            R1 150
        4 LOADN                            R2 150
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K4 [game]
        8 LOADK                            R3 K5 ["GuiService"]
        9 NAMECALL                         R1 R1 K6 ["GetService"]
       11 CALL                             R1 2 1
       12 GETIMPORT                        R2 K8 [script]
       14 GETTABLEKS                       R2 R2 K9 ["Parent"]
       16 GETTABLEKS                       R2 R2 K9 ["Parent"]
       18 GETTABLEKS                       R2 R2 K9 ["Parent"]
       20 GETTABLEKS                       R2 R2 K9 ["Parent"]
       22 GETTABLEKS                       R3 R2 K10 ["Packages"]
       24 GETTABLEKS                       R4 R2 K11 ["Src"]
       26 GETTABLEKS                       R4 R4 K12 ["Util"]
       28 GETIMPORT                        R5 K14 [require]
       30 GETTABLEKS                       R6 R3 K15 ["Roact"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K14 [require]
       35 GETTABLEKS                       R7 R3 K16 ["RoactRodux"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K14 [require]
       40 GETTABLEKS                       R8 R2 K11 ["Src"]
       42 GETTABLEKS                       R8 R8 K17 ["Components"]
       44 GETTABLEKS                       R8 R8 K18 ["PurchaseFlow"]
       46 GETTABLEKS                       R8 R8 K19 ["BuyPluginDialog"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K14 [require]
       51 GETTABLEKS                       R9 R2 K11 ["Src"]
       53 GETTABLEKS                       R9 R9 K17 ["Components"]
       55 GETTABLEKS                       R9 R9 K18 ["PurchaseFlow"]
       57 GETTABLEKS                       R9 R9 K20 ["BuyRobuxDialog"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K14 [require]
       62 GETTABLEKS                       R10 R3 K21 ["Framework"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K14 [require]
       67 GETTABLEKS                       R11 R2 K11 ["Src"]
       69 GETTABLEKS                       R11 R11 K12 ["Util"]
       71 GETTABLEKS                       R11 R11 K22 ["Urls"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R9 K23 ["ContextServices"]
       76 GETTABLEKS                       R12 R11 K24 ["withContext"]
       78 GETIMPORT                        R13 K14 [require]
       80 GETTABLEKS                       R14 R2 K11 ["Src"]
       82 GETTABLEKS                       R14 R14 K23 ["ContextServices"]
       84 GETTABLEKS                       R14 R14 K25 ["NetworkContext"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K14 [require]
       89 GETTABLEKS                       R15 R2 K11 ["Src"]
       91 GETTABLEKS                       R15 R15 K26 ["Networking"]
       93 GETTABLEKS                       R15 R15 K27 ["Requests"]
       95 GETTABLEKS                       R15 R15 K28 ["GetRobuxBalance"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K14 [require]
      100 GETTABLEKS                       R16 R2 K11 ["Src"]
      102 GETTABLEKS                       R16 R16 K26 ["Networking"]
      104 GETTABLEKS                       R16 R16 K27 ["Requests"]
      106 GETTABLEKS                       R16 R16 K29 ["PurchaseAssetRequest"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K14 [require]
      111 GETTABLEKS                       R17 R2 K11 ["Src"]
      113 GETTABLEKS                       R17 R17 K30 ["Actions"]
      115 GETTABLEKS                       R17 R17 K31 ["SetPurchaseStatus"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K14 [require]
      120 GETTABLEKS                       R18 R2 K11 ["Src"]
      122 GETTABLEKS                       R18 R18 K32 ["Types"]
      124 GETTABLEKS                       R18 R18 K33 ["PurchaseStatus"]
      126 CALL                             R17 1 1
      127 GETTABLEKS                       R18 R5 K34 ["PureComponent"]
      129 LOADK                            R20 K18 ["PurchaseFlow"]
      130 NAMECALL                         R18 R18 K35 ["extend"]
      132 CALL                             R18 2 1
      133 DUPCLOSURE                       R19 K36 [PROTO_3]
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R10
      136 SETTABLEKS                       R19 R18 K37 ["init"]
      138 DUPCLOSURE                       R19 K38 [PROTO_4]
      139 SETTABLEKS                       R19 R18 K39 ["didMount"]
      141 DUPCLOSURE                       R19 K40 [PROTO_5]
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R0
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R8
      147 SETTABLEKS                       R19 R18 K41 ["render"]
      149 DUPCLOSURE                       R19 K42 [PROTO_6]
      150 DUPCLOSURE                       R20 K43 [PROTO_9]
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R15
      153 MOVE                             R21 R12
      154 DUPTABLE                         R22 K45 [{"Network"}]
      155 SETTABLEKS                       R13 R22 K44 ["Network"]
      157 CALL                             R21 1 1
      158 MOVE                             R22 R18
      159 CALL                             R21 1 1
      160 MOVE                             R18 R21
      161 GETTABLEKS                       R21 R6 K46 ["connect"]
      163 MOVE                             R22 R19
      164 MOVE                             R23 R20
      165 CALL                             R21 2 1
      166 MOVE                             R22 R18
      167 CALL                             R21 1 -1
      168 RETURN                           R21 -1
