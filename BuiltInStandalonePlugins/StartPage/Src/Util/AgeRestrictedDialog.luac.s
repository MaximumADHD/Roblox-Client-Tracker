PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 DUPTABLE                         R1 K8 [{["Intent"] = "Warning", ["Heading"], ["Body"], ["ActionPrimary"], ["Modal"] = True}]
        5 LOADK                            R4 K9 ["Plugin"]
        6 LOADK                            R5 K10 ["AgeRestrictionDialog.Heading"]
        7 NAMECALL                         R2 R0 K11 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K3 ["Heading"]
       12 LOADK                            R4 K9 ["Plugin"]
       13 LOADK                            R5 K12 ["AgeRestrictionDialog.Body"]
       14 NAMECALL                         R2 R0 K11 ["getText"]
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R1 K4 ["Body"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K13 ["CANCEL"]
       22 SETTABLEKS                       R2 R1 K5 ["ActionPrimary"]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R2 K9 ["Localization"]
       18 GETTABLEKS                       R3 R1 K10 ["Util"]
       20 GETTABLEKS                       R3 R3 K11 ["DialogAction"]
       22 NEWTABLE                         R4 1 0
       24 DUPCLOSURE                       R5 K12 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R5 R4 K13 ["get"]
       29 RETURN                           R4 1
