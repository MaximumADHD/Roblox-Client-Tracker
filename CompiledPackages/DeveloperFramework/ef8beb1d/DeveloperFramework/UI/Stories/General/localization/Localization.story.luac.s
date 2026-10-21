PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["TextLabel"]
        8 NEWTABLE                         R4 2 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Tag"]
       13 LOADK                            R6 K4 ["X-Fit X-Pad"]
       14 SETTABLE                         R6 R4 R5
       15 LOADK                            R7 K5 ["Example"]
       16 LOADK                            R8 K6 ["Hello"]
       17 DUPTABLE                         R9 K8 [{"Name"}]
       18 GETTABLEKS                       R10 R0 K9 ["name"]
       20 SETTABLEKS                       R10 R9 K7 ["Name"]
       22 NAMECALL                         R5 R1 K10 ["getText"]
       24 CALL                             R5 4 1
       25 SETTABLEKS                       R5 R4 K11 ["Text"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Plugin"]
       25 GETTABLEKS                       R4 R2 K11 ["Localization"]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K4 ["Parent"]
       31 GETTABLEKS                       R5 R5 K12 ["SourceStrings"]
       33 GETIMPORT                        R6 K1 [script]
       35 GETTABLEKS                       R6 R6 K4 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["LocalizedStrings"]
       39 GETTABLEKS                       R7 R3 K14 ["new"]
       41 GETIMPORT                        R8 K16 [plugin]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R4 K14 ["new"]
       46 DUPTABLE                         R9 K21 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TestFramework"}]
       47 SETTABLEKS                       R5 R9 K17 ["stringResourceTable"]
       49 SETTABLEKS                       R6 R9 K18 ["translationResourceTable"]
       51 CALL                             R8 1 1
       52 DUPCLOSURE                       R9 K22 [PROTO_0]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 SETGLOBAL                        R9 K23 ["Label"]
       57 GETTABLEKS                       R9 R2 K24 ["provide"]
       59 NEWTABLE                         R10 0 2
       61 MOVE                             R11 R7
       62 MOVE                             R12 R8
       63 SETLIST                          R10 R11 2 [1]
       65 DUPTABLE                         R11 K25 [{"Label"}]
       66 GETTABLEKS                       R12 R1 K26 ["createElement"]
       68 GETGLOBAL                        R13 K23 ["Label"]
       70 DUPTABLE                         R14 K29 [{["name"] = "ZeroIndex"}]
       71 CALL                             R12 2 1
       72 SETTABLEKS                       R12 R11 K23 ["Label"]
       74 CALL                             R9 2 -1
       75 RETURN                           R9 -1
