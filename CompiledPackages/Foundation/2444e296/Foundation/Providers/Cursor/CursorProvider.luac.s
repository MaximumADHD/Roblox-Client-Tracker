PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOTEQKNIL                  R1 ; [+12]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["union"]
        7 MOVE                             R2 R0
        8 NEWTABLE                         R3 1 0
       10 GETUPVAL                         R4 0
       11 LOADB                            R5 1
       12 SETTABLE                         R5 R3 R4
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mapCursorToKey"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 4
       12 GETTABLE                         R2 R3 R1
       13 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"refCache", "setMountedCursors", "getCursor"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["refCache"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setMountedCursors"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R1 R0 K2 ["getCursor"]
       15 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADB                            R6 0
        7 GETUPVAL                         R8 1
        8 GETTABLE                         R7 R8 R4
        9 JUMPIFEQKNIL                     R7 ; [+14]
       11 LOADB                            R6 0
       12 GETUPVAL                         R7 2
       13 JUMPIFEQKNIL                     R7 ; [+10]
       15 GETUPVAL                         R8 1
       16 GETTABLE                         R7 R8 R4
       17 GETTABLEKS                       R7 R7 K0 ["current"]
       19 GETUPVAL                         R8 2
       20 JUMPIFEQ                         R7 R8 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 GETIMPORT                        R7 K3 [string.split]
       26 MOVE                             R8 R4
       27 LOADK                            R9 K4 [" "]
       28 CALL                             R7 2 1
       29 LENGTH                           R9 R7
       30 JUMPIFEQKN                       R9 K5 [2] ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 JUMPIFNOT                        R8 ; [+23]
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R9 R9 K6 ["decodeCursorTypeKey"]
       38 MOVE                             R10 R7
       39 CALL                             R9 1 2
       40 GETUPVAL                         R11 4
       41 GETTABLEKS                       R11 R11 K7 ["createElement"]
       43 GETUPVAL                         R12 5
       44 DUPTABLE                         R13 K12 [{"ref", "isVisible", "cursorType", "colorMode"}]
       45 GETUPVAL                         R15 1
       46 GETTABLE                         R14 R15 R4
       47 SETTABLEKS                       R14 R13 K8 ["ref"]
       49 SETTABLEKS                       R6 R13 K9 ["isVisible"]
       51 SETTABLEKS                       R9 R13 K10 ["cursorType"]
       53 SETTABLEKS                       R10 R13 K11 ["colorMode"]
       55 CALL                             R11 2 1
       56 SETTABLE                         R11 R0 R4
       57 JUMP                             ; [+26]
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R9 R9 K13 ["decodeKey"]
       61 MOVE                             R10 R7
       62 CALL                             R9 1 4
       63 GETUPVAL                         R13 4
       64 GETTABLEKS                       R13 R13 K7 ["createElement"]
       66 GETUPVAL                         R14 6
       67 DUPTABLE                         R15 K17 [{"ref", "isVisible", "cornerRadius", "offset", "borderWidth", "colorMode"}]
       68 GETUPVAL                         R17 1
       69 GETTABLE                         R16 R17 R4
       70 SETTABLEKS                       R16 R15 K8 ["ref"]
       72 SETTABLEKS                       R6 R15 K9 ["isVisible"]
       74 SETTABLEKS                       R9 R15 K14 ["cornerRadius"]
       76 SETTABLEKS                       R10 R15 K15 ["offset"]
       78 SETTABLEKS                       R11 R15 K16 ["borderWidth"]
       80 SETTABLEKS                       R12 R15 K11 ["colorMode"]
       82 CALL                             R13 2 1
       83 SETTABLE                         R13 R0 R4
       84 FORGLOOP                         R1 2 ; [-79]
       86 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SelectedCoreObject"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["SelectedCoreObject"]
       13 GETTABLEKS                       R1 R1 K1 ["SelectionImageObject"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SelectedObject"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["SelectedObject"]
       13 GETTABLEKS                       R1 R1 K1 ["SelectionImageObject"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["SelectedCoreObject"]
        4 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R0 R0 K2 ["Connect"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 1
       15 LOADK                            R2 K3 ["SelectedObject"]
       16 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R0 R0 K2 ["Connect"]
       24 CALL                             R0 2 -1
       25 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+25]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["FoundationAllowMockDataModel"]
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETIMPORT                        R1 K3 [game]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["current"]
       14 NAMECALL                         R1 R1 K4 ["IsAncestorOf"]
       16 CALL                             R1 2 1
       17 NOT                              R0 R1
       18 JUMP                             ; [+9]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["current"]
       22 GETIMPORT                        R3 K3 [game]
       24 NAMECALL                         R1 R1 K5 ["IsDescendantOf"]
       26 CALL                             R1 2 1
       27 NOT                              R0 R1
       28 JUMPIFNOT                        R0 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 2
       31 CALL                             R0 0 1
       32 JUMPIFNOT                        R0 ; [+7]
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K0 ["current"]
       36 GETUPVAL                         R2 3
       37 NAMECALL                         R0 R0 K5 ["IsDescendantOf"]
       39 CALL                             R0 2 1
       40 NEWCLOSURE                       R1 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 MOVE                             R2 R1
       45 CALL                             R2 0 1
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K0 ["current"]
       49 GETTABLEKS                       R3 R3 K6 ["AncestryChanged"]
       51 NEWCLOSURE                       R5 P1
       52 CAPTURE                          REF R2
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R3 R3 K7 ["Connect"]
       56 CALL                             R3 2 1
       57 NEWCLOSURE                       R4 P2
       58 CAPTURE                          REF R2
       59 CAPTURE                          VAL R3
       60 CLOSEUPVALS                      R2
       61 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useRef"]
        9 LOADNIL                          R4
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["useState"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 1
       17 CALL                             R6 0 1
       18 GETUPVAL                         R7 2
       19 CALL                             R7 0 1
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R7
       28 CAPTURE                          UPVAL U4
       29 NEWTABLE                         R10 0 3
       31 MOVE                             R11 R6
       32 MOVE                             R12 R2
       33 MOVE                             R13 R7
       34 SETLIST                          R10 R11 3 [1]
       36 CALL                             R8 2 1
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K3 ["useEffect"]
       48 NEWCLOSURE                       R11 P2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R12 0 0
       57 CALL                             R10 2 0
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K4 ["createElement"]
       61 GETUPVAL                         R11 11
       62 GETTABLEKS                       R11 R11 K5 ["Provider"]
       64 DUPTABLE                         R12 K7 [{"value"}]
       65 SETTABLEKS                       R8 R12 K6 ["value"]
       67 DUPTABLE                         R13 K10 [{"Children", "FoundationCursorContainer"}]
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K4 ["createElement"]
       71 GETUPVAL                         R15 0
       72 GETTABLEKS                       R15 R15 K11 ["Fragment"]
       74 NEWTABLE                         R16 0 0
       76 GETTABLEKS                       R17 R0 K12 ["children"]
       78 CALL                             R14 3 1
       79 SETTABLEKS                       R14 R13 K8 ["Children"]
       81 GETUPVAL                         R14 0
       82 GETTABLEKS                       R14 R14 K4 ["createElement"]
       84 LOADK                            R15 K13 ["Frame"]
       85 DUPTABLE                         R16 K17 [{"Size", "Visible", "ref"}]
       86 GETIMPORT                        R17 K20 [UDim2.new]
       88 LOADN                            R18 0
       89 LOADN                            R19 0
       90 LOADN                            R20 0
       91 LOADN                            R21 0
       92 CALL                             R17 4 1
       93 SETTABLEKS                       R17 R16 K14 ["Size"]
       95 LOADB                            R17 0
       96 SETTABLEKS                       R17 R16 K15 ["Visible"]
       98 SETTABLEKS                       R3 R16 K16 ["ref"]
      100 MOVE                             R17 R9
      101 CALL                             R17 0 1
      102 CALL                             R14 3 1
      103 SETTABLEKS                       R14 R13 K9 ["FoundationCursorContainer"]
      105 CALL                             R10 3 -1
      106 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Utility"]
       20 GETTABLEKS                       R4 R4 K9 ["Wrappers"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K10 ["Services"]
       25 GETTABLEKS                       R3 R3 K11 ["CoreGui"]
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Utility"]
       31 GETTABLEKS                       R5 R5 K9 ["Wrappers"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R4 R4 K10 ["Services"]
       36 GETTABLEKS                       R4 R4 K12 ["GuiService"]
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R6 R1 K13 ["Dash"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R1 K14 ["React"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R1 K15 ["ReactUtils"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K16 ["useRefCache"]
       55 GETIMPORT                        R9 K6 [require]
       57 GETTABLEKS                       R10 R0 K7 ["Utility"]
       59 GETTABLEKS                       R10 R10 K17 ["isPluginSecurity"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K6 [require]
       64 GETIMPORT                        R11 K1 [script]
       66 GETTABLEKS                       R11 R11 K4 ["Parent"]
       68 GETTABLEKS                       R11 R11 K18 ["Cursors"]
       70 GETTABLEKS                       R11 R11 K19 ["Cursor"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K6 [require]
       75 GETIMPORT                        R12 K1 [script]
       77 GETTABLEKS                       R12 R12 K4 ["Parent"]
       79 GETTABLEKS                       R12 R12 K20 ["CursorComponent"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K6 [require]
       84 GETIMPORT                        R13 K1 [script]
       86 GETTABLEKS                       R13 R13 K4 ["Parent"]
       88 GETTABLEKS                       R13 R13 K21 ["CursorContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K6 [require]
       93 GETTABLEKS                       R14 R0 K22 ["Enums"]
       95 GETTABLEKS                       R14 R14 K23 ["CursorType"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K6 [require]
      100 GETIMPORT                        R15 K1 [script]
      102 GETTABLEKS                       R15 R15 K4 ["Parent"]
      104 GETTABLEKS                       R15 R15 K24 ["KeyUtilities"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K6 [require]
      109 GETTABLEKS                       R16 R0 K22 ["Enums"]
      111 GETTABLEKS                       R16 R16 K25 ["ColorMode"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K6 [require]
      116 GETTABLEKS                       R17 R0 K26 ["Components"]
      118 GETTABLEKS                       R17 R17 K27 ["Types"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K6 [require]
      123 GETTABLEKS                       R18 R0 K28 ["Providers"]
      125 GETTABLEKS                       R18 R18 K29 ["Style"]
      127 GETTABLEKS                       R18 R18 K30 ["useTokens"]
      129 CALL                             R17 1 1
      130 DUPCLOSURE                       R18 K31 [PROTO_10]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R12
      143 RETURN                           R18 1
