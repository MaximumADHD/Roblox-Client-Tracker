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
       24 LOADB                            R7 0
       25 LOADNIL                          R8
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R9 R9 K1 ["FoundationSupportPresentationContextInSelectionCursor"]
       29 JUMPIFNOT                        R9 ; [+12]
       30 GETIMPORT                        R9 K4 [string.split]
       32 MOVE                             R10 R4
       33 LOADK                            R11 K5 [" "]
       34 CALL                             R9 2 1
       35 MOVE                             R8 R9
       36 LENGTH                           R9 R8
       37 JUMPIFEQKN                       R9 K6 [2] ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 JUMP                             ; [+6]
       42 GETUPVAL                         R10 4
       43 GETTABLE                         R9 R10 R4
       44 JUMPIFNOTEQKNIL                  R9 ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 JUMPIFNOT                        R7 ; [+38]
       49 MOVE                             R9 R4
       50 LOADNIL                          R10
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R11 R11 K1 ["FoundationSupportPresentationContextInSelectionCursor"]
       54 JUMPIFNOT                        R11 ; [+7]
       55 GETUPVAL                         R11 5
       56 GETTABLEKS                       R11 R11 K7 ["decodeCursorTypeKey"]
       58 MOVE                             R12 R8
       59 CALL                             R11 1 2
       60 MOVE                             R9 R11
       61 MOVE                             R10 R12
       62 GETUPVAL                         R11 6
       63 GETTABLEKS                       R11 R11 K8 ["createElement"]
       65 GETUPVAL                         R12 7
       66 DUPTABLE                         R13 K13 [{"ref", "isVisible", "cursorType", "colorMode"}]
       67 GETUPVAL                         R15 1
       68 GETTABLE                         R14 R15 R4
       69 SETTABLEKS                       R14 R13 K9 ["ref"]
       71 SETTABLEKS                       R6 R13 K10 ["isVisible"]
       73 SETTABLEKS                       R9 R13 K11 ["cursorType"]
       75 GETUPVAL                         R15 3
       76 GETTABLEKS                       R15 R15 K1 ["FoundationSupportPresentationContextInSelectionCursor"]
       78 JUMPIFNOT                        R15 ; [+2]
       79 MOVE                             R14 R10
       80 JUMP                             ; [+1]
       81 LOADNIL                          R14
       82 SETTABLEKS                       R14 R13 K12 ["colorMode"]
       84 CALL                             R11 2 1
       85 SETTABLE                         R11 R0 R4
       86 JUMP                             ; [+39]
       87 GETUPVAL                         R9 5
       88 GETTABLEKS                       R9 R9 K14 ["decodeKey"]
       90 GETUPVAL                         R13 3
       91 GETTABLEKS                       R13 R13 K1 ["FoundationSupportPresentationContextInSelectionCursor"]
       93 JUMPIFNOT                        R13 ; [+2]
       94 MOVE                             R10 R8
       95 JUMP                             ; [+1]
       96 MOVE                             R10 R4
       97 CALL                             R9 1 4
       98 GETUPVAL                         R13 6
       99 GETTABLEKS                       R13 R13 K8 ["createElement"]
      101 GETUPVAL                         R14 8
      102 DUPTABLE                         R15 K18 [{"ref", "isVisible", "cornerRadius", "offset", "borderWidth", "colorMode"}]
      103 GETUPVAL                         R17 1
      104 GETTABLE                         R16 R17 R4
      105 SETTABLEKS                       R16 R15 K9 ["ref"]
      107 SETTABLEKS                       R6 R15 K10 ["isVisible"]
      109 SETTABLEKS                       R9 R15 K15 ["cornerRadius"]
      111 SETTABLEKS                       R10 R15 K16 ["offset"]
      113 SETTABLEKS                       R11 R15 K17 ["borderWidth"]
      115 GETUPVAL                         R17 3
      116 GETTABLEKS                       R17 R17 K1 ["FoundationSupportPresentationContextInSelectionCursor"]
      118 JUMPIFNOT                        R17 ; [+2]
      119 MOVE                             R16 R12
      120 JUMP                             ; [+1]
      121 LOADNIL                          R16
      122 SETTABLEKS                       R16 R15 K12 ["colorMode"]
      124 CALL                             R13 2 1
      125 SETTABLE                         R13 R0 R4
      126 FORGLOOP                         R1 2 ; [-121]
      128 RETURN                           R0 1

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
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 GETIMPORT                        R2 K2 [game]
       10 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       12 CALL                             R0 2 1
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+7]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["current"]
       21 GETUPVAL                         R2 2
       22 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       24 CALL                             R0 2 1
       25 NEWCLOSURE                       R1 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 MOVE                             R2 R1
       30 CALL                             R2 0 1
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K0 ["current"]
       34 GETTABLEKS                       R3 R3 K4 ["AncestryChanged"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          REF R2
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R3 R3 K5 ["Connect"]
       41 CALL                             R3 2 1
       42 NEWCLOSURE                       R4 P2
       43 CAPTURE                          REF R2
       44 CAPTURE                          VAL R3
       45 CLOSEUPVALS                      R2
       46 RETURN                           R4 1

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
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U8
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K3 ["useEffect"]
       50 NEWCLOSURE                       R11 P2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          UPVAL U11
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R12 0 0
       58 CALL                             R10 2 0
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K4 ["createElement"]
       62 GETUPVAL                         R11 12
       63 GETTABLEKS                       R11 R11 K5 ["Provider"]
       65 DUPTABLE                         R12 K7 [{"value"}]
       66 SETTABLEKS                       R8 R12 K6 ["value"]
       68 DUPTABLE                         R13 K10 [{"Children", "FoundationCursorContainer"}]
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R14 R14 K4 ["createElement"]
       72 GETUPVAL                         R15 0
       73 GETTABLEKS                       R15 R15 K11 ["Fragment"]
       75 NEWTABLE                         R16 0 0
       77 GETTABLEKS                       R17 R0 K12 ["children"]
       79 CALL                             R14 3 1
       80 SETTABLEKS                       R14 R13 K8 ["Children"]
       82 GETUPVAL                         R14 0
       83 GETTABLEKS                       R14 R14 K4 ["createElement"]
       85 LOADK                            R15 K13 ["Frame"]
       86 DUPTABLE                         R16 K18 [{["Size"], ["Visible"] = False, ["ref"]}]
       87 GETIMPORT                        R17 K21 [UDim2.new]
       89 LOADN                            R18 0
       90 LOADN                            R19 0
       91 LOADN                            R20 0
       92 LOADN                            R21 0
       93 CALL                             R17 4 1
       94 SETTABLEKS                       R17 R16 K14 ["Size"]
       96 SETTABLEKS                       R3 R16 K17 ["ref"]
       98 MOVE                             R17 R9
       99 CALL                             R17 0 1
      100 CALL                             R14 3 1
      101 SETTABLEKS                       R14 R13 K9 ["FoundationCursorContainer"]
      103 CALL                             R10 3 -1
      104 RETURN                           R10 -1

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
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R12
      144 RETURN                           R18 1
