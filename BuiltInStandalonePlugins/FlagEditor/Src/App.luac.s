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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Design"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETIMPORT                        R1 K3 [Instance.new]
        7 LOADK                            R2 K4 ["StyleSheet"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_9:
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
       49 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       51 DUPCLOSURE                       R8 K9 [PROTO_8]
       52 CAPTURE                          UPVAL U2
       53 NEWTABLE                         R9 0 0
       55 CALL                             R7 2 1
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R8 R8 K10 ["provide"]
       59 NEWTABLE                         R9 0 2
       61 GETUPVAL                         R10 3
       62 GETTABLEKS                       R10 R10 K11 ["new"]
       64 GETTABLEKS                       R11 R0 K12 ["plugin"]
       66 CALL                             R10 1 1
       67 MOVE                             R11 R7
       68 SETLIST                          R9 R10 2 [1]
       70 DUPTABLE                         R10 K14 [{"FoundationProvider"}]
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R11 R11 K15 ["createElement"]
       74 GETUPVAL                         R12 4
       75 DUPTABLE                         R13 K17 [{"colorMode", "plugin"}]
       76 SETTABLEKS                       R1 R13 K16 ["colorMode"]
       78 GETTABLEKS                       R14 R0 K12 ["plugin"]
       80 SETTABLEKS                       R14 R13 K12 ["plugin"]
       82 DUPTABLE                         R14 K20 [{"FlagEditor", "SavedNotice"}]
       83 GETUPVAL                         R15 0
       84 GETTABLEKS                       R15 R15 K15 ["createElement"]
       86 GETUPVAL                         R16 5
       87 DUPTABLE                         R17 K23 [{"Size", "onSaved"}]
       88 GETIMPORT                        R18 K26 [UDim2.fromScale]
       90 LOADN                            R19 1
       91 LOADN                            R20 1
       92 CALL                             R18 2 1
       93 SETTABLEKS                       R18 R17 K21 ["Size"]
       95 SETTABLEKS                       R6 R17 K22 ["onSaved"]
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K18 ["FlagEditor"]
      100 JUMPIFNOT                        R3 ; [+36]
      101 GETUPVAL                         R15 0
      102 GETTABLEKS                       R15 R15 K15 ["createElement"]
      104 GETUPVAL                         R16 6
      105 DUPTABLE                         R17 K36 [{["uri"], ["type"] = "Default", ["title"] = "Overrides saved", ["description"] = "Restart Studio for these changes to take effect.", ["primaryAction"], ["escapeAction"]}]
      106 GETUPVAL                         R18 7
      107 SETTABLEKS                       R18 R17 K27 ["uri"]
      109 DUPTABLE                         R18 K40 [{["uri"], ["text"] = "Done", ["onActivated"]}]
      110 GETUPVAL                         R19 8
      111 GETTABLEKS                       R19 R19 K41 ["child"]
      113 GETUPVAL                         R20 7
      114 LOADK                            R21 K38 ["Done"]
      115 CALL                             R19 2 1
      116 SETTABLEKS                       R19 R18 K27 ["uri"]
      118 SETTABLEKS                       R5 R18 K39 ["onActivated"]
      120 SETTABLEKS                       R18 R17 K34 ["primaryAction"]
      122 DUPTABLE                         R18 K43 [{"uri", "onClose"}]
      123 GETUPVAL                         R19 8
      124 GETTABLEKS                       R19 R19 K41 ["child"]
      126 GETUPVAL                         R20 7
      127 LOADK                            R21 K44 ["Close"]
      128 CALL                             R19 2 1
      129 SETTABLEKS                       R19 R18 K27 ["uri"]
      131 SETTABLEKS                       R5 R18 K42 ["onClose"]
      133 SETTABLEKS                       R18 R17 K35 ["escapeAction"]
      135 CALL                             R15 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R15
      138 SETTABLEKS                       R15 R14 K19 ["SavedNotice"]
      140 CALL                             R11 3 1
      141 SETTABLEKS                       R11 R10 K13 ["FoundationProvider"]
      143 CALL                             R8 2 -1
      144 RETURN                           R8 -1

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
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K9 ["Framework"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K10 ["StudioFoundation"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R5 K11 ["ContextServices"]
       36 GETTABLEKS                       R8 R6 K12 ["Components"]
       38 GETTABLEKS                       R8 R8 K13 ["Dialog"]
       40 GETTABLEKS                       R9 R3 K14 ["FoundationProvider"]
       42 GETTABLEKS                       R10 R3 K15 ["Enums"]
       44 GETTABLEKS                       R10 R10 K16 ["ColorMode"]
       46 GETTABLEKS                       R11 R7 K17 ["Plugin"]
       48 GETTABLEKS                       R12 R6 K18 ["Util"]
       50 GETTABLEKS                       R12 R12 K19 ["StudioUri"]
       52 GETTABLEKS                       R13 R12 K20 ["fromWidget"]
       54 LOADK                            R14 K2 ["FlagEditor"]
       55 LOADK                            R15 K21 ["OverridesSaved"]
       56 CALL                             R13 2 1
       57 DUPCLOSURE                       R14 K22 [PROTO_1]
       58 CAPTURE                          VAL R10
       59 DUPCLOSURE                       R15 K23 [PROTO_9]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R13
       68 CAPTURE                          VAL R12
       69 RETURN                           R15 1
