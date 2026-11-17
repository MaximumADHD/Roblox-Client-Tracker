PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K1 ["priceStatus"]
       10 JUMPIFEQKNIL                     R2 ; [+8]
       12 GETTABLEKS                       R2 R0 K1 ["priceStatus"]
       14 JUMPIFEQKS                       R2 K2 [""] ; [+4]
       16 GETTABLEKS                       R2 R0 K1 ["priceStatus"]
       18 RETURN                           R2 1
       19 GETTABLEKS                       R2 R0 K3 ["saleLocationType"]
       21 JUMPIFNOTEQKS                    R2 K4 ["NotApplicable"] ; [+7]
       23 LOADK                            R4 K5 ["MarketplaceImport"]
       24 LOADK                            R5 K6 ["OffSale"]
       25 NAMECALL                         R2 R1 K7 ["getText"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1
       29 GETTABLEKS                       R2 R0 K8 ["lowestPrice"]
       31 JUMPIFEQKNIL                     R2 ; [+10]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R5 R0 K8 ["lowestPrice"]
       36 FASTCALL1                        TOSTRING R5 ; [+2]
       37 GETIMPORT                        R4 K10 [tostring]
       39 CALL                             R4 1 1
       40 CONCAT                           R2 R3 R4
       41 RETURN                           R2 1
       42 GETTABLEKS                       R2 R0 K11 ["price"]
       44 JUMPIFEQKNIL                     R2 ; [+10]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R5 R0 K11 ["price"]
       49 FASTCALL1                        TOSTRING R5 ; [+2]
       50 GETIMPORT                        R4 K10 [tostring]
       52 CALL                             R4 1 1
       53 CONCAT                           R2 R3 R4
       54 RETURN                           R2 1
       55 LOADK                            R4 K5 ["MarketplaceImport"]
       56 LOADK                            R5 K6 ["OffSale"]
       57 NAMECALL                         R2 R1 K7 ["getText"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R2 K9 ["Localization"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K14 [utf8.char]
       27 LOADK                            R5 K15 [57346]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K16 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 RETURN                           R5 1
