PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R2 R1 K1 ["getLocale"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["new"]
       10 CALL                             R3 0 1
       11 GETIMPORT                        R4 K5 [DateTime.fromIsoDate]
       13 GETTABLEKS                       R5 R0 K6 ["BannedDateTime"]
       15 CALL                             R4 1 1
       16 MOVE                             R5 R4
       17 JUMPIFNOT                        R5 ; [+5]
       18 LOADK                            R7 K7 ["lll"]
       19 MOVE                             R8 R2
       20 NAMECALL                         R5 R4 K8 ["FormatLocalTime"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K9 ["createElement"]
       26 LOADK                            R7 K10 ["Frame"]
       27 NEWTABLE                         R8 2 0
       29 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       31 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K12 ["Tag"]
       36 LOADK                            R10 K13 ["Component-ReactivateDateNote X-FitY"]
       37 SETTABLE                         R10 R8 R9
       38 DUPTABLE                         R9 K15 [{"AccountDisabledMessage"}]
       39 MOVE                             R10 R5
       40 JUMPIFNOT                        R10 ; [+27]
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K9 ["createElement"]
       44 LOADK                            R11 K16 ["TextLabel"]
       45 NEWTABLE                         R12 4 0
       47 LOADK                            R15 K17 ["AccountDisabled"]
       48 LOADK                            R16 K18 ["DisabledDateTime"]
       49 DUPTABLE                         R17 K20 [{"dateTime"}]
       50 SETTABLEKS                       R5 R17 K19 ["dateTime"]
       52 NAMECALL                         R13 R1 K21 ["getText"]
       54 CALL                             R13 4 1
       55 SETTABLEKS                       R13 R12 K22 ["Text"]
       57 NAMECALL                         R13 R3 K23 ["getNextOrder"]
       59 CALL                             R13 1 1
       60 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R13 R13 K12 ["Tag"]
       65 LOADK                            R14 K24 ["X-FitY"]
       66 SETTABLE                         R14 R12 R13
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K14 ["AccountDisabledMessage"]
       70 CALL                             R6 3 -1
       71 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       29 DUPCLOSURE                       R6 K13 [PROTO_0]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R1
       33 RETURN                           R6 1
