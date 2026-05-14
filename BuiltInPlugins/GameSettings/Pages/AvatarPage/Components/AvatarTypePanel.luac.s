PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["IsGameShutdownRequired"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["General"]
        8 LOADK                            R3 K3 ["AvatarTypeWarning"]
        9 NAMECALL                         R0 R0 K4 ["getText"]
       11 CALL                             R0 3 1
       12 JUMPIF                           R0 ; [+1]
       13 LOADNIL                          R0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getStateModelTemplateCopy"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R0 K2 ["Id"]
       10 GETTABLE                         R2 R3 R4
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K1 ["props"]
       16 GETTABLEKS                       R2 R2 K3 ["clobberTemplate"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K1 ["props"]
       21 GETTABLEKS                       R3 R3 K4 ["template"]
       23 MOVE                             R4 R1
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["R6"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["setRigTypeR6"]
        8 SETTABLE                         R3 R1 R2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["R15"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["setRigTypeR15"]
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["PlayerChoice"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["setRigTypePlayerChoice"]
       22 SETTABLE                         R3 R1 R2
       23 GETTABLEKS                       R2 R0 K6 ["props"]
       25 GETTABLEKS                       R3 R2 K7 ["Localization"]
       27 GETTABLEKS                       R4 R2 K8 ["Mouse"]
       29 NAMECALL                         R4 R4 K9 ["get"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K10 ["createElement"]
       35 GETUPVAL                         R6 3
       36 DUPTABLE                         R7 K18 [{"Title", "Buttons", "Enabled", "LayoutOrder", "Selected", "SubDescription", "Mouse", "SelectionChanged"}]
       37 LOADK                            R10 K19 ["General"]
       38 LOADK                            R11 K20 ["TitleAvatarType"]
       39 NAMECALL                         R8 R3 K21 ["getText"]
       41 CALL                             R8 3 1
       42 SETTABLEKS                       R8 R7 K11 ["Title"]
       44 NEWTABLE                         R8 0 3
       46 DUPTABLE                         R9 K23 [{"Id", "Title"}]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K0 ["R6"]
       50 SETTABLEKS                       R10 R9 K22 ["Id"]
       52 LOADK                            R12 K19 ["General"]
       53 LOADK                            R13 K24 ["AvatarTypeR6"]
       54 NAMECALL                         R10 R3 K21 ["getText"]
       56 CALL                             R10 3 1
       57 SETTABLEKS                       R10 R9 K11 ["Title"]
       59 DUPTABLE                         R10 K23 [{"Id", "Title"}]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K2 ["R15"]
       63 SETTABLEKS                       R11 R10 K22 ["Id"]
       65 LOADK                            R13 K19 ["General"]
       66 LOADK                            R14 K25 ["AvatarTypeR15"]
       67 NAMECALL                         R11 R3 K21 ["getText"]
       69 CALL                             R11 3 1
       70 SETTABLEKS                       R11 R10 K11 ["Title"]
       72 DUPTABLE                         R11 K23 [{"Id", "Title"}]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K4 ["PlayerChoice"]
       76 SETTABLEKS                       R12 R11 K22 ["Id"]
       78 LOADK                            R14 K19 ["General"]
       79 LOADK                            R15 K26 ["AvatarTypePlayerChoice"]
       80 NAMECALL                         R12 R3 K21 ["getText"]
       82 CALL                             R12 3 1
       83 SETTABLEKS                       R12 R11 K11 ["Title"]
       85 SETLIST                          R8 R9 3 [1]
       87 SETTABLEKS                       R8 R7 K12 ["Buttons"]
       89 GETTABLEKS                       R8 R0 K6 ["props"]
       91 GETTABLEKS                       R8 R8 K27 ["IsEnabled"]
       93 SETTABLEKS                       R8 R7 K13 ["Enabled"]
       95 GETTABLEKS                       R8 R0 K6 ["props"]
       97 GETTABLEKS                       R8 R8 K14 ["LayoutOrder"]
       99 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
      101 GETUPVAL                         R8 4
      102 GETTABLEKS                       R8 R8 K28 ["getStateModelTemplate"]
      104 GETTABLEKS                       R9 R0 K6 ["props"]
      106 CALL                             R8 1 1
      107 GETTABLEKS                       R8 R8 K29 ["RigTypeValue"]
      109 SETTABLEKS                       R8 R7 K15 ["Selected"]
      111 GETTABLEKS                       R9 R0 K6 ["props"]
      113 GETTABLEKS                       R9 R9 K30 ["IsGameShutdownRequired"]
      115 JUMPIFNOT                        R9 ; [+6]
      116 LOADK                            R10 K19 ["General"]
      117 LOADK                            R11 K31 ["AvatarTypeWarning"]
      118 NAMECALL                         R8 R3 K21 ["getText"]
      120 CALL                             R8 3 1
      121 JUMPIF                           R8 ; [+1]
      122 LOADNIL                          R8
      123 SETTABLEKS                       R8 R7 K16 ["SubDescription"]
      125 SETTABLEKS                       R4 R7 K8 ["Mouse"]
      127 NEWCLOSURE                       R8 P0
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R1
      131 SETTABLEKS                       R8 R7 K17 ["SelectionChanged"]
      133 CALL                             R5 2 -1
      134 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Framework"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       33 GETTABLEKS                       R4 R3 K9 ["withContext"]
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Util"]
       39 GETTABLEKS                       R6 R6 K11 ["ConstantTemplate"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Util"]
       46 GETTABLEKS                       R7 R7 K12 ["StateInterfaceTemplates"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Util"]
       53 GETTABLEKS                       R8 R8 K13 ["StateModelTemplate"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Components"]
       60 GETTABLEKS                       R9 R9 K15 ["RadioButtonSetPanel"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R2 K16 ["Component"]
       65 LOADK                            R11 K17 ["ComponentAvatarTypePanel"]
       66 NAMECALL                         R9 R9 K18 ["extend"]
       68 CALL                             R9 2 1
       69 DUPCLOSURE                       R10 K19 [PROTO_2]
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
