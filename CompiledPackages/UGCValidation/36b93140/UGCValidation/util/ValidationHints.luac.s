PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["parseWithErrorCheck"]
        7 MOVE                             R5 R3
        8 MOVE                             R6 R2
        9 MOVE                             R7 R0
       10 GETUPVAL                         R8 1
       11 GETUPVAL                         R9 2
       12 MOVE                             R10 R1
       13 CALL                             R4 6 1
       14 JUMPIF                           R4 ; [+10]
       15 LOADB                            R5 0
       16 NEWTABLE                         R6 0 1
       18 GETTABLEKS                       R8 R0 K1 ["Name"]
       20 LOADK                            R9 K2 [" does not have a MeshId"]
       21 CONCAT                           R7 R8 R9
       22 SETLIST                          R6 R7 1 [1]
       24 RETURN                           R5 2
       25 LOADB                            R5 1
       26 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K1 ["isBodyPart"]
        8 JUMPIFNOT                        R7 ; [+121]
        9 GETIMPORT                        R7 K3 [pairs]
       11 GETTABLEKS                       R8 R6 K4 ["subParts"]
       13 CALL                             R7 1 3
       14 FORGPREP_NEXT                    R7
       15 GETTABLE                         R12 R0 R10
       16 JUMPIFNOT                        R12 ; [+4]
       17 GETTABLEKS                       R13 R12 K5 ["ClassName"]
       19 JUMPIFEQKS                       R13 K6 ["MeshPart"] ; [+10]
       21 LOADB                            R13 0
       22 NEWTABLE                         R14 0 1
       24 MOVE                             R16 R10
       25 LOADK                            R17 K7 [" missing"]
       26 CONCAT                           R15 R16 R17
       27 SETLIST                          R14 R15 1 [1]
       29 RETURN                           R13 2
       30 GETTABLEKS                       R13 R12 K8 ["Name"]
       32 JUMPIFEQ                         R13 R10 ; [+10]
       34 LOADB                            R13 0
       35 NEWTABLE                         R14 0 1
       37 MOVE                             R16 R10
       38 LOADK                            R17 K9 [" input data is incorrectly set-up"]
       39 CONCAT                           R15 R16 R17
       40 SETLIST                          R14 R15 1 [1]
       42 RETURN                           R13 2
       43 GETUPVAL                         R13 1
       44 MOVE                             R14 R12
       45 MOVE                             R15 R1
       46 CALL                             R13 2 2
       47 JUMPIF                           R13 ; [+3]
       48 LOADB                            R15 0
       49 MOVE                             R16 R14
       50 RETURN                           R15 2
       51 NEWTABLE                         R15 1 0
       53 GETTABLEKS                       R16 R11 K10 ["rigAttachmentToParent"]
       55 GETTABLEKS                       R16 R16 K11 ["name"]
       57 LOADN                            R17 0
       58 SETTABLE                         R17 R15 R16
       59 LOADN                            R16 1
       60 GETTABLEKS                       R17 R11 K12 ["otherAttachments"]
       62 LOADNIL                          R18
       63 LOADNIL                          R19
       64 FORGPREP                         R17
       65 GETIMPORT                        R23 K15 [string.find]
       67 MOVE                             R24 R20
       68 LOADK                            R25 K16 ["RigAttachment$"]
       69 CALL                             R23 2 1
       70 JUMPIFNOTEQKNIL                  R23 ; [+2]
       72 LOADB                            R22 0 +1
       73 LOADB                            R22 1
       74 JUMPIFNOT                        R22 ; [+3]
       75 LOADN                            R23 0
       76 SETTABLE                         R23 R15 R20
       77 ADDK                             R16 R16 K17 [1]
       78 FORGLOOP                         R17 1 ; [-14]
       80 LOADN                            R17 0
       81 NAMECALL                         R18 R12 K18 ["GetChildren"]
       83 CALL                             R18 1 3
       84 FORGPREP                         R18
       85 GETTABLEKS                       R23 R22 K5 ["ClassName"]
       87 JUMPIFNOTEQKS                    R23 K19 ["Attachment"] ; [+29]
       89 GETTABLEKS                       R24 R22 K8 ["Name"]
       91 GETTABLE                         R23 R15 R24
       92 JUMPIFNOT                        R23 ; [+24]
       93 GETTABLEKS                       R24 R22 K8 ["Name"]
       95 GETTABLE                         R23 R15 R24
       96 JUMPIFNOTEQKN                    R23 K17 [1] ; [+12]
       98 LOADB                            R23 0
       99 NEWTABLE                         R24 0 1
      101 MOVE                             R26 R10
      102 LOADK                            R27 K20 [" has duplicate rig attachments: "]
      103 GETTABLEKS                       R28 R22 K8 ["Name"]
      105 CONCAT                           R25 R26 R28
      106 SETLIST                          R24 R25 1 [1]
      108 RETURN                           R23 2
      109 GETTABLEKS                       R23 R22 K8 ["Name"]
      111 GETTABLEKS                       R26 R22 K8 ["Name"]
      113 GETTABLE                         R25 R15 R26
      114 ADDK                             R24 R25 K17 [1]
      115 SETTABLE                         R24 R15 R23
      116 ADDK                             R17 R17 K17 [1]
      117 FORGLOOP                         R18 2 ; [-33]
      119 JUMPIFEQ                         R17 R16 ; [+8]
      121 LOADB                            R18 0
      122 NEWTABLE                         R19 0 1
      124 LOADK                            R20 K21 ["Missing rig attachments"]
      125 SETLIST                          R19 R20 1 [1]
      127 RETURN                           R18 2
      128 FORGLOOP                         R7 2 ; [-114]
      130 FORGLOOP                         R2 2 ; [-125]
      132 LOADB                            R2 1
      133 RETURN                           R2 1

