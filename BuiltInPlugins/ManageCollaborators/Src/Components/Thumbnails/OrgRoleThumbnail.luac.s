PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Color"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 LOADNIL                          R5
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K4 ["fflagIncludePrivateRoles"]
       12 JUMPIFNOT                        R6 ; [+44]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K5 ["createElement"]
       16 GETUPVAL                         R7 2
       17 DUPTABLE                         R8 K12 [{["name"], ["variant"], ["size"], ["style"], ["tag"] = "align-x-center align-y-center"}]
       18 GETTABLEKS                       R10 R1 K13 ["IsPrivate"]
       20 JUMPIFNOT                        R10 ; [+6]
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R9 R9 K14 ["IconName"]
       24 GETTABLEKS                       R9 R9 K15 ["LockClosed"]
       26 JUMP                             ; [+5]
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R9 R9 K14 ["IconName"]
       30 GETTABLEKS                       R9 R9 K16 ["PersonRectangleHorizontalLine"]
       32 SETTABLEKS                       R9 R8 K6 ["name"]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R9 R9 K17 ["Filled"]
       37 SETTABLEKS                       R9 R8 K7 ["variant"]
       39 GETTABLEKS                       R9 R4 K18 ["collaboratorItem"]
       41 GETTABLEKS                       R9 R9 K19 ["iconContainerSize"]
       43 SETTABLEKS                       R9 R8 K8 ["size"]
       45 DUPTABLE                         R9 K23 [{["Color3"], ["Transparency"] = 0}]
       46 GETIMPORT                        R10 K25 [Color3.fromHex]
       48 MOVE                             R11 R2
       49 CALL                             R10 1 1
       50 SETTABLEKS                       R10 R9 K20 ["Color3"]
       52 SETTABLEKS                       R9 R8 K9 ["style"]
       54 CALL                             R6 2 1
       55 MOVE                             R5 R6
       56 JUMP                             ; [+26]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K5 ["createElement"]
       60 LOADK                            R7 K26 ["ImageLabel"]
       61 DUPTABLE                         R8 K31 [{["Size"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"]}]
       62 GETIMPORT                        R9 K34 [UDim2.fromScale]
       64 LOADN                            R10 1
       65 LOADN                            R11 1
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K2 ["Size"]
       69 GETIMPORT                        R9 K25 [Color3.fromHex]
       71 MOVE                             R10 R2
       72 CALL                             R9 1 1
       73 SETTABLEKS                       R9 R8 K29 ["ImageColor3"]
       75 GETTABLEKS                       R9 R4 K35 ["orgRoleThumbnail"]
       77 GETTABLEKS                       R9 R9 K30 ["Image"]
       79 SETTABLEKS                       R9 R8 K30 ["Image"]
       81 CALL                             R6 2 1
       82 MOVE                             R5 R6
       83 GETUPVAL                         R6 1
       84 GETTABLEKS                       R6 R6 K5 ["createElement"]
       86 LOADK                            R7 K36 ["Frame"]
       87 DUPTABLE                         R8 K37 [{["BackgroundTransparency"] = 1, ["Size"]}]
       88 SETTABLEKS                       R3 R8 K2 ["Size"]
       90 DUPTABLE                         R9 K39 [{"Thumbnail"}]
       91 SETTABLEKS                       R5 R9 K38 ["Thumbnail"]
       93 CALL                             R6 3 -1
       94 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Bin"]
       22 GETTABLEKS                       R3 R3 K8 ["defineLuaFlags"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K10 ["Style"]
       34 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
       36 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K13 ["withContext"]
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["Packages"]
       44 GETTABLEKS                       R8 R8 K14 ["Foundation"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R7 K15 ["Icon"]
       49 GETTABLEKS                       R9 R7 K16 ["Enums"]
       51 GETTABLEKS                       R10 R7 K16 ["Enums"]
       53 GETTABLEKS                       R10 R10 K17 ["IconVariant"]
       55 GETTABLEKS                       R11 R1 K18 ["Component"]
       57 GETIMPORT                        R13 K1 [script]
       59 GETTABLEKS                       R13 R13 K19 ["Name"]
       61 NAMECALL                         R11 R11 K20 ["extend"]
       63 CALL                             R11 2 1
       64 DUPCLOSURE                       R12 K21 [PROTO_0]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R12 R11 K22 ["render"]
       72 MOVE                             R12 R6
       73 DUPTABLE                         R13 K23 [{"Stylizer"}]
       74 SETTABLEKS                       R4 R13 K11 ["Stylizer"]
       76 CALL                             R12 1 1
       77 MOVE                             R13 R11
       78 CALL                             R12 1 1
       79 MOVE                             R11 R12
       80 RETURN                           R11 1
