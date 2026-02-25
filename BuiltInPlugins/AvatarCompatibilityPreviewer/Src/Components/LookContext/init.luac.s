PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K0 ["ConfirmItems"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 NEWTABLE                         R2 0 0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 4
       15 NEWTABLE                         R2 0 0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 ["ConfirmItems"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 NEWTABLE                         R1 0 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 NEWTABLE                         R1 0 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 0
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["useContext"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 JUMPIFEQ                         R1 R2 ; [+4]
       13 GETTABLEKS                       R2 R0 K1 ["children"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R2 R3 K2 ["useCanCreateLookAsync"]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R3 R4 K3 ["canCreateLookAsync"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K4 ["useState"]
       26 LOADNIL                          R4
       27 CALL                             R3 1 2
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R5 R6 K4 ["useState"]
       31 LOADK                            R6 K5 ["ConfirmItems"]
       32 CALL                             R5 1 2
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K4 ["useState"]
       36 LOADNIL                          R8
       37 CALL                             R7 1 2
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R9 R10 K4 ["useState"]
       41 LOADNIL                          R10
       42 CALL                             R9 1 2
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R11 R12 K4 ["useState"]
       46 NEWTABLE                         R12 0 0
       48 CALL                             R11 1 2
       49 GETUPVAL                         R14 1
       50 GETTABLEKS                       R13 R14 K4 ["useState"]
       52 NEWTABLE                         R14 0 0
       54 CALL                             R13 1 2
       55 GETUPVAL                         R16 1
       56 GETTABLEKS                       R15 R16 K6 ["useCallback"]
       58 NEWCLOSURE                       R16 P0
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R8
       64 NEWTABLE                         R17 0 0
       66 CALL                             R15 2 1
       67 GETUPVAL                         R17 1
       68 GETTABLEKS                       R16 R17 K6 ["useCallback"]
       70 NEWCLOSURE                       R17 P1
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R14
       75 NEWTABLE                         R18 0 0
       77 CALL                             R16 2 1
       78 GETUPVAL                         R18 1
       79 GETTABLEKS                       R17 R18 K6 ["useCallback"]
       81 NEWCLOSURE                       R18 P2
       82 CAPTURE                          VAL R8
       83 NEWTABLE                         R19 0 0
       85 CALL                             R17 2 1
       86 DUPTABLE                         R18 K22 [{"canCreateLook", "isDialogOpen", "dialogLookType", "dialogStage", "skinColor", "itemsList", "dialogItems", "errorsList", "openDialog", "closeDialog", "setDialogStage", "setSkinColor", "setDialogItems", "setItemsList", "toggleItem"}]
       87 SETTABLEKS                       R2 R18 K7 ["canCreateLook"]
       89 JUMPIFNOTEQKNIL                  R3 ; [+2]
       91 LOADB                            R19 0 +1
       92 LOADB                            R19 1
       93 SETTABLEKS                       R19 R18 K8 ["isDialogOpen"]
       95 SETTABLEKS                       R3 R18 K9 ["dialogLookType"]
       97 SETTABLEKS                       R5 R18 K10 ["dialogStage"]
       99 SETTABLEKS                       R9 R18 K11 ["skinColor"]
      101 SETTABLEKS                       R13 R18 K12 ["itemsList"]
      103 SETTABLEKS                       R11 R18 K13 ["dialogItems"]
      105 SETTABLEKS                       R7 R18 K14 ["errorsList"]
      107 SETTABLEKS                       R15 R18 K15 ["openDialog"]
      109 SETTABLEKS                       R16 R18 K16 ["closeDialog"]
      111 SETTABLEKS                       R6 R18 K17 ["setDialogStage"]
      113 SETTABLEKS                       R10 R18 K18 ["setSkinColor"]
      115 SETTABLEKS                       R12 R18 K19 ["setDialogItems"]
      117 SETTABLEKS                       R14 R18 K20 ["setItemsList"]
      119 SETTABLEKS                       R17 R18 K21 ["toggleItem"]
      121 GETUPVAL                         R20 1
      122 GETTABLEKS                       R19 R20 K23 ["createElement"]
      124 GETUPVAL                         R21 2
      125 GETTABLEKS                       R20 R21 K24 ["Provider"]
      127 DUPTABLE                         R21 K26 [{"value"}]
      128 SETTABLEKS                       R18 R21 K25 ["value"]
      130 GETTABLEKS                       R22 R0 K1 ["children"]
      132 CALL                             R19 3 -1
      133 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R4 R5 K11 ["useCanCreateLookAsync"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["getFFlagAvatarPreviewerLookComposer"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R7 K14 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K8 ["Src"]
       50 GETTABLEKS                       R9 R10 K15 ["Components"]
       52 GETTABLEKS                       R8 R9 K16 ["LookComposerDialog"]
       54 GETTABLEKS                       R7 R8 K14 ["Types"]
       56 CALL                             R6 1 1
       57 DUPTABLE                         R7 K33 [{"canCreateLook", "isDialogOpen", "dialogLookType", "dialogStage", "skinColor", "errorsList", "itemsList", "bodyProportions", "dialogItems", "openDialog", "closeDialog", "setDialogStage", "setSkinColor", "setDialogItems", "setItemsList", "toggleItem"}]
       58 LOADB                            R8 0
       59 SETTABLEKS                       R8 R7 K17 ["canCreateLook"]
       61 LOADB                            R8 0
       62 SETTABLEKS                       R8 R7 K18 ["isDialogOpen"]
       64 LOADNIL                          R8
       65 SETTABLEKS                       R8 R7 K19 ["dialogLookType"]
       67 LOADK                            R8 K34 ["ConfirmItems"]
       68 SETTABLEKS                       R8 R7 K20 ["dialogStage"]
       70 LOADNIL                          R8
       71 SETTABLEKS                       R8 R7 K21 ["skinColor"]
       73 NEWTABLE                         R8 0 0
       75 SETTABLEKS                       R8 R7 K22 ["errorsList"]
       77 NEWTABLE                         R8 0 0
       79 SETTABLEKS                       R8 R7 K23 ["itemsList"]
       81 LOADNIL                          R8
       82 SETTABLEKS                       R8 R7 K24 ["bodyProportions"]
       84 NEWTABLE                         R8 0 0
       86 SETTABLEKS                       R8 R7 K25 ["dialogItems"]
       88 MOVE                             R8 R2
       89 LOADK                            R9 K26 ["openDialog"]
       90 CALL                             R8 1 1
       91 SETTABLEKS                       R8 R7 K26 ["openDialog"]
       93 MOVE                             R8 R2
       94 LOADK                            R9 K27 ["closeDialog"]
       95 CALL                             R8 1 1
       96 SETTABLEKS                       R8 R7 K27 ["closeDialog"]
       98 MOVE                             R8 R2
       99 LOADK                            R9 K28 ["setDialogStage"]
      100 CALL                             R8 1 1
      101 SETTABLEKS                       R8 R7 K28 ["setDialogStage"]
      103 MOVE                             R8 R2
      104 LOADK                            R9 K29 ["setSkinColor"]
      105 CALL                             R8 1 1
      106 SETTABLEKS                       R8 R7 K29 ["setSkinColor"]
      108 MOVE                             R8 R2
      109 LOADK                            R9 K30 ["setDialogItems"]
      110 CALL                             R8 1 1
      111 SETTABLEKS                       R8 R7 K30 ["setDialogItems"]
      113 MOVE                             R8 R2
      114 LOADK                            R9 K31 ["setItemsList"]
      115 CALL                             R8 1 1
      116 SETTABLEKS                       R8 R7 K31 ["setItemsList"]
      118 MOVE                             R8 R2
      119 LOADK                            R9 K32 ["toggleItem"]
      120 CALL                             R8 1 1
      121 SETTABLEKS                       R8 R7 K32 ["toggleItem"]
      123 GETTABLEKS                       R8 R1 K35 ["createContext"]
      125 MOVE                             R9 R7
      126 CALL                             R8 1 1
      127 DUPCLOSURE                       R9 K36 [PROTO_3]
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R3
      133 DUPTABLE                         R10 K39 [{"Context", "Provider"}]
      134 SETTABLEKS                       R8 R10 K37 ["Context"]
      136 SETTABLEKS                       R9 R10 K38 ["Provider"]
      138 RETURN                           R10 1
