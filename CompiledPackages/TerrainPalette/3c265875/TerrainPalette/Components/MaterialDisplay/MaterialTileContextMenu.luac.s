PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETIMPORT                        R4 K3 [Vector2.new]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R4 2 -1
        8 NAMECALL                         R2 R2 K4 ["SetPosition"]
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K5 ["onOpen"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K6 ["slotIndex"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["anchorRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K2 ["MouseButton2Up"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R1 R1 K3 ["Connect"]
       15 CALL                             R1 2 1
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["slotIndex"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 JUMPIFNOTEQKS                    R0 K0 ["duplicate"] ; [+9]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onDuplicate"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["slotIndex"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 JUMPIFNOTEQKS                    R0 K3 ["delete"] ; [+8]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K4 ["onDelete"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K2 ["slotIndex"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETIMPORT                        R3 K4 [Vector2.zero]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["useEffect"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R5 0 5
       19 MOVE                             R6 R2
       20 GETTABLEKS                       R7 R0 K6 ["anchorRef"]
       22 GETTABLEKS                       R8 R0 K7 ["onOpen"]
       24 GETTABLEKS                       R9 R0 K8 ["slotIndex"]
       26 GETTABLEKS                       R10 R0 K9 ["viewType"]
       28 SETLIST                          R5 R6 5 [1]
       30 CALL                             R3 2 0
       31 NEWTABLE                         R3 0 2
       33 DUPTABLE                         R4 K14 [{["id"] = "duplicate", ["isDisabled"], ["text"]}]
       34 GETTABLEKS                       R6 R0 K15 ["canDuplicate"]
       36 NOT                              R5 R6
       37 SETTABLEKS                       R5 R4 K12 ["isDisabled"]
       39 LOADK                            R7 K16 ["Plugin"]
       40 LOADK                            R8 K17 ["DuplicateMenuItem"]
       41 NAMECALL                         R5 R1 K18 ["getText"]
       43 CALL                             R5 3 1
       44 SETTABLEKS                       R5 R4 K13 ["text"]
       46 DUPTABLE                         R5 K20 [{["id"] = "delete", ["text"]}]
       47 LOADK                            R8 K21 ["Common"]
       48 LOADK                            R9 K22 ["Action"]
       49 LOADK                            R10 K23 ["Delete"]
       50 NAMECALL                         R6 R1 K24 ["getProjectText"]
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R5 K13 ["text"]
       55 SETLIST                          R3 R4 2 [1]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K25 ["useCallback"]
       60 NEWCLOSURE                       R5 P1
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R6 0 2
       64 GETTABLEKS                       R7 R0 K26 ["onClose"]
       66 GETTABLEKS                       R8 R0 K8 ["slotIndex"]
       68 SETLIST                          R6 R7 2 [1]
       70 CALL                             R4 2 1
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K25 ["useCallback"]
       74 NEWCLOSURE                       R6 P2
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R0
       77 NEWTABLE                         R7 0 4
       79 MOVE                             R8 R4
       80 GETTABLEKS                       R9 R0 K27 ["onDelete"]
       82 GETTABLEKS                       R10 R0 K28 ["onDuplicate"]
       84 GETTABLEKS                       R11 R0 K8 ["slotIndex"]
       86 SETLIST                          R7 R8 4 [1]
       88 CALL                             R5 2 1
       89 GETUPVAL                         R6 0
       90 GETTABLEKS                       R6 R6 K29 ["createElement"]
       92 GETUPVAL                         R7 3
       93 DUPTABLE                         R8 K37 [{"align", "anchorRef", "isOpen", "items", "onActivated", "onPressedOutside", "side", "testId"}]
       94 GETUPVAL                         R9 4
       95 GETTABLEKS                       R9 R9 K38 ["Start"]
       97 SETTABLEKS                       R9 R8 K30 ["align"]
       99 SETTABLEKS                       R2 R8 K6 ["anchorRef"]
      101 GETTABLEKS                       R9 R0 K31 ["isOpen"]
      103 SETTABLEKS                       R9 R8 K31 ["isOpen"]
      105 SETTABLEKS                       R3 R8 K32 ["items"]
      107 SETTABLEKS                       R5 R8 K33 ["onActivated"]
      109 SETTABLEKS                       R4 R8 K34 ["onPressedOutside"]
      111 GETUPVAL                         R9 5
      112 GETTABLEKS                       R9 R9 K39 ["Bottom"]
      114 SETTABLEKS                       R9 R8 K35 ["side"]
      116 LOADK                            R10 K40 ["MaterialTileContextMenu_%*"]
      117 GETTABLEKS                       R12 R0 K8 ["slotIndex"]
      119 NAMECALL                         R10 R10 K41 ["format"]
      121 CALL                             R10 2 1
      122 MOVE                             R9 R10
      123 SETTABLEKS                       R9 R8 K36 ["testId"]
      125 CALL                             R6 2 -1
      126 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Types"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R3 K11 ["Contexts"]
       35 GETTABLEKS                       R5 R5 K12 ["Localization"]
       37 GETTABLEKS                       R6 R1 K13 ["Menu"]
       39 GETTABLEKS                       R7 R1 K14 ["Enums"]
       41 GETTABLEKS                       R7 R7 K15 ["PopoverAlign"]
       43 GETTABLEKS                       R8 R1 K14 ["Enums"]
       45 GETTABLEKS                       R8 R8 K16 ["PopoverSide"]
       47 GETTABLEKS                       R9 R1 K17 ["Hooks"]
       49 GETTABLEKS                       R9 R9 K18 ["useMeasurableRef"]
       51 DUPCLOSURE                       R10 K19 [PROTO_5]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 RETURN                           R10 1
