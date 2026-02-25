PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOTEQKNIL                  R1 ; [+29]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["FoundationMigrateCryoToDash"]
        7 JUMPIFNOT                        R2 ; [+11]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["union"]
       11 MOVE                             R2 R0
       12 NEWTABLE                         R3 1 0
       14 GETUPVAL                         R4 0
       15 LOADB                            R5 1
       16 SETTABLE                         R5 R3 R4
       17 CALL                             R1 2 1
       18 RETURN                           R1 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K2 ["Dictionary"]
       22 GETTABLEKS                       R1 R2 K1 ["union"]
       24 MOVE                             R2 R0
       25 NEWTABLE                         R3 1 0
       27 GETUPVAL                         R4 0
       28 LOADB                            R5 1
       29 SETTABLE                         R5 R3 R4
       30 CALL                             R1 2 1
       31 RETURN                           R1 1
       32 RETURN                           R0 1

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
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R2 1 0
       13 GETUPVAL                         R3 6
       14 GETTABLE                         R2 R3 R1
       15 RETURN                           R2 1

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
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R1 R0 K2 ["getCursor"]
       17 RETURN                           R0 1

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
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 NEWTABLE                         R10 0 3
       33 MOVE                             R11 R6
       34 MOVE                             R12 R2
       35 MOVE                             R13 R7
       36 SETLIST                          R10 R11 3 [1]
       38 CALL                             R8 2 1
       39 NEWCLOSURE                       R9 P1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U9
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K3 ["useEffect"]
       51 NEWCLOSURE                       R11 P2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          UPVAL U11
       55 CAPTURE                          UPVAL U12
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R12 0 0
       59 CALL                             R10 2 0
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R10 R11 K4 ["createElement"]
       63 GETUPVAL                         R12 13
       64 GETTABLEKS                       R11 R12 K5 ["Provider"]
       66 DUPTABLE                         R12 K7 [{"value"}]
       67 SETTABLEKS                       R8 R12 K6 ["value"]
       69 DUPTABLE                         R13 K10 [{"Children", "FoundationCursorContainer"}]
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R14 R15 K4 ["createElement"]
       73 GETUPVAL                         R16 0
       74 GETTABLEKS                       R15 R16 K11 ["Fragment"]
       76 NEWTABLE                         R16 0 0
       78 GETTABLEKS                       R17 R0 K12 ["children"]
       80 CALL                             R14 3 1
       81 SETTABLEKS                       R14 R13 K8 ["Children"]
       83 GETUPVAL                         R15 0
       84 GETTABLEKS                       R14 R15 K4 ["createElement"]
       86 LOADK                            R15 K13 ["Frame"]
       87 DUPTABLE                         R16 K17 [{"Size", "Visible", "ref"}]
       88 GETIMPORT                        R17 K20 [UDim2.new]
       90 LOADN                            R18 0
       91 LOADN                            R19 0
       92 LOADN                            R20 0
       93 LOADN                            R21 0
       94 CALL                             R17 4 1
       95 SETTABLEKS                       R17 R16 K14 ["Size"]
       97 LOADB                            R17 0
       98 SETTABLEKS                       R17 R16 K15 ["Visible"]
      100 SETTABLEKS                       R3 R16 K16 ["ref"]
      102 MOVE                             R17 R9
      103 CALL                             R17 0 1
      104 CALL                             R14 3 1
      105 SETTABLEKS                       R14 R13 K9 ["FoundationCursorContainer"]
      107 CALL                             R10 3 -1
      108 RETURN                           R10 -1

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
       33 GETTABLEKS                       R5 R1 K12 ["Cryo"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Dash"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R1 K14 ["React"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R1 K15 ["ReactUtils"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R7 K16 ["useRefCache"]
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R11 R0 K7 ["Utility"]
       57 GETTABLEKS                       R10 R11 K17 ["isPluginSecurity"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K7 ["Utility"]
       64 GETTABLEKS                       R11 R12 K18 ["Flags"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETIMPORT                        R14 K1 [script]
       71 GETTABLEKS                       R13 R14 K4 ["Parent"]
       73 GETTABLEKS                       R12 R13 K19 ["CursorContext"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K6 [require]
       78 GETIMPORT                        R15 K1 [script]
       80 GETTABLEKS                       R14 R15 K4 ["Parent"]
       82 GETTABLEKS                       R13 R14 K20 ["CursorComponent"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETIMPORT                        R17 K1 [script]
       89 GETTABLEKS                       R16 R17 K4 ["Parent"]
       91 GETTABLEKS                       R15 R16 K21 ["Cursors"]
       93 GETTABLEKS                       R14 R15 K22 ["Cursor"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K6 [require]
       98 GETIMPORT                        R17 K1 [script]
      100 GETTABLEKS                       R16 R17 K4 ["Parent"]
      102 GETTABLEKS                       R15 R16 K23 ["KeyUtilities"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K6 [require]
      107 GETTABLEKS                       R17 R0 K24 ["Enums"]
      109 GETTABLEKS                       R16 R17 K25 ["CursorType"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K6 [require]
      114 GETTABLEKS                       R19 R0 K26 ["Providers"]
      116 GETTABLEKS                       R18 R19 K27 ["Style"]
      118 GETTABLEKS                       R17 R18 K28 ["useTokens"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K6 [require]
      123 GETTABLEKS                       R19 R0 K29 ["Components"]
      125 GETTABLEKS                       R18 R19 K30 ["Types"]
      127 CALL                             R17 1 1
      128 DUPCLOSURE                       R18 K31 [PROTO_10]
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R11
      143 RETURN                           R18 1
