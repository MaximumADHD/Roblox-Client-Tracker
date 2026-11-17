PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["Root"]
       14 DUPTABLE                         R5 K12 [{["size"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["onClose"], ["testId"] = "avatar-chat-image-dialog"}]
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R6 R6 K13 ["Large"]
       18 SETTABLEKS                       R6 R5 K4 ["size"]
       20 GETTABLEKS                       R6 R0 K9 ["onClose"]
       22 SETTABLEKS                       R6 R5 K9 ["onClose"]
       24 DUPTABLE                         R6 K16 [{"DialogContent", "DialogActions"}]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K2 ["createElement"]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K17 ["Content"]
       31 DUPTABLE                         R9 K19 [{"LayoutOrder"}]
       32 MOVE                             R10 R2
       33 CALL                             R10 0 1
       34 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
       36 DUPTABLE                         R10 K21 [{"ImageWrapper"}]
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R11 R11 K2 ["createElement"]
       40 GETUPVAL                         R12 5
       41 DUPTABLE                         R13 K24 [{["tag"] = "col align-x-center size-full-0 auto-y padding-y-medium"}]
       42 DUPTABLE                         R14 K26 [{"Image"}]
       43 GETUPVAL                         R15 2
       44 GETTABLEKS                       R15 R15 K2 ["createElement"]
       46 LOADK                            R16 K27 ["ImageLabel"]
       47 DUPTABLE                         R17 K33 [{["Size"], ["BackgroundTransparency"] = 1, ["ImageContent"], ["ScaleType"]}]
       48 GETIMPORT                        R18 K36 [UDim2.fromOffset]
       50 LOADN                            R19 480
       51 LOADN                            R20 480
       52 CALL                             R18 2 1
       53 SETTABLEKS                       R18 R17 K28 ["Size"]
       55 GETIMPORT                        R18 K38 [Content.fromObject]
       57 GETTABLEKS                       R19 R0 K39 ["previewImage"]
       59 CALL                             R18 1 1
       60 SETTABLEKS                       R18 R17 K31 ["ImageContent"]
       62 GETIMPORT                        R18 K42 [Enum.ScaleType.Fit]
       64 SETTABLEKS                       R18 R17 K32 ["ScaleType"]
       66 CALL                             R15 2 1
       67 SETTABLEKS                       R15 R14 K25 ["Image"]
       69 CALL                             R11 3 1
       70 SETTABLEKS                       R11 R10 K20 ["ImageWrapper"]
       72 CALL                             R7 3 1
       73 SETTABLEKS                       R7 R6 K14 ["DialogContent"]
       75 GETUPVAL                         R7 2
       76 GETTABLEKS                       R7 R7 K2 ["createElement"]
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R8 R8 K43 ["Actions"]
       81 DUPTABLE                         R9 K45 [{"LayoutOrder", "actions"}]
       82 MOVE                             R10 R2
       83 CALL                             R10 0 1
       84 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
       86 NEWTABLE                         R10 0 1
       88 DUPTABLE                         R11 K49 [{"text", "variant", "onActivated"}]
       89 LOADK                            R14 K50 ["AvatarChatScreen"]
       90 LOADK                            R15 K51 ["ButtonClose"]
       91 NAMECALL                         R12 R1 K52 ["getText"]
       93 CALL                             R12 3 1
       94 SETTABLEKS                       R12 R11 K46 ["text"]
       96 GETUPVAL                         R12 6
       97 GETTABLEKS                       R12 R12 K53 ["Standard"]
       99 SETTABLEKS                       R12 R11 K47 ["variant"]
      101 GETTABLEKS                       R12 R0 K9 ["onClose"]
      103 SETTABLEKS                       R12 R11 K48 ["onActivated"]
      105 SETLIST                          R10 R11 1 [1]
      107 SETTABLEKS                       R10 R9 K44 ["actions"]
      109 CALL                             R7 2 1
      110 SETTABLEKS                       R7 R6 K15 ["DialogActions"]
      112 CALL                             R3 3 -1
      113 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Enums"]
       37 GETTABLEKS                       R5 R5 K12 ["ButtonVariant"]
       39 GETTABLEKS                       R6 R4 K11 ["Enums"]
       41 GETTABLEKS                       R6 R6 K13 ["DialogSize"]
       43 GETTABLEKS                       R7 R4 K14 ["Dialog"]
       45 GETTABLEKS                       R8 R4 K15 ["View"]
       47 GETTABLEKS                       R9 R1 K16 ["ContextServices"]
       49 GETTABLEKS                       R9 R9 K17 ["Localization"]
       51 DUPCLOSURE                       R10 K18 [PROTO_0]
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R5
       59 RETURN                           R10 1
