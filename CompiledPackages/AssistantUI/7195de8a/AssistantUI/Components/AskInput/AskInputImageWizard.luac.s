PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K2 [buffer.fromstring]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K3 ["imageBase64"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K4 ["Base64Decode"]
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["mapControllerSlotsToWidget"]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 -1
        6 CALL                             R3 -1 0
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETTABLE                         R5 R0 R2
       10 JUMPIFNOT                        R5 ; [+4]
       11 GETTABLE                         R4 R0 R2
       12 GETTABLEKS                       R4 R4 K1 ["thumbnailTempId"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["segmentationFold"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantImageGenImprovements"]
        7 JUMPIFNOT                        R2 ; [+12]
        8 JUMPIFEQKNIL                     R1 ; [+11]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["resolveAsync"]
       13 MOVE                             R3 R1
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K3 ["current"]
       17 GETUPVAL                         R5 0
       18 CALL                             R2 3 1
       19 MOVE                             R0 R2
       20 GETUPVAL                         R2 5
       21 JUMPIFNOT                        R2 ; [+1]
       22 RETURN                           R0 0
       23 LOADNIL                          R2
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K4 ["resolveSeedImageFromSelectedInstance"]
       27 JUMPIFNOT                        R3 ; [+41]
       28 GETUPVAL                         R3 6
       29 GETTABLEKS                       R3 R3 K3 ["current"]
       31 GETUPVAL                         R4 7
       32 GETTABLEKS                       R4 R4 K5 ["Configs"]
       34 GETTABLEKS                       R4 R4 K6 ["TextureGen"]
       36 GETTABLEKS                       R4 R4 K7 ["row"]
       38 GETTABLEKS                       R4 R4 K8 ["SelectedInstanceRef"]
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R6 R6 K3 ["current"]
       43 GETTABLE                         R5 R6 R4
       44 JUMPIFEQKNIL                     R3 ; [+24]
       46 JUMPIFEQKNIL                     R5 ; [+22]
       48 GETIMPORT                        R6 K10 [pcall]
       50 GETTABLEKS                       R7 R3 K11 ["captureSourceInstanceImageAsync"]
       52 DUPTABLE                         R8 K13 [{"selectedUniqueId"}]
       53 GETTABLEKS                       R9 R5 K14 ["uniqueId"]
       55 SETTABLEKS                       R9 R8 K12 ["selectedUniqueId"]
       57 CALL                             R6 2 2
       58 JUMPIFNOT                        R6 ; [+10]
       59 JUMPIFEQKNIL                     R7 ; [+9]
       61 GETIMPORT                        R8 K10 [pcall]
       63 NEWCLOSURE                       R9 P0
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          VAL R7
       66 CALL                             R8 1 2
       67 JUMPIFNOT                        R8 ; [+1]
       68 MOVE                             R2 R9
       69 GETUPVAL                         R3 5
       70 JUMPIFNOT                        R3 ; [+1]
       71 RETURN                           R0 0
       72 GETUPVAL                         R3 9
       73 GETTABLEKS                       R3 R3 K15 ["new"]
       75 DUPTABLE                         R4 K21 [{"textPrompt", "slotCount", "model", "seedImage", "onSlotsUpdated"}]
       76 SETTABLEKS                       R0 R4 K16 ["textPrompt"]
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R5 R5 K17 ["slotCount"]
       81 SETTABLEKS                       R5 R4 K17 ["slotCount"]
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R5 R5 K18 ["model"]
       86 SETTABLEKS                       R5 R4 K18 ["model"]
       88 SETTABLEKS                       R2 R4 K19 ["seedImage"]
       90 NEWCLOSURE                       R5 P1
       91 CAPTURE                          UPVAL U10
       92 CAPTURE                          UPVAL U11
       93 CAPTURE                          UPVAL U12
       94 SETTABLEKS                       R5 R4 K20 ["onSlotsUpdated"]
       96 CALL                             R3 1 1
       97 GETUPVAL                         R4 13
       98 SETTABLEKS                       R3 R4 K3 ["current"]
      100 NAMECALL                         R4 R3 K22 ["runAsync"]
      102 CALL                             R4 1 1
      103 GETUPVAL                         R5 13
      104 LOADNIL                          R6
      105 SETTABLEKS                       R6 R5 K3 ["current"]
      107 GETUPVAL                         R5 5
      108 JUMPIFNOT                        R5 ; [+1]
      109 RETURN                           R0 0
      110 GETTABLEKS                       R5 R4 K23 ["cancelled"]
      112 JUMPIFNOT                        R5 ; [+5]
      113 GETUPVAL                         R5 14
      114 GETTABLEKS                       R5 R5 K3 ["current"]
      116 CALL                             R5 0 0
      117 RETURN                           R0 0
      118 GETTABLEKS                       R5 R4 K24 ["errorMessage"]
      120 JUMPIF                           R5 ; [+3]
      121 GETTABLEKS                       R5 R4 K25 ["imageContent"]
      123 JUMPIF                           R5 ; [+5]
      124 GETUPVAL                         R5 15
      125 GETTABLEKS                       R5 R5 K3 ["current"]
      127 CALL                             R5 0 0
      128 RETURN                           R0 0
      129 GETUPVAL                         R5 16
      130 GETTABLEKS                       R5 R5 K3 ["current"]
      132 GETTABLEKS                       R6 R4 K25 ["imageContent"]
      134 CALL                             R5 1 0
      135 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 NAMECALL                         R1 R0 K1 ["cancel"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETTABLEKS                       R3 R0 K1 ["promptKey"]
       10 GETTABLE                         R1 R2 R3
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R3 K3 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+3]
       18 MOVE                             R2 R1
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K5 [""]
       21 LOADB                            R3 0
       22 GETIMPORT                        R4 K8 [task.spawn]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          REF R3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U10
       38 CAPTURE                          UPVAL U11
       39 CAPTURE                          UPVAL U12
       40 CAPTURE                          UPVAL U13
       41 CAPTURE                          UPVAL U14
       42 CALL                             R4 1 0
       43 NEWCLOSURE                       R4 P1
       44 CAPTURE                          REF R3
       45 CAPTURE                          UPVAL U11
       46 CLOSEUPVALS                      R3
       47 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R1 K1 ["previewSlot"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["clearPreview"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R3 0
        9 NAMECALL                         R1 R0 K1 ["select"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["cancel"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["refresh"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"BackButton", "ConfirmButton"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Gen3d"]
        3 LOADK                            R4 K4 ["Back"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["BackButton"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["InputRequiredWidget"]
       11 LOADK                            R4 K1 ["ConfirmButton"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ConfirmButton"]
       17 RETURN                           R0 1

PROTO_12:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R6 R0 K6 ["CanvasPosition"]
       18 GETTABLEKS                       R6 R6 K1 ["Y"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K8 [math.abs]
       24 CALL                             R4 1 1
       25 LOADN                            R5 48
       26 JUMPIFLE                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K9 ["current"]
       32 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["current"]
        9 JUMPIFNOT                        R1 ; [+26]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["current"]
       13 JUMPIFNOT                        R1 ; [+22]
       14 LOADN                            R3 0
       15 GETTABLEKS                       R5 R1 K3 ["AbsoluteCanvasSize"]
       17 GETTABLEKS                       R5 R5 K1 ["Y"]
       19 GETTABLEKS                       R6 R1 K4 ["AbsoluteSize"]
       21 GETTABLEKS                       R6 R6 K1 ["Y"]
       23 SUB                              R4 R5 R6
       24 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       26 GETIMPORT                        R2 K7 [math.max]
       28 CALL                             R2 2 1
       29 GETIMPORT                        R3 K10 [Vector2.new]
       31 LOADN                            R4 0
       32 MOVE                             R5 R2
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R1 K11 ["CanvasPosition"]
       36 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["useState"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K2 ["useState"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 2
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K2 ["useState"]
       25 LOADN                            R9 0
       26 CALL                             R8 1 2
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K3 ["useRef"]
       30 LOADNIL                          R11
       31 CALL                             R10 1 1
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K3 ["useRef"]
       35 LOADB                            R12 1
       36 CALL                             R11 1 1
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R12 R12 K3 ["useRef"]
       40 GETTABLEKS                       R13 R0 K4 ["config"]
       42 CALL                             R12 1 1
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R13 R13 K3 ["useRef"]
       46 LOADNIL                          R14
       47 CALL                             R13 1 1
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R15 R0 K5 ["onComplete"]
       51 CALL                             R14 1 1
       52 GETUPVAL                         R15 2
       53 GETTABLEKS                       R16 R0 K6 ["onError"]
       55 CALL                             R15 1 1
       56 GETUPVAL                         R16 2
       57 GETTABLEKS                       R17 R0 K7 ["onBack"]
       59 CALL                             R16 1 1
       60 GETUPVAL                         R17 2
       61 GETTABLEKS                       R18 R0 K8 ["values"]
       63 CALL                             R17 1 1
       64 GETUPVAL                         R18 1
       65 GETTABLEKS                       R18 R18 K9 ["useContext"]
       67 GETUPVAL                         R19 3
       68 GETTABLEKS                       R19 R19 K10 ["Context"]
       70 CALL                             R18 1 1
       71 GETUPVAL                         R19 2
       72 MOVE                             R20 R18
       73 CALL                             R19 1 1
       74 GETUPVAL                         R20 1
       75 GETTABLEKS                       R20 R20 K11 ["useEffect"]
       77 NEWCLOSURE                       R21 P0
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R17
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R19
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U9
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R14
       93 NEWTABLE                         R22 0 0
       95 CALL                             R20 2 0
       96 GETUPVAL                         R20 1
       97 GETTABLEKS                       R20 R20 K12 ["useCallback"]
       99 NEWCLOSURE                       R21 P1
      100 CAPTURE                          VAL R7
      101 NEWTABLE                         R22 0 0
      103 CALL                             R20 2 1
      104 GETUPVAL                         R21 1
      105 GETTABLEKS                       R21 R21 K12 ["useCallback"]
      107 NEWCLOSURE                       R22 P2
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R13
      110 NEWTABLE                         R23 0 0
      112 CALL                             R21 2 1
      113 GETUPVAL                         R22 1
      114 GETTABLEKS                       R22 R22 K12 ["useCallback"]
      116 NEWCLOSURE                       R23 P3
      117 CAPTURE                          VAL R13
      118 NEWTABLE                         R24 0 0
      120 CALL                             R22 2 1
      121 GETUPVAL                         R23 1
      122 GETTABLEKS                       R23 R23 K12 ["useCallback"]
      124 NEWCLOSURE                       R24 P4
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R13
      127 NEWTABLE                         R25 0 1
      129 MOVE                             R26 R6
      130 SETLIST                          R25 R26 1 [1]
      132 CALL                             R23 2 1
      133 GETUPVAL                         R24 1
      134 GETTABLEKS                       R24 R24 K12 ["useCallback"]
      136 NEWCLOSURE                       R25 P5
      137 CAPTURE                          VAL R13
      138 NEWTABLE                         R26 0 0
      140 CALL                             R24 2 1
      141 GETUPVAL                         R25 1
      142 GETTABLEKS                       R25 R25 K12 ["useCallback"]
      144 NEWCLOSURE                       R26 P6
      145 CAPTURE                          VAL R13
      146 NEWTABLE                         R27 0 0
      148 CALL                             R25 2 1
      149 GETUPVAL                         R26 1
      150 GETTABLEKS                       R26 R26 K13 ["useMemo"]
      152 DUPCLOSURE                       R27 K14 [PROTO_11]
      153 CAPTURE                          UPVAL U10
      154 NEWTABLE                         R28 0 1
      156 GETUPVAL                         R29 10
      157 GETTABLEKS                       R29 R29 K15 ["locale"]
      159 SETLIST                          R28 R29 1 [1]
      161 CALL                             R26 2 1
      162 GETUPVAL                         R27 1
      163 GETTABLEKS                       R27 R27 K12 ["useCallback"]
      165 NEWCLOSURE                       R28 P8
      166 CAPTURE                          VAL R11
      167 NEWTABLE                         R29 0 0
      169 CALL                             R27 2 1
      170 GETUPVAL                         R28 1
      171 GETTABLEKS                       R28 R28 K12 ["useCallback"]
      173 NEWCLOSURE                       R29 P9
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R10
      177 NEWTABLE                         R30 0 0
      179 CALL                             R28 2 1
      180 JUMPIFNOTEQKNIL                  R4 ; [+2]
      182 LOADB                            R29 0 +1
      183 LOADB                            R29 1
      184 MOVE                             R30 R6
      185 JUMPIFNOT                        R30 ; [+9]
      186 GETTABLE                         R30 R2 R6
      187 JUMPIFNOT                        R30 ; [+7]
      188 GETTABLE                         R31 R2 R6
      189 GETTABLEKS                       R31 R31 K16 ["status"]
      191 JUMPIFEQKS                       R31 K17 ["Ready"] ; [+2]
      193 LOADB                            R30 0 +1
      194 LOADB                            R30 1
      195 GETUPVAL                         R31 11
      196 CALL                             R31 0 1
      197 GETTABLEKS                       R33 R0 K4 ["config"]
      199 GETTABLEKS                       R33 R33 K18 ["wizardMode"]
      201 JUMPIFNOT                        R33 ; [+2]
      202 LOADNIL                          R32
      203 JUMP                             ; [+2]
      204 GETTABLEKS                       R32 R0 K19 ["rows"]
      206 GETUPVAL                         R33 12
      207 GETUPVAL                         R34 13
      208 DUPTABLE                         R35 K23 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      209 GETTABLEKS                       R36 R0 K22 ["LayoutOrder"]
      211 SETTABLEKS                       R36 R35 K22 ["LayoutOrder"]
      213 DUPTABLE                         R36 K25 [{"Content"}]
      214 GETUPVAL                         R37 12
      215 LOADK                            R38 K26 ["ScrollingFrame"]
      216 NEWTABLE                         R39 16 0
      218 GETIMPORT                        R40 K29 [UDim2.new]
      220 LOADN                            R41 1
      221 LOADN                            R42 0
      222 LOADN                            R43 0
      223 FASTCALL2K                       MATH_MIN R8 K30 ; [+5]
      225 MOVE                             R45 R8
      226 LOADK                            R46 K30 [375]
      227 GETIMPORT                        R44 K33 [math.min]
      229 CALL                             R44 2 1
      230 CALL                             R40 4 1
      231 SETTABLEKS                       R40 R39 K34 ["Size"]
      233 GETIMPORT                        R40 K38 [Enum.AutomaticSize.Y]
      235 SETTABLEKS                       R40 R39 K39 ["AutomaticCanvasSize"]
      237 GETIMPORT                        R40 K29 [UDim2.new]
      239 LOADN                            R41 0
      240 LOADN                            R42 0
      241 LOADN                            R43 0
      242 LOADN                            R44 0
      243 CALL                             R40 4 1
      244 SETTABLEKS                       R40 R39 K40 ["CanvasSize"]
      246 LOADB                            R40 1
      247 SETTABLEKS                       R40 R39 K41 ["ClipsDescendants"]
      249 GETTABLEKS                       R40 R1 K34 ["Size"]
      251 GETTABLEKS                       R40 R40 K42 ["Size_150"]
      253 SETTABLEKS                       R40 R39 K43 ["ScrollBarThickness"]
      255 GETIMPORT                        R40 K45 [Enum.ScrollingDirection.Y]
      257 SETTABLEKS                       R40 R39 K44 ["ScrollingDirection"]
      259 GETIMPORT                        R40 K48 [Enum.ScrollBarInset.ScrollBar]
      261 SETTABLEKS                       R40 R39 K49 ["VerticalScrollBarInset"]
      263 LOADN                            R40 1
      264 SETTABLEKS                       R40 R39 K50 ["BackgroundTransparency"]
      266 LOADN                            R40 0
      267 SETTABLEKS                       R40 R39 K51 ["BorderSizePixel"]
      269 MOVE                             R40 R31
      270 CALL                             R40 0 1
      271 SETTABLEKS                       R40 R39 K22 ["LayoutOrder"]
      273 SETTABLEKS                       R10 R39 K52 ["ref"]
      275 GETUPVAL                         R40 1
      276 GETTABLEKS                       R40 R40 K53 ["Change"]
      278 GETTABLEKS                       R40 R40 K54 ["CanvasPosition"]
      280 SETTABLE                         R27 R39 R40
      281 DUPTABLE                         R40 K62 [{"Layout", "Padding", "Title", "PropertyRows", "Picker", "ButtonGroup", "PreviewPopover"}]
      282 GETUPVAL                         R41 12
      283 LOADK                            R42 K63 ["UIListLayout"]
      284 NEWTABLE                         R43 4 0
      286 GETIMPORT                        R44 K66 [Enum.FillDirection.Vertical]
      288 SETTABLEKS                       R44 R43 K64 ["FillDirection"]
      290 GETIMPORT                        R44 K68 [Enum.SortOrder.LayoutOrder]
      292 SETTABLEKS                       R44 R43 K67 ["SortOrder"]
      294 GETUPVAL                         R44 1
      295 GETTABLEKS                       R44 R44 K53 ["Change"]
      297 GETTABLEKS                       R44 R44 K69 ["AbsoluteContentSize"]
      299 SETTABLE                         R28 R43 R44
      300 CALL                             R41 2 1
      301 SETTABLEKS                       R41 R40 K55 ["Layout"]
      303 GETUPVAL                         R41 12
      304 LOADK                            R42 K70 ["UIPadding"]
      305 DUPTABLE                         R43 K72 [{"PaddingRight"}]
      306 GETIMPORT                        R44 K74 [UDim.new]
      308 LOADN                            R45 0
      309 GETTABLEKS                       R46 R1 K34 ["Size"]
      311 GETTABLEKS                       R46 R46 K42 ["Size_150"]
      313 CALL                             R44 2 1
      314 SETTABLEKS                       R44 R43 K71 ["PaddingRight"]
      316 CALL                             R41 2 1
      317 SETTABLEKS                       R41 R40 K56 ["Padding"]
      319 LOADB                            R41 0
      320 GETTABLEKS                       R42 R0 K75 ["title"]
      322 JUMPIFEQKNIL                     R42 ; [+13]
      324 GETUPVAL                         R41 12
      325 GETUPVAL                         R42 14
      326 DUPTABLE                         R43 K78 [{["tag"] = "size-full-0 auto-xy padding-bottom-medium text-title-medium text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      327 GETTABLEKS                       R44 R0 K75 ["title"]
      329 SETTABLEKS                       R44 R43 K77 ["Text"]
      331 MOVE                             R44 R31
      332 CALL                             R44 0 1
      333 SETTABLEKS                       R44 R43 K22 ["LayoutOrder"]
      335 CALL                             R41 2 1
      336 SETTABLEKS                       R41 R40 K57 ["Title"]
      338 MOVE                             R41 R32
      339 JUMPIFNOT                        R41 ; [+19]
      340 GETUPVAL                         R41 12
      341 GETUPVAL                         R42 15
      342 GETTABLEKS                       R42 R42 K79 ["PropertyRowsRoot"]
      344 DUPTABLE                         R43 K84 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      345 SETTABLEKS                       R32 R43 K80 ["rowDefinitions"]
      347 GETUPVAL                         R44 16
      348 GETTABLEKS                       R44 R44 K85 ["createUnimplemented"]
      350 LOADK                            R45 K81 ["onChange"]
      351 CALL                             R44 1 1
      352 SETTABLEKS                       R44 R43 K81 ["onChange"]
      354 MOVE                             R44 R31
      355 CALL                             R44 0 1
      356 SETTABLEKS                       R44 R43 K22 ["LayoutOrder"]
      358 CALL                             R41 2 1
      359 SETTABLEKS                       R41 R40 K58 ["PropertyRows"]
      361 GETUPVAL                         R41 12
      362 GETUPVAL                         R42 17
      363 DUPTABLE                         R43 K90 [{"slots", "onSelect", "onPreview", "selectedIndex", "LayoutOrder"}]
      364 SETTABLEKS                       R2 R43 K86 ["slots"]
      366 SETTABLEKS                       R20 R43 K87 ["onSelect"]
      368 SETTABLEKS                       R21 R43 K88 ["onPreview"]
      370 SETTABLEKS                       R6 R43 K89 ["selectedIndex"]
      372 MOVE                             R44 R31
      373 CALL                             R44 0 1
      374 SETTABLEKS                       R44 R43 K22 ["LayoutOrder"]
      376 CALL                             R41 2 1
      377 SETTABLEKS                       R41 R40 K59 ["Picker"]
      379 GETUPVAL                         R41 12
      380 GETUPVAL                         R42 13
      381 DUPTABLE                         R43 K92 [{["tag"] = "row gap-small size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      382 MOVE                             R44 R31
      383 CALL                             R44 0 1
      384 SETTABLEKS                       R44 R43 K22 ["LayoutOrder"]
      386 DUPTABLE                         R44 K96 [{"BackButton", "RefreshButton", "ConfirmButton"}]
      387 GETUPVAL                         R45 12
      388 GETUPVAL                         R46 18
      389 DUPTABLE                         R47 K101 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      390 GETTABLEKS                       R48 R26 K93 ["BackButton"]
      392 SETTABLEKS                       R48 R47 K97 ["text"]
      394 GETUPVAL                         R48 0
      395 GETTABLEKS                       R48 R48 K102 ["Enums"]
      397 GETTABLEKS                       R48 R48 K103 ["InputSize"]
      399 GETTABLEKS                       R48 R48 K104 ["XSmall"]
      401 SETTABLEKS                       R48 R47 K98 ["size"]
      403 GETUPVAL                         R48 0
      404 GETTABLEKS                       R48 R48 K102 ["Enums"]
      406 GETTABLEKS                       R48 R48 K105 ["ButtonVariant"]
      408 GETTABLEKS                       R48 R48 K106 ["Standard"]
      410 SETTABLEKS                       R48 R47 K99 ["variant"]
      412 SETTABLEKS                       R24 R47 K100 ["onActivated"]
      414 MOVE                             R48 R31
      415 CALL                             R48 0 1
      416 SETTABLEKS                       R48 R47 K22 ["LayoutOrder"]
      418 CALL                             R45 2 1
      419 SETTABLEKS                       R45 R44 K93 ["BackButton"]
      421 GETUPVAL                         R45 12
      422 GETUPVAL                         R46 19
      423 DUPTABLE                         R47 K108 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      424 GETUPVAL                         R48 0
      425 GETTABLEKS                       R48 R48 K102 ["Enums"]
      427 GETTABLEKS                       R48 R48 K109 ["IconName"]
      429 GETTABLEKS                       R48 R48 K110 ["TwoArrowsSpinClockwise"]
      431 SETTABLEKS                       R48 R47 K107 ["icon"]
      433 GETUPVAL                         R48 0
      434 GETTABLEKS                       R48 R48 K102 ["Enums"]
      436 GETTABLEKS                       R48 R48 K103 ["InputSize"]
      438 GETTABLEKS                       R48 R48 K104 ["XSmall"]
      440 SETTABLEKS                       R48 R47 K98 ["size"]
      442 GETUPVAL                         R48 0
      443 GETTABLEKS                       R48 R48 K102 ["Enums"]
      445 GETTABLEKS                       R48 R48 K105 ["ButtonVariant"]
      447 GETTABLEKS                       R48 R48 K106 ["Standard"]
      449 SETTABLEKS                       R48 R47 K99 ["variant"]
      451 SETTABLEKS                       R25 R47 K100 ["onActivated"]
      453 MOVE                             R48 R31
      454 CALL                             R48 0 1
      455 SETTABLEKS                       R48 R47 K22 ["LayoutOrder"]
      457 CALL                             R45 2 1
      458 SETTABLEKS                       R45 R44 K94 ["RefreshButton"]
      460 GETUPVAL                         R45 12
      461 GETUPVAL                         R46 18
      462 DUPTABLE                         R47 K111 [{"text", "size", "variant", "onActivated", "isDisabled", "LayoutOrder"}]
      463 GETTABLEKS                       R48 R26 K95 ["ConfirmButton"]
      465 SETTABLEKS                       R48 R47 K97 ["text"]
      467 GETUPVAL                         R48 0
      468 GETTABLEKS                       R48 R48 K102 ["Enums"]
      470 GETTABLEKS                       R48 R48 K103 ["InputSize"]
      472 GETTABLEKS                       R48 R48 K104 ["XSmall"]
      474 SETTABLEKS                       R48 R47 K98 ["size"]
      476 GETUPVAL                         R48 0
      477 GETTABLEKS                       R48 R48 K102 ["Enums"]
      479 GETTABLEKS                       R48 R48 K105 ["ButtonVariant"]
      481 GETTABLEKS                       R48 R48 K112 ["Emphasis"]
      483 SETTABLEKS                       R48 R47 K99 ["variant"]
      485 SETTABLEKS                       R23 R47 K100 ["onActivated"]
      487 NOT                              R48 R30
      488 SETTABLEKS                       R48 R47 K82 ["isDisabled"]
      490 MOVE                             R48 R31
      491 CALL                             R48 0 1
      492 SETTABLEKS                       R48 R47 K22 ["LayoutOrder"]
      494 CALL                             R45 2 1
      495 SETTABLEKS                       R45 R44 K95 ["ConfirmButton"]
      497 CALL                             R41 3 1
      498 SETTABLEKS                       R41 R40 K60 ["ButtonGroup"]
      500 GETUPVAL                         R41 12
      501 GETUPVAL                         R42 20
      502 DUPTABLE                         R43 K116 [{"visible", "imageContent", "onClose"}]
      503 SETTABLEKS                       R29 R43 K113 ["visible"]
      505 SETTABLEKS                       R4 R43 K114 ["imageContent"]
      507 SETTABLEKS                       R22 R43 K115 ["onClose"]
      509 CALL                             R41 2 1
      510 SETTABLEKS                       R41 R40 K61 ["PreviewPopover"]
      512 CALL                             R37 3 1
      513 SETTABLEKS                       R37 R36 K24 ["Content"]
      515 CALL                             R33 3 -1
      516 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["AskInput"]
       30 GETTABLEKS                       R6 R6 K12 ["AskInputTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Flags"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["Components"]
       42 GETTABLEKS                       R8 R8 K15 ["ImageSelection"]
       44 GETTABLEKS                       R8 R8 K16 ["ImageSelectionController"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["ImageSelection"]
       53 GETTABLEKS                       R9 R9 K17 ["ImageSelectionPicker"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Components"]
       60 GETTABLEKS                       R10 R10 K15 ["ImageSelection"]
       62 GETTABLEKS                       R10 R10 K18 ["ImageSelectionSlots"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Components"]
       69 GETTABLEKS                       R11 R11 K15 ["ImageSelection"]
       71 GETTABLEKS                       R11 R11 K19 ["PreviewPopoverHost"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K14 ["Components"]
       78 GETTABLEKS                       R12 R12 K20 ["PropertyRows"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K14 ["Components"]
       85 GETTABLEKS                       R13 R13 K11 ["AskInput"]
       87 GETTABLEKS                       R13 R13 K21 ["SegmentationPromptFold"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K10 ["Util"]
       94 GETTABLEKS                       R14 R14 K22 ["SlashCommandConfiguration"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETTABLEKS                       R15 R0 K14 ["Components"]
      101 GETTABLEKS                       R15 R15 K23 ["Contexts"]
      103 GETTABLEKS                       R15 R15 K24 ["Actions"]
      105 GETTABLEKS                       R15 R15 K25 ["TextureGenActionsContext"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K6 [require]
      110 GETTABLEKS                       R16 R0 K26 ["Resources"]
      112 GETTABLEKS                       R16 R16 K27 ["Localization"]
      114 GETTABLEKS                       R16 R16 K28 ["Translator"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K6 [require]
      119 GETTABLEKS                       R17 R0 K29 ["Types"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K6 [require]
      124 GETTABLEKS                       R18 R0 K30 ["Hooks"]
      126 GETTABLEKS                       R18 R18 K31 ["useLatest"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K33 [game]
      131 LOADK                            R20 K34 ["EncodingService"]
      132 NAMECALL                         R18 R18 K35 ["GetService"]
      134 CALL                             R18 2 1
      135 GETTABLEKS                       R19 R2 K36 ["Button"]
      137 GETTABLEKS                       R20 R2 K37 ["IconButton"]
      139 GETTABLEKS                       R21 R2 K38 ["Text"]
      141 GETTABLEKS                       R22 R2 K39 ["View"]
      143 GETTABLEKS                       R23 R3 K40 ["createElement"]
      145 GETTABLEKS                       R24 R4 K41 ["createNextOrder"]
      147 DUPCLOSURE                       R25 K42 [PROTO_14]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R10
      169 GETTABLEKS                       R26 R3 K43 ["memo"]
      171 MOVE                             R27 R25
      172 CALL                             R26 1 -1
      173 RETURN                           R26 -1
