PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 GETTABLEKS                       R6 R6 K0 ["TweenInfoSchema"]
        7 GETTABLEKS                       R6 R6 K1 ["GetDefaultValue"]
        9 CALL                             R6 0 -1
       10 CALL                             R3 -1 -1
       11 NAMECALL                         R1 R1 K2 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Clipboard"]
        3 GETTABLEKS                       R1 R1 K1 ["Transition"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K0 ["Clipboard"]
       14 GETTABLEKS                       R6 R6 K1 ["Transition"]
       16 GETTABLEKS                       R6 R6 K2 ["TransitionValue"]
       18 CALL                             R3 3 -1
       19 NAMECALL                         R1 R1 K3 ["dispatch"]
       21 CALL                             R1 -1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 LOADNIL                          R6
        5 CALL                             R3 3 -1
        6 NAMECALL                         R1 R1 K0 ["dispatch"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Localization"]
        5 GETUPVAL                         R5 0
        6 NAMECALL                         R5 R5 K2 ["GetPropertyTransitions"]
        8 CALL                             R5 1 1
        9 GETUPVAL                         R6 1
       10 GETTABLE                         R4 R5 R6
       11 FASTCALL1                        TYPEOF R4 ; [+3]
       12 MOVE                             R7 R4
       13 GETIMPORT                        R6 K4 [typeof]
       15 CALL                             R6 1 1
       16 JUMPIFEQKS                       R6 K5 ["string"] ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 LOADB                            R6 0
       21 GETTABLEKS                       R7 R2 K6 ["Clipboard"]
       23 GETTABLEKS                       R7 R7 K7 ["Transition"]
       25 JUMPIFEQKNIL                     R7 ; [+11]
       27 GETTABLEKS                       R7 R2 K6 ["Clipboard"]
       29 GETTABLEKS                       R7 R7 K7 ["Transition"]
       31 GETTABLEKS                       R7 R7 K8 ["TransitionValue"]
       33 JUMPIFNOTEQKNIL                  R7 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 DUPTABLE                         R7 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
       38 LOADK                            R8 K14 ["UnlinkToken"]
       39 SETTABLEKS                       R8 R7 K9 ["Id"]
       41 LOADK                            R10 K15 ["ContextMenu"]
       42 LOADK                            R11 K14 ["UnlinkToken"]
       43 NAMECALL                         R8 R3 K16 ["getText"]
       45 CALL                             R8 3 1
       46 SETTABLEKS                       R8 R7 K10 ["Text"]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K17 ["Standard"]
       51 GETTABLEKS                       R8 R8 K18 ["TokenSheet"]
       53 CALL                             R8 0 1
       54 SETTABLEKS                       R8 R7 K11 ["Icon"]
       56 NEWCLOSURE                       R8 P0
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          UPVAL U4
       62 SETTABLEKS                       R8 R7 K12 ["OnItemClicked"]
       64 DUPTABLE                         R8 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
       65 LOADK                            R9 K19 ["LinkToken"]
       66 SETTABLEKS                       R9 R8 K9 ["Id"]
       68 LOADK                            R11 K15 ["ContextMenu"]
       69 LOADK                            R12 K19 ["LinkToken"]
       70 NAMECALL                         R9 R3 K16 ["getText"]
       72 CALL                             R9 3 1
       73 SETTABLEKS                       R9 R8 K10 ["Text"]
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K17 ["Standard"]
       78 GETTABLEKS                       R9 R9 K18 ["TokenSheet"]
       80 CALL                             R9 0 1
       81 SETTABLEKS                       R9 R8 K11 ["Icon"]
       83 NEWCLOSURE                       R9 P1
       84 CAPTURE                          UPVAL U5
       85 SETTABLEKS                       R9 R8 K12 ["OnItemClicked"]
       87 NEWTABLE                         R9 0 4
       89 JUMPIFNOT                        R5 ; [+2]
       90 MOVE                             R10 R7
       91 JUMP                             ; [+1]
       92 MOVE                             R10 R8
       93 DUPTABLE                         R11 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
       94 LOADK                            R12 K20 ["CopyTransition"]
       95 SETTABLEKS                       R12 R11 K9 ["Id"]
       97 LOADK                            R14 K15 ["ContextMenu"]
       98 LOADK                            R15 K21 ["Copy"]
       99 NAMECALL                         R12 R3 K16 ["getText"]
      101 CALL                             R12 3 1
      102 SETTABLEKS                       R12 R11 K10 ["Text"]
      104 GETUPVAL                         R12 2
      105 GETTABLEKS                       R12 R12 K22 ["copy"]
      107 CALL                             R12 0 1
      108 SETTABLEKS                       R12 R11 K11 ["Icon"]
      110 NEWCLOSURE                       R12 P2
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U6
      113 CAPTURE                          UPVAL U1
      114 CAPTURE                          VAL R4
      115 SETTABLEKS                       R12 R11 K12 ["OnItemClicked"]
      117 DUPTABLE                         R12 K24 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      118 LOADK                            R13 K25 ["PasteTransition"]
      119 SETTABLEKS                       R13 R12 K9 ["Id"]
      121 LOADK                            R15 K15 ["ContextMenu"]
      122 LOADK                            R16 K26 ["Paste"]
      123 NAMECALL                         R13 R3 K16 ["getText"]
      125 CALL                             R13 3 1
      126 SETTABLEKS                       R13 R12 K10 ["Text"]
      128 GETUPVAL                         R13 2
      129 GETTABLEKS                       R13 R13 K27 ["paste"]
      131 CALL                             R13 0 1
      132 SETTABLEKS                       R13 R12 K11 ["Icon"]
      134 SETTABLEKS                       R6 R12 K23 ["Enabled"]
      136 NEWCLOSURE                       R13 P3
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U3
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          UPVAL U1
      142 SETTABLEKS                       R13 R12 K12 ["OnItemClicked"]
      144 DUPTABLE                         R13 K13 [{"Id", "Text", "Icon", "OnItemClicked"}]
      145 LOADK                            R14 K28 ["Delete"]
      146 SETTABLEKS                       R14 R13 K9 ["Id"]
      148 LOADK                            R16 K15 ["ContextMenu"]
      149 LOADK                            R17 K28 ["Delete"]
      150 NAMECALL                         R14 R3 K16 ["getText"]
      152 CALL                             R14 3 1
      153 SETTABLEKS                       R14 R13 K10 ["Text"]
      155 GETUPVAL                         R14 2
      156 GETTABLEKS                       R14 R14 K29 ["delete"]
      158 CALL                             R14 0 1
      159 SETTABLEKS                       R14 R13 K11 ["Icon"]
      161 NEWCLOSURE                       R14 P4
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U3
      164 CAPTURE                          UPVAL U0
      165 CAPTURE                          UPVAL U1
      166 SETTABLEKS                       R14 R13 K12 ["OnItemClicked"]
      168 SETLIST                          R9 R10 4 [1]
      170 DUPTABLE                         R10 K31 [{"Id", "Children"}]
      171 LOADK                            R11 K32 ["TransitionRowMenu"]
      172 SETTABLEKS                       R11 R10 K9 ["Id"]
      174 SETTABLEKS                       R9 R10 K30 ["Children"]
      176 GETUPVAL                         R11 7
      177 GETTABLEKS                       R11 R11 K33 ["trackClicks"]
      179 MOVE                             R12 R10
      180 GETTABLEKS                       R13 R1 K34 ["Telemetry"]
      182 CALL                             R11 2 0
      183 GETUPVAL                         R11 7
      184 GETTABLEKS                       R11 R11 K35 ["showContextMenu"]
      186 GETTABLEKS                       R12 R1 K36 ["Plugin"]
      188 MOVE                             R13 R10
      189 CALL                             R11 2 0
      190 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Util"]
       26 GETTABLEKS                       R3 R3 K9 ["StyleSchema"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K8 ["Util"]
       35 GETTABLEKS                       R4 R4 K10 ["MenuHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Resources"]
       44 GETTABLEKS                       R5 R5 K12 ["ModernIcons"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R5 R0 K5 ["Src"]
       49 GETTABLEKS                       R5 R5 K13 ["Actions"]
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R7 R5 K14 ["Clipboard"]
       55 GETTABLEKS                       R7 R7 K15 ["CopyTransitionToClipboard"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R7 R0 K5 ["Src"]
       60 GETTABLEKS                       R7 R7 K16 ["Thunks"]
       62 GETIMPORT                        R8 K4 [require]
       64 GETTABLEKS                       R9 R7 K17 ["Change"]
       66 GETTABLEKS                       R9 R9 K18 ["SetStyleRulePropertyTransition"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K4 [require]
       71 GETTABLEKS                       R10 R0 K5 ["Src"]
       73 GETTABLEKS                       R10 R10 K19 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K4 [require]
       78 GETTABLEKS                       R11 R0 K5 ["Src"]
       80 GETTABLEKS                       R11 R11 K16 ["Thunks"]
       82 GETTABLEKS                       R11 R11 K19 ["Types"]
       84 CALL                             R10 1 1
       85 DUPCLOSURE                       R11 K20 [PROTO_6]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R3
       91 RETURN                           R11 1
