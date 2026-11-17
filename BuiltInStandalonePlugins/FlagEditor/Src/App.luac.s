PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+6]
        6 JUMPIFNOTEQKS                    R1 K3 ["Light"] ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Light"]
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["Dark"]
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R2 K2 [pcall]
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+6]
        7 JUMPIFNOTEQKS                    R3 K3 ["Light"] ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["Light"]
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["Dark"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R1 K1 [pcall]
        8 CALL                             R1 1 0
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          REF R0
       11 CLOSEUPVALS                      R0
       12 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 DUPCLOSURE                       R4 K1 [PROTO_0]
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R3 K3 [pcall]
        7 CALL                             R3 1 2
        8 JUMPIFNOT                        R3 ; [+6]
        9 JUMPIFNOTEQKS                    R4 K4 ["Light"] ; [+5]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["Light"]
       14 JUMP                             ; [+3]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["Dark"]
       18 CALL                             R1 1 2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["useState"]
       22 LOADB                            R4 0
       23 CALL                             R3 1 2
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 0
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R8 0 0
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K7 ["useEffect"]
       43 NEWCLOSURE                       R8 P3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U1
       46 NEWTABLE                         R9 0 0
       48 CALL                             R7 2 0
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K8 ["createElement"]
       52 GETUPVAL                         R8 2
       53 DUPTABLE                         R9 K11 [{"colorMode", "plugin"}]
       54 SETTABLEKS                       R1 R9 K9 ["colorMode"]
       56 GETTABLEKS                       R10 R0 K10 ["plugin"]
       58 SETTABLEKS                       R10 R9 K10 ["plugin"]
       60 DUPTABLE                         R10 K14 [{"FlagEditor", "SavedNotice"}]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K8 ["createElement"]
       64 GETUPVAL                         R12 3
       65 DUPTABLE                         R13 K18 [{"Size", "onSaved", "reloadToken"}]
       66 GETIMPORT                        R14 K21 [UDim2.fromScale]
       68 LOADN                            R15 1
       69 LOADN                            R16 1
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K15 ["Size"]
       73 SETTABLEKS                       R6 R13 K16 ["onSaved"]
       75 GETTABLEKS                       R14 R0 K17 ["reloadToken"]
       77 SETTABLEKS                       R14 R13 K17 ["reloadToken"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K12 ["FlagEditor"]
       82 JUMPIFNOT                        R3 ; [+72]
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K8 ["createElement"]
       86 GETUPVAL                         R12 4
       87 GETTABLEKS                       R12 R12 K22 ["Root"]
       89 DUPTABLE                         R13 K30 [{["disablePortal"] = True, ["hasBackdrop"] = True, ["onClose"], ["size"], ["testId"] = "flag-editor-overrides-saved"}]
       90 SETTABLEKS                       R5 R13 K26 ["onClose"]
       92 GETUPVAL                         R14 5
       93 GETTABLEKS                       R14 R14 K31 ["Small"]
       95 SETTABLEKS                       R14 R13 K27 ["size"]
       97 DUPTABLE                         R14 K35 [{"Title", "Content", "Actions"}]
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R15 R15 K8 ["createElement"]
      101 GETUPVAL                         R16 4
      102 GETTABLEKS                       R16 R16 K32 ["Title"]
      104 DUPTABLE                         R17 K38 [{["text"] = "Overrides saved"}]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K32 ["Title"]
      108 GETUPVAL                         R15 0
      109 GETTABLEKS                       R15 R15 K8 ["createElement"]
      111 GETUPVAL                         R16 4
      112 GETTABLEKS                       R16 R16 K33 ["Content"]
      114 DUPTABLE                         R17 K41 [{["LayoutOrder"] = 1}]
      115 DUPTABLE                         R18 K43 [{"Body"}]
      116 GETUPVAL                         R19 0
      117 GETTABLEKS                       R19 R19 K8 ["createElement"]
      119 GETUPVAL                         R20 4
      120 GETTABLEKS                       R20 R20 K44 ["Text"]
      122 DUPTABLE                         R21 K46 [{["Text"] = "Restart Studio for these changes to take effect."}]
      123 CALL                             R19 2 1
      124 SETTABLEKS                       R19 R18 K42 ["Body"]
      126 CALL                             R15 3 1
      127 SETTABLEKS                       R15 R14 K33 ["Content"]
      129 GETUPVAL                         R15 0
      130 GETTABLEKS                       R15 R15 K8 ["createElement"]
      132 GETUPVAL                         R16 4
      133 GETTABLEKS                       R16 R16 K34 ["Actions"]
      135 DUPTABLE                         R17 K49 [{["LayoutOrder"] = 2, ["actions"]}]
      136 NEWTABLE                         R18 0 1
      138 DUPTABLE                         R19 K57 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"] = "Done", ["variant"], ["onActivated"]}]
      139 GETUPVAL                         R20 6
      140 GETTABLEKS                       R20 R20 K58 ["Emphasis"]
      142 SETTABLEKS                       R20 R19 K55 ["variant"]
      144 SETTABLEKS                       R5 R19 K56 ["onActivated"]
      146 SETLIST                          R18 R19 1 [1]
      148 SETTABLEKS                       R18 R17 K48 ["actions"]
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K34 ["Actions"]
      153 CALL                             R11 3 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R11
      156 SETTABLEKS                       R11 R10 K13 ["SavedNotice"]
      158 CALL                             R7 3 -1
      159 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K2 ["FlagEditor"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R3 K9 ["Enums"]
       26 GETTABLEKS                       R5 R5 K10 ["ButtonVariant"]
       28 GETTABLEKS                       R6 R3 K9 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["ColorMode"]
       32 GETTABLEKS                       R7 R3 K12 ["Dialog"]
       34 GETTABLEKS                       R8 R3 K9 ["Enums"]
       36 GETTABLEKS                       R8 R8 K13 ["DialogSize"]
       38 GETTABLEKS                       R9 R3 K14 ["FoundationProvider"]
       40 DUPCLOSURE                       R10 K15 [PROTO_1]
       41 CAPTURE                          VAL R6
       42 DUPCLOSURE                       R11 K16 [PROTO_8]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R9
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R5
       50 RETURN                           R11 1
