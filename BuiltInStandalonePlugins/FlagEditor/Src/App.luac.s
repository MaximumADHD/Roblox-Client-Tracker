PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+6]
        5 JUMPIFNOTEQKS                    R1 K3 ["Light"] ; [+5]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["Light"]
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["Dark"]
       14 RETURN                           R2 1

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
        1 GETIMPORT                        R2 K1 [pcall]
        3 DUPCLOSURE                       R3 K2 [PROTO_0]
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+6]
        6 JUMPIFNOTEQKS                    R3 K3 ["Light"] ; [+5]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["Light"]
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K4 ["Dark"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

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
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 0
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          REF R0
       10 CLOSEUPVALS                      R0
       11 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R3 K2 [pcall]
        5 DUPCLOSURE                       R4 K3 [PROTO_0]
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+6]
        8 JUMPIFNOTEQKS                    R4 K4 ["Light"] ; [+5]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Light"]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["Dark"]
       17 CALL                             R1 1 2
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["useState"]
       21 LOADB                            R4 0
       22 CALL                             R3 1 2
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R7 0 0
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R8 0 0
       38 CALL                             R6 2 1
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K7 ["useEffect"]
       42 NEWCLOSURE                       R8 P3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U1
       45 NEWTABLE                         R9 0 0
       47 CALL                             R7 2 0
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K8 ["createElement"]
       51 GETUPVAL                         R8 2
       52 DUPTABLE                         R9 K11 [{"colorMode", "plugin"}]
       53 SETTABLEKS                       R1 R9 K9 ["colorMode"]
       55 GETTABLEKS                       R10 R0 K10 ["plugin"]
       57 SETTABLEKS                       R10 R9 K10 ["plugin"]
       59 DUPTABLE                         R10 K14 [{"FlagEditor", "SavedNotice"}]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K8 ["createElement"]
       63 GETUPVAL                         R12 3
       64 DUPTABLE                         R13 K17 [{"Size", "onSaved"}]
       65 GETIMPORT                        R14 K20 [UDim2.fromScale]
       67 LOADN                            R15 1
       68 LOADN                            R16 1
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K15 ["Size"]
       72 SETTABLEKS                       R6 R13 K16 ["onSaved"]
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K12 ["FlagEditor"]
       77 JUMPIFNOT                        R3 ; [+72]
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R11 R11 K8 ["createElement"]
       81 GETUPVAL                         R12 4
       82 GETTABLEKS                       R12 R12 K21 ["Root"]
       84 DUPTABLE                         R13 K29 [{["disablePortal"] = True, ["hasBackdrop"] = True, ["onClose"], ["size"], ["testId"] = "flag-editor-overrides-saved"}]
       85 SETTABLEKS                       R5 R13 K25 ["onClose"]
       87 GETUPVAL                         R14 5
       88 GETTABLEKS                       R14 R14 K30 ["Small"]
       90 SETTABLEKS                       R14 R13 K26 ["size"]
       92 DUPTABLE                         R14 K34 [{"Title", "Content", "Actions"}]
       93 GETUPVAL                         R15 0
       94 GETTABLEKS                       R15 R15 K8 ["createElement"]
       96 GETUPVAL                         R16 4
       97 GETTABLEKS                       R16 R16 K31 ["Title"]
       99 DUPTABLE                         R17 K37 [{["text"] = "Overrides saved"}]
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K31 ["Title"]
      103 GETUPVAL                         R15 0
      104 GETTABLEKS                       R15 R15 K8 ["createElement"]
      106 GETUPVAL                         R16 4
      107 GETTABLEKS                       R16 R16 K32 ["Content"]
      109 DUPTABLE                         R17 K40 [{["LayoutOrder"] = 1}]
      110 DUPTABLE                         R18 K42 [{"Body"}]
      111 GETUPVAL                         R19 0
      112 GETTABLEKS                       R19 R19 K8 ["createElement"]
      114 GETUPVAL                         R20 4
      115 GETTABLEKS                       R20 R20 K43 ["Text"]
      117 DUPTABLE                         R21 K45 [{["Text"] = "Restart Studio for these changes to take effect."}]
      118 CALL                             R19 2 1
      119 SETTABLEKS                       R19 R18 K41 ["Body"]
      121 CALL                             R15 3 1
      122 SETTABLEKS                       R15 R14 K32 ["Content"]
      124 GETUPVAL                         R15 0
      125 GETTABLEKS                       R15 R15 K8 ["createElement"]
      127 GETUPVAL                         R16 4
      128 GETTABLEKS                       R16 R16 K33 ["Actions"]
      130 DUPTABLE                         R17 K48 [{["LayoutOrder"] = 2, ["actions"]}]
      131 NEWTABLE                         R18 0 1
      133 DUPTABLE                         R19 K56 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"] = "Done", ["variant"], ["onActivated"]}]
      134 GETUPVAL                         R20 6
      135 GETTABLEKS                       R20 R20 K57 ["Emphasis"]
      137 SETTABLEKS                       R20 R19 K54 ["variant"]
      139 SETTABLEKS                       R5 R19 K55 ["onActivated"]
      141 SETLIST                          R18 R19 1 [1]
      143 SETTABLEKS                       R18 R17 K47 ["actions"]
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K33 ["Actions"]
      148 CALL                             R11 3 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R11
      151 SETTABLEKS                       R11 R10 K13 ["SavedNotice"]
      153 CALL                             R7 3 -1
      154 RETURN                           R7 -1

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
