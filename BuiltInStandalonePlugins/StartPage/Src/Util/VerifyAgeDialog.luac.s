PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["https://www.roblox.com/my/account#!/info"]
        2 NAMECALL                         R0 R0 K1 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 DUPTABLE                         R1 K7 [{"Intent", "Heading", "Body", "ActionPrimary", "ActionSecondary", "Modal"}]
        5 LOADK                            R2 K8 ["Warning"]
        6 SETTABLEKS                       R2 R1 K1 ["Intent"]
        8 LOADK                            R4 K9 ["Plugin"]
        9 LOADK                            R5 K10 ["VerifyAgeDialog.Heading"]
       10 NAMECALL                         R2 R0 K11 ["getText"]
       12 CALL                             R2 3 1
       13 SETTABLEKS                       R2 R1 K2 ["Heading"]
       15 LOADK                            R8 K9 ["Plugin"]
       16 LOADK                            R9 K12 ["VerifyAgeDialog.BodyPoint1"]
       17 NAMECALL                         R6 R0 K11 ["getText"]
       19 CALL                             R6 3 1
       20 MOVE                             R3 R6
       21 LOADK                            R4 K13 ["\n"]
       22 LOADK                            R7 K9 ["Plugin"]
       23 LOADK                            R8 K14 ["VerifyAgeDialog.BodyPoint2"]
       24 NAMECALL                         R5 R0 K11 ["getText"]
       26 CALL                             R5 3 1
       27 CONCAT                           R2 R3 R5
       28 SETTABLEKS                       R2 R1 K3 ["Body"]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R2 R3 K15 ["CANCEL"]
       33 SETTABLEKS                       R2 R1 K4 ["ActionPrimary"]
       35 DUPTABLE                         R2 K20 [{"Label", "OnActivated", "Enabled", "HidesDialog"}]
       36 LOADK                            R5 K9 ["Plugin"]
       37 LOADK                            R6 K21 ["VerifyAgeDialog.Action"]
       38 NAMECALL                         R3 R0 K11 ["getText"]
       40 CALL                             R3 3 1
       41 SETTABLEKS                       R3 R2 K16 ["Label"]
       43 DUPCLOSURE                       R3 K22 [PROTO_0]
       44 CAPTURE                          UPVAL U2
       45 SETTABLEKS                       R3 R2 K17 ["OnActivated"]
       47 LOADB                            R3 1
       48 SETTABLEKS                       R3 R2 K18 ["Enabled"]
       50 LOADB                            R3 1
       51 SETTABLEKS                       R3 R2 K19 ["HidesDialog"]
       53 SETTABLEKS                       R2 R1 K5 ["ActionSecondary"]
       55 LOADB                            R2 1
       56 SETTABLEKS                       R2 R1 K6 ["Modal"]
       58 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["Localization"]
       18 GETTABLEKS                       R4 R1 K10 ["Util"]
       20 GETTABLEKS                       R3 R4 K11 ["DialogAction"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R7 R0 K12 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Util"]
       28 GETTABLEKS                       R5 R6 K13 ["Services"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K14 ["StartPageManager"]
       33 NEWTABLE                         R6 1 0
       35 DUPCLOSURE                       R7 K15 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R7 R6 K16 ["get"]
       41 RETURN                           R6 1
