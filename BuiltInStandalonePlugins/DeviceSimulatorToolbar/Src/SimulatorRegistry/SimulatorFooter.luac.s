PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R2 R0 K2 ["testId"]
        9 ORK                              R1 R2 K1 ["simulator-footer"]
       10 GETUPVAL                         R2 1
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R3 R0 K3 ["onRequestSave"]
       14 GETTABLEKS                       R4 R0 K4 ["onApply"]
       16 JUMPIF                           R4 ; [+1]
       17 DUPCLOSURE                       R4 K5 [PROTO_0]
       18 MOVE                             R5 R3
       19 JUMPIF                           R5 ; [+1]
       20 DUPCLOSURE                       R5 K6 [PROTO_1]
       21 GETTABLEKS                       R6 R0 K7 ["onReset"]
       23 JUMPIF                           R6 ; [+1]
       24 DUPCLOSURE                       R6 K8 [PROTO_2]
       25 GETTABLEKS                       R7 R0 K9 ["onDelete"]
       27 JUMPIF                           R7 ; [+1]
       28 DUPCLOSURE                       R7 K10 [PROTO_3]
       29 GETTABLEKS                       R9 R0 K11 ["activeSavedPreset"]
       31 JUMPIFNOTEQKNIL                  R9 ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K12 ["getEngineFeatureDeviceSimulatorPerformance"]
       38 CALL                             R9 0 1
       39 JUMPIFNOT                        R9 ; [+6]
       40 GETTABLEKS                       R10 R0 K13 ["hidesApply"]
       42 JUMPIFEQKB                       R10 TRUE ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K14 ["createElement"]
       49 GETUPVAL                         R11 3
       50 DUPTABLE                         R12 K18 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-x-large padding-bottom-large", ["testId"]}]
       51 GETTABLEKS                       R13 R0 K15 ["LayoutOrder"]
       53 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
       55 SETTABLEKS                       R1 R12 K2 ["testId"]
       57 DUPTABLE                         R13 K20 [{"Buttons"}]
       58 GETUPVAL                         R14 2
       59 GETTABLEKS                       R14 R14 K14 ["createElement"]
       61 GETUPVAL                         R15 3
       62 DUPTABLE                         R16 K22 [{["tag"] = "row gap-small size-full-0 auto-y", ["testId"]}]
       63 LOADK                            R17 K23 ["%*-buttons"]
       64 MOVE                             R19 R1
       65 NAMECALL                         R17 R17 K24 ["format"]
       67 CALL                             R17 2 1
       68 SETTABLEKS                       R17 R16 K2 ["testId"]
       70 DUPTABLE                         R17 K28 [{"Apply", "Save", "ResetOrDelete"}]
       71 JUMPIFNOT                        R9 ; [+2]
       72 LOADNIL                          R18
       73 JUMP                             ; [+48]
       74 GETUPVAL                         R18 2
       75 GETTABLEKS                       R18 R18 K14 ["createElement"]
       77 GETUPVAL                         R19 4
       78 DUPTABLE                         R20 K36 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
       79 LOADK                            R23 K37 ["SimulatorAction"]
       80 LOADK                            R24 K25 ["Apply"]
       81 NAMECALL                         R21 R2 K38 ["getText"]
       83 CALL                             R21 3 1
       84 SETTABLEKS                       R21 R20 K30 ["text"]
       86 GETUPVAL                         R21 5
       87 GETTABLEKS                       R21 R21 K39 ["Emphasis"]
       89 SETTABLEKS                       R21 R20 K31 ["variant"]
       91 LOADB                            R21 1
       92 GETTABLEKS                       R22 R0 K4 ["onApply"]
       94 JUMPIFEQKNIL                     R22 ; [+7]
       96 GETTABLEKS                       R22 R0 K40 ["hasPendingChanges"]
       98 JUMPIFNOTEQKB                    R22 TRUE ; [+2]
      100 LOADB                            R21 0 +1
      101 LOADB                            R21 1
      102 SETTABLEKS                       R21 R20 K32 ["isDisabled"]
      104 SETTABLEKS                       R4 R20 K33 ["onActivated"]
      106 GETUPVAL                         R21 6
      107 GETTABLEKS                       R21 R21 K41 ["Small"]
      109 SETTABLEKS                       R21 R20 K34 ["size"]
      111 GETUPVAL                         R21 7
      112 SETTABLEKS                       R21 R20 K35 ["width"]
      114 LOADK                            R21 K42 ["%*-buttons--apply"]
      115 MOVE                             R23 R1
      116 NAMECALL                         R21 R21 K24 ["format"]
      118 CALL                             R21 2 1
      119 SETTABLEKS                       R21 R20 K2 ["testId"]
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K25 ["Apply"]
      124 GETUPVAL                         R18 2
      125 GETTABLEKS                       R18 R18 K14 ["createElement"]
      127 GETUPVAL                         R19 4
      128 DUPTABLE                         R20 K44 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
      129 LOADK                            R23 K37 ["SimulatorAction"]
      130 LOADK                            R24 K26 ["Save"]
      131 NAMECALL                         R21 R2 K38 ["getText"]
      133 CALL                             R21 3 1
      134 SETTABLEKS                       R21 R20 K30 ["text"]
      136 GETUPVAL                         R21 5
      137 GETTABLEKS                       R21 R21 K45 ["Standard"]
      139 SETTABLEKS                       R21 R20 K31 ["variant"]
      141 LOADB                            R21 1
      142 JUMPIFEQKNIL                     R3 ; [+7]
      144 GETTABLEKS                       R22 R0 K46 ["isSaveDisabled"]
      146 JUMPIFEQKB                       R22 TRUE ; [+2]
      148 LOADB                            R21 0 +1
      149 LOADB                            R21 1
      150 SETTABLEKS                       R21 R20 K32 ["isDisabled"]
      152 SETTABLEKS                       R5 R20 K33 ["onActivated"]
      154 GETUPVAL                         R21 6
      155 GETTABLEKS                       R21 R21 K41 ["Small"]
      157 SETTABLEKS                       R21 R20 K34 ["size"]
      159 GETUPVAL                         R21 7
      160 SETTABLEKS                       R21 R20 K35 ["width"]
      162 LOADK                            R21 K47 ["%*-buttons--save"]
      163 MOVE                             R23 R1
      164 NAMECALL                         R21 R21 K24 ["format"]
      166 CALL                             R21 2 1
      167 SETTABLEKS                       R21 R20 K2 ["testId"]
      169 CALL                             R18 2 1
      170 SETTABLEKS                       R18 R17 K26 ["Save"]
      172 GETUPVAL                         R18 2
      173 GETTABLEKS                       R18 R18 K14 ["createElement"]
      175 GETUPVAL                         R19 4
      176 DUPTABLE                         R20 K49 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
      177 JUMPIFNOT                        R8 ; [+6]
      178 LOADK                            R23 K37 ["SimulatorAction"]
      179 LOADK                            R24 K50 ["Delete"]
      180 NAMECALL                         R21 R2 K38 ["getText"]
      182 CALL                             R21 3 1
      183 JUMP                             ; [+5]
      184 LOADK                            R23 K37 ["SimulatorAction"]
      185 LOADK                            R24 K51 ["Reset"]
      186 NAMECALL                         R21 R2 K38 ["getText"]
      188 CALL                             R21 3 1
      189 SETTABLEKS                       R21 R20 K30 ["text"]
      191 JUMPIFNOT                        R8 ; [+4]
      192 GETUPVAL                         R21 5
      193 GETTABLEKS                       R21 R21 K52 ["Alert"]
      195 JUMP                             ; [+3]
      196 GETUPVAL                         R21 5
      197 GETTABLEKS                       R21 R21 K45 ["Standard"]
      199 SETTABLEKS                       R21 R20 K31 ["variant"]
      201 JUMPIFNOT                        R8 ; [+7]
      202 GETTABLEKS                       R22 R0 K9 ["onDelete"]
      204 JUMPIFEQKNIL                     R22 ; [+2]
      206 LOADB                            R21 0 +1
      207 LOADB                            R21 1
      208 JUMP                             ; [+11]
      209 LOADB                            R21 1
      210 GETTABLEKS                       R22 R0 K7 ["onReset"]
      212 JUMPIFEQKNIL                     R22 ; [+7]
      214 GETTABLEKS                       R22 R0 K53 ["isResetDisabled"]
      216 JUMPIFEQKB                       R22 TRUE ; [+2]
      218 LOADB                            R21 0 +1
      219 LOADB                            R21 1
      220 SETTABLEKS                       R21 R20 K32 ["isDisabled"]
      222 JUMPIFNOT                        R8 ; [+2]
      223 MOVE                             R21 R7
      224 JUMP                             ; [+1]
      225 MOVE                             R21 R6
      226 SETTABLEKS                       R21 R20 K33 ["onActivated"]
      228 GETUPVAL                         R21 6
      229 GETTABLEKS                       R21 R21 K41 ["Small"]
      231 SETTABLEKS                       R21 R20 K34 ["size"]
      233 GETUPVAL                         R21 7
      234 SETTABLEKS                       R21 R20 K35 ["width"]
      236 LOADK                            R21 K54 ["%*-buttons--reset-delete"]
      237 MOVE                             R23 R1
      238 NAMECALL                         R21 R21 K24 ["format"]
      240 CALL                             R21 2 1
      241 SETTABLEKS                       R21 R20 K2 ["testId"]
      243 CALL                             R18 2 1
      244 SETTABLEKS                       R18 R17 K27 ["ResetOrDelete"]
      246 CALL                             R14 3 1
      247 SETTABLEKS                       R14 R13 K19 ["Buttons"]
      249 CALL                             R10 3 -1
      250 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Bin"]
       25 GETTABLEKS                       R4 R4 K10 ["Common"]
       27 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K14 ["useLocalization"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K15 ["Button"]
       41 GETTABLEKS                       R6 R2 K16 ["Enums"]
       43 GETTABLEKS                       R6 R6 K17 ["ButtonVariant"]
       45 GETTABLEKS                       R7 R2 K16 ["Enums"]
       47 GETTABLEKS                       R7 R7 K18 ["InputSize"]
       49 GETTABLEKS                       R8 R2 K19 ["View"]
       51 GETIMPORT                        R9 K22 [UDim.new]
       53 LOADK                            R10 K23 [0.3333333333333333]
       54 LOADK                            R11 K24 [-5.333333333333333]
       55 CALL                             R9 2 1
       56 DUPCLOSURE                       R10 K25 [PROTO_4]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 RETURN                           R10 1
