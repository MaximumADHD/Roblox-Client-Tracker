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
        1 GETUPVAL                         R2 1
        2 GETTABLEN                        R1 R2 2
        3 GETTABLEKS                       R1 R1 K0 ["id"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEN                        R2 R3 2
        5 GETTABLEKS                       R2 R2 K1 ["id"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 2
        9 JUMPIF                           R3 ; [+18]
       10 GETTABLEKS                       R3 R0 K2 ["Enabled"]
       12 JUMPIFNOT                        R3 ; [+14]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["createElement"]
       16 GETUPVAL                         R4 3
       17 DUPTABLE                         R5 K6 [{"Data", "SetData"}]
       18 GETTABLEKS                       R6 R0 K4 ["Data"]
       20 SETTABLEKS                       R6 R5 K4 ["Data"]
       22 GETTABLEKS                       R6 R0 K5 ["SetData"]
       24 SETTABLEKS                       R6 R5 K5 ["SetData"]
       26 CALL                             R3 2 1
       27 RETURN                           R3 1
       28 GETTABLEKS                       R3 R0 K2 ["Enabled"]
       30 JUMPIFNOT                        R3 ; [+98]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K3 ["createElement"]
       34 GETUPVAL                         R4 4
       35 DUPTABLE                         R5 K9 [{["tag"] = "col size-full-0 auto-y padding-small"}]
       36 DUPTABLE                         R6 K12 [{"Tabs", "MainContainer"}]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K3 ["createElement"]
       40 GETUPVAL                         R8 5
       41 DUPTABLE                         R9 K18 [{"activeTabId", "onActivated", "tabs", "size", "fillBehavior"}]
       42 SETTABLEKS                       R1 R9 K13 ["activeTabId"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R10 R9 K14 ["onActivated"]
       48 GETUPVAL                         R10 1
       49 SETTABLEKS                       R10 R9 K15 ["tabs"]
       51 GETUPVAL                         R10 6
       52 GETTABLEKS                       R10 R10 K19 ["Enums"]
       54 GETTABLEKS                       R10 R10 K20 ["InputSize"]
       56 GETTABLEKS                       R10 R10 K21 ["Small"]
       58 SETTABLEKS                       R10 R9 K16 ["size"]
       60 GETUPVAL                         R10 6
       61 GETTABLEKS                       R10 R10 K19 ["Enums"]
       63 GETTABLEKS                       R10 R10 K22 ["FillBehavior"]
       65 GETTABLEKS                       R10 R10 K23 ["Fill"]
       67 SETTABLEKS                       R10 R9 K17 ["fillBehavior"]
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K10 ["Tabs"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K3 ["createElement"]
       75 GETUPVAL                         R8 4
       76 DUPTABLE                         R9 K27 [{["LayoutOrder"] = 3, ["tag"] = "size-full-0 auto-y radius-large bg-surface-0"}]
       77 DUPTABLE                         R10 K30 [{"InlineEditor", "MainEditor"}]
       78 LOADB                            R11 0
       79 GETUPVAL                         R13 1
       80 GETTABLEN                        R12 R13 1
       81 GETTABLEKS                       R12 R12 K1 ["id"]
       83 JUMPIFNOTEQ                      R1 R12 ; [+16]
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K3 ["createElement"]
       88 GETUPVAL                         R12 7
       89 DUPTABLE                         R13 K32 [{"Data", "OnOpenEditor"}]
       90 GETTABLEKS                       R14 R0 K4 ["Data"]
       92 SETTABLEKS                       R14 R13 K4 ["Data"]
       94 NEWCLOSURE                       R14 P1
       95 CAPTURE                          VAL R2
       96 CAPTURE                          UPVAL U1
       97 SETTABLEKS                       R14 R13 K31 ["OnOpenEditor"]
       99 CALL                             R11 2 1
      100 SETTABLEKS                       R11 R10 K28 ["InlineEditor"]
      102 LOADB                            R11 0
      103 GETUPVAL                         R13 1
      104 GETTABLEN                        R12 R13 2
      105 GETTABLEKS                       R12 R12 K1 ["id"]
      107 JUMPIFNOTEQ                      R1 R12 ; [+15]
      109 GETUPVAL                         R11 0
      110 GETTABLEKS                       R11 R11 K3 ["createElement"]
      112 GETUPVAL                         R12 3
      113 DUPTABLE                         R13 K6 [{"Data", "SetData"}]
      114 GETTABLEKS                       R14 R0 K4 ["Data"]
      116 SETTABLEKS                       R14 R13 K4 ["Data"]
      118 GETTABLEKS                       R14 R0 K5 ["SetData"]
      120 SETTABLEKS                       R14 R13 K5 ["SetData"]
      122 CALL                             R11 2 1
      123 SETTABLEKS                       R11 R10 K29 ["MainEditor"]
      125 CALL                             R7 3 1
      126 SETTABLEKS                       R7 R6 K11 ["MainContainer"]
      128 CALL                             R3 3 1
      129 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 LOADK                            R2 K3 ["AudioPlayerEditor"]
        6 NAMECALL                         R0 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R0 2 1
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Packages"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Tabs"]
       25 GETTABLEKS                       R4 R2 K11 ["View"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["InlineEditor"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K6 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["MainEditor"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K6 [require]
       47 GETTABLEKS                       R8 R0 K16 ["Bin"]
       49 GETTABLEKS                       R8 R8 K17 ["Common"]
       51 GETTABLEKS                       R8 R8 K18 ["defineLuaFlags"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K19 ["getFFlagDebugAudioPlayerEditorShowTabs"]
       56 CALL                             R8 0 1
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K20 ["Types"]
       63 CALL                             R9 1 1
       64 NEWTABLE                         R10 0 2
       66 DUPTABLE                         R11 K25 [{["id"] = "1", ["text"] = "Preview Widget"}]
       67 DUPTABLE                         R12 K28 [{["id"] = "2", ["text"] = "Full Editor"}]
       68 SETLIST                          R10 R11 2 [1]
       70 DUPCLOSURE                       R11 K29 [PROTO_2]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 RETURN                           R11 1
