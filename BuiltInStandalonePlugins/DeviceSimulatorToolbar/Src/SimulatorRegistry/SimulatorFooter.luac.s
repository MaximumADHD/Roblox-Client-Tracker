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
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K12 ["createElement"]
       38 GETUPVAL                         R10 3
       39 DUPTABLE                         R11 K16 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-x-large padding-bottom-large", ["testId"]}]
       40 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       42 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       44 SETTABLEKS                       R1 R11 K2 ["testId"]
       46 DUPTABLE                         R12 K18 [{"Buttons"}]
       47 GETUPVAL                         R13 2
       48 GETTABLEKS                       R13 R13 K12 ["createElement"]
       50 GETUPVAL                         R14 3
       51 DUPTABLE                         R15 K20 [{["tag"] = "row gap-small size-full-0 auto-y", ["testId"]}]
       52 LOADK                            R16 K21 ["%*-buttons"]
       53 MOVE                             R18 R1
       54 NAMECALL                         R16 R16 K22 ["format"]
       56 CALL                             R16 2 1
       57 SETTABLEKS                       R16 R15 K2 ["testId"]
       59 DUPTABLE                         R16 K26 [{"Apply", "Save", "ResetOrDelete"}]
       60 GETUPVAL                         R17 2
       61 GETTABLEKS                       R17 R17 K12 ["createElement"]
       63 GETUPVAL                         R18 4
       64 DUPTABLE                         R19 K34 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
       65 LOADK                            R22 K35 ["SimulatorAction"]
       66 LOADK                            R23 K23 ["Apply"]
       67 NAMECALL                         R20 R2 K36 ["getText"]
       69 CALL                             R20 3 1
       70 SETTABLEKS                       R20 R19 K28 ["text"]
       72 GETUPVAL                         R20 5
       73 GETTABLEKS                       R20 R20 K37 ["Emphasis"]
       75 SETTABLEKS                       R20 R19 K29 ["variant"]
       77 LOADB                            R20 1
       78 GETTABLEKS                       R21 R0 K4 ["onApply"]
       80 JUMPIFEQKNIL                     R21 ; [+7]
       82 GETTABLEKS                       R21 R0 K38 ["hasPendingChanges"]
       84 JUMPIFNOTEQKB                    R21 TRUE ; [+2]
       86 LOADB                            R20 0 +1
       87 LOADB                            R20 1
       88 SETTABLEKS                       R20 R19 K30 ["isDisabled"]
       90 SETTABLEKS                       R4 R19 K31 ["onActivated"]
       92 GETUPVAL                         R20 6
       93 GETTABLEKS                       R20 R20 K39 ["Small"]
       95 SETTABLEKS                       R20 R19 K32 ["size"]
       97 GETUPVAL                         R20 7
       98 SETTABLEKS                       R20 R19 K33 ["width"]
      100 LOADK                            R20 K40 ["%*-buttons--apply"]
      101 MOVE                             R22 R1
      102 NAMECALL                         R20 R20 K22 ["format"]
      104 CALL                             R20 2 1
      105 SETTABLEKS                       R20 R19 K2 ["testId"]
      107 CALL                             R17 2 1
      108 SETTABLEKS                       R17 R16 K23 ["Apply"]
      110 GETUPVAL                         R17 2
      111 GETTABLEKS                       R17 R17 K12 ["createElement"]
      113 GETUPVAL                         R18 4
      114 DUPTABLE                         R19 K42 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
      115 LOADK                            R22 K35 ["SimulatorAction"]
      116 LOADK                            R23 K24 ["Save"]
      117 NAMECALL                         R20 R2 K36 ["getText"]
      119 CALL                             R20 3 1
      120 SETTABLEKS                       R20 R19 K28 ["text"]
      122 GETUPVAL                         R20 5
      123 GETTABLEKS                       R20 R20 K43 ["Standard"]
      125 SETTABLEKS                       R20 R19 K29 ["variant"]
      127 LOADB                            R20 1
      128 JUMPIFEQKNIL                     R3 ; [+7]
      130 GETTABLEKS                       R21 R0 K44 ["isSaveDisabled"]
      132 JUMPIFEQKB                       R21 TRUE ; [+2]
      134 LOADB                            R20 0 +1
      135 LOADB                            R20 1
      136 SETTABLEKS                       R20 R19 K30 ["isDisabled"]
      138 SETTABLEKS                       R5 R19 K31 ["onActivated"]
      140 GETUPVAL                         R20 6
      141 GETTABLEKS                       R20 R20 K39 ["Small"]
      143 SETTABLEKS                       R20 R19 K32 ["size"]
      145 GETUPVAL                         R20 7
      146 SETTABLEKS                       R20 R19 K33 ["width"]
      148 LOADK                            R20 K45 ["%*-buttons--save"]
      149 MOVE                             R22 R1
      150 NAMECALL                         R20 R20 K22 ["format"]
      152 CALL                             R20 2 1
      153 SETTABLEKS                       R20 R19 K2 ["testId"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K24 ["Save"]
      158 GETUPVAL                         R17 2
      159 GETTABLEKS                       R17 R17 K12 ["createElement"]
      161 GETUPVAL                         R18 4
      162 DUPTABLE                         R19 K47 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
      163 JUMPIFNOT                        R8 ; [+6]
      164 LOADK                            R22 K35 ["SimulatorAction"]
      165 LOADK                            R23 K48 ["Delete"]
      166 NAMECALL                         R20 R2 K36 ["getText"]
      168 CALL                             R20 3 1
      169 JUMP                             ; [+5]
      170 LOADK                            R22 K35 ["SimulatorAction"]
      171 LOADK                            R23 K49 ["Reset"]
      172 NAMECALL                         R20 R2 K36 ["getText"]
      174 CALL                             R20 3 1
      175 SETTABLEKS                       R20 R19 K28 ["text"]
      177 JUMPIFNOT                        R8 ; [+4]
      178 GETUPVAL                         R20 5
      179 GETTABLEKS                       R20 R20 K50 ["Alert"]
      181 JUMP                             ; [+3]
      182 GETUPVAL                         R20 5
      183 GETTABLEKS                       R20 R20 K43 ["Standard"]
      185 SETTABLEKS                       R20 R19 K29 ["variant"]
      187 JUMPIFNOT                        R8 ; [+7]
      188 GETTABLEKS                       R21 R0 K9 ["onDelete"]
      190 JUMPIFEQKNIL                     R21 ; [+2]
      192 LOADB                            R20 0 +1
      193 LOADB                            R20 1
      194 JUMP                             ; [+11]
      195 LOADB                            R20 1
      196 GETTABLEKS                       R21 R0 K7 ["onReset"]
      198 JUMPIFEQKNIL                     R21 ; [+7]
      200 GETTABLEKS                       R21 R0 K51 ["isResetDisabled"]
      202 JUMPIFEQKB                       R21 TRUE ; [+2]
      204 LOADB                            R20 0 +1
      205 LOADB                            R20 1
      206 SETTABLEKS                       R20 R19 K30 ["isDisabled"]
      208 JUMPIFNOT                        R8 ; [+2]
      209 MOVE                             R20 R7
      210 JUMP                             ; [+1]
      211 MOVE                             R20 R6
      212 SETTABLEKS                       R20 R19 K31 ["onActivated"]
      214 GETUPVAL                         R20 6
      215 GETTABLEKS                       R20 R20 K39 ["Small"]
      217 SETTABLEKS                       R20 R19 K32 ["size"]
      219 GETUPVAL                         R20 7
      220 SETTABLEKS                       R20 R19 K33 ["width"]
      222 LOADK                            R20 K52 ["%*-buttons--reset-delete"]
      223 MOVE                             R22 R1
      224 NAMECALL                         R20 R20 K22 ["format"]
      226 CALL                             R20 2 1
      227 SETTABLEKS                       R20 R19 K2 ["testId"]
      229 CALL                             R17 2 1
      230 SETTABLEKS                       R17 R16 K25 ["ResetOrDelete"]
      232 CALL                             R13 3 1
      233 SETTABLEKS                       R13 R12 K17 ["Buttons"]
      235 CALL                             R9 3 -1
      236 RETURN                           R9 -1

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
       53 LOADK                            R10 K23 [0.333333333333333]
       54 LOADK                            R11 K24 [-5.33333333333333]
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
