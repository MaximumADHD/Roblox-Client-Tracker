PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 DUPTABLE                         R10 K3 [{"className", "path"}]
       10 GETTABLEKS                       R11 R7 K4 ["ClassName"]
       12 SETTABLEKS                       R11 R10 K1 ["className"]
       14 NAMECALL                         R11 R7 K5 ["GetFullName"]
       16 CALL                             R11 1 1
       17 SETTABLEKS                       R11 R10 K2 ["path"]
       19 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       21 MOVE                             R9 R2
       22 GETIMPORT                        R8 K8 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-17]
       27 DUPTABLE                         R3 K12 [{"immediateChildren", "totalDescendants", "childrenCount"}]
       28 SETTABLEKS                       R2 R3 K9 ["immediateChildren"]
       30 NAMECALL                         R5 R0 K13 ["GetDescendants"]
       32 CALL                             R5 1 1
       33 LENGTH                           R4 R5
       34 SETTABLEKS                       R4 R3 K10 ["totalDescendants"]
       36 LENGTH                           R4 R1
       37 SETTABLEKS                       R4 R3 K11 ["childrenCount"]
       39 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFullName"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["getValueRepresentation"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K2 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+16]
       18 LENGTH                           R3 R0
       19 GETUPVAL                         R4 2
       20 JUMPIFNOTLE                      R3 R4 ; [+3]
       22 MOVE                             R2 R0
       23 RETURN                           R2 1
       24 LOADN                            R7 1
       25 GETUPVAL                         R8 2
       26 NAMECALL                         R5 R0 K4 ["sub"]
       28 CALL                             R5 3 1
       29 MOVE                             R3 R5
       30 LOADK                            R4 K5 ["... (truncated)"]
       31 CONCAT                           R2 R3 R4
       32 RETURN                           R2 1
       33 JUMPIFEQKS                       R1 K6 ["number"] ; [+3]
       35 JUMPIFNOTEQKS                    R1 K7 ["boolean"] ; [+2]
       37 RETURN                           R0 1
       38 JUMPIFNOTEQKS                    R1 K8 ["Instance"] ; [+11]
       40 GETIMPORT                        R2 K10 [pcall]
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          VAL R0
       44 CALL                             R2 1 2
       45 JUMPIFNOT                        R2 ; [+2]
       46 MOVE                             R4 R3
       47 RETURN                           R4 1
       48 LOADK                            R4 K11 ["[Destroyed Instance]"]
       49 RETURN                           R4 1
       50 JUMPIFNOTEQKS                    R1 K12 ["table"] ; [+16]
       52 GETIMPORT                        R2 K10 [pcall]
       54 NEWCLOSURE                       R3 P1
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R0
       57 CALL                             R2 1 2
       58 JUMPIFNOT                        R2 ; [+6]
       59 LENGTH                           R5 R3
       60 GETUPVAL                         R6 3
       61 JUMPIFNOTLE                      R5 R6 ; [+3]
       63 MOVE                             R4 R3
       64 RETURN                           R4 1
       65 LOADK                            R4 K13 ["[Complex Table]"]
       66 RETURN                           R4 1
       67 JUMPIFNOTEQKS                    R1 K14 ["CFrame"] ; [+37]
       69 GETTABLEKS                       R2 R0 K15 ["Position"]
       71 NAMECALL                         R3 R0 K16 ["GetComponents"]
       73 CALL                             R3 1 12
       74 DUPTABLE                         R15 K18 [{"Position", "Rotation"}]
       75 LOADK                            R17 K19 ["%*, %*, %*"]
       76 GETTABLEKS                       R19 R2 K20 ["X"]
       78 GETTABLEKS                       R20 R2 K21 ["Y"]
       80 GETTABLEKS                       R21 R2 K22 ["Z"]
       82 NAMECALL                         R17 R17 K23 ["format"]
       84 CALL                             R17 4 1
       85 MOVE                             R16 R17
       86 SETTABLEKS                       R16 R15 K15 ["Position"]
       88 LOADK                            R17 K24 ["%*, %*, %*, %*, %*, %*, %*, %*, %*"]
       89 MOVE                             R19 R6
       90 MOVE                             R20 R7
       91 MOVE                             R21 R8
       92 MOVE                             R22 R9
       93 MOVE                             R23 R10
       94 MOVE                             R24 R11
       95 MOVE                             R25 R12
       96 MOVE                             R26 R13
       97 MOVE                             R27 R14
       98 NAMECALL                         R17 R17 K23 ["format"]
      100 CALL                             R17 10 1
      101 MOVE                             R16 R17
      102 SETTABLEKS                       R16 R15 K17 ["Rotation"]
      104 RETURN                           R15 1
      105 JUMPIFNOTEQKS                    R1 K25 ["Vector3"] ; [+13]
      107 LOADK                            R3 K19 ["%*, %*, %*"]
      108 GETTABLEKS                       R5 R0 K20 ["X"]
      110 GETTABLEKS                       R6 R0 K21 ["Y"]
      112 GETTABLEKS                       R7 R0 K22 ["Z"]
      114 NAMECALL                         R3 R3 K23 ["format"]
      116 CALL                             R3 4 1
      117 MOVE                             R2 R3
      118 RETURN                           R2 1
      119 JUMPIFNOTEQKS                    R1 K26 ["Vector2"] ; [+11]
      121 LOADK                            R3 K27 ["%*, %*"]
      122 GETTABLEKS                       R5 R0 K20 ["X"]
      124 GETTABLEKS                       R6 R0 K21 ["Y"]
      126 NAMECALL                         R3 R3 K23 ["format"]
      128 CALL                             R3 3 1
      129 MOVE                             R2 R3
      130 RETURN                           R2 1
      131 JUMPIFNOTEQKS                    R1 K28 ["Color3"] ; [+13]
      133 LOADK                            R3 K19 ["%*, %*, %*"]
      134 GETTABLEKS                       R5 R0 K29 ["R"]
      136 GETTABLEKS                       R6 R0 K30 ["G"]
      138 GETTABLEKS                       R7 R0 K31 ["B"]
      140 NAMECALL                         R3 R3 K23 ["format"]
      142 CALL                             R3 4 1
      143 MOVE                             R2 R3
      144 RETURN                           R2 1
      145 FASTCALL1                        TOSTRING R0 ; [+3]
      146 MOVE                             R3 R0
      147 GETIMPORT                        R2 K33 [tostring]
      149 CALL                             R2 1 1
      150 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETTABLEKS                       R2 R0 K2 ["GetAttributes"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 2
        6 JUMPIFNOT                        R1 ; [+6]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETIMPORT                        R3 K4 [next]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+2]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 NEWTABLE                         R3 0 0
       17 GETIMPORT                        R4 K6 [pairs]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 3
       21 FORGPREP_NEXT                    R4
       22 GETUPVAL                         R9 0
       23 MOVE                             R10 R8
       24 CALL                             R9 1 1
       25 SETTABLE                         R9 R3 R7
       26 FORGLOOP                         R4 2 ; [-5]
       28 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["CFrame"] ; [+14]
       10 MOVE                             R5 R0
       11 LOADK                            R6 K3 [".Position"]
       12 CONCAT                           R4 R5 R6
       13 GETTABLEKS                       R5 R3 K4 ["Position"]
       15 SETTABLE                         R5 R2 R4
       16 MOVE                             R5 R0
       17 LOADK                            R6 K5 [".Rotation"]
       18 CONCAT                           R4 R5 R6
       19 GETTABLEKS                       R5 R3 K6 ["Rotation"]
       21 SETTABLE                         R5 R2 R4
       22 RETURN                           R0 0
       23 SETTABLE                         R3 R2 R0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetPropertyNames"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        7 GETIMPORT                        R2 K2 [pcall]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 2
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMPIF                           R3 ; [+3]
       15 NEWTABLE                         R4 0 0
       17 RETURN                           R4 1
       18 NEWTABLE                         R4 0 0
       20 MOVE                             R5 R3
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 GETUPVAL                         R11 1
       25 GETTABLE                         R10 R11 R9
       26 JUMPIF                           R10 ; [+33]
       27 GETIMPORT                        R10 K2 [pcall]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R9
       32 CALL                             R10 1 2
       33 JUMPIFNOT                        R10 ; [+26]
       34 JUMPIFEQKNIL                     R11 ; [+25]
       36 GETUPVAL                         R12 2
       37 MOVE                             R13 R11
       38 CALL                             R12 1 1
       39 FASTCALL1                        TYPEOF R11 ; [+3]
       40 MOVE                             R14 R11
       41 GETIMPORT                        R13 K4 [typeof]
       43 CALL                             R13 1 1
       44 JUMPIFNOTEQKS                    R13 K5 ["CFrame"] ; [+14]
       46 MOVE                             R14 R9
       47 LOADK                            R15 K6 [".Position"]
       48 CONCAT                           R13 R14 R15
       49 GETTABLEKS                       R14 R12 K7 ["Position"]
       51 SETTABLE                         R14 R4 R13
       52 MOVE                             R14 R9
       53 LOADK                            R15 K8 [".Rotation"]
       54 CONCAT                           R13 R14 R15
       55 GETTABLEKS                       R14 R12 K9 ["Rotation"]
       57 SETTABLE                         R14 R4 R13
       58 JUMP                             ; [+1]
       59 SETTABLE                         R12 R4 R9
       60 FORGLOOP                         R5 2 ; [-37]
       62 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["UniqueId"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+1]
        8 LOADNIL                          R1
        9 DUPTABLE                         R3 K8 [{"name", "className", "path", "uniqueId", "properties", "children"}]
       10 GETTABLEKS                       R4 R0 K9 ["Name"]
       12 SETTABLEKS                       R4 R3 K2 ["name"]
       14 GETTABLEKS                       R4 R0 K10 ["ClassName"]
       16 SETTABLEKS                       R4 R3 K3 ["className"]
       18 NAMECALL                         R4 R0 K11 ["GetFullName"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K4 ["path"]
       23 SETTABLEKS                       R1 R3 K5 ["uniqueId"]
       25 GETUPVAL                         R4 0
       26 MOVE                             R5 R0
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K6 ["properties"]
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R0
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K7 ["children"]
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R0
       37 CALL                             R4 1 1
       38 JUMPIFNOT                        R4 ; [+2]
       39 SETTABLEKS                       R4 R3 K12 ["attributes"]
       41 CLOSEUPVALS                      R1
       42 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+11]
        7 LOADK                            R4 K2 ["Error encoding JSON: %*"]
        8 FASTCALL1                        TOSTRING R2 ; [+3]
        9 MOVE                             R7 R2
       10 GETIMPORT                        R6 K4 [tostring]
       12 CALL                             R6 1 1
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 2 1
       16 MOVE                             R3 R4
       17 RETURN                           R3 1
       18 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R1 R0 K0 ["lower"]
        3 CALL                             R1 1 1
        4 LOADN                            R3 1
        5 LOADN                            R4 5
        6 NAMECALL                         R1 R1 K1 ["sub"]
        8 CALL                             R1 3 1
        9 JUMPIFNOTEQKS                    R1 K2 ["game."] ; [+6]
       11 LOADN                            R3 6
       12 NAMECALL                         R1 R0 K1 ["sub"]
       14 CALL                             R1 2 1
       15 MOVE                             R0 R1
       16 NEWTABLE                         R1 0 1
       18 GETIMPORT                        R2 K4 [game]
       20 SETLIST                          R1 R2 1 [1]
       22 LOADK                            R4 K5 ["."]
       23 NAMECALL                         R2 R0 K6 ["split"]
       25 CALL                             R2 2 3
       26 FORGPREP                         R2
       27 NEWTABLE                         R7 0 0
       29 MOVE                             R8 R1
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 FORGPREP                         R8
       33 NAMECALL                         R13 R12 K7 ["GetChildren"]
       35 CALL                             R13 1 3
       36 FORGPREP                         R13
       37 GETTABLEKS                       R18 R17 K8 ["Name"]
       39 NAMECALL                         R18 R18 K0 ["lower"]
       41 CALL                             R18 1 1
       42 NAMECALL                         R19 R6 K0 ["lower"]
       44 CALL                             R19 1 1
       45 JUMPIFNOTEQ                      R18 R19 ; [+8]
       47 FASTCALL2                        TABLE_INSERT R7 R17 ; [+5]
       49 MOVE                             R19 R7
       50 MOVE                             R20 R17
       51 GETIMPORT                        R18 K11 [table.insert]
       53 CALL                             R18 2 0
       54 FORGLOOP                         R13 2 ; [-18]
       56 FORGLOOP                         R8 2 ; [-24]
       58 MOVE                             R1 R7
       59 LENGTH                           R8 R1
       60 JUMPIFEQKN                       R8 K12 [0] ; [+3]
       62 FORGLOOP                         R2 2 ; [-36]
       64 RETURN                           R1 1

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        3 NEWTABLE                         R1 0 0
        5 LOADK                            R2 K1 ["Error: Path cannot be empty"]
        6 RETURN                           R1 2
        7 GETIMPORT                        R1 K3 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+4]
       13 JUMPIFNOT                        R2 ; [+3]
       14 MOVE                             R3 R2
       15 LOADNIL                          R4
       16 RETURN                           R3 2
       17 NEWTABLE                         R3 0 0
       19 LOADK                            R5 K4 ["Error: Could not find instances at path '%*'"]
       20 MOVE                             R7 R0
       21 NAMECALL                         R5 R5 K5 ["format"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 RETURN                           R3 2

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["path"]
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R2 1
        6 LENGTH                           R3 R1
        7 JUMPIFNOTEQKN                    R3 K1 [0] ; [+9]
        9 LOADK                            R4 K2 ["Error: Could not find any instances at path '%*'"]
       10 GETTABLEKS                       R6 R0 K0 ["path"]
       12 NAMECALL                         R4 R4 K3 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 RETURN                           R3 1
       17 LENGTH                           R3 R1
       18 JUMPIFNOTEQKN                    R3 K4 [1] ; [+24]
       20 GETUPVAL                         R3 1
       21 GETTABLEN                        R4 R1 1
       22 CALL                             R3 1 1
       23 GETIMPORT                        R5 K6 [pcall]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R3
       28 CALL                             R5 1 2
       29 JUMPIF                           R5 ; [+11]
       30 LOADK                            R7 K7 ["Error encoding JSON: %*"]
       31 FASTCALL1                        TOSTRING R6 ; [+3]
       32 MOVE                             R10 R6
       33 GETIMPORT                        R9 K9 [tostring]
       35 CALL                             R9 1 1
       36 NAMECALL                         R7 R7 K3 ["format"]
       38 CALL                             R7 2 1
       39 MOVE                             R4 R7
       40 RETURN                           R4 1
       41 MOVE                             R4 R6
       42 RETURN                           R4 1
       43 LENGTH                           R3 R1
       44 NEWTABLE                         R4 0 0
       46 LOADN                            R7 1
       47 GETUPVAL                         R10 3
       48 FASTCALL2                        MATH_MIN R3 R10 ; [+4]
       50 MOVE                             R9 R3
       51 GETIMPORT                        R8 K12 [math.min]
       53 CALL                             R8 2 1
       54 MOVE                             R5 R8
       55 LOADN                            R6 1
       56 FORNPREP                         R5
       57 GETUPVAL                         R10 1
       58 GETTABLE                         R11 R1 R7
       59 CALL                             R10 1 1
       60 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       62 MOVE                             R9 R4
       63 GETIMPORT                        R8 K15 [table.insert]
       65 CALL                             R8 2 0
       66 FORNLOOP                         R5
       67 LOADK                            R6 K16 ["Multiple instances found with path '%*'."]
       68 GETTABLEKS                       R8 R0 K0 ["path"]
       70 NAMECALL                         R6 R6 K3 ["format"]
       72 CALL                             R6 2 1
       73 MOVE                             R5 R6
       74 DUPTABLE                         R6 K22 [{"matches", "count", "totalFound", "note", "warning"}]
       75 SETTABLEKS                       R4 R6 K17 ["matches"]
       77 LENGTH                           R7 R4
       78 SETTABLEKS                       R7 R6 K18 ["count"]
       80 SETTABLEKS                       R3 R6 K19 ["totalFound"]
       82 GETUPVAL                         R8 3
       83 JUMPIFNOTLE                      R3 R8 ; [+9]
       85 LOADK                            R8 K23 ["%* All %* matches are included below."]
       86 MOVE                             R10 R5
       87 MOVE                             R11 R3
       88 NAMECALL                         R8 R8 K3 ["format"]
       90 CALL                             R8 3 1
       91 MOVE                             R7 R8
       92 JUMP                             ; [+1]
       93 MOVE                             R7 R5
       94 SETTABLEKS                       R7 R6 K20 ["note"]
       96 GETUPVAL                         R8 3
       97 JUMPIFNOTLT                      R8 R3 ; [+9]
       99 LOADK                            R8 K24 ["Found %* total matches, but only showing first %* due to output limits. Consider using a more specific path to narrow down results."]
      100 MOVE                             R10 R3
      101 GETUPVAL                         R11 3
      102 NAMECALL                         R8 R8 K3 ["format"]
      104 CALL                             R8 3 1
      105 MOVE                             R7 R8
      106 JUMP                             ; [+1]
      107 LOADNIL                          R7
      108 SETTABLEKS                       R7 R6 K21 ["warning"]
      110 GETIMPORT                        R8 K6 [pcall]
      112 NEWCLOSURE                       R9 P0
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R6
      115 CALL                             R8 1 2
      116 JUMPIF                           R8 ; [+11]
      117 LOADK                            R10 K7 ["Error encoding JSON: %*"]
      118 FASTCALL1                        TOSTRING R9 ; [+3]
      119 MOVE                             R13 R9
      120 GETIMPORT                        R12 K9 [tostring]
      122 CALL                             R12 1 1
      123 NAMECALL                         R10 R10 K3 ["format"]
      125 CALL                             R10 2 1
      126 MOVE                             R7 R10
      127 RETURN                           R7 1
      128 MOVE                             R7 R9
      129 RETURN                           R7 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["addText"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K1 ["build"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["InspectInstanceTool_inspect"]
        3 DUPCLOSURE                       R5 K2 [PROTO_16]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K4 ["define"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K5 ["InspectInstance"]
       18 NAMECALL                         R4 R4 K6 ["setName"]
       20 CALL                             R4 2 1
       21 LOADK                            R7 K7 ["Inspect a specific Roblox instance to get all its properties, attributes, and children summary.\nReturns detailed information about instances including all readable properties, custom attributes, \nand a comprehensive summary of immediate children and recursive child counts.\nIf multiple instances match the same path, all matches will be returned.\nUse this tool after using GameTree to explore specific instances in detail.\n\nSINGLE MATCH OUTPUT FORMAT:\n{\n  \"name\": \"MyPart\",\n  \"className\": \"Part\",\n  \"path\": \"Workspace.MyPart\",\n  \"uniqueId\": \"1234567890ABCDEF\",\n  \"properties\": {\n    \"Anchored\": true,\n    \"CanCollide\": true,\n    \"CFrame.Position\": \"0, 10, 0\",\n    \"CFrame.Rotation\": \"1, 0, 0, 0, 1, 0, 0, 0, 1\",\n    // ... all other readable properties\n  },\n  \"attributes\": {\n    \"CustomTag\": \"PlayerSpawn\",\n    \"SpawnDelay\": 5,\n    \"IsActive\": true\n  },\n  \"children\": {\n    \"immediateChildren\": [\n      {\n        \"className\": \"Part\",\n        \"path\": \"Workspace.MyPart.ChildPart\"\n      },\n      {\n        \"className\": \"Model\",\n        \"path\": \"Workspace.MyPart.ChildModel\"\n      }\n    ],\n    \"childrenCount\": 2,\n    \"totalDescendants\": 8\n  }\n}\n\nCHILDREN SUMMARY FIELDS:\n- immediateChildren: Array of direct children with className and path only (no name, childCount, or uniqueId)\n- childrenCount: Number of direct children\n- totalDescendants: Total count of all descendants (children, children's children, etc.)\n\nuniqueId is included for the main inspected instance when available. This is a unique identifier for each instance in the DataModel.\n\nMULTIPLE MATCHES OUTPUT FORMAT:\n{\n  \"matches\": [\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"Part\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX1234567890ABCDEF\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    },\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"MeshPart\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX9876543210FEDCBA\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    }\n  ],\n  \"count\": 2,\n  \"totalFound\": 2,\n  \"note\": \"Multiple instances found with path 'Workspace.MyPart'. All 2 matches are included below.\"\n}\n\nWHEN TOO MANY MATCHES (>"]
       22 GETUPVAL                         R8 4
       23 LOADK                            R9 K8 ["):\n{\n  \"matches\": [ /* first "]
       24 GETUPVAL                         R10 4
       25 LOADK                            R11 K9 [" matches with full details */ ],\n  \"count\": "]
       26 GETUPVAL                         R12 4
       27 LOADK                            R13 K10 [",\n  \"totalFound\": 45,\n  \"note\": \"Multiple instances found with path 'Workspace.Part'.\",\n  \"warning\": \"Found 45 total matches, but only showing first "]
       28 GETUPVAL                         R14 4
       29 LOADK                            R15 K11 [" due to output limits. Consider using a more specific path to narrow down results.\"\n}\n\nPATH SPECIFICATION:\n- Use dot notation: \"Workspace.Model.Part\"\n- Can include or omit \"game.\" prefix\n- Path must match instance hierarchy\n- If multiple instances have the same name at the same level, all will be returned\n- Maximum of "]
       30 GETUPVAL                         R16 4
       31 LOADK                            R17 K12 [" matches will be returned (with warning if more exist)\n\nEXAMPLES:\n- Inspect with children: InspectInstance(path: \"Workspace.Baseplate\")\n- Multiple matches: InspectInstance(path: \"Workspace.Part\") → Returns up to "]
       32 GETUPVAL                         R18 4
       33 LOADK                            R19 K13 [" Parts with children summary\n- Case-insensitive: InspectInstance(path: \"workspace.baseplate\")\n- Inspect script: InspectInstance(path: \"ServerScriptService.MainScript\")\n- Inspect GUI: InspectInstance(path: \"StarterGui.ScreenGui.Frame\")\n- With game prefix: InspectInstance(path: \"game.Workspace.Model\")\n\nCHILDREN SUMMARY USE CASES:\n- Understand instance hierarchy structure\n- Count total descendants for performance considerations\n- See immediate children for navigation purposes\n- Identify complex models with many nested children\n- Plan traversal strategies for large hierarchies\n"]
       34 CONCAT                           R6 R7 R19
       35 NAMECALL                         R4 R4 K14 ["setDescription"]
       37 CALL                             R4 2 1
       38 LOADK                            R6 K15 ["path"]
       39 DUPTABLE                         R7 K18 [{"type", "description"}]
       40 LOADK                            R8 K19 ["string"]
       41 SETTABLEKS                       R8 R7 K16 ["type"]
       43 LOADK                            R9 K20 ["Path to the instance(s) to inspect using dot notation (case-insensitive). Returns detailed properties, attributes, and children summary. If multiple instances match, up to %* will be returned with a warning if more exist. Example: 'Workspace.Model.Part' or 'workspace.model.part'"]
       44 GETUPVAL                         R11 4
       45 NAMECALL                         R9 R9 K21 ["format"]
       47 CALL                             R9 2 1
       48 MOVE                             R8 R9
       49 SETTABLEKS                       R8 R7 K17 ["description"]
       51 NAMECALL                         R4 R4 K22 ["addArgument"]
       53 CALL                             R4 3 1
       54 MOVE                             R6 R3
       55 NAMECALL                         R4 R4 K23 ["setHandler"]
       57 CALL                             R4 2 1
       58 NAMECALL                         R4 R4 K24 ["build"]
       60 CALL                             R4 1 1
       61 DUPTABLE                         R5 K26 [{"definition"}]
       62 SETTABLEKS                       R4 R5 K25 ["definition"]
       64 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ReflectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R5 K12 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K13 ["Tools"]
       30 GETTABLEKS                       R5 R6 K14 ["ToolTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R7 R0 K15 ["Util"]
       37 GETTABLEKS                       R6 R7 K16 ["ToolUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R8 R0 K17 ["Flags"]
       44 GETTABLEKS                       R7 R8 K18 ["FFlagAssistantToolResultSerialization"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R8 R3 K15 ["Util"]
       49 GETTABLEKS                       R7 R8 K19 ["ToolBuilder"]
       51 GETTABLEKS                       R9 R3 K15 ["Util"]
       53 GETTABLEKS                       R8 R9 K20 ["ToolResult"]
       55 GETTABLEKS                       R9 R4 K21 ["ToolNames"]
       57 GETIMPORT                        R10 K10 [require]
       59 GETTABLEKS                       R12 R0 K17 ["Flags"]
       61 GETTABLEKS                       R11 R12 K22 ["FIntInspectInstanceMaxJsonLength"]
       63 CALL                             R10 1 1
       64 CALL                             R10 0 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R13 R0 K17 ["Flags"]
       69 GETTABLEKS                       R12 R13 K23 ["FIntInspectInstanceMaxMatches"]
       71 CALL                             R11 1 1
       72 CALL                             R11 0 1
       73 GETIMPORT                        R12 K10 [require]
       75 GETTABLEKS                       R14 R0 K17 ["Flags"]
       77 GETTABLEKS                       R13 R14 K24 ["FIntInspectInstanceMaxStringLength"]
       79 CALL                             R12 1 1
       80 CALL                             R12 0 1
       81 DUPCLOSURE                       R13 K25 [PROTO_0]
       82 DUPCLOSURE                       R14 K26 [PROTO_3]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R1
       88 DUPCLOSURE                       R15 K27 [PROTO_4]
       89 CAPTURE                          VAL R14
       90 DUPTABLE                         R16 K31 [{"Parent", "ClassName", "Name", "DataModel"}]
       91 LOADB                            R17 1
       92 SETTABLEKS                       R17 R16 K11 ["Parent"]
       94 LOADB                            R17 1
       95 SETTABLEKS                       R17 R16 K28 ["ClassName"]
       97 LOADB                            R17 1
       98 SETTABLEKS                       R17 R16 K29 ["Name"]
      100 LOADB                            R17 1
      101 SETTABLEKS                       R17 R16 K30 ["DataModel"]
      103 DUPCLOSURE                       R17 K32 [PROTO_5]
      104 CAPTURE                          VAL R14
      105 DUPCLOSURE                       R18 K33 [PROTO_8]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R14
      109 DUPCLOSURE                       R19 K34 [PROTO_10]
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R15
      113 DUPCLOSURE                       R20 K35 [PROTO_12]
      114 CAPTURE                          VAL R1
      115 DUPCLOSURE                       R21 K36 [PROTO_14]
      116 DUPCLOSURE                       R22 K37 [PROTO_15]
      117 CAPTURE                          VAL R21
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R11
      121 DUPCLOSURE                       R23 K38 [PROTO_18]
      122 CAPTURE                          VAL R22
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R11
      127 RETURN                           R23 1
