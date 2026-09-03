PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K8 [{"key", "LayoutOrder", "integration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
        3 LOADK                            R5 K9 ["%*-%*"]
        4 GETTABLEKS                       R7 R0 K10 ["label"]
        6 GETTABLEKS                       R8 R0 K11 ["url"]
        8 NAMECALL                         R5 R5 K12 ["format"]
       10 CALL                             R5 3 1
       11 MOVE                             R4 R5
       12 SETTABLEKS                       R4 R3 K0 ["key"]
       14 GETUPVAL                         R4 2
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       18 SETTABLEKS                       R0 R3 K2 ["integration"]
       20 GETUPVAL                         R4 3
       21 SETTABLEKS                       R4 R3 K3 ["onRemove"]
       23 GETUPVAL                         R4 4
       24 SETTABLEKS                       R4 R3 K4 ["onEdit"]
       26 GETUPVAL                         R4 5
       27 SETTABLEKS                       R4 R3 K5 ["onStatusChange"]
       29 GETUPVAL                         R4 6
       30 SETTABLEKS                       R4 R3 K6 ["onAuthorizationChange"]
       32 GETUPVAL                         R4 7
       33 SETTABLEKS                       R4 R3 K7 ["setEnableStatus"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["integrations"]
        4 GETTABLEKS                       R3 R0 K1 ["onRemove"]
        6 GETTABLEKS                       R4 R0 K2 ["onEdit"]
        8 GETTABLEKS                       R5 R0 K3 ["onStatusChange"]
       10 GETTABLEKS                       R6 R0 K4 ["onAuthorizationChange"]
       12 GETTABLEKS                       R7 R0 K5 ["setEnableStatus"]
       14 GETUPVAL                         R8 1
       15 GETUPVAL                         R9 2
       16 DUPTABLE                         R10 K9 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       17 GETTABLEKS                       R11 R0 K8 ["LayoutOrder"]
       19 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       21 DUPTABLE                         R11 K12 [{"Header", "IntegrationsList"}]
       22 GETUPVAL                         R12 1
       23 GETUPVAL                         R13 3
       24 DUPTABLE                         R14 K14 [{"LayoutOrder", "onAddIntegration"}]
       25 MOVE                             R15 R1
       26 CALL                             R15 0 1
       27 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       29 GETTABLEKS                       R15 R0 K13 ["onAddIntegration"]
       31 SETTABLEKS                       R15 R14 K13 ["onAddIntegration"]
       33 CALL                             R12 2 1
       34 SETTABLEKS                       R12 R11 K10 ["Header"]
       36 GETUPVAL                         R12 1
       37 GETUPVAL                         R13 2
       38 DUPTABLE                         R14 K18 [{["tag"] = "col shrink size-full-0 auto-y", ["LayoutOrder"], ["ClipsDescendants"] = True}]
       39 MOVE                             R15 R1
       40 CALL                             R15 0 1
       41 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       43 DUPTABLE                         R15 K20 [{"ContentWrapper"}]
       44 GETUPVAL                         R16 1
       45 GETUPVAL                         R17 2
       46 DUPTABLE                         R18 K22 [{["tag"] = "col gap-small size-full-0 auto-y padding-x-large"}]
       47 GETUPVAL                         R19 4
       48 GETTABLEKS                       R19 R19 K23 ["map"]
       50 MOVE                             R20 R2
       51 NEWCLOSURE                       R21 P0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CALL                             R19 2 -1
       61 CALL                             R16 -1 1
       62 SETTABLEKS                       R16 R15 K19 ["ContentWrapper"]
       64 CALL                             R12 3 1
       65 SETTABLEKS                       R12 R11 K11 ["IntegrationsList"]
       67 CALL                             R8 3 -1
       68 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["IntegrationItem"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["IntegrationMenuHeader"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K6 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["IntegrationTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Parent"]
       38 GETTABLEKS                       R5 R5 K10 ["Dash"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Parent"]
       45 GETTABLEKS                       R6 R6 K11 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K12 ["React"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Parent"]
       59 GETTABLEKS                       R8 R8 K13 ["ReactUtils"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R5 K14 ["View"]
       64 GETTABLEKS                       R9 R7 K15 ["createNextOrder"]
       66 GETTABLEKS                       R10 R6 K16 ["createElement"]
       68 DUPCLOSURE                       R11 K17 [PROTO_1]
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R1
       75 RETURN                           R11 1
