PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 DUPTABLE                         R1 K9 [{["Intent"] = "Warning", ["Heading"], ["Body"], ["ActionPrimary"], ["ActionSecondary"], ["Modal"] = True}]
        5 LOADK                            R4 K10 ["Plugin"]
        6 LOADK                            R5 K11 ["VerifyAgeDialog.Heading"]
        7 NAMECALL                         R2 R0 K12 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K3 ["Heading"]
       12 LOADK                            R8 K10 ["Plugin"]
       13 LOADK                            R9 K13 ["VerifyAgeDialog.BodyPoint1"]
       14 NAMECALL                         R6 R0 K12 ["getText"]
       16 CALL                             R6 3 1
       17 MOVE                             R3 R6
       18 LOADK                            R4 K14 ["\n"]
       19 LOADK                            R7 K10 ["Plugin"]
       20 LOADK                            R8 K15 ["VerifyAgeDialog.BodyPoint2"]
       21 NAMECALL                         R5 R0 K12 ["getText"]
       23 CALL                             R5 3 1
       24 CONCAT                           R2 R3 R5
       25 SETTABLEKS                       R2 R1 K4 ["Body"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K16 ["CANCEL"]
       30 SETTABLEKS                       R2 R1 K5 ["ActionPrimary"]
       32 DUPTABLE                         R2 K21 [{["Label"], ["OnActivated"], ["Enabled"] = True, ["HidesDialog"] = True}]
       33 LOADK                            R5 K10 ["Plugin"]
       34 LOADK                            R6 K22 ["VerifyAgeDialog.Action"]
       35 NAMECALL                         R3 R0 K12 ["getText"]
       37 CALL                             R3 3 1
       38 SETTABLEKS                       R3 R2 K17 ["Label"]
       40 DUPCLOSURE                       R3 K23 [PROTO_0]
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 SETTABLEKS                       R3 R2 K18 ["OnActivated"]
       45 SETTABLEKS                       R2 R1 K6 ["ActionSecondary"]
       47 RETURN                           R1 1

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
       22 GETTABLEKS                       R4 R1 K12 ["RobloxAPI"]
       24 GETTABLEKS                       R4 R4 K13 ["Url"]
       26 GETIMPORT                        R5 K5 [require]
       28 GETTABLEKS                       R6 R0 K14 ["Src"]
       30 GETTABLEKS                       R6 R6 K10 ["Util"]
       32 GETTABLEKS                       R6 R6 K15 ["Services"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K16 ["StartPageManager"]
       37 GETTABLEKS                       R7 R4 K17 ["composeUrl"]
       39 GETTABLEKS                       R8 R4 K18 ["new"]
       41 CALL                             R8 0 1
       42 GETTABLEKS                       R8 R8 K19 ["BASE_URL"]
       44 LOADK                            R9 K20 ["my/account#!/info"]
       45 CALL                             R7 2 1
       46 NEWTABLE                         R8 1 0
       48 DUPCLOSURE                       R9 K21 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R9 R8 K22 ["get"]
       55 RETURN                           R8 1
