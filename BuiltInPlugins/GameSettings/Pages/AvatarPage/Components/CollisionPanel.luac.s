PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getStateModelTemplateCopy"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R0 K2 ["Id"]
       10 GETTABLE                         R2 R3 R4
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K1 ["props"]
       16 GETTABLEKS                       R2 R3 K3 ["clobberTemplate"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K1 ["props"]
       21 GETTABLEKS                       R3 R4 K4 ["template"]
       23 MOVE                             R4 R1
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["OuterCollision"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["setCollisionOuterBox"]
        8 SETTABLE                         R3 R1 R2
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["InnerCollision"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["setCollisionInnerBox"]
       15 SETTABLE                         R3 R1 R2
       16 GETTABLEKS                       R2 R0 K4 ["props"]
       18 GETTABLEKS                       R3 R2 K5 ["Localization"]
       20 GETTABLEKS                       R4 R2 K6 ["Mouse"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K7 ["createElement"]
       25 GETUPVAL                         R6 3
       26 DUPTABLE                         R7 K14 [{"Title", "Buttons", "Enabled", "LayoutOrder", "Selected", "Mouse", "SelectionChanged"}]
       27 LOADK                            R10 K15 ["General"]
       28 LOADK                            R11 K16 ["TitleCollision"]
       29 NAMECALL                         R8 R3 K17 ["getText"]
       31 CALL                             R8 3 1
       32 SETTABLEKS                       R8 R7 K8 ["Title"]
       34 NEWTABLE                         R8 0 2
       36 DUPTABLE                         R9 K19 [{"Id", "Title"}]
       37 GETUPVAL                         R11 0
       38 GETTABLEKS                       R10 R11 K0 ["OuterCollision"]
       40 SETTABLEKS                       R10 R9 K18 ["Id"]
       42 LOADK                            R12 K15 ["General"]
       43 LOADK                            R13 K20 ["CollisionOuterBox"]
       44 NAMECALL                         R10 R3 K17 ["getText"]
       46 CALL                             R10 3 1
       47 SETTABLEKS                       R10 R9 K8 ["Title"]
       49 DUPTABLE                         R10 K19 [{"Id", "Title"}]
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R11 R12 K2 ["InnerCollision"]
       53 SETTABLEKS                       R11 R10 K18 ["Id"]
       55 LOADK                            R13 K15 ["General"]
       56 LOADK                            R14 K21 ["CollisionInnerBox"]
       57 NAMECALL                         R11 R3 K17 ["getText"]
       59 CALL                             R11 3 1
       60 SETTABLEKS                       R11 R10 K8 ["Title"]
       62 SETLIST                          R8 R9 2 [1]
       64 SETTABLEKS                       R8 R7 K9 ["Buttons"]
       66 GETTABLEKS                       R9 R0 K4 ["props"]
       68 GETTABLEKS                       R8 R9 K22 ["IsEnabled"]
       70 SETTABLEKS                       R8 R7 K10 ["Enabled"]
       72 GETTABLEKS                       R9 R0 K4 ["props"]
       74 GETTABLEKS                       R8 R9 K11 ["LayoutOrder"]
       76 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       78 GETUPVAL                         R10 4
       79 GETTABLEKS                       R9 R10 K23 ["getStateModelTemplate"]
       81 GETTABLEKS                       R10 R0 K4 ["props"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R8 R9 K24 ["CollisionValue"]
       86 SETTABLEKS                       R8 R7 K12 ["Selected"]
       88 NAMECALL                         R8 R4 K25 ["get"]
       90 CALL                             R8 1 1
       91 SETTABLEKS                       R8 R7 K6 ["Mouse"]
       93 NEWCLOSURE                       R8 P0
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R1
       97 SETTABLEKS                       R8 R7 K13 ["SelectionChanged"]
       99 CALL                             R5 2 -1
      100 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R5 K1 [script]
        9 GETTABLEKS                       R4 R5 K2 ["Parent"]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K2 ["Parent"]
       15 GETTABLEKS                       R1 R2 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R4 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R4 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R1 K5 ["Packages"]
       28 GETTABLEKS                       R5 R6 K7 ["Framework"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       33 GETTABLEKS                       R4 R3 K9 ["withContext"]
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Util"]
       39 GETTABLEKS                       R6 R7 K11 ["ConstantTemplate"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Util"]
       46 GETTABLEKS                       R7 R8 K12 ["StateInterfaceTemplates"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Util"]
       53 GETTABLEKS                       R8 R9 K13 ["StateModelTemplate"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Components"]
       60 GETTABLEKS                       R9 R10 K15 ["RadioButtonSetPanel"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R2 K16 ["Component"]
       65 LOADK                            R11 K17 ["ComponentCollisionPanel"]
       66 NAMECALL                         R9 R9 K18 ["extend"]
       68 CALL                             R9 2 1
       69 DUPCLOSURE                       R10 K19 [PROTO_1]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R10 R9 K20 ["render"]
       77 MOVE                             R10 R4
       78 DUPTABLE                         R11 K23 [{"Localization", "Mouse"}]
       79 GETTABLEKS                       R12 R3 K21 ["Localization"]
       81 SETTABLEKS                       R12 R11 K21 ["Localization"]
       83 GETTABLEKS                       R12 R3 K22 ["Mouse"]
       85 SETTABLEKS                       R12 R11 K22 ["Mouse"]
       87 CALL                             R10 1 1
       88 MOVE                             R11 R9
       89 CALL                             R10 1 1
       90 MOVE                             R9 R10
       91 RETURN                           R9 1