PROTO_2:
        0 JUMPIFLE                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["calculateBoundsDimensions"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 3
        7 SETTABLEKS                       R3 R2 K1 ["meshSize"]
        9 SETTABLEKS                       R5 R2 K2 ["overallSize"]
       11 NEWTABLE                         R6 0 0
       13 SETTABLEKS                       R6 R2 K3 ["scaleTypes"]
       15 MOVE                             R6 R1
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 DUPTABLE                         R11 K8 [{["max"] = ∞, ["min"] = -∞}]
       20 GETUPVAL                         R12 1
       21 LOADNIL                          R13
       22 LOADNIL                          R14
       23 FORGPREP                         R12
       24 DUPTABLE                         R17 K9 [{"min", "max"}]
       25 LOADK                            R19 K10 [5E-05]
       26 GETTABLEKS                       R22 R10 K11 ["minSize"]
       28 GETTABLE                         R21 R22 R16
       29 GETTABLE                         R22 R3 R16
       30 DIV                              R20 R21 R22
       31 ADD                              R18 R19 R20
       32 SETTABLEKS                       R18 R17 K6 ["min"]
       34 GETTABLEKS                       R21 R10 K12 ["maxSize"]
       36 GETTABLE                         R20 R21 R16
       37 GETTABLE                         R21 R5 R16
       38 DIV                              R19 R20 R21
       39 SUBK                             R18 R19 K10 [5E-05]
       40 SETTABLEKS                       R18 R17 K4 ["max"]
       42 SETTABLE                         R17 R11 R16
       43 GETTABLE                         R17 R11 R16
       44 GETTABLE                         R19 R11 R16
       45 GETTABLEKS                       R19 R19 K6 ["min"]
       47 GETTABLE                         R20 R11 R16
       48 GETTABLEKS                       R20 R20 K4 ["max"]
       50 JUMPIFLE                         R19 R20 ; [+2]
       52 LOADB                            R18 0 +1
       53 LOADB                            R18 1
       54 SETTABLEKS                       R18 R17 K13 ["ok"]
       56 GETTABLEKS                       R18 R11 K4 ["max"]
       58 GETTABLE                         R19 R11 R16
       59 GETTABLEKS                       R19 R19 K4 ["max"]
       61 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
       63 GETIMPORT                        R17 K15 [math.min]
       65 CALL                             R17 2 1
       66 SETTABLEKS                       R17 R11 K4 ["max"]
       68 GETTABLEKS                       R18 R11 K6 ["min"]
       70 GETTABLE                         R19 R11 R16
       71 GETTABLEKS                       R19 R19 K6 ["min"]
       73 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
       75 GETIMPORT                        R17 K16 [math.max]
       77 CALL                             R17 2 1
       78 SETTABLEKS                       R17 R11 K6 ["min"]
       80 FORGLOOP                         R12 2 ; [-57]
       82 GETTABLEKS                       R13 R11 K6 ["min"]
       84 GETTABLEKS                       R14 R11 K4 ["max"]
       86 JUMPIFLE                         R13 R14 ; [+2]
       88 LOADB                            R12 0 +1
       89 LOADB                            R12 1
       90 SETTABLEKS                       R12 R11 K13 ["ok"]
       92 GETTABLEKS                       R12 R2 K3 ["scaleTypes"]
       94 SETTABLE                         R11 R12 R9
       95 FORGLOOP                         R6 2 ; [-77]
       97 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["scaleTypes"]
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLE                         R12 R1 R10
       12 JUMPIF                           R12 ; [+1]
       13 DUPTABLE                         R12 K5 [{["max"] = ∞, ["min"] = -∞}]
       14 SETTABLE                         R12 R1 R10
       15 GETTABLE                         R12 R1 R10
       16 GETTABLE                         R14 R1 R10
       17 GETTABLEKS                       R14 R14 K1 ["max"]
       19 GETTABLEKS                       R15 R11 K1 ["max"]
       21 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
       23 GETIMPORT                        R13 K7 [math.min]
       25 CALL                             R13 2 1
       26 SETTABLEKS                       R13 R12 K1 ["max"]
       28 GETTABLE                         R12 R1 R10
       29 GETTABLE                         R14 R1 R10
       30 GETTABLEKS                       R14 R14 K3 ["min"]
       32 GETTABLEKS                       R15 R11 K3 ["min"]
       34 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
       36 GETIMPORT                        R13 K8 [math.max]
       38 CALL                             R13 2 1
       39 SETTABLEKS                       R13 R12 K3 ["min"]
       41 FORGLOOP                         R7 2 ; [-31]
       43 FORGLOOP                         R2 2 ; [-38]
       45 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"meshSize", "overallSize"}]
        1 GETTABLEKS                       R2 R0 K0 ["meshSize"]
        3 SETTABLEKS                       R2 R1 K0 ["meshSize"]
        5 GETTABLEKS                       R2 R0 K1 ["overallSize"]
        7 SETTABLEKS                       R2 R1 K1 ["overallSize"]
        9 GETTABLEKS                       R2 R0 K3 ["scaleTypes"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 NEWTABLE                         R7 4 0
       16 GETUPVAL                         R8 0
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 GETTABLE                         R13 R6 R12
       21 SETTABLE                         R13 R7 R12
       22 FORGLOOP                         R8 2 ; [-3]
       24 GETTABLEKS                       R8 R6 K4 ["ok"]
       26 SETTABLEKS                       R8 R7 K4 ["ok"]
       28 GETTABLEKS                       R8 R6 K5 ["min"]
       30 SETTABLEKS                       R8 R7 K5 ["min"]
       32 GETTABLEKS                       R8 R6 K6 ["max"]
       34 SETTABLEKS                       R8 R7 K6 ["max"]
       36 SETTABLE                         R7 R1 R5
       37 FORGLOOP                         R2 2 ; [-24]
       39 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 2
        4 JUMPIF                           R2 ; [+4]
        5 DUPTABLE                         R4 K3 [{[1] = False, ["errors"]}]
        6 SETTABLEKS                       R3 R4 K2 ["errors"]
        8 RETURN                           R4 1
        9 NEWTABLE                         R4 0 0
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K4 ["ASSET_TYPE_INFO"]
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R9 K5 ["isBodyPart"]
       19 JUMPIFNOT                        R10 ; [+63]
       20 GETTABLEKS                       R10 R9 K6 ["subParts"]
       22 LOADNIL                          R11
       23 LOADNIL                          R12
       24 FORGPREP                         R10
       25 GETTABLE                         R17 R0 R13
       26 GETTABLEKS                       R17 R17 K7 ["ClassName"]
       28 JUMPIFEQKS                       R17 K8 ["MeshPart"] ; [+2]
       30 LOADB                            R16 0 +1
       31 LOADB                            R16 1
       32 FASTCALL1                        ASSERT R16 ; [+2]
       33 GETIMPORT                        R15 K10 [assert]
       35 CALL                             R15 1 0
       36 GETTABLE                         R15 R0 R13
       37 LOADNIL                          R16
       38 LOADNIL                          R17
       39 LOADNIL                          R18
       40 GETUPVAL                         R19 2
       41 MOVE                             R20 R15
       42 GETUPVAL                         R21 1
       43 GETTABLEKS                       R21 R21 K11 ["MESH_CONTENT_TYPE"]
       45 GETTABLEKS                       R21 R21 K12 ["RENDER_MESH"]
       47 MOVE                             R22 R1
       48 CALL                             R19 3 3
       49 MOVE                             R16 R19
       50 MOVE                             R17 R20
       51 MOVE                             R18 R21
       52 JUMPIF                           R16 ; [+4]
       53 DUPTABLE                         R19 K3 [{[1] = False, ["errors"]}]
       54 SETTABLEKS                       R17 R19 K2 ["errors"]
       56 RETURN                           R19 1
       57 MOVE                             R19 R18
       58 GETTABLEKS                       R20 R15 K13 ["MeshId"]
       60 NEWTABLE                         R21 0 0
       62 SETTABLE                         R21 R4 R20
       63 GETTABLEKS                       R21 R15 K13 ["MeshId"]
       65 GETTABLE                         R20 R4 R21
       66 LOADNIL                          R21
       67 GETUPVAL                         R22 3
       68 MOVE                             R23 R19
       69 MOVE                             R24 R1
       70 CALL                             R22 2 3
       71 MOVE                             R16 R22
       72 MOVE                             R17 R23
       73 MOVE                             R21 R24
       74 JUMPIF                           R16 ; [+4]
       75 DUPTABLE                         R22 K3 [{[1] = False, ["errors"]}]
       76 SETTABLEKS                       R17 R22 K2 ["errors"]
       78 RETURN                           R22 1
       79 SETTABLEKS                       R21 R20 K14 ["verts"]
       81 FORGLOOP                         R10 1 ; [-57]
       83 FORGLOOP                         R5 2 ; [-67]
       85 DUPTABLE                         R5 K17 [{[1] = True, ["cache"]}]
       86 DUPTABLE                         R6 K19 [{"meshData"}]
       87 SETTABLEKS                       R4 R6 K18 ["meshData"]
       89 SETTABLEKS                       R6 R5 K16 ["cache"]
       91 RETURN                           R5 1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["meshData"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["ASSET_TYPE_INFO"]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K2 ["isBodyPart"]
       10 JUMPIFNOT                        R8 ; [+32]
       11 GETIMPORT                        R8 K4 [pairs]
       13 GETTABLEKS                       R9 R7 K5 ["subParts"]
       15 CALL                             R8 1 3
       16 FORGPREP_NEXT                    R8
       17 GETTABLE                         R13 R0 R11
       18 JUMPIFNOT                        R13 ; [+22]
       19 GETTABLEKS                       R14 R13 K6 ["ClassName"]
       21 JUMPIFNOTEQKS                    R14 K7 ["MeshPart"] ; [+19]
       23 GETTABLEKS                       R14 R13 K8 ["MeshId"]
       25 JUMPIFEQKS                       R14 K9 [""] ; [+15]
       27 JUMPIF                           R2 ; [+2]
       28 LOADB                            R14 0
       29 RETURN                           R14 1
       30 GETTABLEKS                       R15 R13 K8 ["MeshId"]
       32 GETTABLE                         R14 R2 R15
       33 JUMPIF                           R14 ; [+2]
       34 LOADB                            R15 0
       35 RETURN                           R15 1
       36 GETTABLEKS                       R15 R14 K10 ["verts"]
       38 JUMPIF                           R15 ; [+2]
       39 LOADB                            R15 0
       40 RETURN                           R15 1
       41 FORGLOOP                         R8 1 ; [-25]
       43 FORGLOOP                         R3 2 ; [-36]
       45 LOADB                            R3 1
       46 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 2
        4 JUMPIF                           R3 ; [+4]
        5 DUPTABLE                         R5 K3 [{[1] = False, ["errors"]}]
        6 SETTABLEKS                       R4 R5 K2 ["errors"]
        8 RETURN                           R5 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K4 ["calculateIndividualFullBodyPartsData"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 LOADB                            R9 1
       16 CALL                             R5 4 3
       17 JUMPIF                           R5 ; [+11]
       18 DUPTABLE                         R8 K3 [{[1] = False, ["errors"]}]
       19 MOVE                             R9 R6
       20 JUMPIF                           R9 ; [+5]
       21 NEWTABLE                         R9 0 1
       23 LOADK                            R10 K5 ["Errors calculating parts metrics"]
       24 SETLIST                          R9 R10 1 [1]
       26 SETTABLEKS                       R9 R8 K2 ["errors"]
       28 RETURN                           R8 1
       29 NEWTABLE                         R8 0 0
       31 MOVE                             R9 R7
       32 LOADNIL                          R10
       33 LOADNIL                          R11
       34 FORGPREP                         R9
       35 GETUPVAL                         R14 2
       36 GETTABLEKS                       R14 R14 K6 ["combineBounds"]
       38 MOVE                             R15 R8
       39 GETTABLEKS                       R16 R13 K7 ["boundsData"]
       41 CALL                             R14 2 1
       42 MOVE                             R8 R14
       43 FORGLOOP                         R9 2 ; [-9]
       45 NEWTABLE                         R9 0 0
       47 GETUPVAL                         R10 3
       48 MOVE                             R11 R8
       49 GETUPVAL                         R12 4
       50 GETTABLEKS                       R12 R12 K8 ["FULL_BODY_BOUNDS"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K9 ["FullBody"]
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R10 R10 K10 ["ASSET_TYPE_INFO"]
       58 LOADNIL                          R11
       59 LOADNIL                          R12
       60 FORGPREP                         R10
       61 GETTABLEKS                       R15 R14 K11 ["isBodyPart"]
       63 JUMPIFNOT                        R15 ; [+30]
       64 NEWTABLE                         R15 0 0
       66 GETTABLEKS                       R16 R14 K12 ["subParts"]
       68 LOADNIL                          R17
       69 LOADNIL                          R18
       70 FORGPREP                         R16
       71 GETUPVAL                         R21 2
       72 GETTABLEKS                       R21 R21 K6 ["combineBounds"]
       74 MOVE                             R22 R15
       75 GETTABLE                         R23 R7 R19
       76 GETTABLEKS                       R23 R23 K7 ["boundsData"]
       78 CALL                             R21 2 1
       79 MOVE                             R15 R21
       80 FORGLOOP                         R16 1 ; [-10]
       82 GETTABLEKS                       R16 R13 K13 ["Name"]
       84 GETUPVAL                         R17 3
       85 MOVE                             R18 R15
       86 GETUPVAL                         R20 4
       87 GETTABLEKS                       R20 R20 K10 ["ASSET_TYPE_INFO"]
       89 GETTABLE                         R19 R20 R13
       90 GETTABLEKS                       R19 R19 K14 ["bounds"]
       92 CALL                             R17 2 1
       93 SETTABLE                         R17 R9 R16
       94 FORGLOOP                         R10 2 ; [-34]
       96 LOADNIL                          R10
       97 LOADNIL                          R11
       98 GETUPVAL                         R12 5
       99 MOVE                             R13 R9
      100 CALL                             R12 1 3
      101 FORGPREP                         R12
      102 GETTABLEKS                       R18 R16 K15 ["min"]
      104 GETTABLEKS                       R19 R16 K16 ["max"]
      106 JUMPIFLE                         R18 R19 ; [+2]
      108 LOADB                            R17 0 +1
      109 LOADB                            R17 1
      110 JUMPIFNOT                        R17 ; [+49]
      111 GETTABLEKS                       R17 R16 K15 ["min"]
      113 LOADN                            R18 1
      114 JUMPIFNOTLE                      R17 R18 ; [+9]
      116 GETTABLEKS                       R17 R16 K16 ["max"]
      118 LOADN                            R18 1
      119 JUMPIFNOTLE                      R18 R17 ; [+4]
      121 LOADN                            R10 1
      122 MOVE                             R11 R15
      123 JUMP                             ; [+38]
      124 GETTABLEKS                       R20 R16 K15 ["min"]
      126 SUBRK                            R19 K17 [1] R20
      127 FASTCALL1                        MATH_ABS R19 ; [+2]
      128 GETIMPORT                        R18 K20 [math.abs]
      130 CALL                             R18 1 1
      131 GETTABLEKS                       R21 R16 K16 ["max"]
      133 SUBRK                            R20 K17 [1] R21
      134 FASTCALL1                        MATH_ABS R20 ; [+2]
      135 GETIMPORT                        R19 K20 [math.abs]
      137 CALL                             R19 1 1
      138 JUMPIFNOTLT                      R18 R19 ; [+4]
      140 GETTABLEKS                       R17 R16 K15 ["min"]
      142 JUMP                             ; [+2]
      143 GETTABLEKS                       R17 R16 K16 ["max"]
      145 JUMPIFNOT                        R10 ; [+12]
      146 SUBRK                            R19 K17 [1] R17
      147 FASTCALL1                        MATH_ABS R19 ; [+2]
      148 GETIMPORT                        R18 K20 [math.abs]
      150 CALL                             R18 1 1
      151 SUBRK                            R20 K17 [1] R10
      152 FASTCALL1                        MATH_ABS R20 ; [+2]
      153 GETIMPORT                        R19 K20 [math.abs]
      155 CALL                             R19 1 1
      156 JUMPIFNOTLT                      R18 R19 ; [+3]
      158 MOVE                             R10 R17
      159 MOVE                             R11 R15
      160 FORGLOOP                         R12 2 ; [-59]
      162 NEWTABLE                         R12 1 0
      164 LOADB                            R13 1
      165 SETTABLEKS                       R13 R12 K0 ["ok"]
      167 DUPTABLE                         R13 K23 [{"ok", "scale", "scaleType"}]
      168 JUMPIFNOTEQKNIL                  R10 ; [+2]
      170 LOADB                            R14 0 +1
      171 LOADB                            R14 1
      172 SETTABLEKS                       R14 R13 K0 ["ok"]
      174 SETTABLEKS                       R10 R13 K21 ["scale"]
      176 SETTABLEKS                       R11 R13 K22 ["scaleType"]
      178 SETTABLEKS                       R13 R12 K24 ["Overall"]
      180 MOVE                             R13 R9
      181 LOADNIL                          R14
      182 LOADNIL                          R15
      183 FORGPREP                         R13
      184 GETUPVAL                         R18 6
      185 MOVE                             R19 R17
      186 CALL                             R18 1 1
      187 SETTABLE                         R18 R12 R16
      188 FORGLOOP                         R13 2 ; [-5]
      190 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["BoundsCalculator"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K6 ["util"]
       30 GETTABLEKS                       R5 R5 K9 ["BoundsDataUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K6 ["util"]
       37 GETTABLEKS                       R6 R6 K10 ["ParseContentIds"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K6 ["util"]
       44 GETTABLEKS                       R7 R7 K11 ["getMeshInfo"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K6 ["util"]
       51 GETTABLEKS                       R8 R8 K12 ["getMeshVerts"]
       53 CALL                             R7 1 1
       54 NEWTABLE                         R8 4 0
       56 DUPTABLE                         R9 K14 [{"MeshPart"}]
       57 NEWTABLE                         R10 0 1
       59 LOADK                            R11 K15 ["MeshId"]
       60 SETLIST                          R10 R11 1 [1]
       62 SETTABLEKS                       R10 R9 K13 ["MeshPart"]
       64 DUPTABLE                         R10 K14 [{"MeshPart"}]
       65 DUPTABLE                         R11 K17 [{["MeshId"] = True}]
       66 SETTABLEKS                       R11 R10 K13 ["MeshPart"]
       68 DUPCLOSURE                       R11 K18 [PROTO_0]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 DUPCLOSURE                       R12 K19 [PROTO_1]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R11
       75 DUPCLOSURE                       R13 K20 [PROTO_2]
       76 NEWTABLE                         R14 0 3
       78 LOADK                            R15 K21 ["X"]
       79 LOADK                            R16 K22 ["Y"]
       80 LOADK                            R17 K23 ["Z"]
       81 SETLIST                          R14 R15 3 [1]
       83 DUPCLOSURE                       R15 K24 [PROTO_3]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R14
       86 DUPCLOSURE                       R16 K25 [PROTO_4]
       87 DUPCLOSURE                       R17 K26 [PROTO_5]
       88 CAPTURE                          VAL R14
       89 DUPCLOSURE                       R18 K27 [PROTO_6]
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 SETTABLEKS                       R18 R8 K28 ["preprocessDataAsync"]
       96 DUPCLOSURE                       R18 K29 [PROTO_7]
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R18 R8 K30 ["isPreprocessDataCached"]
      100 DUPCLOSURE                       R18 K31 [PROTO_8]
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R17
      108 SETTABLEKS                       R18 R8 K32 ["calculateScaleToValidateBoundsAsync"]
      110 RETURN                           R8 1
