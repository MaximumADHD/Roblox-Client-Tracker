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
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R11 R11 K2 ["join"]
       13 DUPTABLE                         R12 K7 [{"Hidden", "Label", "Layout", "Value"}]
       14 GETTABLEKS                       R15 R2 K8 ["Data"]
       16 GETTABLE                         R14 R15 R10
       17 JUMPIFEQKNIL                     R14 ; [+2]
       19 LOADB                            R13 0 +1
       20 LOADB                            R13 1
       21 SETTABLEKS                       R13 R12 K3 ["Hidden"]
       23 GETTABLEKS                       R15 R2 K9 ["Category"]
       25 MOVE                             R16 R10
       26 NAMECALL                         R13 R3 K10 ["getText"]
       28 CALL                             R13 3 1
       29 SETTABLEKS                       R13 R12 K4 ["Label"]
       31 GETTABLEKS                       R14 R9 K11 ["Schema"]
       33 GETTABLEKS                       R14 R14 K12 ["Type"]
       35 JUMPIFEQKS                       R14 K13 ["Checkbox"] ; [+22]
       37 GETTABLEKS                       R14 R9 K11 ["Schema"]
       39 GETTABLEKS                       R14 R14 K12 ["Type"]
       41 JUMPIFEQKS                       R14 K14 ["Number"] ; [+16]
       43 GETTABLEKS                       R14 R9 K11 ["Schema"]
       45 GETTABLEKS                       R14 R14 K12 ["Type"]
       47 JUMPIFEQKS                       R14 K15 ["Button"] ; [+10]
       49 GETTABLEKS                       R14 R0 K16 ["Tool"]
       51 NAMECALL                         R14 R14 K17 ["getShouldBeCompact"]
       53 CALL                             R14 1 1
       54 JUMPIFNOT                        R14 ; [+3]
       55 GETIMPORT                        R13 K21 [Enum.FillDirection.Vertical]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R13
       59 SETTABLEKS                       R13 R12 K5 ["Layout"]
       61 GETTABLEKS                       R14 R2 K8 ["Data"]
       63 GETTABLE                         R13 R14 R10
       64 SETTABLEKS                       R13 R12 K6 ["Value"]
       66 MOVE                             R13 R9
       67 CALL                             R11 2 1
       68 SETTABLE                         R11 R4 R8
       69 GETTABLEKS                       R12 R2 K22 ["Overrides"]
       71 GETTABLE                         R11 R12 R10
       72 JUMPIFNOT                        R11 ; [+28]
       73 GETUPVAL                         R11 1
       74 GETTABLE                         R12 R4 R8
       75 GETTABLEKS                       R14 R2 K22 ["Overrides"]
       77 GETTABLE                         R13 R14 R10
       78 CALL                             R11 2 1
       79 SETTABLE                         R11 R4 R8
       80 GETTABLEKS                       R12 R2 K22 ["Overrides"]
       82 GETTABLE                         R11 R12 R10
       83 GETTABLEKS                       R11 R11 K11 ["Schema"]
       85 JUMPIFNOT                        R11 ; [+15]
       86 GETTABLE                         R11 R4 R8
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K2 ["join"]
       90 GETTABLE                         R13 R4 R8
       91 GETTABLEKS                       R13 R13 K11 ["Schema"]
       93 GETTABLEKS                       R15 R2 K22 ["Overrides"]
       95 GETTABLE                         R14 R15 R10
       96 GETTABLEKS                       R14 R14 K11 ["Schema"]
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R11 K11 ["Schema"]
      101 GETTABLE                         R11 R4 R8
      102 GETTABLEKS                       R11 R11 K23 ["Validate"]
      104 JUMPIFNOT                        R11 ; [+33]
      105 GETTABLEKS                       R11 R0 K16 ["Tool"]
      107 GETTABLEKS                       R13 R2 K9 ["Category"]
      109 MOVE                             R14 R10
      110 NAMECALL                         R11 R11 K24 ["getValidateFunction"]
      112 CALL                             R11 3 1
      113 JUMPIFNOT                        R11 ; [+4]
      114 GETTABLE                         R12 R4 R8
      115 SETTABLEKS                       R11 R12 K23 ["Validate"]
      117 JUMP                             ; [+20]
      118 GETTABLE                         R12 R4 R8
      119 GETTABLEKS                       R12 R12 K23 ["Validate"]
      121 NEWCLOSURE                       R13 P0
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R10
      126 GETTABLEKS                       R14 R0 K16 ["Tool"]
      128 GETTABLEKS                       R16 R2 K9 ["Category"]
      130 MOVE                             R17 R10
      131 MOVE                             R18 R13
      132 NAMECALL                         R14 R14 K25 ["setValidateFunction"]
      134 CALL                             R14 4 0
      135 GETTABLE                         R14 R4 R8
      136 SETTABLEKS                       R13 R14 K23 ["Validate"]
      138 FORGLOOP                         R5 2 ; [-131]
      140 RETURN                           R4 1

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
