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
       26 JUMPIFNOTEQKNIL                  R13 ; [+6]
       28 JUMPIFEQ                         R12 R10 ; [+4]
       30 GETTABLEKS                       R14 R2 K4 ["Data"]
       32 GETTABLE                         R13 R14 R10
       33 GETUPVAL                         R14 0
       34 GETTABLEKS                       R14 R14 K5 ["join"]
       36 DUPTABLE                         R15 K10 [{"Hidden", "Label", "Layout", "Value"}]
       37 GETTABLEKS                       R18 R2 K4 ["Data"]
       39 GETTABLE                         R17 R18 R10
       40 JUMPIFEQKNIL                     R17 ; [+2]
       42 LOADB                            R16 0 +1
       43 LOADB                            R16 1
       44 SETTABLEKS                       R16 R15 K6 ["Hidden"]
       46 GETTABLEKS                       R18 R2 K11 ["Category"]
       48 MOVE                             R19 R10
       49 NAMECALL                         R16 R3 K12 ["getText"]
       51 CALL                             R16 3 1
       52 SETTABLEKS                       R16 R15 K7 ["Label"]
       54 GETTABLEKS                       R17 R9 K13 ["Schema"]
       56 GETTABLEKS                       R17 R17 K14 ["Type"]
       58 JUMPIFEQKS                       R17 K15 ["Checkbox"] ; [+22]
       60 GETTABLEKS                       R17 R9 K13 ["Schema"]
       62 GETTABLEKS                       R17 R17 K14 ["Type"]
       64 JUMPIFEQKS                       R17 K16 ["Number"] ; [+16]
       66 GETTABLEKS                       R17 R9 K13 ["Schema"]
       68 GETTABLEKS                       R17 R17 K14 ["Type"]
       70 JUMPIFEQKS                       R17 K17 ["Button"] ; [+10]
       72 GETTABLEKS                       R17 R0 K18 ["Tool"]
       74 NAMECALL                         R17 R17 K19 ["getShouldBeCompact"]
       76 CALL                             R17 1 1
       77 JUMPIFNOT                        R17 ; [+3]
       78 GETIMPORT                        R16 K23 [Enum.FillDirection.Vertical]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R16
       82 SETTABLEKS                       R16 R15 K8 ["Layout"]
       84 SETTABLEKS                       R13 R15 K9 ["Value"]
       86 MOVE                             R16 R9
       87 CALL                             R14 2 1
       88 SETTABLE                         R14 R4 R8
       89 JUMPIFNOT                        R11 ; [+20]
       90 GETUPVAL                         R14 1
       91 GETTABLE                         R15 R4 R8
       92 MOVE                             R16 R11
       93 CALL                             R14 2 1
       94 SETTABLE                         R14 R4 R8
       95 GETTABLEKS                       R14 R11 K13 ["Schema"]
       97 JUMPIFNOT                        R14 ; [+12]
       98 GETTABLE                         R14 R4 R8
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R15 R15 K5 ["join"]
      102 GETTABLE                         R16 R4 R8
      103 GETTABLEKS                       R16 R16 K13 ["Schema"]
      105 GETTABLEKS                       R17 R11 K13 ["Schema"]
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K13 ["Schema"]
      110 GETTABLE                         R14 R4 R8
      111 GETTABLEKS                       R14 R14 K24 ["Validate"]
      113 JUMPIFNOT                        R14 ; [+33]
      114 GETTABLEKS                       R14 R0 K18 ["Tool"]
      116 GETTABLEKS                       R16 R2 K11 ["Category"]
      118 MOVE                             R17 R10
      119 NAMECALL                         R14 R14 K25 ["getValidateFunction"]
      121 CALL                             R14 3 1
      122 JUMPIFNOT                        R14 ; [+4]
      123 GETTABLE                         R15 R4 R8
      124 SETTABLEKS                       R14 R15 K24 ["Validate"]
      126 JUMP                             ; [+20]
      127 GETTABLE                         R15 R4 R8
      128 GETTABLEKS                       R15 R15 K24 ["Validate"]
      130 NEWCLOSURE                       R16 P0
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R10
      135 GETTABLEKS                       R17 R0 K18 ["Tool"]
      137 GETTABLEKS                       R19 R2 K11 ["Category"]
      139 MOVE                             R20 R10
      140 MOVE                             R21 R16
      141 NAMECALL                         R17 R17 K26 ["setValidateFunction"]
      143 CALL                             R17 4 0
      144 GETTABLE                         R17 R4 R8
      145 SETTABLEKS                       R16 R17 K24 ["Validate"]
      147 FORGLOOP                         R5 2 ; [-140]
      149 RETURN                           R4 1

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
