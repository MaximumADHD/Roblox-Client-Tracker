PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+14]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K1 [{"items"}]
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R3 R2 K0 ["items"]
       10 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       12 GETIMPORT                        R0 K4 [table.insert]
       14 CALL                             R0 2 0
       15 NEWTABLE                         R0 0 0
       17 SETUPVAL                         R0 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RibbonSystemMenuInteractionTelemetry"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+7]
        7 GETUPVAL                         R0 0
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 0
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R1 2
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R5 0 0
        2 NEWTABLE                         R6 0 0
        4 ORK                              R7 R3 K0 ["Menu"]
        5 NEWCLOSURE                       R8 P0
        6 CAPTURE                          REF R6
        7 CAPTURE                          VAL R5
        8 MOVE                             R9 R0
        9 LOADNIL                          R10
       10 LOADNIL                          R11
       11 FORGPREP                         R9
       12 LOADK                            R14 K1 ["%*/%*"]
       13 MOVE                             R16 R7
       14 GETTABLEKS                       R18 R13 K2 ["Id"]
       16 OR                               R17 R18 R12
       17 NAMECALL                         R14 R14 K3 ["format"]
       19 CALL                             R14 3 1
       20 GETTABLEKS                       R15 R13 K4 ["Type"]
       22 JUMPIFNOTEQKS                    R15 K5 ["Separator"] ; [+17]
       24 LENGTH                           R15 R6
       25 LOADN                            R16 0
       26 JUMPIFNOTLT                      R16 R15 ; [+220]
       28 DUPTABLE                         R17 K7 [{"items"}]
       29 SETTABLEKS                       R6 R17 K6 ["items"]
       31 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
       33 MOVE                             R16 R5
       34 GETIMPORT                        R15 K10 [table.insert]
       36 CALL                             R15 2 0
       37 NEWTABLE                         R6 0 0
       39 JUMP                             ; [+207]
       40 GETTABLEKS                       R15 R13 K4 ["Type"]
       42 JUMPIFNOTEQKS                    R15 K11 ["SubMenu"] ; [+73]
       44 LOADNIL                          R15
       45 GETIMPORT                        R16 K13 [game]
       47 LOADK                            R18 K14 ["RibbonSystemMenuInteractionTelemetry"]
       48 NAMECALL                         R16 R16 K15 ["GetFastFlag"]
       50 CALL                             R16 2 1
       51 JUMPIFNOT                        R16 ; [+28]
       52 JUMPIFNOT                        R4 ; [+13]
       53 GETUPVAL                         R16 0
       54 GETTABLEKS                       R16 R16 K16 ["child"]
       56 MOVE                             R17 R4
       57 GETTABLEKS                       R20 R13 K2 ["Id"]
       59 OR                               R19 R20 R12
       60 FASTCALL1                        TOSTRING R19 ; [+2]
       61 GETIMPORT                        R18 K18 [tostring]
       63 CALL                             R18 1 1
       64 CALL                             R16 2 1
       65 JUMP                             ; [+1]
       66 LOADNIL                          R16
       67 GETUPVAL                         R17 1
       68 GETTABLEKS                       R18 R13 K19 ["Items"]
       70 JUMPIF                           R18 ; [+2]
       71 NEWTABLE                         R18 0 0
       73 MOVE                             R19 R1
       74 MOVE                             R20 R2
       75 MOVE                             R21 R14
       76 MOVE                             R22 R16
       77 CALL                             R17 5 1
       78 MOVE                             R15 R17
       79 JUMP                             ; [+11]
       80 GETUPVAL                         R16 1
       81 GETTABLEKS                       R17 R13 K19 ["Items"]
       83 JUMPIF                           R17 ; [+2]
       84 NEWTABLE                         R17 0 0
       86 MOVE                             R18 R1
       87 MOVE                             R19 R2
       88 MOVE                             R20 R14
       89 CALL                             R16 4 1
       90 MOVE                             R15 R16
       91 LENGTH                           R16 R15
       92 LOADN                            R17 0
       93 JUMPIFNOTLT                      R17 R16 ; [+153]
       95 DUPTABLE                         R18 K22 [{"id", "text", "items"}]
       96 SETTABLEKS                       R14 R18 K20 ["id"]
       98 GETTABLEKS                       R19 R13 K23 ["Text"]
      100 JUMPIF                           R19 ; [+4]
      101 GETTABLEKS                       R19 R13 K2 ["Id"]
      103 JUMPIF                           R19 ; [+1]
      104 LOADK                            R19 K24 [""]
      105 SETTABLEKS                       R19 R18 K21 ["text"]
      107 SETTABLEKS                       R15 R18 K6 ["items"]
      109 FASTCALL2                        TABLE_INSERT R6 R18 ; [+4]
      111 MOVE                             R17 R6
      112 GETIMPORT                        R16 K10 [table.insert]
      114 CALL                             R16 2 0
      115 JUMP                             ; [+131]
      116 GETTABLEKS                       R15 R13 K4 ["Type"]
      118 JUMPIFNOTEQKS                    R15 K25 ["Action"] ; [+128]
      120 GETTABLEKS                       R16 R13 K25 ["Action"]
      122 JUMPIFNOT                        R16 ; [+10]
      123 GETTABLEKS                       R16 R1 K26 ["Actions"]
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R17 R17 K27 ["toString"]
      128 GETTABLEKS                       R18 R13 K25 ["Action"]
      130 CALL                             R17 1 1
      131 GETTABLE                         R15 R16 R17
      132 JUMP                             ; [+1]
      133 LOADNIL                          R15
      134 GETTABLEKS                       R16 R13 K25 ["Action"]
      136 JUMPIFNOT                        R16 ; [+6]
      137 GETUPVAL                         R17 0
      138 GETTABLEKS                       R17 R17 K27 ["toString"]
      140 MOVE                             R18 R16
      141 CALL                             R17 1 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R17
      144 LOADB                            R18 0
      145 JUMPIFEQKNIL                     R17 ; [+9]
      147 LOADB                            R18 0
      148 GETTABLEKS                       R19 R1 K28 ["NonexistentActions"]
      150 JUMPIFEQKNIL                     R19 ; [+4]
      152 GETTABLEKS                       R19 R1 K28 ["NonexistentActions"]
      154 GETTABLE                         R18 R19 R17
      155 JUMPIFEQKNIL                     R15 ; [+7]
      157 GETTABLEKS                       R19 R15 K29 ["Exists"]
      159 JUMPIFNOT                        R19 ; [+87]
      160 GETTABLEKS                       R19 R15 K30 ["Visible"]
      162 JUMPIFNOT                        R19 ; [+84]
      163 JUMPIF                           R18 ; [+83]
      164 JUMPIFNOT                        R15 ; [+7]
      165 GETTABLEKS                       R20 R15 K31 ["Shortcuts"]
      167 JUMPIFNOT                        R20 ; [+4]
      168 GETTABLEKS                       R20 R15 K31 ["Shortcuts"]
      170 GETTABLEN                        R19 R20 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R19
      173 DUPTABLE                         R22 K37 [{"id", "text", "icon", "isDisabled", "isChecked", "trailing", "onActivated"}]
      174 SETTABLEKS                       R14 R22 K20 ["id"]
      176 JUMPIFNOT                        R15 ; [+7]
      177 GETTABLEKS                       R24 R15 K23 ["Text"]
      179 JUMPIFEQKS                       R24 K24 [""] ; [+4]
      181 GETTABLEKS                       R23 R15 K23 ["Text"]
      183 JUMP                             ; [+7]
      184 GETTABLEKS                       R23 R13 K23 ["Text"]
      186 JUMPIF                           R23 ; [+4]
      187 GETTABLEKS                       R23 R13 K2 ["Id"]
      189 JUMPIF                           R23 ; [+1]
      190 LOADK                            R23 K24 [""]
      191 SETTABLEKS                       R23 R22 K21 ["text"]
      193 GETTABLEKS                       R24 R13 K38 ["ShowIcon"]
      195 JUMPIFNOT                        R24 ; [+4]
      196 JUMPIFNOT                        R15 ; [+3]
      197 GETTABLEKS                       R23 R15 K39 ["Icon"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R23
      201 SETTABLEKS                       R23 R22 K32 ["icon"]
      203 JUMPIFNOT                        R15 ; [+4]
      204 GETTABLEKS                       R24 R15 K40 ["Enabled"]
      206 NOT                              R23 R24
      207 JUMP                             ; [+4]
      208 JUMPIFEQKNIL                     R16 ; [+2]
      210 LOADB                            R23 0 +1
      211 LOADB                            R23 1
      212 SETTABLEKS                       R23 R22 K33 ["isDisabled"]
      214 JUMPIFNOT                        R15 ; [+6]
      215 GETTABLEKS                       R24 R15 K41 ["Checkable"]
      217 JUMPIFNOT                        R24 ; [+3]
      218 GETTABLEKS                       R23 R15 K42 ["Checked"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R23
      222 SETTABLEKS                       R23 R22 K34 ["isChecked"]
      224 JUMPIFNOT                        R19 ; [+4]
      225 DUPTABLE                         R23 K45 [{["type"] = "Hint", ["text"]}]
      226 SETTABLEKS                       R19 R23 K21 ["text"]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R23
      230 SETTABLEKS                       R23 R22 K35 ["trailing"]
      232 JUMPIFNOT                        R16 ; [+5]
      233 NEWCLOSURE                       R23 P1
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R16
      237 JUMP                             ; [+1]
      238 LOADNIL                          R23
      239 SETTABLEKS                       R23 R22 K36 ["onActivated"]
      241 FASTCALL2                        TABLE_INSERT R6 R22 ; [+4]
      243 MOVE                             R21 R6
      244 GETIMPORT                        R20 K10 [table.insert]
      246 CALL                             R20 2 0
      247 FORGLOOP                         R9 2 ; [-236]
      249 LENGTH                           R9 R6
      250 LOADN                            R10 0
      251 JUMPIFNOTLT                      R10 R9 ; [+12]
      253 DUPTABLE                         R11 K7 [{"items"}]
      254 SETTABLEKS                       R6 R11 K6 ["items"]
      256 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
      258 MOVE                             R10 R5
      259 GETIMPORT                        R9 K10 [table.insert]
      261 CALL                             R9 2 0
      262 NEWTABLE                         R6 0 0
      264 LENGTH                           R9 R5
      265 JUMPIFNOTEQKN                    R9 K46 [1] ; [+6]
      267 GETTABLEN                        R9 R5 1
      268 GETTABLEKS                       R9 R9 K6 ["items"]
      270 CLOSEUPVALS                      R6
      271 RETURN                           R9 1
      272 CLOSEUPVALS                      R6
      273 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["StudioUri"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K14 [game]
       34 LOADK                            R7 K15 ["RibbonSystemMenuInteractionTelemetry"]
       35 LOADB                            R8 0
       36 NAMECALL                         R5 R5 K16 ["DefineFastFlag"]
       38 CALL                             R5 3 0
       39 DUPCLOSURE                       R5 K17 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 RETURN                           R5 1
