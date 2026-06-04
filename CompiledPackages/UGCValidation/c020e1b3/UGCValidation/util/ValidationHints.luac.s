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
       19 DUPTABLE                         R11 K6 [{"max", "min"}]
       20 LOADK                            R12 K7 [∞]
       21 SETTABLEKS                       R12 R11 K4 ["max"]
       23 LOADK                            R12 K8 [-∞]
       24 SETTABLEKS                       R12 R11 K5 ["min"]
       26 GETUPVAL                         R12 1
       27 LOADNIL                          R13
       28 LOADNIL                          R14
       29 FORGPREP                         R12
       30 DUPTABLE                         R17 K9 [{"min", "max"}]
       31 LOADK                            R19 K10 [5E-05]
       32 GETTABLEKS                       R22 R10 K11 ["minSize"]
       34 GETTABLE                         R21 R22 R16
       35 GETTABLE                         R22 R3 R16
       36 DIV                              R20 R21 R22
       37 ADD                              R18 R19 R20
       38 SETTABLEKS                       R18 R17 K5 ["min"]
       40 GETTABLEKS                       R21 R10 K12 ["maxSize"]
       42 GETTABLE                         R20 R21 R16
       43 GETTABLE                         R21 R5 R16
       44 DIV                              R19 R20 R21
       45 SUBK                             R18 R19 K10 [5E-05]
       46 SETTABLEKS                       R18 R17 K4 ["max"]
       48 SETTABLE                         R17 R11 R16
       49 GETTABLE                         R17 R11 R16
       50 GETTABLE                         R19 R11 R16
       51 GETTABLEKS                       R19 R19 K5 ["min"]
       53 GETTABLE                         R20 R11 R16
       54 GETTABLEKS                       R20 R20 K4 ["max"]
       56 JUMPIFLE                         R19 R20 ; [+2]
       58 LOADB                            R18 0 +1
       59 LOADB                            R18 1
       60 SETTABLEKS                       R18 R17 K13 ["ok"]
       62 GETTABLEKS                       R18 R11 K4 ["max"]
       64 GETTABLE                         R19 R11 R16
       65 GETTABLEKS                       R19 R19 K4 ["max"]
       67 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
       69 GETIMPORT                        R17 K15 [math.min]
       71 CALL                             R17 2 1
       72 SETTABLEKS                       R17 R11 K4 ["max"]
       74 GETTABLEKS                       R18 R11 K5 ["min"]
       76 GETTABLE                         R19 R11 R16
       77 GETTABLEKS                       R19 R19 K5 ["min"]
       79 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
       81 GETIMPORT                        R17 K16 [math.max]
       83 CALL                             R17 2 1
       84 SETTABLEKS                       R17 R11 K5 ["min"]
       86 FORGLOOP                         R12 2 ; [-57]
       88 GETTABLEKS                       R13 R11 K5 ["min"]
       90 GETTABLEKS                       R14 R11 K4 ["max"]
       92 JUMPIFLE                         R13 R14 ; [+2]
       94 LOADB                            R12 0 +1
       95 LOADB                            R12 1
       96 SETTABLEKS                       R12 R11 K13 ["ok"]
       98 GETTABLEKS                       R12 R2 K3 ["scaleTypes"]
      100 SETTABLE                         R11 R12 R9
      101 FORGLOOP                         R6 2 ; [-83]
      103 RETURN                           R2 1

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
       12 JUMPIF                           R12 ; [+7]
       13 DUPTABLE                         R12 K3 [{"max", "min"}]
       14 LOADK                            R13 K4 [∞]
       15 SETTABLEKS                       R13 R12 K1 ["max"]
       17 LOADK                            R13 K5 [-∞]
       18 SETTABLEKS                       R13 R12 K2 ["min"]
       20 SETTABLE                         R12 R1 R10
       21 GETTABLE                         R12 R1 R10
       22 GETTABLE                         R14 R1 R10
       23 GETTABLEKS                       R14 R14 K1 ["max"]
       25 GETTABLEKS                       R15 R11 K1 ["max"]
       27 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
       29 GETIMPORT                        R13 K7 [math.min]
       31 CALL                             R13 2 1
       32 SETTABLEKS                       R13 R12 K1 ["max"]
       34 GETTABLE                         R12 R1 R10
       35 GETTABLE                         R14 R1 R10
       36 GETTABLEKS                       R14 R14 K2 ["min"]
       38 GETTABLEKS                       R15 R11 K2 ["min"]
       40 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
       42 GETIMPORT                        R13 K8 [math.max]
       44 CALL                             R13 2 1
       45 SETTABLEKS                       R13 R12 K2 ["min"]
       47 FORGLOOP                         R7 2 ; [-37]
       49 FORGLOOP                         R2 2 ; [-44]
       51 RETURN                           R1 1

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
        4 JUMPIF                           R2 ; [+7]
        5 DUPTABLE                         R4 K2 [{"ok", "errors"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K0 ["ok"]
        9 SETTABLEKS                       R3 R4 K1 ["errors"]
       11 RETURN                           R4 1
       12 NEWTABLE                         R4 0 0
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["ASSET_TYPE_INFO"]
       17 LOADNIL                          R6
       18 LOADNIL                          R7
       19 FORGPREP                         R5
       20 GETTABLEKS                       R10 R9 K4 ["isBodyPart"]
       22 JUMPIFNOT                        R10 ; [+69]
       23 GETTABLEKS                       R10 R9 K5 ["subParts"]
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 GETTABLE                         R17 R0 R13
       29 GETTABLEKS                       R17 R17 K6 ["ClassName"]
       31 JUMPIFEQKS                       R17 K7 ["MeshPart"] ; [+2]
       33 LOADB                            R16 0 +1
       34 LOADB                            R16 1
       35 FASTCALL1                        ASSERT R16 ; [+2]
       36 GETIMPORT                        R15 K9 [assert]
       38 CALL                             R15 1 0
       39 GETTABLE                         R15 R0 R13
       40 LOADNIL                          R16
       41 LOADNIL                          R17
       42 LOADNIL                          R18
       43 GETUPVAL                         R19 2
       44 MOVE                             R20 R15
       45 GETUPVAL                         R21 1
       46 GETTABLEKS                       R21 R21 K10 ["MESH_CONTENT_TYPE"]
       48 GETTABLEKS                       R21 R21 K11 ["RENDER_MESH"]
       50 MOVE                             R22 R1
       51 CALL                             R19 3 3
       52 MOVE                             R16 R19
       53 MOVE                             R17 R20
       54 MOVE                             R18 R21
       55 JUMPIF                           R16 ; [+7]
       56 DUPTABLE                         R19 K2 [{"ok", "errors"}]
       57 LOADB                            R20 0
       58 SETTABLEKS                       R20 R19 K0 ["ok"]
       60 SETTABLEKS                       R17 R19 K1 ["errors"]
       62 RETURN                           R19 1
       63 MOVE                             R19 R18
       64 GETTABLEKS                       R20 R15 K12 ["MeshId"]
       66 NEWTABLE                         R21 0 0
       68 SETTABLE                         R21 R4 R20
       69 GETTABLEKS                       R21 R15 K12 ["MeshId"]
       71 GETTABLE                         R20 R4 R21
       72 LOADNIL                          R21
       73 GETUPVAL                         R22 3
       74 MOVE                             R23 R19
       75 MOVE                             R24 R1
       76 CALL                             R22 2 3
       77 MOVE                             R16 R22
       78 MOVE                             R17 R23
       79 MOVE                             R21 R24
       80 JUMPIF                           R16 ; [+7]
       81 DUPTABLE                         R22 K2 [{"ok", "errors"}]
       82 LOADB                            R23 0
       83 SETTABLEKS                       R23 R22 K0 ["ok"]
       85 SETTABLEKS                       R17 R22 K1 ["errors"]
       87 RETURN                           R22 1
       88 SETTABLEKS                       R21 R20 K13 ["verts"]
       90 FORGLOOP                         R10 1 ; [-63]
       92 FORGLOOP                         R5 2 ; [-73]
       94 DUPTABLE                         R5 K15 [{"ok", "cache"}]
       95 LOADB                            R6 1
       96 SETTABLEKS                       R6 R5 K0 ["ok"]
       98 DUPTABLE                         R6 K17 [{"meshData"}]
       99 SETTABLEKS                       R4 R6 K16 ["meshData"]
      101 SETTABLEKS                       R6 R5 K14 ["cache"]
      103 RETURN                           R5 1

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
        4 JUMPIF                           R3 ; [+7]
        5 DUPTABLE                         R5 K2 [{"ok", "errors"}]
        6 LOADB                            R6 0
        7 SETTABLEKS                       R6 R5 K0 ["ok"]
        9 SETTABLEKS                       R4 R5 K1 ["errors"]
       11 RETURN                           R5 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K3 ["calculateIndividualFullBodyPartsData"]
       15 MOVE                             R6 R0
       16 MOVE                             R7 R1
       17 MOVE                             R8 R2
       18 LOADB                            R9 1
       19 CALL                             R5 4 3
       20 JUMPIF                           R5 ; [+14]
       21 DUPTABLE                         R8 K2 [{"ok", "errors"}]
       22 LOADB                            R9 0
       23 SETTABLEKS                       R9 R8 K0 ["ok"]
       25 MOVE                             R9 R6
       26 JUMPIF                           R9 ; [+5]
       27 NEWTABLE                         R9 0 1
       29 LOADK                            R10 K4 ["Errors calculating parts metrics"]
       30 SETLIST                          R9 R10 1 [1]
       32 SETTABLEKS                       R9 R8 K1 ["errors"]
       34 RETURN                           R8 1
       35 NEWTABLE                         R8 0 0
       37 MOVE                             R9 R7
       38 LOADNIL                          R10
       39 LOADNIL                          R11
       40 FORGPREP                         R9
       41 GETUPVAL                         R14 2
       42 GETTABLEKS                       R14 R14 K5 ["combineBounds"]
       44 MOVE                             R15 R8
       45 GETTABLEKS                       R16 R13 K6 ["boundsData"]
       47 CALL                             R14 2 1
       48 MOVE                             R8 R14
       49 FORGLOOP                         R9 2 ; [-9]
       51 NEWTABLE                         R9 0 0
       53 GETUPVAL                         R10 3
       54 MOVE                             R11 R8
       55 GETUPVAL                         R12 4
       56 GETTABLEKS                       R12 R12 K7 ["FULL_BODY_BOUNDS"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K8 ["FullBody"]
       61 GETUPVAL                         R10 4
       62 GETTABLEKS                       R10 R10 K9 ["ASSET_TYPE_INFO"]
       64 LOADNIL                          R11
       65 LOADNIL                          R12
       66 FORGPREP                         R10
       67 GETTABLEKS                       R15 R14 K10 ["isBodyPart"]
       69 JUMPIFNOT                        R15 ; [+30]
       70 NEWTABLE                         R15 0 0
       72 GETTABLEKS                       R16 R14 K11 ["subParts"]
       74 LOADNIL                          R17
       75 LOADNIL                          R18
       76 FORGPREP                         R16
       77 GETUPVAL                         R21 2
       78 GETTABLEKS                       R21 R21 K5 ["combineBounds"]
       80 MOVE                             R22 R15
       81 GETTABLE                         R23 R7 R19
       82 GETTABLEKS                       R23 R23 K6 ["boundsData"]
       84 CALL                             R21 2 1
       85 MOVE                             R15 R21
       86 FORGLOOP                         R16 1 ; [-10]
       88 GETTABLEKS                       R16 R13 K12 ["Name"]
       90 GETUPVAL                         R17 3
       91 MOVE                             R18 R15
       92 GETUPVAL                         R20 4
       93 GETTABLEKS                       R20 R20 K9 ["ASSET_TYPE_INFO"]
       95 GETTABLE                         R19 R20 R13
       96 GETTABLEKS                       R19 R19 K13 ["bounds"]
       98 CALL                             R17 2 1
       99 SETTABLE                         R17 R9 R16
      100 FORGLOOP                         R10 2 ; [-34]
      102 LOADNIL                          R10
      103 LOADNIL                          R11
      104 GETUPVAL                         R12 5
      105 MOVE                             R13 R9
      106 CALL                             R12 1 3
      107 FORGPREP                         R12
      108 GETTABLEKS                       R18 R16 K14 ["min"]
      110 GETTABLEKS                       R19 R16 K15 ["max"]
      112 JUMPIFLE                         R18 R19 ; [+2]
      114 LOADB                            R17 0 +1
      115 LOADB                            R17 1
      116 JUMPIFNOT                        R17 ; [+49]
      117 GETTABLEKS                       R17 R16 K14 ["min"]
      119 LOADN                            R18 1
      120 JUMPIFNOTLE                      R17 R18 ; [+9]
      122 GETTABLEKS                       R17 R16 K15 ["max"]
      124 LOADN                            R18 1
      125 JUMPIFNOTLE                      R18 R17 ; [+4]
      127 LOADN                            R10 1
      128 MOVE                             R11 R15
      129 JUMP                             ; [+38]
      130 GETTABLEKS                       R20 R16 K14 ["min"]
      132 SUBRK                            R19 R16 K20 ["scale"]
      133 FASTCALL1                        MATH_ABS R19 ; [+2]
      134 GETIMPORT                        R18 K19 [math.abs]
      136 CALL                             R18 1 1
      137 GETTABLEKS                       R21 R16 K15 ["max"]
      139 SUBRK                            R20 R16 K21 ["scaleType"]
      140 FASTCALL1                        MATH_ABS R20 ; [+2]
      141 GETIMPORT                        R19 K19 [math.abs]
      143 CALL                             R19 1 1
      144 JUMPIFNOTLT                      R18 R19 ; [+4]
      146 GETTABLEKS                       R17 R16 K14 ["min"]
      148 JUMP                             ; [+2]
      149 GETTABLEKS                       R17 R16 K15 ["max"]
      151 JUMPIFNOT                        R10 ; [+12]
      152 SUBRK                            R19 R16 K17 ["math"]
      153 FASTCALL1                        MATH_ABS R19 ; [+2]
      154 GETIMPORT                        R18 K19 [math.abs]
      156 CALL                             R18 1 1
      157 SUBRK                            R20 R16 K10 ["isBodyPart"]
      158 FASTCALL1                        MATH_ABS R20 ; [+2]
      159 GETIMPORT                        R19 K19 [math.abs]
      161 CALL                             R19 1 1
      162 JUMPIFNOTLT                      R18 R19 ; [+3]
      164 MOVE                             R10 R17
      165 MOVE                             R11 R15
      166 FORGLOOP                         R12 2 ; [-59]
      168 NEWTABLE                         R12 1 0
      170 LOADB                            R13 1
      171 SETTABLEKS                       R13 R12 K0 ["ok"]
      173 DUPTABLE                         R13 K22 [{"ok", "scale", "scaleType"}]
      174 JUMPIFNOTEQKNIL                  R10 ; [+2]
      176 LOADB                            R14 0 +1
      177 LOADB                            R14 1
      178 SETTABLEKS                       R14 R13 K0 ["ok"]
      180 SETTABLEKS                       R10 R13 K20 ["scale"]
      182 SETTABLEKS                       R11 R13 K21 ["scaleType"]
      184 SETTABLEKS                       R13 R12 K23 ["Overall"]
      186 MOVE                             R13 R9
      187 LOADNIL                          R14
      188 LOADNIL                          R15
      189 FORGPREP                         R13
      190 GETUPVAL                         R18 6
      191 MOVE                             R19 R17
      192 CALL                             R18 1 1
      193 SETTABLE                         R18 R12 R16
      194 FORGLOOP                         R13 2 ; [-5]
      196 RETURN                           R12 1

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
       65 DUPTABLE                         R11 K16 [{"MeshId"}]
       66 LOADB                            R12 1
       67 SETTABLEKS                       R12 R11 K15 ["MeshId"]
       69 SETTABLEKS                       R11 R10 K13 ["MeshPart"]
       71 DUPCLOSURE                       R11 K17 [PROTO_0]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R10
       75 DUPCLOSURE                       R12 K18 [PROTO_1]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R11
       78 DUPCLOSURE                       R13 K19 [PROTO_2]
       79 NEWTABLE                         R14 0 3
       81 LOADK                            R15 K20 ["X"]
       82 LOADK                            R16 K21 ["Y"]
       83 LOADK                            R17 K22 ["Z"]
       84 SETLIST                          R14 R15 3 [1]
       86 DUPCLOSURE                       R15 K23 [PROTO_3]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R14
       89 DUPCLOSURE                       R16 K24 [PROTO_4]
       90 DUPCLOSURE                       R17 K25 [PROTO_5]
       91 CAPTURE                          VAL R14
       92 DUPCLOSURE                       R18 K26 [PROTO_6]
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R7
       97 SETTABLEKS                       R18 R8 K27 ["preprocessDataAsync"]
       99 DUPCLOSURE                       R18 K28 [PROTO_7]
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R18 R8 K29 ["isPreprocessDataCached"]
      103 DUPCLOSURE                       R18 K30 [PROTO_8]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R17
      111 SETTABLEKS                       R18 R8 K31 ["calculateScaleToValidateBoundsAsync"]
      113 RETURN                           R8 1
