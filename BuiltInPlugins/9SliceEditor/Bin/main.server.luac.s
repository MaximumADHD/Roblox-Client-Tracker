PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["unmount"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 1
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETIMPORT                        R1 K2 [require]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["Packages"]
       13 GETTABLEKS                       R2 R2 K4 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K2 [require]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["Src"]
       21 GETTABLEKS                       R3 R3 K6 ["MainPlugin"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [plugin]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K9 ["Name"]
       29 SETTABLEKS                       R4 R3 K9 ["Name"]
       31 GETTABLEKS                       R3 R1 K10 ["createElement"]
       33 MOVE                             R4 R2
       34 DUPTABLE                         R5 K13 [{"Plugin", "InitialEditorInstanceRequest"}]
       35 GETIMPORT                        R6 K8 [plugin]
       37 SETTABLEKS                       R6 R5 K11 ["Plugin"]
       39 SETTABLEKS                       R0 R5 K12 ["InitialEditorInstanceRequest"]
       41 CALL                             R3 2 1
       42 GETTABLEKS                       R4 R1 K14 ["mount"]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 1
       46 SETUPVAL                         R4 2
       47 GETUPVAL                         R4 3
       48 JUMPIFNOT                        R4 ; [+6]
       49 GETUPVAL                         R4 3
       50 LOADK                            R6 K15 ["Roact tree"]
       51 GETUPVAL                         R7 2
       52 NAMECALL                         R4 R4 K16 ["addRoactTree"]
       54 CALL                             R4 3 0
       55 GETIMPORT                        R4 K8 [plugin]
       57 GETTABLEKS                       R4 R4 K17 ["Unloading"]
       59 NEWCLOSURE                       R6 P0
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R1
       63 NAMECALL                         R4 R4 K18 ["Connect"]
       65 CALL                             R4 2 0
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [require]
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K7 ["defineFlags"]
       13 CALL                             R0 1 0
       14 DUPCLOSURE                       R1 K8 [PROTO_0]
       15 FASTPCALL                        pcall 1 ; [+2]
       16 GETIMPORT                        R0 K10 [pcall]
       18 CALL                             R0 1 2
       19 JUMPIF                           R0 ; [+1]
       20 LOADB                            R1 0
       21 GETIMPORT                        R2 K5 [script]
       23 GETTABLEKS                       R2 R2 K6 ["Parent"]
       25 GETTABLEKS                       R2 R2 K6 ["Parent"]
       27 GETIMPORT                        R3 K3 [require]
       29 GETTABLEKS                       R4 R2 K11 ["Src"]
       31 GETTABLEKS                       R4 R4 K12 ["Util"]
       33 GETTABLEKS                       R4 R4 K13 ["DebugFlags"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K14 ["RunningUnderCLI"]
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+1]
       40 RETURN                           R0 0
       41 GETIMPORT                        R4 K3 [require]
       43 GETIMPORT                        R5 K5 [script]
       45 GETTABLEKS                       R5 R5 K6 ["Parent"]
       47 GETTABLEKS                       R5 R5 K15 ["commonInit"]
       49 CALL                             R4 1 1
       50 MOVE                             R5 R4
       51 CALL                             R5 0 0
       52 LOADNIL                          R5
       53 LOADNIL                          R6
       54 GETIMPORT                        R7 K1 [plugin]
       56 GETTABLEKS                       R7 R7 K16 ["HostDataModelType"]
       58 GETIMPORT                        R8 K20 [Enum.StudioDataModelType.Edit]
       60 JUMPIFEQ                         R7 R8 ; [+3]
       62 CLOSEUPVALS                      R5
       63 RETURN                           R0 0
       64 JUMPIFNOT                        R1 ; [+19]
       65 GETTABLEKS                       R7 R3 K21 ["EnableDeveloperTools"]
       67 CALL                             R7 0 1
       68 JUMPIFNOT                        R7 ; [+15]
       69 GETIMPORT                        R7 K3 [require]
       71 GETTABLEKS                       R8 R2 K22 ["Packages"]
       73 GETTABLEKS                       R8 R8 K23 ["DeveloperTools"]
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R7 R7 K24 ["forPlugin"]
       78 GETTABLEKS                       R8 R2 K25 ["Name"]
       80 GETIMPORT                        R9 K1 [plugin]
       82 CALL                             R7 2 1
       83 MOVE                             R5 R7
       84 LOADNIL                          R7
       85 NEWCLOSURE                       R8 P1
       86 CAPTURE                          REF R7
       87 CAPTURE                          VAL R2
       88 CAPTURE                          REF R6
       89 CAPTURE                          REF R5
       90 GETIMPORT                        R9 K27 [game]
       92 LOADK                            R11 K28 ["GuiService"]
       93 NAMECALL                         R9 R9 K29 ["GetService"]
       95 CALL                             R9 2 1
       96 GETTABLEKS                       R10 R9 K30 ["Open9SliceEditor"]
       98 MOVE                             R12 R8
       99 NAMECALL                         R10 R10 K31 ["Connect"]
      101 CALL                             R10 2 1
      102 MOVE                             R7 R10
      103 CLOSEUPVALS                      R5
      104 RETURN                           R0 0
