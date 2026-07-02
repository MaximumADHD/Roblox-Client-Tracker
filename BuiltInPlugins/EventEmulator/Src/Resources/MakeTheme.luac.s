PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Style"]
       25 GETTABLEKS                       R4 R3 K9 ["StyleKey"]
       27 GETTABLEKS                       R5 R3 K10 ["Themes"]
       29 GETTABLEKS                       R5 R5 K11 ["BaseTheme"]
       31 GETTABLEKS                       R6 R3 K10 ["Themes"]
       33 GETTABLEKS                       R6 R6 K12 ["StudioTheme"]
       35 GETTABLEKS                       R7 R3 K13 ["ComponentSymbols"]
       37 DUPTABLE                         R8 K32 [{["SmallPadding"] = 10, ["HistoryButtonMinor"] = 25, ["ShortHeight"] = 30, ["HorizontalPadding"] = 50, ["NavHeight"] = 50, ["ConfirmationButtonWidth"] = 50, ["HistoryButtonMajor"] = 100, ["InputPaneLength"] = 300, ["HistoryPaneLength"] = 300, ["DropdownWidth"] = 180, ["TextBoxWidth"] = 180}]
       38 NEWTABLE                         R9 8 0
       40 GETTABLEKS                       R10 R4 K33 ["BlueText"]
       42 GETIMPORT                        R11 K36 [Color3.fromRGB]
       44 LOADN                            R12 0
       45 LOADN                            R13 162
       46 LOADN                            R14 255
       47 CALL                             R11 3 1
       48 SETTABLE                         R11 R9 R10
       49 DUPTABLE                         R10 K40 [{"BrightText", "DimmedText", "Button", "BlueText"}]
       50 DUPTABLE                         R11 K44 [{["Size"] = 20, ["Color"]}]
       51 GETTABLEKS                       R12 R4 K37 ["BrightText"]
       53 SETTABLEKS                       R12 R11 K43 ["Color"]
       55 SETTABLEKS                       R11 R10 K37 ["BrightText"]
       57 DUPTABLE                         R11 K46 [{["Size"] = 16, ["Color"]}]
       58 GETTABLEKS                       R12 R4 K38 ["DimmedText"]
       60 SETTABLEKS                       R12 R11 K43 ["Color"]
       62 SETTABLEKS                       R11 R10 K38 ["DimmedText"]
       64 DUPTABLE                         R11 K49 [{["Size"] = 18, ["Color"], ["PrimaryColor"]}]
       65 GETTABLEKS                       R12 R4 K50 ["MainText"]
       67 SETTABLEKS                       R12 R11 K43 ["Color"]
       69 GETTABLEKS                       R12 R4 K51 ["DialogMainButtonText"]
       71 SETTABLEKS                       R12 R11 K48 ["PrimaryColor"]
       73 SETTABLEKS                       R11 R10 K39 ["Button"]
       75 DUPTABLE                         R11 K52 [{["Size"] = 18, ["Color"]}]
       76 GETTABLEKS                       R12 R4 K33 ["BlueText"]
       78 SETTABLEKS                       R12 R11 K43 ["Color"]
       80 SETTABLEKS                       R11 R10 K33 ["BlueText"]
       82 SETTABLEKS                       R10 R9 K53 ["Text"]
       84 DUPTABLE                         R10 K64 [{["Thickness"] = 5, ["Transparency"] = 0.5, ["Color"], ["TopImage"] = "rbxasset://textures/StudioToolbox/ScrollBarTop.png", ["MidImage"] = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png", ["BottomImage"] = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"}]
       85 GETTABLEKS                       R11 R4 K65 ["ScrollBar"]
       87 SETTABLEKS                       R11 R10 K43 ["Color"]
       89 SETTABLEKS                       R10 R9 K66 ["Scrollbar"]
       91 SETTABLEKS                       R8 R9 K67 ["Sizes"]
       93 DUPTABLE                         R10 K71 [{"Vertical", "Horizontal", "HistoryItem"}]
       94 DUPTABLE                         R11 K76 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
       95 GETIMPORT                        R12 K79 [Enum.SortOrder.LayoutOrder]
       97 SETTABLEKS                       R12 R11 K72 ["SortOrder"]
       99 GETIMPORT                        R12 K80 [Enum.FillDirection.Vertical]
      101 SETTABLEKS                       R12 R11 K73 ["FillDirection"]
      103 GETIMPORT                        R12 K82 [Enum.HorizontalAlignment.Center]
      105 SETTABLEKS                       R12 R11 K74 ["HorizontalAlignment"]
      107 GETIMPORT                        R12 K85 [UDim.new]
      109 LOADN                            R13 0
      110 GETTABLEKS                       R14 R8 K14 ["SmallPadding"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K75 ["Padding"]
      115 SETTABLEKS                       R11 R10 K68 ["Vertical"]
      117 DUPTABLE                         R11 K87 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
      118 GETIMPORT                        R12 K79 [Enum.SortOrder.LayoutOrder]
      120 SETTABLEKS                       R12 R11 K72 ["SortOrder"]
      122 GETIMPORT                        R12 K88 [Enum.FillDirection.Horizontal]
      124 SETTABLEKS                       R12 R11 K73 ["FillDirection"]
      126 GETIMPORT                        R12 K89 [Enum.VerticalAlignment.Center]
      128 SETTABLEKS                       R12 R11 K86 ["VerticalAlignment"]
      130 GETIMPORT                        R12 K82 [Enum.HorizontalAlignment.Center]
      132 SETTABLEKS                       R12 R11 K74 ["HorizontalAlignment"]
      134 GETIMPORT                        R12 K85 [UDim.new]
      136 LOADN                            R13 0
      137 GETTABLEKS                       R14 R8 K20 ["HorizontalPadding"]
      139 CALL                             R12 2 1
      140 SETTABLEKS                       R12 R11 K75 ["Padding"]
      142 SETTABLEKS                       R11 R10 K69 ["Horizontal"]
      144 DUPTABLE                         R11 K87 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
      145 GETIMPORT                        R12 K79 [Enum.SortOrder.LayoutOrder]
      147 SETTABLEKS                       R12 R11 K72 ["SortOrder"]
      149 GETIMPORT                        R12 K88 [Enum.FillDirection.Horizontal]
      151 SETTABLEKS                       R12 R11 K73 ["FillDirection"]
      153 GETIMPORT                        R12 K89 [Enum.VerticalAlignment.Center]
      155 SETTABLEKS                       R12 R11 K86 ["VerticalAlignment"]
      157 GETIMPORT                        R12 K82 [Enum.HorizontalAlignment.Center]
      159 SETTABLEKS                       R12 R11 K74 ["HorizontalAlignment"]
      161 GETIMPORT                        R12 K85 [UDim.new]
      163 LOADN                            R13 0
      164 GETTABLEKS                       R14 R8 K14 ["SmallPadding"]
      166 CALL                             R12 2 1
      167 SETTABLEKS                       R12 R11 K75 ["Padding"]
      169 SETTABLEKS                       R11 R10 K70 ["HistoryItem"]
      171 SETTABLEKS                       R10 R9 K90 ["Layout"]
      173 GETTABLEKS                       R10 R7 K91 ["Box"]
      175 GETTABLEKS                       R11 R2 K92 ["Dictionary"]
      177 GETTABLEKS                       R11 R11 K93 ["join"]
      179 GETTABLEKS                       R13 R7 K91 ["Box"]
      181 GETTABLE                         R12 R5 R13
      182 NEWTABLE                         R13 1 0
      184 DUPTABLE                         R14 K94 [{"Color"}]
      185 GETTABLEKS                       R15 R4 K95 ["CategoryItem"]
      187 SETTABLEKS                       R15 R14 K43 ["Color"]
      189 SETTABLEKS                       R14 R13 K96 ["&__Item"]
      191 CALL                             R11 2 1
      192 SETTABLE                         R11 R9 R10
      193 GETTABLEKS                       R10 R7 K97 ["RoundBox"]
      195 GETTABLEKS                       R11 R2 K92 ["Dictionary"]
      197 GETTABLEKS                       R11 R11 K93 ["join"]
      199 GETTABLEKS                       R13 R7 K97 ["RoundBox"]
      201 GETTABLE                         R12 R5 R13
      202 NEWTABLE                         R13 2 0
      204 DUPTABLE                         R14 K100 [{["Color"], ["BorderTransparency"] = 1}]
      205 GETTABLEKS                       R15 R4 K95 ["CategoryItem"]
      207 SETTABLEKS                       R15 R14 K43 ["Color"]
      209 SETTABLEKS                       R14 R13 K96 ["&__Item"]
      211 DUPTABLE                         R14 K94 [{"Color"}]
      212 GETTABLEKS                       R15 R4 K101 ["Mid"]
      214 SETTABLEKS                       R15 R14 K43 ["Color"]
      216 SETTABLEKS                       R14 R13 K102 ["&__Example"]
      218 CALL                             R11 2 1
      219 SETTABLE                         R11 R9 R10
      220 GETTABLEKS                       R10 R7 K39 ["Button"]
      222 GETTABLEKS                       R11 R2 K92 ["Dictionary"]
      224 GETTABLEKS                       R11 R11 K93 ["join"]
      226 GETTABLEKS                       R13 R7 K39 ["Button"]
      228 GETTABLE                         R12 R5 R13
      229 NEWTABLE                         R13 1 0
      231 DUPTABLE                         R14 K104 [{["Color"], ["BorderSize"] = 1}]
      232 GETTABLEKS                       R15 R4 K39 ["Button"]
      234 SETTABLEKS                       R15 R14 K43 ["Color"]
      236 SETTABLEKS                       R14 R13 K96 ["&__Item"]
      238 CALL                             R11 2 1
      239 SETTABLE                         R11 R9 R10
      240 DUPCLOSURE                       R10 K105 [PROTO_0]
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R9
      243 RETURN                           R10 1
