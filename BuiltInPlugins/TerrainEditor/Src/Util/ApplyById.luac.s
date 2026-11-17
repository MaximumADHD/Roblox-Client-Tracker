PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETIMPORT                        R3 K3 [Enum.PropertyStatus.Error]
        5 JUMPIFNOTEQ                      R1 R3 ; [+13]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["Tool"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K5 ["Category"]
       13 GETUPVAL                         R6 3
       14 MOVE                             R7 R0
       15 NAMECALL                         R3 R3 K6 ["reportError"]
       17 CALL                             R3 4 0
       18 RETURN                           R1 2
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["Tool"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K5 ["Category"]
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
       10 GETTABLEKS                       R12 R2 K2 ["Overrides"]
       12 GETTABLE                         R11 R12 R10
       13 JUMPIFNOT                        R11 ; [+6]
       14 GETTABLEKS                       R13 R11 K3 ["DataId"]
       16 JUMPIFNOT                        R13 ; [+3]
       17 GETTABLEKS                       R12 R11 K3 ["DataId"]
       19 JUMP                             ; [+3]
       20 GETTABLEKS                       R13 R9 K3 ["DataId"]
       22 OR                               R12 R13 R10
       23 GETTABLEKS                       R14 R2 K4 ["Data"]
       25 GETTABLE                         R13 R14 R12
       26 JUMPIFNOT                        R11 ; [+7]
       27 GETTABLEKS                       R15 R11 K5 ["ValueWhenNil"]
       29 JUMPIFEQKNIL                     R15 ; [+4]
       31 GETTABLEKS                       R14 R11 K5 ["ValueWhenNil"]
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R14 R9 K5 ["ValueWhenNil"]
       36 JUMPIFNOT                        R11 ; [+3]
       37 GETTABLEKS                       R15 R11 K6 ["UseDataIdValueOnly"]
       39 JUMPIF                           R15 ; [+2]
       40 GETTABLEKS                       R15 R9 K6 ["UseDataIdValueOnly"]
       42 JUMPIFNOTEQKNIL                  R13 ; [+5]
       44 JUMPIFEQKNIL                     R14 ; [+3]
       46 MOVE                             R13 R14
       47 JUMP                             ; [+8]
       48 JUMPIFNOTEQKNIL                  R13 ; [+7]
       50 JUMPIFEQ                         R12 R10 ; [+5]
       52 JUMPIF                           R15 ; [+3]
       53 GETTABLEKS                       R16 R2 K4 ["Data"]
       55 GETTABLE                         R13 R16 R10
       56 GETUPVAL                         R16 0
       57 GETTABLEKS                       R16 R16 K7 ["join"]
       59 DUPTABLE                         R17 K12 [{"Hidden", "Label", "Layout", "Value"}]
       60 GETTABLEKS                       R20 R2 K4 ["Data"]
       62 GETTABLE                         R19 R20 R10
       63 JUMPIFEQKNIL                     R19 ; [+2]
       65 LOADB                            R18 0 +1
       66 LOADB                            R18 1
       67 SETTABLEKS                       R18 R17 K8 ["Hidden"]
       69 GETTABLEKS                       R20 R2 K13 ["Category"]
       71 MOVE                             R21 R10
       72 NAMECALL                         R18 R3 K14 ["getText"]
       74 CALL                             R18 3 1
       75 SETTABLEKS                       R18 R17 K9 ["Label"]
       77 GETTABLEKS                       R19 R9 K15 ["Schema"]
       79 GETTABLEKS                       R19 R19 K16 ["Type"]
       81 JUMPIFEQKS                       R19 K17 ["Checkbox"] ; [+22]
       83 GETTABLEKS                       R19 R9 K15 ["Schema"]
       85 GETTABLEKS                       R19 R19 K16 ["Type"]
       87 JUMPIFEQKS                       R19 K18 ["Number"] ; [+16]
       89 GETTABLEKS                       R19 R9 K15 ["Schema"]
       91 GETTABLEKS                       R19 R19 K16 ["Type"]
       93 JUMPIFEQKS                       R19 K19 ["Button"] ; [+10]
       95 GETTABLEKS                       R19 R0 K20 ["Tool"]
       97 NAMECALL                         R19 R19 K21 ["getShouldBeCompact"]
       99 CALL                             R19 1 1
      100 JUMPIFNOT                        R19 ; [+3]
      101 GETIMPORT                        R18 K25 [Enum.FillDirection.Vertical]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R18
      105 SETTABLEKS                       R18 R17 K10 ["Layout"]
      107 SETTABLEKS                       R13 R17 K11 ["Value"]
      109 MOVE                             R18 R9
      110 CALL                             R16 2 1
      111 SETTABLE                         R16 R4 R8
      112 JUMPIFNOT                        R11 ; [+20]
      113 GETUPVAL                         R16 1
      114 GETTABLE                         R17 R4 R8
      115 MOVE                             R18 R11
      116 CALL                             R16 2 1
      117 SETTABLE                         R16 R4 R8
      118 GETTABLEKS                       R16 R11 K15 ["Schema"]
      120 JUMPIFNOT                        R16 ; [+12]
      121 GETTABLE                         R16 R4 R8
      122 GETUPVAL                         R17 0
      123 GETTABLEKS                       R17 R17 K7 ["join"]
      125 GETTABLE                         R18 R4 R8
      126 GETTABLEKS                       R18 R18 K15 ["Schema"]
      128 GETTABLEKS                       R19 R11 K15 ["Schema"]
      130 CALL                             R17 2 1
      131 SETTABLEKS                       R17 R16 K15 ["Schema"]
      133 GETTABLE                         R16 R4 R8
      134 GETTABLEKS                       R16 R16 K26 ["Validate"]
      136 JUMPIFNOT                        R16 ; [+33]
      137 GETTABLEKS                       R16 R0 K20 ["Tool"]
      139 GETTABLEKS                       R18 R2 K13 ["Category"]
      141 MOVE                             R19 R10
      142 NAMECALL                         R16 R16 K27 ["getValidateFunction"]
      144 CALL                             R16 3 1
      145 JUMPIFNOT                        R16 ; [+4]
      146 GETTABLE                         R17 R4 R8
      147 SETTABLEKS                       R16 R17 K26 ["Validate"]
      149 JUMP                             ; [+20]
      150 GETTABLE                         R17 R4 R8
      151 GETTABLEKS                       R17 R17 K26 ["Validate"]
      153 NEWCLOSURE                       R18 P0
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R0
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R10
      158 GETTABLEKS                       R19 R0 K20 ["Tool"]
      160 GETTABLEKS                       R21 R2 K13 ["Category"]
      162 MOVE                             R22 R10
      163 MOVE                             R23 R18
      164 NAMECALL                         R19 R19 K28 ["setValidateFunction"]
      166 CALL                             R19 4 0
      167 GETTABLE                         R19 R4 R8
      168 SETTABLEKS                       R18 R19 K26 ["Validate"]
      170 FORGLOOP                         R5 2 ; [-163]
      172 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["deepJoin"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R5 K12 ["Dash"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_1]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 RETURN                           R5 1
