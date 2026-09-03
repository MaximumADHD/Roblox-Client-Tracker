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
       52 LOADK                            R17 K21 ["%*-buttons"]
       53 MOVE                             R19 R1
       54 NAMECALL                         R17 R17 K22 ["format"]
       56 CALL                             R17 2 1
       57 MOVE                             R16 R17
       58 SETTABLEKS                       R16 R15 K2 ["testId"]
       60 DUPTABLE                         R16 K26 [{"Apply", "Save", "ResetOrDelete"}]
       61 GETUPVAL                         R17 2
       62 GETTABLEKS                       R17 R17 K12 ["createElement"]
       64 GETUPVAL                         R18 4
       65 DUPTABLE                         R19 K34 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
       66 LOADK                            R22 K35 ["SimulatorAction"]
       67 LOADK                            R23 K23 ["Apply"]
       68 NAMECALL                         R20 R2 K36 ["getText"]
       70 CALL                             R20 3 1
       71 SETTABLEKS                       R20 R19 K28 ["text"]
       73 GETUPVAL                         R20 5
       74 GETTABLEKS                       R20 R20 K37 ["Emphasis"]
       76 SETTABLEKS                       R20 R19 K29 ["variant"]
       78 LOADB                            R20 1
       79 GETTABLEKS                       R21 R0 K4 ["onApply"]
       81 JUMPIFEQKNIL                     R21 ; [+7]
       83 GETTABLEKS                       R21 R0 K38 ["hasPendingChanges"]
       85 JUMPIFNOTEQKB                    R21 TRUE ; [+2]
       87 LOADB                            R20 0 +1
       88 LOADB                            R20 1
       89 SETTABLEKS                       R20 R19 K30 ["isDisabled"]
       91 SETTABLEKS                       R4 R19 K31 ["onActivated"]
       93 GETUPVAL                         R20 6
       94 GETTABLEKS                       R20 R20 K39 ["Small"]
       96 SETTABLEKS                       R20 R19 K32 ["size"]
       98 GETUPVAL                         R20 7
       99 SETTABLEKS                       R20 R19 K33 ["width"]
      101 LOADK                            R21 K40 ["%*-buttons--apply"]
      102 MOVE                             R23 R1
      103 NAMECALL                         R21 R21 K22 ["format"]
      105 CALL                             R21 2 1
      106 MOVE                             R20 R21
      107 SETTABLEKS                       R20 R19 K2 ["testId"]
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K23 ["Apply"]
      112 GETUPVAL                         R17 2
      113 GETTABLEKS                       R17 R17 K12 ["createElement"]
      115 GETUPVAL                         R18 4
      116 DUPTABLE                         R19 K42 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
      117 LOADK                            R22 K35 ["SimulatorAction"]
      118 LOADK                            R23 K24 ["Save"]
      119 NAMECALL                         R20 R2 K36 ["getText"]
      121 CALL                             R20 3 1
      122 SETTABLEKS                       R20 R19 K28 ["text"]
      124 GETUPVAL                         R20 5
      125 GETTABLEKS                       R20 R20 K43 ["Standard"]
      127 SETTABLEKS                       R20 R19 K29 ["variant"]
      129 LOADB                            R20 1
      130 JUMPIFEQKNIL                     R3 ; [+7]
      132 GETTABLEKS                       R21 R0 K44 ["isSaveDisabled"]
      134 JUMPIFEQKB                       R21 TRUE ; [+2]
      136 LOADB                            R20 0 +1
      137 LOADB                            R20 1
      138 SETTABLEKS                       R20 R19 K30 ["isDisabled"]
      140 SETTABLEKS                       R5 R19 K31 ["onActivated"]
      142 GETUPVAL                         R20 6
      143 GETTABLEKS                       R20 R20 K39 ["Small"]
      145 SETTABLEKS                       R20 R19 K32 ["size"]
      147 GETUPVAL                         R20 7
      148 SETTABLEKS                       R20 R19 K33 ["width"]
      150 LOADK                            R21 K45 ["%*-buttons--save"]
      151 MOVE                             R23 R1
      152 NAMECALL                         R21 R21 K22 ["format"]
      154 CALL                             R21 2 1
      155 MOVE                             R20 R21
      156 SETTABLEKS                       R20 R19 K2 ["testId"]
      158 CALL                             R17 2 1
      159 SETTABLEKS                       R17 R16 K24 ["Save"]
      161 GETUPVAL                         R17 2
      162 GETTABLEKS                       R17 R17 K12 ["createElement"]
      164 GETUPVAL                         R18 4
      165 DUPTABLE                         R19 K47 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["isDisabled"], ["onActivated"], ["size"], ["width"], ["testId"]}]
      166 JUMPIFNOT                        R8 ; [+6]
      167 LOADK                            R22 K35 ["SimulatorAction"]
      168 LOADK                            R23 K48 ["Delete"]
      169 NAMECALL                         R20 R2 K36 ["getText"]
      171 CALL                             R20 3 1
      172 JUMP                             ; [+5]
      173 LOADK                            R22 K35 ["SimulatorAction"]
      174 LOADK                            R23 K49 ["Reset"]
      175 NAMECALL                         R20 R2 K36 ["getText"]
      177 CALL                             R20 3 1
      178 SETTABLEKS                       R20 R19 K28 ["text"]
      180 JUMPIFNOT                        R8 ; [+4]
      181 GETUPVAL                         R20 5
      182 GETTABLEKS                       R20 R20 K50 ["Alert"]
      184 JUMP                             ; [+3]
      185 GETUPVAL                         R20 5
      186 GETTABLEKS                       R20 R20 K43 ["Standard"]
      188 SETTABLEKS                       R20 R19 K29 ["variant"]
      190 JUMPIFNOT                        R8 ; [+7]
      191 GETTABLEKS                       R21 R0 K9 ["onDelete"]
      193 JUMPIFEQKNIL                     R21 ; [+2]
      195 LOADB                            R20 0 +1
      196 LOADB                            R20 1
      197 JUMP                             ; [+11]
      198 LOADB                            R20 1
      199 GETTABLEKS                       R21 R0 K7 ["onReset"]
      201 JUMPIFEQKNIL                     R21 ; [+7]
      203 GETTABLEKS                       R21 R0 K51 ["isResetDisabled"]
      205 JUMPIFEQKB                       R21 TRUE ; [+2]
      207 LOADB                            R20 0 +1
      208 LOADB                            R20 1
      209 SETTABLEKS                       R20 R19 K30 ["isDisabled"]
      211 JUMPIFNOT                        R8 ; [+2]
      212 MOVE                             R20 R7
      213 JUMP                             ; [+1]
      214 MOVE                             R20 R6
      215 SETTABLEKS                       R20 R19 K31 ["onActivated"]
      217 GETUPVAL                         R20 6
      218 GETTABLEKS                       R20 R20 K39 ["Small"]
      220 SETTABLEKS                       R20 R19 K32 ["size"]
      222 GETUPVAL                         R20 7
      223 SETTABLEKS                       R20 R19 K33 ["width"]
      225 LOADK                            R21 K52 ["%*-buttons--reset-delete"]
      226 MOVE                             R23 R1
      227 NAMECALL                         R21 R21 K22 ["format"]
      229 CALL                             R21 2 1
      230 MOVE                             R20 R21
      231 SETTABLEKS                       R20 R19 K2 ["testId"]
      233 CALL                             R17 2 1
      234 SETTABLEKS                       R17 R16 K25 ["ResetOrDelete"]
      236 CALL                             R13 3 1
      237 SETTABLEKS                       R13 R12 K17 ["Buttons"]
      239 CALL                             R9 3 -1
      240 RETURN                           R9 -1

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
