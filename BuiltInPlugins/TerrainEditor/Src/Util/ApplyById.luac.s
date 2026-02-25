PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETIMPORT                        R3 K3 [Enum.PropertyStatus.Error]
        5 JUMPIFNOTEQ                      R1 R3 ; [+13]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K4 ["Tool"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K5 ["Category"]
       13 GETUPVAL                         R6 3
       14 MOVE                             R7 R0
       15 NAMECALL                         R3 R3 K6 ["reportError"]
       17 CALL                             R3 4 0
       18 RETURN                           R1 2
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K4 ["Tool"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K5 ["Category"]
       25 GETUPVAL                         R6 3
       26 NAMECALL                         R3 R3 K7 ["clearError"]
       28 CALL                             R3 3 0
       29 RETURN                           R1 2

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Localization"]
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R1
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R10 R9 K1 ["Id"]
       10 GETUPVAL                         R11 0
       11 CALL                             R11 0 1
       12 JUMPIFNOT                        R11 ; [+103]
       13 GETTABLEKS                       R11 R9 K2 ["Children"]
       15 JUMPIFNOT                        R11 ; [+100]
       16 GETTABLEKS                       R12 R2 K3 ["Data"]
       18 GETTABLE                         R11 R12 R10
       19 JUMPIFNOT                        R11 ; [+96]
       20 GETUPVAL                         R12 1
       21 GETTABLEKS                       R11 R12 K4 ["join"]
       23 DUPTABLE                         R12 K9 [{"Hidden", "Label", "Layout", "Value"}]
       24 GETTABLEKS                       R15 R2 K3 ["Data"]
       26 GETTABLE                         R14 R15 R10
       27 JUMPIFEQKNIL                     R14 ; [+2]
       29 LOADB                            R13 0 +1
       30 LOADB                            R13 1
       31 SETTABLEKS                       R13 R12 K5 ["Hidden"]
       33 GETTABLEKS                       R15 R2 K10 ["Category"]
       35 MOVE                             R16 R10
       36 NAMECALL                         R13 R3 K11 ["getText"]
       38 CALL                             R13 3 1
       39 SETTABLEKS                       R13 R12 K6 ["Label"]
       41 GETTABLEKS                       R15 R9 K12 ["Schema"]
       43 GETTABLEKS                       R14 R15 K13 ["Type"]
       45 JUMPIFEQKS                       R14 K14 ["Checkbox"] ; [+22]
       47 GETTABLEKS                       R15 R9 K12 ["Schema"]
       49 GETTABLEKS                       R14 R15 K13 ["Type"]
       51 JUMPIFEQKS                       R14 K15 ["Number"] ; [+16]
       53 GETTABLEKS                       R15 R9 K12 ["Schema"]
       55 GETTABLEKS                       R14 R15 K13 ["Type"]
       57 JUMPIFEQKS                       R14 K16 ["Button"] ; [+10]
       59 GETTABLEKS                       R14 R0 K17 ["Tool"]
       61 NAMECALL                         R14 R14 K18 ["getShouldBeCompact"]
       63 CALL                             R14 1 1
       64 JUMPIFNOT                        R14 ; [+3]
       65 GETIMPORT                        R13 K22 [Enum.FillDirection.Vertical]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R13
       69 SETTABLEKS                       R13 R12 K7 ["Layout"]
       71 GETTABLEKS                       R15 R2 K3 ["Data"]
       73 GETTABLE                         R14 R15 R10
       74 GETTABLEKS                       R13 R14 K8 ["Value"]
       76 SETTABLEKS                       R13 R12 K8 ["Value"]
       78 MOVE                             R13 R9
       79 CALL                             R11 2 1
       80 SETTABLE                         R11 R4 R8
       81 GETTABLE                         R11 R4 R8
       82 GETUPVAL                         R12 2
       83 MOVE                             R13 R0
       84 GETTABLEKS                       R14 R9 K2 ["Children"]
       86 DUPTABLE                         R15 K24 [{"Category", "Data", "Overrides"}]
       87 GETTABLEKS                       R16 R2 K10 ["Category"]
       89 SETTABLEKS                       R16 R15 K10 ["Category"]
       91 GETTABLEKS                       R18 R2 K3 ["Data"]
       93 GETTABLE                         R17 R18 R10
       94 GETTABLEKS                       R16 R17 K2 ["Children"]
       96 SETTABLEKS                       R16 R15 K3 ["Data"]
       98 GETTABLEKS                       R18 R2 K23 ["Overrides"]
      100 GETTABLE                         R17 R18 R10
      101 JUMPIFNOT                        R17 ; [+6]
      102 GETTABLEKS                       R18 R2 K23 ["Overrides"]
      104 GETTABLE                         R17 R18 R10
      105 GETTABLEKS                       R16 R17 K2 ["Children"]
      107 JUMP                             ; [+2]
      108 NEWTABLE                         R16 0 0
      110 SETTABLEKS                       R16 R15 K23 ["Overrides"]
      112 CALL                             R12 3 1
      113 SETTABLEKS                       R12 R11 K2 ["Children"]
      115 JUMP                             ; [+59]
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R11 R12 K4 ["join"]
      119 DUPTABLE                         R12 K9 [{"Hidden", "Label", "Layout", "Value"}]
      120 GETTABLEKS                       R15 R2 K3 ["Data"]
      122 GETTABLE                         R14 R15 R10
      123 JUMPIFEQKNIL                     R14 ; [+2]
      125 LOADB                            R13 0 +1
      126 LOADB                            R13 1
      127 SETTABLEKS                       R13 R12 K5 ["Hidden"]
      129 GETTABLEKS                       R15 R2 K10 ["Category"]
      131 MOVE                             R16 R10
      132 NAMECALL                         R13 R3 K11 ["getText"]
      134 CALL                             R13 3 1
      135 SETTABLEKS                       R13 R12 K6 ["Label"]
      137 GETTABLEKS                       R15 R9 K12 ["Schema"]
      139 GETTABLEKS                       R14 R15 K13 ["Type"]
      141 JUMPIFEQKS                       R14 K14 ["Checkbox"] ; [+22]
      143 GETTABLEKS                       R15 R9 K12 ["Schema"]
      145 GETTABLEKS                       R14 R15 K13 ["Type"]
      147 JUMPIFEQKS                       R14 K15 ["Number"] ; [+16]
      149 GETTABLEKS                       R15 R9 K12 ["Schema"]
      151 GETTABLEKS                       R14 R15 K13 ["Type"]
      153 JUMPIFEQKS                       R14 K16 ["Button"] ; [+10]
      155 GETTABLEKS                       R14 R0 K17 ["Tool"]
      157 NAMECALL                         R14 R14 K18 ["getShouldBeCompact"]
      159 CALL                             R14 1 1
      160 JUMPIFNOT                        R14 ; [+3]
      161 GETIMPORT                        R13 K22 [Enum.FillDirection.Vertical]
      163 JUMP                             ; [+1]
      164 LOADNIL                          R13
      165 SETTABLEKS                       R13 R12 K7 ["Layout"]
      167 GETTABLEKS                       R14 R2 K3 ["Data"]
      169 GETTABLE                         R13 R14 R10
      170 SETTABLEKS                       R13 R12 K8 ["Value"]
      172 MOVE                             R13 R9
      173 CALL                             R11 2 1
      174 SETTABLE                         R11 R4 R8
      175 GETTABLEKS                       R12 R2 K23 ["Overrides"]
      177 GETTABLE                         R11 R12 R10
      178 JUMPIFNOT                        R11 ; [+28]
      179 GETUPVAL                         R11 3
      180 GETTABLE                         R12 R4 R8
      181 GETTABLEKS                       R14 R2 K23 ["Overrides"]
      183 GETTABLE                         R13 R14 R10
      184 CALL                             R11 2 1
      185 SETTABLE                         R11 R4 R8
      186 GETTABLEKS                       R13 R2 K23 ["Overrides"]
      188 GETTABLE                         R12 R13 R10
      189 GETTABLEKS                       R11 R12 K12 ["Schema"]
      191 JUMPIFNOT                        R11 ; [+15]
      192 GETTABLE                         R11 R4 R8
      193 GETUPVAL                         R13 1
      194 GETTABLEKS                       R12 R13 K4 ["join"]
      196 GETTABLE                         R14 R4 R8
      197 GETTABLEKS                       R13 R14 K12 ["Schema"]
      199 GETTABLEKS                       R16 R2 K23 ["Overrides"]
      201 GETTABLE                         R15 R16 R10
      202 GETTABLEKS                       R14 R15 K12 ["Schema"]
      204 CALL                             R12 2 1
      205 SETTABLEKS                       R12 R11 K12 ["Schema"]
      207 GETTABLE                         R12 R4 R8
      208 GETTABLEKS                       R11 R12 K25 ["Validate"]
      210 JUMPIFNOT                        R11 ; [+33]
      211 GETTABLEKS                       R11 R0 K17 ["Tool"]
      213 GETTABLEKS                       R13 R2 K10 ["Category"]
      215 MOVE                             R14 R10
      216 NAMECALL                         R11 R11 K26 ["getValidateFunction"]
      218 CALL                             R11 3 1
      219 JUMPIFNOT                        R11 ; [+4]
      220 GETTABLE                         R12 R4 R8
      221 SETTABLEKS                       R11 R12 K25 ["Validate"]
      223 JUMP                             ; [+20]
      224 GETTABLE                         R13 R4 R8
      225 GETTABLEKS                       R12 R13 K25 ["Validate"]
      227 NEWCLOSURE                       R13 P0
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R0
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R10
      232 GETTABLEKS                       R14 R0 K17 ["Tool"]
      234 GETTABLEKS                       R16 R2 K10 ["Category"]
      236 MOVE                             R17 R10
      237 MOVE                             R18 R13
      238 NAMECALL                         R14 R14 K27 ["setValidateFunction"]
      240 CALL                             R14 4 0
      241 GETTABLE                         R14 R4 R8
      242 SETTABLEKS                       R13 R14 K25 ["Validate"]
      244 FORGLOOP                         R5 2 ; [-237]
      246 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Flags"]
       27 GETTABLEKS                       R4 R5 K11 ["getFFlagTerrainEditorGenerationFeature"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K12 ["Util"]
       32 GETTABLEKS                       R4 R5 K13 ["deepJoin"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["Dash"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 RETURN                           R6 1
