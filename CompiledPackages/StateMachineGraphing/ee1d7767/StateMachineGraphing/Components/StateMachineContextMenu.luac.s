PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["targetPinPosition"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["nodeRenderInfoDispatcher"]
       11 GETTABLEKS                       R1 R1 K2 ["getMap"]
       13 CALL                             R1 0 3
       14 FORGPREP                         R1
       15 GETTABLEKS                       R6 R5 K3 ["position"]
       17 GETTABLEKS                       R7 R5 K4 ["size"]
       19 GETTABLEKS                       R8 R0 K5 ["X"]
       21 GETTABLEKS                       R9 R6 K5 ["X"]
       23 JUMPIFNOTLE                      R9 R8 ; [+27]
       25 GETTABLEKS                       R8 R0 K5 ["X"]
       27 GETTABLEKS                       R10 R6 K5 ["X"]
       29 GETTABLEKS                       R11 R7 K5 ["X"]
       31 ADD                              R9 R10 R11
       32 JUMPIFNOTLE                      R8 R9 ; [+18]
       34 GETTABLEKS                       R8 R0 K6 ["Y"]
       36 GETTABLEKS                       R9 R6 K6 ["Y"]
       38 JUMPIFNOTLE                      R8 R9 ; [+12]
       40 GETTABLEKS                       R8 R0 K6 ["Y"]
       42 GETTABLEKS                       R10 R6 K6 ["Y"]
       44 GETTABLEKS                       R11 R7 K6 ["Y"]
       46 SUB                              R9 R10 R11
       47 JUMPIFNOTLE                      R9 R8 ; [+3]
       49 LOADB                            R8 1
       50 RETURN                           R8 1
       51 FORGLOOP                         R1 2 ; [-37]
       53 LOADB                            R1 0
       54 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["createNode"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["STATE_NODE_TYPE"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["targetPinPosition"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K3 ["close"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["frameSelection"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["close"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K5 ["ViewportRectContext"]
       21 GETTABLEKS                       R4 R4 K4 ["Context"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K3 ["useContext"]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K6 ["GraphContext"]
       30 GETTABLEKS                       R5 R5 K4 ["Context"]
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K3 ["useContext"]
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K7 ["InsertNodeContext"]
       39 GETTABLEKS                       R6 R6 K4 ["Context"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K8 ["hasDeletableSelection"]
       44 CALL                             R6 0 1
       45 GETTABLEKS                       R7 R5 K9 ["visibleMenuState"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 NEWTABLE                         R10 0 2
       55 MOVE                             R11 R7
       56 GETTABLEKS                       R12 R4 K11 ["nodeRenderInfoDispatcher"]
       58 SETLIST                          R10 R11 2 [1]
       60 CALL                             R8 2 1
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K12 ["useCallback"]
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R11 0 3
       71 GETTABLEKS                       R12 R4 K13 ["createNode"]
       73 MOVE                             R13 R7
       74 GETTABLEKS                       R14 R0 K14 ["close"]
       76 SETLIST                          R11 R12 3 [1]
       78 CALL                             R9 2 1
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R10 R10 K12 ["useCallback"]
       82 NEWCLOSURE                       R11 P2
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R0
       85 NEWTABLE                         R12 0 2
       87 GETTABLEKS                       R13 R2 K15 ["deleteSelection"]
       89 GETTABLEKS                       R14 R0 K14 ["close"]
       91 SETLIST                          R12 R13 2 [1]
       93 CALL                             R10 2 1
       94 GETUPVAL                         R11 1
       95 GETTABLEKS                       R11 R11 K12 ["useCallback"]
       97 NEWCLOSURE                       R12 P3
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R0
      100 NEWTABLE                         R13 0 2
      102 GETTABLEKS                       R14 R3 K16 ["frameSelection"]
      104 GETTABLEKS                       R15 R0 K14 ["close"]
      106 SETLIST                          R13 R14 2 [1]
      108 CALL                             R11 2 1
      109 GETTABLEKS                       R12 R0 K17 ["isOpen"]
      111 JUMPIF                           R12 ; [+2]
      112 LOADNIL                          R12
      113 RETURN                           R12 1
      114 NEWTABLE                         R12 0 2
      116 DUPTABLE                         R13 K19 [{"items"}]
      117 NEWTABLE                         R14 0 2
      119 DUPTABLE                         R16 K25 [{["id"] = "addState", ["text"], ["isDisabled"], ["onActivated"]}]
      120 GETUPVAL                         R18 5
      121 CALL                             R18 0 1
      122 JUMPIFNOT                        R18 ; [+8]
      123 LOADK                            R19 K26 ["Common"]
      124 LOADK                            R20 K27 ["StateMachineGraphing"]
      125 LOADK                            R21 K28 ["ContextMenu"]
      126 LOADK                            R22 K29 ["AddState"]
      127 NAMECALL                         R17 R1 K30 ["getExternalText"]
      129 CALL                             R17 5 1
      130 JUMP                             ; [+1]
      131 LOADK                            R17 K31 ["Add State"]
      132 SETTABLEKS                       R17 R16 K22 ["text"]
      134 SETTABLEKS                       R8 R16 K23 ["isDisabled"]
      136 SETTABLEKS                       R9 R16 K24 ["onActivated"]
      138 MOVE                             R15 R16
      139 DUPTABLE                         R17 K33 [{["id"] = "delete", ["text"], ["isDisabled"], ["onActivated"]}]
      140 GETUPVAL                         R19 5
      141 CALL                             R19 0 1
      142 JUMPIFNOT                        R19 ; [+8]
      143 LOADK                            R20 K26 ["Common"]
      144 LOADK                            R21 K27 ["StateMachineGraphing"]
      145 LOADK                            R22 K28 ["ContextMenu"]
      146 LOADK                            R23 K34 ["Delete"]
      147 NAMECALL                         R18 R1 K30 ["getExternalText"]
      149 CALL                             R18 5 1
      150 JUMP                             ; [+1]
      151 LOADK                            R18 K34 ["Delete"]
      152 SETTABLEKS                       R18 R17 K22 ["text"]
      154 NOT                              R18 R6
      155 SETTABLEKS                       R18 R17 K23 ["isDisabled"]
      157 SETTABLEKS                       R10 R17 K24 ["onActivated"]
      159 MOVE                             R16 R17
      160 SETLIST                          R14 R15 2 [1]
      162 SETTABLEKS                       R14 R13 K18 ["items"]
      164 DUPTABLE                         R14 K19 [{"items"}]
      165 NEWTABLE                         R15 0 1
      167 DUPTABLE                         R17 K35 [{["id"] = "frameSelection", ["text"], ["onActivated"]}]
      168 GETUPVAL                         R19 5
      169 CALL                             R19 0 1
      170 JUMPIFNOT                        R19 ; [+8]
      171 LOADK                            R20 K26 ["Common"]
      172 LOADK                            R21 K27 ["StateMachineGraphing"]
      173 LOADK                            R22 K28 ["ContextMenu"]
      174 LOADK                            R23 K36 ["FrameSelection"]
      175 NAMECALL                         R18 R1 K30 ["getExternalText"]
      177 CALL                             R18 5 1
      178 JUMP                             ; [+1]
      179 LOADK                            R18 K37 ["Frame Selection"]
      180 SETTABLEKS                       R18 R17 K22 ["text"]
      182 SETTABLEKS                       R11 R17 K24 ["onActivated"]
      184 MOVE                             R16 R17
      185 SETLIST                          R15 R16 1 [1]
      187 SETTABLEKS                       R15 R14 K18 ["items"]
      189 SETLIST                          R12 R13 2 [1]
      191 GETUPVAL                         R13 1
      192 GETTABLEKS                       R13 R13 K38 ["createElement"]
      194 GETUPVAL                         R14 6
      195 GETTABLEKS                       R14 R14 K39 ["Menu"]
      197 DUPTABLE                         R15 K42 [{"isOpen", "items", "onPressedOutside", "size"}]
      198 GETTABLEKS                       R16 R0 K17 ["isOpen"]
      200 SETTABLEKS                       R16 R15 K17 ["isOpen"]
      202 SETTABLEKS                       R12 R15 K18 ["items"]
      204 GETTABLEKS                       R16 R0 K14 ["close"]
      206 SETTABLEKS                       R16 R15 K40 ["onPressedOutside"]
      208 GETUPVAL                         R16 6
      209 GETTABLEKS                       R16 R16 K43 ["Enums"]
      211 GETTABLEKS                       R16 R16 K44 ["InputSize"]
      213 GETTABLEKS                       R16 R16 K45 ["XSmall"]
      215 SETTABLEKS                       R16 R15 K41 ["size"]
      217 CALL                             R13 2 -1
      218 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineNodeLibrary"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["StateMachineSelectionContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_Localization2"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K16 [PROTO_0]
       57 DUPCLOSURE                       R9 K17 [PROTO_5]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 RETURN                           R9 1
