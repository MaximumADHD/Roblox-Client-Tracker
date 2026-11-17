PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["TextFits"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
       10 CALL                             R1 1 0
       11 LOADK                            R3 K2 ["TextFits"]
       12 NAMECALL                         R1 R0 K3 ["GetPropertyChangedSignal"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R1 K4 ["Connect"]
       20 CALL                             R1 2 1
       21 LOADK                            R4 K1 ["AbsoluteSize"]
       22 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
       24 CALL                             R2 2 1
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 NAMECALL                         R2 R2 K4 ["Connect"]
       30 CALL                             R2 2 1
       31 NEWCLOSURE                       R3 P2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["TextFits"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useBinding"]
       13 GETIMPORT                        R5 K5 [Vector2.zero]
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R8 0 0
       25 CALL                             R6 2 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K7 ["useLayoutEffect"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R8 0 1
       34 GETTABLEKS                       R9 R0 K8 ["Text"]
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 0
       39 GETIMPORT                        R6 K11 [table.clone]
       41 MOVE                             R7 R0
       42 CALL                             R6 1 1
       43 LOADNIL                          R7
       44 SETTABLEKS                       R7 R6 K12 ["Description"]
       46 GETIMPORT                        R7 K16 [Enum.TextTruncate.AtEnd]
       48 SETTABLEKS                       R7 R6 K14 ["TextTruncate"]
       50 SETTABLEKS                       R1 R6 K17 ["ref"]
       52 GETTABLEKS                       R8 R0 K12 ["Description"]
       54 JUMPIFNOTEQKNIL                  R8 ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 JUMPIF                           R7 ; [+2]
       59 NOT                              R8 R2
       60 JUMPIFNOT                        R8 ; [+3]
       61 GETTABLEKS                       R9 R0 K18 ["IsContextMenuOpen"]
       63 NOT                              R8 R9
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K19 ["createElement"]
       67 GETUPVAL                         R10 1
       68 MOVE                             R11 R6
       69 DUPTABLE                         R12 K21 [{"Tooltip"}]
       70 MOVE                             R13 R8
       71 JUMPIFNOT                        R13 ; [+34]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K19 ["createElement"]
       75 GETUPVAL                         R14 2
       76 DUPTABLE                         R15 K27 [{["title"], ["text"], ["side"], ["hasArrow"] = False}]
       77 GETTABLEKS                       R16 R0 K8 ["Text"]
       79 SETTABLEKS                       R16 R15 K22 ["title"]
       81 GETTABLEKS                       R16 R0 K12 ["Description"]
       83 SETTABLEKS                       R16 R15 K23 ["text"]
       85 GETUPVAL                         R16 3
       86 GETTABLEKS                       R16 R16 K28 ["Bottom"]
       88 SETTABLEKS                       R16 R15 K24 ["side"]
       90 DUPTABLE                         R16 K30 [{"HoverArea"}]
       91 GETUPVAL                         R17 0
       92 GETTABLEKS                       R17 R17 K19 ["createElement"]
       94 GETUPVAL                         R18 4
       95 DUPTABLE                         R19 K32 [{"Size"}]
       96 DUPCLOSURE                       R22 K33 [PROTO_5]
       97 NAMECALL                         R20 R4 K34 ["map"]
       99 CALL                             R20 2 1
      100 SETTABLEKS                       R20 R19 K31 ["Size"]
      102 CALL                             R17 2 1
      103 SETTABLEKS                       R17 R16 K29 ["HoverArea"]
      105 CALL                             R13 3 1
      106 SETTABLEKS                       R13 R12 K20 ["Tooltip"]
      108 CALL                             R9 3 -1
      109 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Enums"]
       23 GETTABLEKS                       R3 R3 K10 ["PopoverSide"]
       25 GETTABLEKS                       R4 R2 K11 ["Text"]
       27 GETTABLEKS                       R5 R2 K12 ["Tooltip"]
       29 GETTABLEKS                       R6 R2 K13 ["View"]
       31 DUPCLOSURE                       R7 K14 [PROTO_6]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R6
       37 RETURN                           R7 1
