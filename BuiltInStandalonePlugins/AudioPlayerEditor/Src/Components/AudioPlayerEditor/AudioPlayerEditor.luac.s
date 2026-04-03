PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEN                        R2 R3 2
        3 GETTABLEKS                       R1 R2 K0 ["id"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R4 1
        4 GETTABLEN                        R3 R4 2
        5 GETTABLEKS                       R2 R3 K1 ["id"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 2
        9 JUMPIF                           R3 ; [+18]
       10 GETTABLEKS                       R3 R0 K2 ["Enabled"]
       12 JUMPIFNOT                        R3 ; [+14]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K3 ["createElement"]
       16 GETUPVAL                         R4 3
       17 DUPTABLE                         R5 K6 [{"Data", "SetData"}]
       18 GETTABLEKS                       R6 R0 K4 ["Data"]
       20 SETTABLEKS                       R6 R5 K4 ["Data"]
       22 GETTABLEKS                       R6 R0 K5 ["SetData"]
       24 SETTABLEKS                       R6 R5 K5 ["SetData"]
       26 CALL                             R3 2 1
       27 RETURN                           R3 1
       28 GETTABLEKS                       R3 R0 K2 ["Enabled"]
       30 JUMPIFNOT                        R3 ; [+107]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K3 ["createElement"]
       34 GETUPVAL                         R4 4
       35 DUPTABLE                         R5 K8 [{"tag"}]
       36 LOADK                            R6 K9 ["col auto-y size-full-0 padding-small"]
       37 SETTABLEKS                       R6 R5 K7 ["tag"]
       39 DUPTABLE                         R6 K12 [{"Tabs", "MainContainer"}]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K3 ["createElement"]
       43 GETUPVAL                         R8 5
       44 DUPTABLE                         R9 K18 [{"activeTabId", "onActivated", "tabs", "size", "fillBehavior"}]
       45 SETTABLEKS                       R1 R9 K13 ["activeTabId"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R10 R9 K14 ["onActivated"]
       51 GETUPVAL                         R10 1
       52 SETTABLEKS                       R10 R9 K15 ["tabs"]
       54 GETUPVAL                         R13 6
       55 GETTABLEKS                       R12 R13 K19 ["Enums"]
       57 GETTABLEKS                       R11 R12 K20 ["InputSize"]
       59 GETTABLEKS                       R10 R11 K21 ["Small"]
       61 SETTABLEKS                       R10 R9 K16 ["size"]
       63 GETUPVAL                         R13 6
       64 GETTABLEKS                       R12 R13 K19 ["Enums"]
       66 GETTABLEKS                       R11 R12 K22 ["FillBehavior"]
       68 GETTABLEKS                       R10 R11 K23 ["Fill"]
       70 SETTABLEKS                       R10 R9 K17 ["fillBehavior"]
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K10 ["Tabs"]
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R7 R8 K3 ["createElement"]
       78 GETUPVAL                         R8 4
       79 DUPTABLE                         R9 K25 [{"LayoutOrder", "tag"}]
       80 LOADN                            R10 3
       81 SETTABLEKS                       R10 R9 K24 ["LayoutOrder"]
       83 LOADK                            R10 K26 ["size-full-0 auto-y bg-surface-0 radius-large"]
       84 SETTABLEKS                       R10 R9 K7 ["tag"]
       86 DUPTABLE                         R10 K29 [{"InlineEditor", "MainEditor"}]
       87 LOADB                            R11 0
       88 GETUPVAL                         R14 1
       89 GETTABLEN                        R13 R14 1
       90 GETTABLEKS                       R12 R13 K1 ["id"]
       92 JUMPIFNOTEQ                      R1 R12 ; [+16]
       94 GETUPVAL                         R12 0
       95 GETTABLEKS                       R11 R12 K3 ["createElement"]
       97 GETUPVAL                         R12 7
       98 DUPTABLE                         R13 K31 [{"Data", "OnOpenEditor"}]
       99 GETTABLEKS                       R14 R0 K4 ["Data"]
      101 SETTABLEKS                       R14 R13 K4 ["Data"]
      103 NEWCLOSURE                       R14 P1
      104 CAPTURE                          VAL R2
      105 CAPTURE                          UPVAL U1
      106 SETTABLEKS                       R14 R13 K30 ["OnOpenEditor"]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K27 ["InlineEditor"]
      111 LOADB                            R11 0
      112 GETUPVAL                         R14 1
      113 GETTABLEN                        R13 R14 2
      114 GETTABLEKS                       R12 R13 K1 ["id"]
      116 JUMPIFNOTEQ                      R1 R12 ; [+15]
      118 GETUPVAL                         R12 0
      119 GETTABLEKS                       R11 R12 K3 ["createElement"]
      121 GETUPVAL                         R12 3
      122 DUPTABLE                         R13 K6 [{"Data", "SetData"}]
      123 GETTABLEKS                       R14 R0 K4 ["Data"]
      125 SETTABLEKS                       R14 R13 K4 ["Data"]
      127 GETTABLEKS                       R14 R0 K5 ["SetData"]
      129 SETTABLEKS                       R14 R13 K5 ["SetData"]
      131 CALL                             R11 2 1
      132 SETTABLEKS                       R11 R10 K28 ["MainEditor"]
      134 CALL                             R7 3 1
      135 SETTABLEKS                       R7 R6 K11 ["MainContainer"]
      137 CALL                             R3 3 1
      138 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 LOADK                            R2 K3 ["AudioPlayerEditor"]
        6 NAMECALL                         R0 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R0 2 1
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Packages"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Tabs"]
       25 GETTABLEKS                       R4 R2 K11 ["View"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Components"]
       33 GETTABLEKS                       R6 R7 K14 ["InlineEditor"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K6 [require]
       38 GETTABLEKS                       R9 R0 K12 ["Src"]
       40 GETTABLEKS                       R8 R9 K13 ["Components"]
       42 GETTABLEKS                       R7 R8 K15 ["MainEditor"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K6 [require]
       47 GETTABLEKS                       R10 R0 K16 ["Bin"]
       49 GETTABLEKS                       R9 R10 K17 ["Common"]
       51 GETTABLEKS                       R8 R9 K18 ["defineLuaFlags"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K19 ["getFFlagDebugAudioPlayerEditorShowTabs"]
       56 CALL                             R8 0 1
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R11 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R11 K20 ["Types"]
       63 CALL                             R9 1 1
       64 NEWTABLE                         R10 0 2
       66 DUPTABLE                         R11 K23 [{"id", "text"}]
       67 LOADK                            R12 K24 ["1"]
       68 SETTABLEKS                       R12 R11 K21 ["id"]
       70 LOADK                            R12 K25 ["Preview Widget"]
       71 SETTABLEKS                       R12 R11 K22 ["text"]
       73 DUPTABLE                         R12 K23 [{"id", "text"}]
       74 LOADK                            R13 K26 ["2"]
       75 SETTABLEKS                       R13 R12 K21 ["id"]
       77 LOADK                            R13 K27 ["Full Editor"]
       78 SETTABLEKS                       R13 R12 K22 ["text"]
       80 SETLIST                          R10 R11 2 [1]
       82 DUPCLOSURE                       R11 K28 [PROTO_2]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R5
       91 RETURN                           R11 1
