PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AbsoluteSize"]
        5 MOVE                             R2 R1
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETTABLEKS                       R3 R1 K2 ["X"]
        9 LOADN                            R4 640
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R5 R4 K1 ["LogAssetImpression"]
        5 JUMPIFNOT                        R5 ; [+12]
        6 GETTABLEKS                       R5 R4 K1 ["LogAssetImpression"]
        8 MOVE                             R6 R0
        9 MOVE                             R7 R3
       10 MOVE                             R8 R1
       11 MOVE                             R9 R2
       12 GETTABLEKS                       R10 R4 K2 ["AbsoluteSize"]
       14 GETTABLEKS                       R11 R4 K3 ["AbsolutePosition"]
       16 CALL                             R5 6 -1
       17 RETURN                           R5 -1
       18 LOADNIL                          R5
       19 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["logImpression"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 -1
        8 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["OnAssetPreviewButtonClicked"]
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADK                            R5 K2 [0.5]
        7 JUMP                             ; [+1]
        8 LOADN                            R5 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K3 ["createElement"]
       12 GETUPVAL                         R7 2
       13 DUPTABLE                         R8 K9 [{"AssetInfo", "LayoutOrder", "LogImpression", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "Size"}]
       14 SETTABLEKS                       R1 R8 K4 ["AssetInfo"]
       16 SETTABLEKS                       R0 R8 K5 ["LayoutOrder"]
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R9 R8 K6 ["LogImpression"]
       22 NEWCLOSURE                       R9 P1
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R9 R8 K1 ["OnAssetPreviewButtonClicked"]
       27 GETTABLEKS                       R9 R3 K10 ["AbsoluteSize"]
       29 SETTABLEKS                       R9 R8 K7 ["ParentAbsoluteSize"]
       31 GETIMPORT                        R9 K13 [UDim2.new]
       33 MOVE                             R10 R5
       34 LOADN                            R11 0
       35 LOADN                            R12 0
       36 GETUPVAL                         R13 3
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K8 ["Size"]
       40 CALL                             R6 2 -1
       41 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getNextOrder"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["renderFontTile"]
        7 MOVE                             R3 R1
        8 MOVE                             R4 R0
        9 LOADB                            R5 0
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hasExceededContentMaxWidth"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 LOADNIL                          R3
        9 JUMPIFNOT                        R1 ; [+103]
       10 LENGTH                           R4 R0
       11 LOADN                            R5 1
       12 JUMPIFNOTLT                      R5 R4 ; [+100]
       14 NEWTABLE                         R4 0 0
       16 NEWTABLE                         R3 0 0
       18 GETIMPORT                        R5 K3 [pairs]
       20 MOVE                             R6 R0
       21 CALL                             R5 1 3
       22 FORGPREP_NEXT                    R5
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K4 ["renderFontTile"]
       26 LENGTH                           R11 R4
       27 MOVE                             R12 R9
       28 LOADB                            R13 1
       29 CALL                             R10 3 1
       30 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       32 MOVE                             R12 R4
       33 MOVE                             R13 R10
       34 GETIMPORT                        R11 K7 [table.insert]
       36 CALL                             R11 2 0
       37 LENGTH                           R11 R4
       38 JUMPIFNOTEQKN                    R11 K8 [2] ; [+33]
       40 NAMECALL                         R11 R2 K9 ["getNextOrder"]
       42 CALL                             R11 1 1
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R12 R12 K10 ["createElement"]
       46 GETUPVAL                         R13 3
       47 DUPTABLE                         R14 K17 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10}]
       48 GETIMPORT                        R15 K20 [Enum.AutomaticSize.Y]
       50 SETTABLEKS                       R15 R14 K11 ["AutomaticSize"]
       52 GETIMPORT                        R15 K23 [Enum.FillDirection.Horizontal]
       54 SETTABLEKS                       R15 R14 K12 ["Layout"]
       56 SETTABLEKS                       R11 R14 K13 ["LayoutOrder"]
       58 GETIMPORT                        R15 K25 [UDim2.new]
       60 LOADN                            R16 1
       61 LOADN                            R17 0
       62 LOADN                            R18 0
       63 LOADN                            R19 10
       64 CALL                             R15 4 1
       65 SETTABLEKS                       R15 R14 K14 ["Size"]
       67 MOVE                             R15 R4
       68 CALL                             R12 3 1
       69 SETTABLE                         R12 R3 R11
       70 NEWTABLE                         R4 0 0
       72 FORGLOOP                         R5 2 ; [-50]
       74 LENGTH                           R5 R4
       75 LOADN                            R6 0
       76 JUMPIFNOTLT                      R6 R5 ; [+45]
       78 NAMECALL                         R5 R2 K9 ["getNextOrder"]
       80 CALL                             R5 1 1
       81 GETUPVAL                         R6 2
       82 GETTABLEKS                       R6 R6 K10 ["createElement"]
       84 GETUPVAL                         R7 3
       85 DUPTABLE                         R8 K27 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10}]
       86 GETIMPORT                        R9 K20 [Enum.AutomaticSize.Y]
       88 SETTABLEKS                       R9 R8 K11 ["AutomaticSize"]
       90 GETIMPORT                        R9 K29 [Enum.HorizontalAlignment.Left]
       92 SETTABLEKS                       R9 R8 K26 ["HorizontalAlignment"]
       94 GETIMPORT                        R9 K31 [Enum.FillDirection.Vertical]
       96 SETTABLEKS                       R9 R8 K12 ["Layout"]
       98 SETTABLEKS                       R5 R8 K13 ["LayoutOrder"]
      100 GETIMPORT                        R9 K25 [UDim2.new]
      102 LOADN                            R10 1
      103 LOADN                            R11 0
      104 LOADN                            R12 0
      105 LOADN                            R13 10
      106 CALL                             R9 4 1
      107 SETTABLEKS                       R9 R8 K14 ["Size"]
      109 MOVE                             R9 R4
      110 CALL                             R6 3 1
      111 SETTABLE                         R6 R3 R5
      112 JUMP                             ; [+9]
      113 GETUPVAL                         R4 4
      114 GETTABLEKS                       R4 R4 K32 ["map"]
      116 MOVE                             R5 R0
      117 NEWCLOSURE                       R6 P0
      118 CAPTURE                          VAL R2
      119 CAPTURE                          UPVAL U0
      120 CALL                             R4 2 1
      121 MOVE                             R3 R4
      122 GETUPVAL                         R4 2
      123 GETTABLEKS                       R4 R4 K10 ["createElement"]
      125 GETUPVAL                         R5 3
      126 DUPTABLE                         R6 K34 [{["AutomaticSize"], ["Layout"], ["Size"], ["Spacing"] = 10, ["VerticalAlignment"]}]
      127 GETIMPORT                        R7 K20 [Enum.AutomaticSize.Y]
      129 SETTABLEKS                       R7 R6 K11 ["AutomaticSize"]
      131 GETIMPORT                        R7 K31 [Enum.FillDirection.Vertical]
      133 SETTABLEKS                       R7 R6 K12 ["Layout"]
      135 GETIMPORT                        R7 K25 [UDim2.new]
      137 LOADN                            R8 1
      138 LOADN                            R9 1
      139 LOADN                            R10 0
      140 LOADN                            R11 10
      141 CALL                             R7 4 1
      142 SETTABLEKS                       R7 R6 K14 ["Size"]
      144 GETIMPORT                        R7 K36 [Enum.VerticalAlignment.Top]
      146 SETTABLEKS                       R7 R6 K33 ["VerticalAlignment"]
      148 MOVE                             R7 R3
      149 CALL                             R4 3 -1
      150 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assets"]
        3 LENGTH                           R0 R1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["loading"]
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADN                            R1 60
        9 JUMP                             ; [+1]
       10 LOADN                            R1 0
       11 GETUPVAL                         R3 1
       12 JUMPIFNOT                        R3 ; [+6]
       13 DIVK                             R3 R0 K2 [2]
       14 FASTCALL1                        MATH_CEIL R3 ; [+2]
       15 GETIMPORT                        R2 K5 [math.ceil]
       17 CALL                             R2 1 1
       18 JUMP                             ; [+1]
       19 MOVE                             R2 R0
       20 GETUPVAL                         R7 2
       21 ADDK                             R6 R7 K7 [10]
       22 MUL                              R5 R6 R2
       23 ADD                              R4 R5 R1
       24 ADDK                             R3 R4 K6 [20]
       25 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["fetchNextPage"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["fetchNextPage"]
        9 CALL                             R0 0 -1
       10 RETURN                           R0 -1
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hasExceededContentMaxWidth"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R0 K1 ["assets"]
        6 LENGTH                           R2 R3
        7 GETTABLEKS                       R3 R0 K2 ["loading"]
        9 JUMPIF                           R3 ; [+36]
       10 FASTCALL1                        TYPE R2 ; [+3]
       11 MOVE                             R5 R2
       12 GETIMPORT                        R4 K4 [type]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+4]
       17 LOADN                            R4 0
       18 JUMPIFLT                         R4 R2 ; [+27]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["createElement"]
       23 GETUPVAL                         R5 2
       24 DUPTABLE                         R6 K11 [{["Position"], ["Text"], ["ZIndex"] = 2}]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K12 ["props"]
       28 GETTABLEKS                       R7 R7 K13 ["NoResultsPosition"]
       30 SETTABLEKS                       R7 R6 K7 ["Position"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K12 ["props"]
       35 GETTABLEKS                       R7 R7 K14 ["Localization"]
       37 LOADK                            R9 K15 ["General"]
       38 LOADK                            R10 K16 ["InfoBannerText"]
       39 NAMECALL                         R7 R7 K17 ["getText"]
       41 CALL                             R7 3 1
       42 SETTABLEKS                       R7 R6 K8 ["Text"]
       44 CALL                             R4 2 -1
       45 RETURN                           R4 -1
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U3
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K6 ["createElement"]
       53 GETUPVAL                         R6 4
       54 DUPTABLE                         R7 K28 [{["CalculateCanvasHeight"], ["FetchNextPage"], ["Items"], ["Loading"], ["PageSize"] = 30, ["RenderContent"], ["RenderTopContent"] = , ["Total"]}]
       55 SETTABLEKS                       R4 R7 K18 ["CalculateCanvasHeight"]
       57 NEWCLOSURE                       R8 P1
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R8 R7 K19 ["FetchNextPage"]
       61 GETTABLEKS                       R8 R0 K1 ["assets"]
       63 SETTABLEKS                       R8 R7 K20 ["Items"]
       65 GETTABLEKS                       R8 R0 K2 ["loading"]
       67 SETTABLEKS                       R8 R7 K21 ["Loading"]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K29 ["renderResponsiveContent"]
       72 SETTABLEKS                       R8 R7 K24 ["RenderContent"]
       74 GETTABLEKS                       R8 R0 K30 ["total"]
       76 SETTABLEKS                       R8 R7 K27 ["Total"]
       78 CALL                             R5 2 -1
       79 RETURN                           R5 -1

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["hasExceededContentMaxWidth"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["logImpression"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R1 R0 K2 ["renderFontTile"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 SETTABLEKS                       R1 R0 K3 ["renderResponsiveContent"]
       23 NEWCLOSURE                       R1 P4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U7
       29 SETTABLEKS                       R1 R0 K4 ["renderList"]
       31 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CategoryName"]
        4 GETTABLEKS                       R3 R1 K2 ["IncludeUnverifiedCreators"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["Stylizer"]
       14 GETTABLEKS                       R8 R1 K7 ["WrapperProps"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["createElement"]
       19 GETUPVAL                         R10 1
       20 GETUPVAL                         R11 2
       21 GETTABLEKS                       R11 R11 K9 ["join"]
       23 DUPTABLE                         R12 K13 [{["BackgroundColor"], ["LayoutOrder"], ["Position"], ["Size"], ["Style"] = "Box"}]
       24 GETTABLEKS                       R13 R7 K14 ["backgroundColor"]
       26 SETTABLEKS                       R13 R12 K10 ["BackgroundColor"]
       28 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R12 K4 ["Position"]
       32 SETTABLEKS                       R6 R12 K5 ["Size"]
       34 MOVE                             R13 R8
       35 CALL                             R11 2 1
       36 DUPTABLE                         R12 K16 [{"Results"}]
       37 GETUPVAL                         R13 3
       38 GETTABLEKS                       R13 R13 K17 ["Generator"]
       40 DUPTABLE                         R14 K28 [{["categoryName"], ["networkInterface"], ["initialPageSize"] = 30, ["includeUnverifiedCreators"], ["queryParams"], ["render"], ["searchTerm"], ["sectionName"] = }]
       41 SETTABLEKS                       R2 R14 K18 ["categoryName"]
       43 GETTABLEKS                       R15 R1 K29 ["Network"]
       45 GETTABLEKS                       R15 R15 K19 ["networkInterface"]
       47 SETTABLEKS                       R15 R14 K19 ["networkInterface"]
       49 SETTABLEKS                       R3 R14 K22 ["includeUnverifiedCreators"]
       51 NEWTABLE                         R15 0 0
       53 SETTABLEKS                       R15 R14 K23 ["queryParams"]
       55 GETTABLEKS                       R15 R0 K30 ["renderList"]
       57 SETTABLEKS                       R15 R14 K24 ["render"]
       59 GETTABLEKS                       R15 R1 K25 ["searchTerm"]
       61 SETTABLEKS                       R15 R14 K25 ["searchTerm"]
       63 CALL                             R13 1 1
       64 SETTABLEKS                       R13 R12 K15 ["Results"]
       66 CALL                             R9 3 -1
       67 RETURN                           R9 -1

PROTO_12:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K2 [{"searchTerm"}]
       11 GETTABLEKS                       R4 R2 K1 ["searchTerm"]
       13 SETTABLEKS                       R4 R3 K1 ["searchTerm"]
       15 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_14:
        0 DUPTABLE                         R1 K1 [{"getPageInfoAnalyticsContextInfo"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getPageInfoAnalyticsContextInfo"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["RoactRodux"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Dash"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R2 K11 ["UI"]
       31 GETTABLEKS                       R6 R6 K12 ["Pane"]
       33 GETTABLEKS                       R7 R2 K13 ["Wrappers"]
       35 GETTABLEKS                       R7 R7 K14 ["withAbsoluteSize"]
       37 GETTABLEKS                       R8 R2 K13 ["Wrappers"]
       39 GETTABLEKS                       R8 R8 K15 ["withAbsoluteSizeAndPosition"]
       41 GETTABLEKS                       R9 R2 K16 ["ContextServices"]
       43 GETTABLEKS                       R10 R9 K17 ["withContext"]
       45 GETIMPORT                        R11 K6 [require]
       47 GETTABLEKS                       R12 R0 K18 ["Src"]
       49 GETTABLEKS                       R12 R12 K16 ["ContextServices"]
       51 GETTABLEKS                       R12 R12 K19 ["NetworkContext"]
       53 CALL                             R11 1 1
       54 GETTABLEKS                       R12 R0 K18 ["Src"]
       56 GETTABLEKS                       R12 R12 K20 ["Util"]
       58 GETIMPORT                        R13 K6 [require]
       60 GETTABLEKS                       R14 R12 K21 ["Analytics"]
       62 GETTABLEKS                       R14 R14 K22 ["AssetAnalyticsContextItem"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K6 [require]
       67 GETTABLEKS                       R15 R12 K23 ["Constants"]
       69 CALL                             R14 1 1
       70 GETIMPORT                        R15 K6 [require]
       72 GETTABLEKS                       R16 R12 K24 ["LayoutOrderIterator"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K6 [require]
       77 GETTABLEKS                       R17 R0 K18 ["Src"]
       79 GETTABLEKS                       R17 R17 K25 ["Types"]
       81 GETTABLEKS                       R17 R17 K26 ["AssetLogicTypes"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K6 [require]
       86 GETTABLEKS                       R18 R0 K18 ["Src"]
       88 GETTABLEKS                       R18 R18 K27 ["Components"]
       90 GETTABLEKS                       R18 R18 K28 ["AssetLogicWrapper"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K6 [require]
       95 GETTABLEKS                       R19 R0 K18 ["Src"]
       97 GETTABLEKS                       R19 R19 K27 ["Components"]
       99 GETTABLEKS                       R19 R19 K29 ["ResultsFetcher"]
      101 CALL                             R18 1 1
      102 GETIMPORT                        R19 K6 [require]
      104 GETTABLEKS                       R20 R0 K18 ["Src"]
      106 GETTABLEKS                       R20 R20 K27 ["Components"]
      108 GETTABLEKS                       R20 R20 K30 ["LoadScroller"]
      110 CALL                             R19 1 1
      111 GETIMPORT                        R20 K6 [require]
      113 GETTABLEKS                       R21 R0 K18 ["Src"]
      115 GETTABLEKS                       R21 R21 K27 ["Components"]
      117 GETTABLEKS                       R21 R21 K31 ["InfoBanner"]
      119 CALL                             R20 1 1
      120 GETIMPORT                        R21 K6 [require]
      122 GETTABLEKS                       R22 R0 K18 ["Src"]
      124 GETTABLEKS                       R22 R22 K32 ["Models"]
      126 GETTABLEKS                       R22 R22 K33 ["AssetInfo"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K6 [require]
      131 GETTABLEKS                       R23 R0 K18 ["Src"]
      133 GETTABLEKS                       R23 R23 K27 ["Components"]
      135 GETTABLEKS                       R23 R23 K34 ["Font"]
      137 GETTABLEKS                       R23 R23 K35 ["FontTile"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K6 [require]
      142 GETTABLEKS                       R24 R0 K18 ["Src"]
      144 GETTABLEKS                       R24 R24 K36 ["Thunks"]
      146 GETTABLEKS                       R24 R24 K37 ["GetPageInfoAnalyticsContextInfo"]
      148 CALL                             R23 1 1
      149 GETTABLEKS                       R24 R14 K38 ["FONT_TILE_HEIGHT"]
      151 GETTABLEKS                       R25 R3 K39 ["PureComponent"]
      153 LOADK                            R27 K40 ["FontView"]
      154 NAMECALL                         R25 R25 K41 ["extend"]
      156 CALL                             R25 2 1
      157 DUPTABLE                         R26 K43 [{"Size"}]
      158 GETIMPORT                        R27 K46 [UDim2.new]
      160 LOADN                            R28 1
      161 LOADN                            R29 0
      162 LOADN                            R30 1
      163 LOADN                            R31 0
      164 CALL                             R27 4 1
      165 SETTABLEKS                       R27 R26 K42 ["Size"]
      167 SETTABLEKS                       R26 R25 K47 ["defaultProps"]
      169 DUPCLOSURE                       R26 K48 [PROTO_10]
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R19
      178 SETTABLEKS                       R26 R25 K49 ["init"]
      180 DUPCLOSURE                       R26 K50 [PROTO_11]
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R18
      185 SETTABLEKS                       R26 R25 K51 ["render"]
      187 DUPCLOSURE                       R26 K52 [PROTO_12]
      188 DUPCLOSURE                       R27 K53 [PROTO_14]
      189 CAPTURE                          VAL R23
      190 GETTABLEKS                       R28 R4 K54 ["connect"]
      192 MOVE                             R29 R26
      193 MOVE                             R30 R27
      194 CALL                             R28 2 1
      195 MOVE                             R29 R25
      196 CALL                             R28 1 1
      197 MOVE                             R25 R28
      198 MOVE                             R28 R10
      199 DUPTABLE                         R29 K59 [{"AssetAnalytics", "Localization", "Stylizer", "Network"}]
      200 SETTABLEKS                       R13 R29 K55 ["AssetAnalytics"]
      202 GETTABLEKS                       R30 R9 K56 ["Localization"]
      204 SETTABLEKS                       R30 R29 K56 ["Localization"]
      206 GETTABLEKS                       R30 R9 K57 ["Stylizer"]
      208 SETTABLEKS                       R30 R29 K57 ["Stylizer"]
      210 SETTABLEKS                       R11 R29 K58 ["Network"]
      212 CALL                             R28 1 1
      213 MOVE                             R29 R25
      214 CALL                             R28 1 1
      215 MOVE                             R25 R28
      216 MOVE                             R28 R8
      217 MOVE                             R29 R17
      218 MOVE                             R30 R25
      219 CALL                             R29 1 -1
      220 CALL                             R28 -1 -1
      221 RETURN                           R28 -1
