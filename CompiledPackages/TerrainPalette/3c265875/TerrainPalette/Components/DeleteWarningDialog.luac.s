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
        9 MOVE                             R3 R2
       10 CALL                             R3 0 1
       11 MOVE                             R4 R2
       12 CALL                             R4 0 1
       13 MOVE                             R5 R2
       14 CALL                             R5 0 1
       15 DUPTABLE                         R6 K4 [{"LayoutOrder", "actions"}]
       16 SETTABLEKS                       R5 R6 K2 ["LayoutOrder"]
       18 NEWTABLE                         R7 0 2
       20 LOADK                            R11 K5 ["Common"]
       21 LOADK                            R12 K6 ["Action"]
       22 LOADK                            R13 K7 ["Delete"]
       23 NAMECALL                         R9 R1 K8 ["getProjectText"]
       25 CALL                             R9 4 1
       26 GETUPVAL                         R10 3
       27 GETTABLEKS                       R10 R10 K9 ["Alert"]
       29 GETTABLEKS                       R11 R0 K10 ["onConfirm"]
       31 DUPTABLE                         R8 K18 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
       32 SETTABLEKS                       R9 R8 K15 ["text"]
       34 SETTABLEKS                       R10 R8 K16 ["variant"]
       36 SETTABLEKS                       R11 R8 K17 ["onActivated"]
       38 LOADK                            R12 K5 ["Common"]
       39 LOADK                            R13 K6 ["Action"]
       40 LOADK                            R14 K19 ["Cancel"]
       41 NAMECALL                         R10 R1 K8 ["getProjectText"]
       43 CALL                             R10 4 1
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R11 R11 K20 ["Standard"]
       47 GETTABLEKS                       R12 R0 K21 ["onCancel"]
       49 DUPTABLE                         R9 K18 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
       50 SETTABLEKS                       R10 R9 K15 ["text"]
       52 SETTABLEKS                       R11 R9 K16 ["variant"]
       54 SETTABLEKS                       R12 R9 K17 ["onActivated"]
       56 SETLIST                          R7 R8 2 [1]
       58 SETTABLEKS                       R7 R6 K3 ["actions"]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K22 ["createElement"]
       63 GETUPVAL                         R8 4
       64 GETTABLEKS                       R8 R8 K23 ["Root"]
       66 DUPTABLE                         R9 K32 [{["disablePortal"] = False, ["hasBackdrop"] = True, ["onClose"], ["size"], ["testId"] = "DeleteWarningDialog"}]
       67 GETTABLEKS                       R10 R0 K21 ["onCancel"]
       69 SETTABLEKS                       R10 R9 K28 ["onClose"]
       71 GETUPVAL                         R10 5
       72 GETTABLEKS                       R10 R10 K33 ["Small"]
       74 SETTABLEKS                       R10 R9 K29 ["size"]
       76 DUPTABLE                         R10 K37 [{"Title", "Content", "Actions"}]
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R11 R11 K22 ["createElement"]
       80 GETUPVAL                         R12 4
       81 GETTABLEKS                       R12 R12 K34 ["Title"]
       83 DUPTABLE                         R13 K38 [{"LayoutOrder", "text"}]
       84 SETTABLEKS                       R3 R13 K2 ["LayoutOrder"]
       86 LOADK                            R16 K39 ["Plugin"]
       87 LOADK                            R17 K40 ["DeletePopupTitle"]
       88 NAMECALL                         R14 R1 K41 ["getText"]
       90 CALL                             R14 3 1
       91 SETTABLEKS                       R14 R13 K15 ["text"]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K34 ["Title"]
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K22 ["createElement"]
       99 GETUPVAL                         R12 4
      100 GETTABLEKS                       R12 R12 K35 ["Content"]
      102 DUPTABLE                         R13 K42 [{"LayoutOrder"}]
      103 SETTABLEKS                       R4 R13 K2 ["LayoutOrder"]
      105 DUPTABLE                         R14 K44 [{"Body"}]
      106 GETUPVAL                         R15 0
      107 GETTABLEKS                       R15 R15 K22 ["createElement"]
      109 GETUPVAL                         R16 4
      110 GETTABLEKS                       R16 R16 K45 ["Text"]
      112 DUPTABLE                         R17 K46 [{"Text"}]
      113 LOADK                            R20 K39 ["Plugin"]
      114 LOADK                            R21 K47 ["DeletePopupDescription"]
      115 NAMECALL                         R18 R1 K41 ["getText"]
      117 CALL                             R18 3 1
      118 SETTABLEKS                       R18 R17 K45 ["Text"]
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K43 ["Body"]
      123 CALL                             R11 3 1
      124 SETTABLEKS                       R11 R10 K35 ["Content"]
      126 GETUPVAL                         R11 0
      127 GETTABLEKS                       R11 R11 K22 ["createElement"]
      129 GETUPVAL                         R12 4
      130 GETTABLEKS                       R12 R12 K36 ["Actions"]
      132 MOVE                             R13 R6
      133 CALL                             R11 2 1
      134 SETTABLEKS                       R11 R10 K36 ["Actions"]
      136 CALL                             R7 3 -1
      137 RETURN                           R7 -1

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
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 RETURN                           R11 1
