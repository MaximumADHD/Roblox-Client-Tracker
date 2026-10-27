PROTO_0:
        0 DUPTABLE                         R3 K7 [{[1] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
        1 SETTABLEKS                       R0 R3 K4 ["text"]
        3 SETTABLEKS                       R1 R3 K5 ["variant"]
        5 SETTABLEKS                       R2 R3 K6 ["onActivated"]
        7 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["createElement"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["Root"]
       15 DUPTABLE                         R5 K12 [{["disablePortal"] = False, ["hasBackdrop"] = True, ["onClose"], ["size"], ["testId"] = "DeleteWarningDialog"}]
       16 GETTABLEKS                       R6 R0 K13 ["onCancel"]
       18 SETTABLEKS                       R6 R5 K8 ["onClose"]
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K14 ["Medium"]
       23 SETTABLEKS                       R6 R5 K9 ["size"]
       25 DUPTABLE                         R6 K18 [{"Title", "Content", "Actions"}]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K2 ["createElement"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K15 ["Title"]
       32 DUPTABLE                         R9 K21 [{"LayoutOrder", "text"}]
       33 MOVE                             R10 R2
       34 CALL                             R10 0 1
       35 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       37 LOADK                            R12 K22 ["Plugin"]
       38 LOADK                            R13 K23 ["DeletePopupTitle"]
       39 NAMECALL                         R10 R1 K24 ["getText"]
       41 CALL                             R10 3 1
       42 SETTABLEKS                       R10 R9 K20 ["text"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K15 ["Title"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K2 ["createElement"]
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R8 R8 K16 ["Content"]
       53 DUPTABLE                         R9 K25 [{"LayoutOrder"}]
       54 MOVE                             R10 R2
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       58 DUPTABLE                         R10 K27 [{"Body"}]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K2 ["createElement"]
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R12 R12 K28 ["Text"]
       65 DUPTABLE                         R13 K29 [{"Text"}]
       66 LOADK                            R16 K22 ["Plugin"]
       67 LOADK                            R17 K30 ["DeletePopupDescription"]
       68 NAMECALL                         R14 R1 K24 ["getText"]
       70 CALL                             R14 3 1
       71 SETTABLEKS                       R14 R13 K28 ["Text"]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K26 ["Body"]
       76 CALL                             R7 3 1
       77 SETTABLEKS                       R7 R6 K16 ["Content"]
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R7 R7 K2 ["createElement"]
       82 GETUPVAL                         R8 3
       83 GETTABLEKS                       R8 R8 K17 ["Actions"]
       85 DUPTABLE                         R9 K32 [{"LayoutOrder", "actions"}]
       86 MOVE                             R10 R2
       87 CALL                             R10 0 1
       88 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       90 NEWTABLE                         R10 0 2
       92 LOADK                            R14 K33 ["Common"]
       93 LOADK                            R15 K34 ["Action"]
       94 LOADK                            R16 K35 ["Delete"]
       95 NAMECALL                         R12 R1 K36 ["getProjectText"]
       97 CALL                             R12 4 1
       98 GETUPVAL                         R13 5
       99 GETTABLEKS                       R13 R13 K37 ["Alert"]
      101 GETTABLEKS                       R14 R0 K38 ["onConfirm"]
      103 DUPTABLE                         R11 K45 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
      104 SETTABLEKS                       R12 R11 K20 ["text"]
      106 SETTABLEKS                       R13 R11 K43 ["variant"]
      108 SETTABLEKS                       R14 R11 K44 ["onActivated"]
      110 LOADK                            R15 K33 ["Common"]
      111 LOADK                            R16 K34 ["Action"]
      112 LOADK                            R17 K46 ["Cancel"]
      113 NAMECALL                         R13 R1 K36 ["getProjectText"]
      115 CALL                             R13 4 1
      116 GETUPVAL                         R14 5
      117 GETTABLEKS                       R14 R14 K47 ["Standard"]
      119 GETTABLEKS                       R15 R0 K13 ["onCancel"]
      121 DUPTABLE                         R12 K45 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
      122 SETTABLEKS                       R13 R12 K20 ["text"]
      124 SETTABLEKS                       R14 R12 K43 ["variant"]
      126 SETTABLEKS                       R15 R12 K44 ["onActivated"]
      128 SETLIST                          R10 R11 2 [1]
      130 SETTABLEKS                       R10 R9 K31 ["actions"]
      132 CALL                             R7 2 1
      133 SETTABLEKS                       R7 R6 K17 ["Actions"]
      135 CALL                             R3 3 -1
      136 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["Enums"]
       37 GETTABLEKS                       R5 R5 K12 ["ButtonVariant"]
       39 GETTABLEKS                       R6 R1 K13 ["Dialog"]
       41 GETTABLEKS                       R7 R1 K11 ["Enums"]
       43 GETTABLEKS                       R7 R7 K14 ["DialogSize"]
       45 GETTABLEKS                       R8 R4 K15 ["Contexts"]
       47 GETTABLEKS                       R8 R8 K16 ["Localization"]
       49 GETTABLEKS                       R9 R3 K17 ["createNextOrder"]
       51 DUPCLOSURE                       R10 K18 [PROTO_0]
       52 DUPCLOSURE                       R11 K19 [PROTO_1]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R5
       59 RETURN                           R11 1
