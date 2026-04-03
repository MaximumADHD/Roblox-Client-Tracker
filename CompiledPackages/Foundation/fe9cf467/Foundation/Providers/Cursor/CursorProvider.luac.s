PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOTEQKNIL                  R1 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["union"]
        7 MOVE                             R2 R0
        8 NEWTABLE                         R3 1 0
       10 GETUPVAL                         R4 0
       11 LOADB                            R5 1
       12 SETTABLE                         R5 R3 R4
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mapCursorToKey"]
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
       15 GETUPVAL                         R9 1
       16 GETTABLE                         R8 R9 R4
       17 GETTABLEKS                       R7 R8 K0 ["current"]
       19 GETUPVAL                         R8 2
       20 JUMPIFEQ                         R7 R8 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 GETUPVAL                         R8 3
       25 GETTABLE                         R7 R8 R4
       26 JUMPIFEQKNIL                     R7 ; [+17]
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R7 R8 K1 ["createElement"]
       31 GETUPVAL                         R8 5
       32 DUPTABLE                         R9 K5 [{"ref", "isVisible", "cursorType"}]
       33 GETUPVAL                         R11 1
       34 GETTABLE                         R10 R11 R4
       35 SETTABLEKS                       R10 R9 K2 ["ref"]
       37 SETTABLEKS                       R6 R9 K3 ["isVisible"]
       39 SETTABLEKS                       R4 R9 K4 ["cursorType"]
       41 CALL                             R7 2 1
       42 SETTABLE                         R7 R0 R4
       43 JUMP                             ; [+24]
       44 GETUPVAL                         R8 6
       45 GETTABLEKS                       R7 R8 K6 ["decodeKey"]
       47 MOVE                             R8 R4
       48 CALL                             R7 1 3
       49 GETUPVAL                         R11 4
       50 GETTABLEKS                       R10 R11 K1 ["createElement"]
       52 GETUPVAL                         R11 7
       53 DUPTABLE                         R12 K10 [{"ref", "isVisible", "cornerRadius", "offset", "borderWidth"}]
       54 GETUPVAL                         R14 1
       55 GETTABLE                         R13 R14 R4
       56 SETTABLEKS                       R13 R12 K2 ["ref"]
       58 SETTABLEKS                       R6 R12 K3 ["isVisible"]
       60 SETTABLEKS                       R7 R12 K7 ["cornerRadius"]
       62 SETTABLEKS                       R8 R12 K8 ["offset"]
       64 SETTABLEKS                       R9 R12 K9 ["borderWidth"]
       66 CALL                             R10 2 1
       67 SETTABLE                         R10 R0 R4
       68 FORGLOOP                         R1 2 ; [-63]
       70 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SelectedCoreObject"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["SelectedCoreObject"]
       13 GETTABLEKS                       R1 R2 K1 ["SelectionImageObject"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SelectedObject"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["SelectedObject"]
       13 GETTABLEKS                       R1 R2 K1 ["SelectionImageObject"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["current"]
        8 GETIMPORT                        R2 K2 [game]
       10 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       12 CALL                             R0 2 1
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+7]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K0 ["current"]
       21 GETUPVAL                         R2 2
       22 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       24 CALL                             R0 2 1
       25 NEWCLOSURE                       R1 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 MOVE                             R2 R1
       30 CALL                             R2 0 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K0 ["current"]
       34 GETTABLEKS                       R3 R4 K4 ["AncestryChanged"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["useRef"]
        9 LOADNIL                          R4
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["useState"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 1
       17 CALL                             R6 0 1
       18 GETUPVAL                         R7 2
       19 CALL                             R7 0 1
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K2 ["useMemo"]
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
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U7
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R10 R11 K3 ["useEffect"]
       49 NEWCLOSURE                       R11 P2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R12 0 0
       57 CALL                             R10 2 0
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K4 ["createElement"]
       61 GETUPVAL                         R12 11
       62 GETTABLEKS                       R11 R12 K5 ["Provider"]
       64 DUPTABLE                         R12 K7 [{"value"}]
       65 SETTABLEKS                       R8 R12 K6 ["value"]
       67 DUPTABLE                         R13 K10 [{"Children", "FoundationCursorContainer"}]
       68 GETUPVAL                         R15 0
       69 GETTABLEKS                       R14 R15 K4 ["createElement"]
       71 GETUPVAL                         R16 0
       72 GETTABLEKS                       R15 R16 K11 ["Fragment"]
       74 NEWTABLE                         R16 0 0
       76 GETTABLEKS                       R17 R0 K12 ["children"]
       78 CALL                             R14 3 1
       79 SETTABLEKS                       R14 R13 K8 ["Children"]
       81 GETUPVAL                         R15 0
       82 GETTABLEKS                       R14 R15 K4 ["createElement"]
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
        9 GETIMPORT                        R4 K6 [require]
       11 GETTABLEKS                       R6 R0 K7 ["Utility"]
       13 GETTABLEKS                       R5 R6 K8 ["Wrappers"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R3 R4 K9 ["Services"]
       18 GETTABLEKS                       R2 R3 K10 ["CoreGui"]
       20 GETIMPORT                        R5 K6 [require]
       22 GETTABLEKS                       R7 R0 K7 ["Utility"]
       24 GETTABLEKS                       R6 R7 K8 ["Wrappers"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R4 R5 K9 ["Services"]
       29 GETTABLEKS                       R3 R4 K11 ["GuiService"]
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R5 R1 K12 ["Dash"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R1 K13 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R1 K14 ["ReactUtils"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K15 ["useRefCache"]
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R10 R0 K7 ["Utility"]
       52 GETTABLEKS                       R9 R10 K16 ["isPluginSecurity"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K6 [require]
       57 GETIMPORT                        R13 K1 [script]
       59 GETTABLEKS                       R12 R13 K4 ["Parent"]
       61 GETTABLEKS                       R11 R12 K17 ["Cursors"]
       63 GETTABLEKS                       R10 R11 K18 ["Cursor"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K6 [require]
       68 GETIMPORT                        R13 K1 [script]
       70 GETTABLEKS                       R12 R13 K4 ["Parent"]
       72 GETTABLEKS                       R11 R12 K19 ["CursorComponent"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETIMPORT                        R14 K1 [script]
       79 GETTABLEKS                       R13 R14 K4 ["Parent"]
       81 GETTABLEKS                       R12 R13 K20 ["CursorContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K6 [require]
       86 GETTABLEKS                       R14 R0 K21 ["Enums"]
       88 GETTABLEKS                       R13 R14 K22 ["CursorType"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K6 [require]
       93 GETIMPORT                        R16 K1 [script]
       95 GETTABLEKS                       R15 R16 K4 ["Parent"]
       97 GETTABLEKS                       R14 R15 K23 ["KeyUtilities"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K6 [require]
      102 GETTABLEKS                       R16 R0 K24 ["Components"]
      104 GETTABLEKS                       R15 R16 K25 ["Types"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K6 [require]
      109 GETTABLEKS                       R18 R0 K26 ["Providers"]
      111 GETTABLEKS                       R17 R18 K27 ["Style"]
      113 GETTABLEKS                       R16 R17 K28 ["useTokens"]
      115 CALL                             R15 1 1
      116 DUPCLOSURE                       R16 K29 [PROTO_10]
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R11
      129 RETURN                           R16 1
